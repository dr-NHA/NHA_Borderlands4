B85 = {}
local HANDLE_PREFIX = true
local REVERSE_BITS = true
local BYTE_ORDER = {0, 1, 2, 3}
local B85_CHARSET = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!#$%&()*+-;<=>?@^_`{/}~"
local reverseLookup = {}
for i = 1, 256 do
 reverseLookup[i] = 0xFF
end

for i = 1, string.len(B85_CHARSET) do
 local charCode = string.byte(string.sub(B85_CHARSET, i, i))
 reverseLookup[charCode + 1] = i - 1
end

B85.setByteOrder=function(newOrder)
 if #newOrder ~= 4 then
  error("Invalid byte order configuration: must have exactly 4 elements")
 end
 local seen = {}
 for _, v in ipairs(newOrder) do
  if v < 0 or v > 3 then
   error("Invalid byte order configuration: values must be 0-3")
  end
  if seen[v] then
   error("Invalid byte order configuration: duplicate values not allowed")
  end
  seen[v] = true
 end
 BYTE_ORDER = {newOrder[1], newOrder[2], newOrder[3], newOrder[4]}
end

function B85.getByteOrder()
 return {BYTE_ORDER[1], BYTE_ORDER[2], BYTE_ORDER[3], BYTE_ORDER[4]}
end

function B85.setReverseBits(value)
 REVERSE_BITS = value
end

function B85.getReverseBits()
 return REVERSE_BITS
end

function B85.setHandlePrefix(value)
 HANDLE_PREFIX = value
end

function B85.getHandlePrefix()
 return HANDLE_PREFIX
end

local function applyByteOrder(bytes)
 return {
  bytes[BYTE_ORDER[1] + 1],
  bytes[BYTE_ORDER[2] + 1],
  bytes[BYTE_ORDER[3] + 1],
  bytes[BYTE_ORDER[4] + 1]
 }
end

local function reverseByteOrder(bytes)
 local result = {0, 0, 0, 0}
 result[BYTE_ORDER[1] + 1] = bytes[1]
 result[BYTE_ORDER[2] + 1] = bytes[2]
 result[BYTE_ORDER[3] + 1] = bytes[3]
 result[BYTE_ORDER[4] + 1] = bytes[4]
 return result
end

local function reverseBits(b)
 b = ((b & 0xF0) >> 4) | ((b & 0x0F) << 4)
 b = ((b & 0xCC) >> 2) | ((b & 0x33) << 2)
 b = ((b & 0xAA) >> 1) | ((b & 0x55) << 1)
 return b
end

B85.decode=function(inputString)
 local str = inputString
 if HANDLE_PREFIX then
  if string.len(str) < 2 or string.sub(str, 1, 2) ~= "@U" then
   return nil
  end
  str = string.sub(str, 3)
 end
 local result = {}
 local idx = 1
 local size = string.len(str)
 while idx <= size do
  local workingU32 = 0
  local charCount = 0
  while idx <= size and charCount < 5 do
   local char = string.sub(str, idx, idx)
   local charCode = string.byte(char)
   idx = idx + 1
   if charCode >= 0 and reverseLookup[charCode + 1] < 0x56 then
    workingU32 = workingU32 * 85 + reverseLookup[charCode + 1]
    charCount = charCount + 1
   end
  end
  
  if charCount == 0 then
   break
  end
  
  if charCount < 5 then
   local padding = 5 - charCount
   for i = 1, padding do
    workingU32 = workingU32 * 85 + 0x7e
   end
  end
  
  if charCount == 5 then
   local standardBytes = {
    (workingU32 >> 24) & 0xFF,
    (workingU32 >> 16) & 0xFF,
    (workingU32 >> 8) & 0xFF,
    workingU32 & 0xFF
   }
   local orderedBytes = reverseByteOrder(standardBytes)
   table.insert(result, orderedBytes[1])
   table.insert(result, orderedBytes[2])
   table.insert(result, orderedBytes[3])
   table.insert(result, orderedBytes[4])
  else
   local byteCount = charCount - 1
   if byteCount >= 1 then
    table.insert(result, (workingU32 >> 24) & 0xFF)
   end
   if byteCount >= 2 then
    table.insert(result, (workingU32 >> 16) & 0xFF)
   end
   if byteCount >= 3 then
    table.insert(result, (workingU32 >> 8) & 0xFF)
   end
  end
 end
    
 if REVERSE_BITS then
  for i = 1, #result do
   result[i] = reverseBits(result[i])
  end
 end
 local hexResult = ""
 for i = 1, #result do
  hexResult = hexResult .. string.format("%02x", result[i])
 end
 return hexResult
end

B85.encode=function(hexString)
 local bytes = {}
 for i = 1, string.len(hexString), 2 do
  local hexByte = string.sub(hexString, i, i + 1)
  table.insert(bytes, tonumber(hexByte, 16))
 end
    
 if REVERSE_BITS then
  for i = 1, #bytes do
   bytes[i] = reverseBits(bytes[i])
  end
 end
    
 local result = {}
 local idx = 1
 local len = #bytes
 local extraBytes = len % 4
 local fullGroups = math.floor(len / 4)
    
 for i = 1, fullGroups do
  local inputBytes = {bytes[idx], bytes[idx + 1], bytes[idx + 2], bytes[idx + 3]}
  idx = idx + 4
  local orderedBytes = applyByteOrder(inputBytes)
  local u32 = (orderedBytes[1] << 24) | (orderedBytes[2] << 16) | (orderedBytes[3] << 8) | orderedBytes[4]
  if u32 < 0 then
   u32 = u32 + 0x100000000
  end
  
  table.insert(result, string.sub(B85_CHARSET, math.floor(u32 / 52200625) + 1, math.floor(u32 / 52200625) + 1))
  local rem1 = u32 % 52200625
  table.insert(result, string.sub(B85_CHARSET, math.floor(rem1 / 614125) + 1, math.floor(rem1 / 614125) + 1))
  local rem2 = rem1 % 614125
  table.insert(result, string.sub(B85_CHARSET, math.floor(rem2 / 7225) + 1, math.floor(rem2 / 7225) + 1))
  local rem3 = rem2 % 7225
  table.insert(result, string.sub(B85_CHARSET, math.floor(rem3 / 85) + 1, math.floor(rem3 / 85) + 1))
  table.insert(result, string.sub(B85_CHARSET, (rem3 % 85) + 1, (rem3 % 85) + 1))
 end
    
    
 if extraBytes ~= 0 then
  local lastU32 = bytes[idx]
  if extraBytes >= 2 then
   lastU32 = (lastU32 << 8) | bytes[idx + 1]
  end
  if extraBytes == 3 then
   lastU32 = (lastU32 << 8) | bytes[idx + 2]
  end
  local workingU32
  if extraBytes == 3 then
   workingU32 = lastU32 << 8
  elseif extraBytes == 2 then
   workingU32 = lastU32 << 16
  else
   workingU32 = lastU32 << 24
  end
  if workingU32 < 0 then
   workingU32 = workingU32 + 0x100000000
  end
  table.insert(result, string.sub(B85_CHARSET, math.floor(workingU32 / 52200625) + 1, math.floor(workingU32 / 52200625) + 1))
  local rem1 = workingU32 % 52200625
  table.insert(result, string.sub(B85_CHARSET, math.floor(rem1 / 614125) + 1, math.floor(rem1 / 614125) + 1))
  if extraBytes >= 2 then
   local rem2 = rem1 % 614125
   table.insert(result, string.sub(B85_CHARSET, math.floor(rem2 / 7225) + 1, math.floor(rem2 / 7225) + 1))
   if extraBytes == 3 then
    local rem3 = rem2 % 7225
    table.insert(result, string.sub(B85_CHARSET, math.floor(rem3 / 85) + 1, math.floor(rem3 / 85) + 1))
   end
  end
 end
    
 local resultString = table.concat(result)
    
 if HANDLE_PREFIX then
  return "@U" .. resultString
 else
  return resultString
 end
end
