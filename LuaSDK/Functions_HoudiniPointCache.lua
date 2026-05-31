BL4.GetAttributeIndexFromString = function(OwnerAddress, attribute, AttributeIndex)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAttributeIndexFromString: Failed To Allocate The Params");return;end;
 AttributeIndex = AttributeIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0, AttributeIndex at +0x10
 writeQword(_params + 0x0, attribute)
 writeInteger(_params + 0x10, AttributeIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetAttributeIndexFromString", _params);
 local RET=readByte(_params + 0x14);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAttributeIndexFromString");

BL4.GetAttributeIndexInArrayFromString = function(OwnerAddress, InAttribute, InAttributeArray, OutAttributeIndex)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAttributeIndexInArrayFromString: Failed To Allocate The Params");return;end;
 OutAttributeIndex = OutAttributeIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InAttribute at +0x0, InAttributeArray at +0x10, OutAttributeIndex at +0x20
 writeQword(_params + 0x0, InAttribute)
 writeQword(_params + 0x10, InAttributeArray)
 writeInteger(_params + 0x20, OutAttributeIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetAttributeIndexInArrayFromString", _params);
 local RET=readByte(_params + 0x24);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAttributeIndexInArrayFromString");

BL4.GetColorValue = function(OwnerAddress, SampleIndex, Value)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetColorValue: Failed To Allocate The Params");return;end;
 SampleIndex = SampleIndex or 0
 Value = Value or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SampleIndex at +0x0, Value at +0x4
 writeInteger(_params + 0x0, SampleIndex)
 writeFloat(_params + 0x4, (Value and Value.R) or 0)
 writeFloat(_params + 0x8, (Value and Value.G) or 0)
 writeFloat(_params + 0xC, (Value and Value.B) or 0)
 writeFloat(_params + 0x10, (Value and Value.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetColorValue", _params);
 local RET=readByte(_params + 0x14);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetColorValue");

BL4.GetFloatSampleData = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetFloatSampleData: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetFloatSampleData", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetFloatSampleData");

BL4.GetFloatValue = function(OwnerAddress, SampleIndex, attrIndex, Value)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetFloatValue: Failed To Allocate The Params");return;end;
 SampleIndex = SampleIndex or 0
 attrIndex = attrIndex or 0
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SampleIndex at +0x0, attrIndex at +0x4, Value at +0x8
 writeInteger(_params + 0x0, SampleIndex)
 writeInteger(_params + 0x4, attrIndex)
 writeFloat(_params + 0x8, Value)
 UE.CallProcessEventEx(OwnerAddress, "GetFloatValue", _params);
 local RET=readByte(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetFloatValue");

BL4.GetFloatValueForString = function(OwnerAddress, SampleIndex, attribute, Value)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetFloatValueForString: Failed To Allocate The Params");return;end;
 SampleIndex = SampleIndex or 0
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SampleIndex at +0x0, attribute at +0x8, Value at +0x18
 writeInteger(_params + 0x0, SampleIndex)
 writeQword(_params + 0x8, attribute)
 writeFloat(_params + 0x18, Value)
 UE.CallProcessEventEx(OwnerAddress, "GetFloatValueForString", _params);
 local RET=readByte(_params + 0x1C);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetFloatValueForString");

BL4.GetImpulseValue = function(OwnerAddress, SampleIndex, Value)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetImpulseValue: Failed To Allocate The Params");return;end;
 SampleIndex = SampleIndex or 0
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SampleIndex at +0x0, Value at +0x4
 writeInteger(_params + 0x0, SampleIndex)
 writeFloat(_params + 0x4, Value)
 UE.CallProcessEventEx(OwnerAddress, "GetImpulseValue", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetImpulseValue");

BL4.GetLastPointIDToSpawnAtTime = function(OwnerAddress, time, lastID)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLastPointIDToSpawnAtTime: Failed To Allocate The Params");return;end;
 time = time or 0
 lastID = lastID or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: time at +0x0, lastID at +0x4
 writeFloat(_params + 0x0, time)
 writeInteger(_params + 0x4, lastID)
 UE.CallProcessEventEx(OwnerAddress, "GetLastPointIDToSpawnAtTime", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLastPointIDToSpawnAtTime");

BL4.GetLastSampleIndexAtTime = function(OwnerAddress, desiredTime, lastSampleIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLastSampleIndexAtTime: Failed To Allocate The Params");return;end;
 desiredTime = desiredTime or 0
 lastSampleIndex = lastSampleIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: desiredTime at +0x0, lastSampleIndex at +0x4
 writeFloat(_params + 0x0, desiredTime)
 writeInteger(_params + 0x4, lastSampleIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetLastSampleIndexAtTime", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLastSampleIndexAtTime");

BL4.GetLifeValues = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLifeValues: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetLifeValues", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLifeValues");

BL4.GetNormalValue = function(OwnerAddress, SampleIndex, Value)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNormalValue: Failed To Allocate The Params");return;end;
 SampleIndex = SampleIndex or 0
 Value = Value or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SampleIndex at +0x0, Value at +0x8
 writeInteger(_params + 0x0, SampleIndex)
 writeDouble(_params + 0x8, (Value and Value.X) or 0)
 writeDouble(_params + 0x10, (Value and Value.Y) or 0)
 writeDouble(_params + 0x18, (Value and Value.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetNormalValue", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNormalValue");

BL4.GetNumberOfAttributes = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumberOfAttributes: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetNumberOfAttributes", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumberOfAttributes");

BL4.GetNumberOfPoints = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumberOfPoints: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetNumberOfPoints", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumberOfPoints");

BL4.GetNumberOfSamples = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumberOfSamples: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetNumberOfSamples", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumberOfSamples");

BL4.GetPointFloatValueAtTime = function(OwnerAddress, POINTID, AttributeIndex, desiredTime, Value)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPointFloatValueAtTime: Failed To Allocate The Params");return;end;
 POINTID = POINTID or 0
 AttributeIndex = AttributeIndex or 0
 desiredTime = desiredTime or 0
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: POINTID at +0x0, AttributeIndex at +0x4, desiredTime at +0x8, Value at +0xC
 writeInteger(_params + 0x0, POINTID)
 writeInteger(_params + 0x4, AttributeIndex)
 writeFloat(_params + 0x8, desiredTime)
 writeFloat(_params + 0xC, Value)
 UE.CallProcessEventEx(OwnerAddress, "GetPointFloatValueAtTime", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPointFloatValueAtTime");

BL4.GetPointIDsToSpawnAtTime = function(OwnerAddress, desiredTime, MinID, MaxID, Count, LastSpawnedPointID, LastSpawnTime, LastSpawnTimeRequest)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPointIDsToSpawnAtTime: Failed To Allocate The Params");return;end;
 desiredTime = desiredTime or 0
 MinID = MinID or 0
 MaxID = MaxID or 0
 Count = Count or 0
 LastSpawnedPointID = LastSpawnedPointID or 0
 LastSpawnTime = LastSpawnTime or 0
 LastSpawnTimeRequest = LastSpawnTimeRequest or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: desiredTime at +0x0, MinID at +0x4, MaxID at +0x8, Count at +0xC, LastSpawnedPointID at +0x10, LastSpawnTime at +0x14, LastSpawnTimeRequest at +0x18
 writeFloat(_params + 0x0, desiredTime)
 writeInteger(_params + 0x4, MinID)
 writeInteger(_params + 0x8, MaxID)
 writeInteger(_params + 0xC, Count)
 writeInteger(_params + 0x10, LastSpawnedPointID)
 writeFloat(_params + 0x14, LastSpawnTime)
 writeFloat(_params + 0x18, LastSpawnTimeRequest)
 UE.CallProcessEventEx(OwnerAddress, "GetPointIDsToSpawnAtTime", _params);
 local RET=readByte(_params + 0x1C);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPointIDsToSpawnAtTime");

BL4.GetPointInt32ValueAtTime = function(OwnerAddress, POINTID, AttributeIndex, desiredTime, Value)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPointInt32ValueAtTime: Failed To Allocate The Params");return;end;
 POINTID = POINTID or 0
 AttributeIndex = AttributeIndex or 0
 desiredTime = desiredTime or 0
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: POINTID at +0x0, AttributeIndex at +0x4, desiredTime at +0x8, Value at +0xC
 writeInteger(_params + 0x0, POINTID)
 writeInteger(_params + 0x4, AttributeIndex)
 writeFloat(_params + 0x8, desiredTime)
 writeInteger(_params + 0xC, Value)
 UE.CallProcessEventEx(OwnerAddress, "GetPointInt32ValueAtTime", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPointInt32ValueAtTime");

BL4.GetPointLife = function(OwnerAddress, POINTID, Value)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPointLife: Failed To Allocate The Params");return;end;
 POINTID = POINTID or 0
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: POINTID at +0x0, Value at +0x4
 writeInteger(_params + 0x0, POINTID)
 writeFloat(_params + 0x4, Value)
 UE.CallProcessEventEx(OwnerAddress, "GetPointLife", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPointLife");

BL4.GetPointLifeAtTime = function(OwnerAddress, POINTID, desiredTime, Value)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPointLifeAtTime: Failed To Allocate The Params");return;end;
 POINTID = POINTID or 0
 desiredTime = desiredTime or 0
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: POINTID at +0x0, desiredTime at +0x4, Value at +0x8
 writeInteger(_params + 0x0, POINTID)
 writeFloat(_params + 0x4, desiredTime)
 writeFloat(_params + 0x8, Value)
 UE.CallProcessEventEx(OwnerAddress, "GetPointLifeAtTime", _params);
 local RET=readByte(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPointLifeAtTime");

BL4.GetPointPositionAtTime = function(OwnerAddress, POINTID, desiredTime, Vector)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPointPositionAtTime: Failed To Allocate The Params");return;end;
 POINTID = POINTID or 0
 desiredTime = desiredTime or 0
 Vector = Vector or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: POINTID at +0x0, desiredTime at +0x4, Vector at +0x8
 writeInteger(_params + 0x0, POINTID)
 writeFloat(_params + 0x4, desiredTime)
 writeDouble(_params + 0x8, (Vector and Vector.X) or 0)
 writeDouble(_params + 0x10, (Vector and Vector.Y) or 0)
 writeDouble(_params + 0x18, (Vector and Vector.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetPointPositionAtTime", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPointPositionAtTime");

BL4.GetPointQuatValueAtTime = function(OwnerAddress, POINTID, AttributeIndex, desiredTime, Quat, DoHoudiniToUnrealConversion)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPointQuatValueAtTime: Failed To Allocate The Params");return;end;
 POINTID = POINTID or 0
 AttributeIndex = AttributeIndex or 0
 desiredTime = desiredTime or 0
 DoHoudiniToUnrealConversion = DoHoudiniToUnrealConversion or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: POINTID at +0x0, AttributeIndex at +0x4, desiredTime at +0x8, Quat at +0x10, DoHoudiniToUnrealConversion at +0x30
 writeInteger(_params + 0x0, POINTID)
 writeInteger(_params + 0x4, AttributeIndex)
 writeFloat(_params + 0x8, desiredTime)
 writeQword(_params + 0x10, Quat)
 writeByte(_params + 0x30, DoHoudiniToUnrealConversion)
 UE.CallProcessEventEx(OwnerAddress, "GetPointQuatValueAtTime", _params);
 local RET=readByte(_params + 0x31);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPointQuatValueAtTime");

BL4.GetPointQuatValueAtTimeForString = function(OwnerAddress, POINTID, attribute, desiredTime, Quat, DoHoudiniToUnrealConversion)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPointQuatValueAtTimeForString: Failed To Allocate The Params");return;end;
 POINTID = POINTID or 0
 desiredTime = desiredTime or 0
 DoHoudiniToUnrealConversion = DoHoudiniToUnrealConversion or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: POINTID at +0x0, attribute at +0x8, desiredTime at +0x18, Quat at +0x20, DoHoudiniToUnrealConversion at +0x40
 writeInteger(_params + 0x0, POINTID)
 writeQword(_params + 0x8, attribute)
 writeFloat(_params + 0x18, desiredTime)
 writeQword(_params + 0x20, Quat)
 writeByte(_params + 0x40, DoHoudiniToUnrealConversion)
 UE.CallProcessEventEx(OwnerAddress, "GetPointQuatValueAtTimeForString", _params);
 local RET=readByte(_params + 0x41);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPointQuatValueAtTimeForString");

BL4.GetPointType = function(OwnerAddress, POINTID, Value)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPointType: Failed To Allocate The Params");return;end;
 POINTID = POINTID or 0
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: POINTID at +0x0, Value at +0x4
 writeInteger(_params + 0x0, POINTID)
 writeInteger(_params + 0x4, Value)
 UE.CallProcessEventEx(OwnerAddress, "GetPointType", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPointType");

BL4.GetPointTypes = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPointTypes: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetPointTypes", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPointTypes");

BL4.GetPointValueAtTime = function(OwnerAddress, POINTID, AttributeIndex, desiredTime, Value)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPointValueAtTime: Failed To Allocate The Params");return;end;
 POINTID = POINTID or 0
 AttributeIndex = AttributeIndex or 0
 desiredTime = desiredTime or 0
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: POINTID at +0x0, AttributeIndex at +0x4, desiredTime at +0x8, Value at +0xC
 writeInteger(_params + 0x0, POINTID)
 writeInteger(_params + 0x4, AttributeIndex)
 writeFloat(_params + 0x8, desiredTime)
 writeFloat(_params + 0xC, Value)
 UE.CallProcessEventEx(OwnerAddress, "GetPointValueAtTime", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPointValueAtTime");

BL4.GetPointValueAtTimeForString = function(OwnerAddress, POINTID, attribute, desiredTime, Value)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPointValueAtTimeForString: Failed To Allocate The Params");return;end;
 POINTID = POINTID or 0
 desiredTime = desiredTime or 0
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: POINTID at +0x0, attribute at +0x8, desiredTime at +0x18, Value at +0x1C
 writeInteger(_params + 0x0, POINTID)
 writeQword(_params + 0x8, attribute)
 writeFloat(_params + 0x18, desiredTime)
 writeFloat(_params + 0x1C, Value)
 UE.CallProcessEventEx(OwnerAddress, "GetPointValueAtTimeForString", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPointValueAtTimeForString");

BL4.GetPointValueIndexes = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPointValueIndexes: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetPointValueIndexes", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPointValueIndexes");

BL4.GetPointVector4ValueAtTime = function(OwnerAddress, POINTID, AttributeIndex, desiredTime, Vector)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPointVector4ValueAtTime: Failed To Allocate The Params");return;end;
 POINTID = POINTID or 0
 AttributeIndex = AttributeIndex or 0
 desiredTime = desiredTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: POINTID at +0x0, AttributeIndex at +0x4, desiredTime at +0x8, Vector at +0x10
 writeInteger(_params + 0x0, POINTID)
 writeInteger(_params + 0x4, AttributeIndex)
 writeFloat(_params + 0x8, desiredTime)
 writeQword(_params + 0x10, Vector)
 UE.CallProcessEventEx(OwnerAddress, "GetPointVector4ValueAtTime", _params);
 local RET=readByte(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPointVector4ValueAtTime");

BL4.GetPointVector4ValueAtTimeForString = function(OwnerAddress, POINTID, attribute, desiredTime, Vector)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPointVector4ValueAtTimeForString: Failed To Allocate The Params");return;end;
 POINTID = POINTID or 0
 desiredTime = desiredTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: POINTID at +0x0, attribute at +0x8, desiredTime at +0x18, Vector at +0x20
 writeInteger(_params + 0x0, POINTID)
 writeQword(_params + 0x8, attribute)
 writeFloat(_params + 0x18, desiredTime)
 writeQword(_params + 0x20, Vector)
 UE.CallProcessEventEx(OwnerAddress, "GetPointVector4ValueAtTimeForString", _params);
 local RET=readByte(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPointVector4ValueAtTimeForString");

BL4.GetPointVectorValueAtTime = function(OwnerAddress, POINTID, AttributeIndex, desiredTime, Vector, DoSwap, DoScale)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPointVectorValueAtTime: Failed To Allocate The Params");return;end;
 POINTID = POINTID or 0
 AttributeIndex = AttributeIndex or 0
 desiredTime = desiredTime or 0
 Vector = Vector or {X=0,Y=0,Z=0}
 DoSwap = DoSwap or false
 DoScale = DoScale or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: POINTID at +0x0, AttributeIndex at +0x4, desiredTime at +0x8, Vector at +0x10, DoSwap at +0x28, DoScale at +0x29
 writeInteger(_params + 0x0, POINTID)
 writeInteger(_params + 0x4, AttributeIndex)
 writeFloat(_params + 0x8, desiredTime)
 writeDouble(_params + 0x10, (Vector and Vector.X) or 0)
 writeDouble(_params + 0x18, (Vector and Vector.Y) or 0)
 writeDouble(_params + 0x20, (Vector and Vector.Z) or 0)
 writeByte(_params + 0x28, DoSwap)
 writeByte(_params + 0x29, DoScale)
 UE.CallProcessEventEx(OwnerAddress, "GetPointVectorValueAtTime", _params);
 local RET=readByte(_params + 0x2A);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPointVectorValueAtTime");

BL4.GetPointVectorValueAtTimeForString = function(OwnerAddress, POINTID, attribute, desiredTime, Vector, DoSwap, DoScale)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPointVectorValueAtTimeForString: Failed To Allocate The Params");return;end;
 POINTID = POINTID or 0
 desiredTime = desiredTime or 0
 Vector = Vector or {X=0,Y=0,Z=0}
 DoSwap = DoSwap or false
 DoScale = DoScale or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: POINTID at +0x0, attribute at +0x8, desiredTime at +0x18, Vector at +0x20, DoSwap at +0x38, DoScale at +0x39
 writeInteger(_params + 0x0, POINTID)
 writeQword(_params + 0x8, attribute)
 writeFloat(_params + 0x18, desiredTime)
 writeDouble(_params + 0x20, (Vector and Vector.X) or 0)
 writeDouble(_params + 0x28, (Vector and Vector.Y) or 0)
 writeDouble(_params + 0x30, (Vector and Vector.Z) or 0)
 writeByte(_params + 0x38, DoSwap)
 writeByte(_params + 0x39, DoScale)
 UE.CallProcessEventEx(OwnerAddress, "GetPointVectorValueAtTimeForString", _params);
 local RET=readByte(_params + 0x3A);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPointVectorValueAtTimeForString");

BL4.GetPositionValue = function(OwnerAddress, SampleIndex, Value)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPositionValue: Failed To Allocate The Params");return;end;
 SampleIndex = SampleIndex or 0
 Value = Value or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SampleIndex at +0x0, Value at +0x8
 writeInteger(_params + 0x0, SampleIndex)
 writeDouble(_params + 0x8, (Value and Value.X) or 0)
 writeDouble(_params + 0x10, (Value and Value.Y) or 0)
 writeDouble(_params + 0x18, (Value and Value.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetPositionValue", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPositionValue");

BL4.GetQuatValue = function(OwnerAddress, SampleIndex, attrIndex, Value, DoHoudiniToUnrealConversion)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetQuatValue: Failed To Allocate The Params");return;end;
 SampleIndex = SampleIndex or 0
 attrIndex = attrIndex or 0
 DoHoudiniToUnrealConversion = DoHoudiniToUnrealConversion or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SampleIndex at +0x0, attrIndex at +0x4, Value at +0x10, DoHoudiniToUnrealConversion at +0x30
 writeInteger(_params + 0x0, SampleIndex)
 writeInteger(_params + 0x4, attrIndex)
 writeQword(_params + 0x10, Value)
 writeByte(_params + 0x30, DoHoudiniToUnrealConversion)
 UE.CallProcessEventEx(OwnerAddress, "GetQuatValue", _params);
 local RET=readByte(_params + 0x31);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetQuatValue");

BL4.GetQuatValueForString = function(OwnerAddress, SampleIndex, attribute, Value, DoHoudiniToUnrealConversion)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetQuatValueForString: Failed To Allocate The Params");return;end;
 SampleIndex = SampleIndex or 0
 DoHoudiniToUnrealConversion = DoHoudiniToUnrealConversion or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SampleIndex at +0x0, attribute at +0x8, Value at +0x20, DoHoudiniToUnrealConversion at +0x40
 writeInteger(_params + 0x0, SampleIndex)
 writeQword(_params + 0x8, attribute)
 writeQword(_params + 0x20, Value)
 writeByte(_params + 0x40, DoHoudiniToUnrealConversion)
 UE.CallProcessEventEx(OwnerAddress, "GetQuatValueForString", _params);
 local RET=readByte(_params + 0x41);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetQuatValueForString");

BL4.GetSampleIndexesForPointAtTime = function(OwnerAddress, POINTID, desiredTime, PrevSampleIndex, NextSampleIndex, PrevWeight)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSampleIndexesForPointAtTime: Failed To Allocate The Params");return;end;
 POINTID = POINTID or 0
 desiredTime = desiredTime or 0
 PrevSampleIndex = PrevSampleIndex or 0
 NextSampleIndex = NextSampleIndex or 0
 PrevWeight = PrevWeight or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: POINTID at +0x0, desiredTime at +0x4, PrevSampleIndex at +0x8, NextSampleIndex at +0xC, PrevWeight at +0x10
 writeInteger(_params + 0x0, POINTID)
 writeFloat(_params + 0x4, desiredTime)
 writeInteger(_params + 0x8, PrevSampleIndex)
 writeInteger(_params + 0xC, NextSampleIndex)
 writeFloat(_params + 0x10, PrevWeight)
 UE.CallProcessEventEx(OwnerAddress, "GetSampleIndexesForPointAtTime", _params);
 local RET=readByte(_params + 0x14);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSampleIndexesForPointAtTime");

BL4.GetSpawnTimes = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSpawnTimes: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetSpawnTimes", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSpawnTimes");

BL4.GetSpecialAttributeIndexes = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSpecialAttributeIndexes: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetSpecialAttributeIndexes", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSpecialAttributeIndexes");

BL4.GetTimeValue = function(OwnerAddress, SampleIndex, Value)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTimeValue: Failed To Allocate The Params");return;end;
 SampleIndex = SampleIndex or 0
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SampleIndex at +0x0, Value at +0x4
 writeInteger(_params + 0x0, SampleIndex)
 writeFloat(_params + 0x4, Value)
 UE.CallProcessEventEx(OwnerAddress, "GetTimeValue", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTimeValue");

BL4.GetUseCustomCSVTitleRow = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetUseCustomCSVTitleRow: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetUseCustomCSVTitleRow", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetUseCustomCSVTitleRow");

BL4.GetVector4Value = function(OwnerAddress, SampleIndex, attrIndex, Value)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVector4Value: Failed To Allocate The Params");return;end;
 SampleIndex = SampleIndex or 0
 attrIndex = attrIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SampleIndex at +0x0, attrIndex at +0x4, Value at +0x10
 writeInteger(_params + 0x0, SampleIndex)
 writeInteger(_params + 0x4, attrIndex)
 writeQword(_params + 0x10, Value)
 UE.CallProcessEventEx(OwnerAddress, "GetVector4Value", _params);
 local RET=readByte(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVector4Value");

BL4.GetVector4ValueForString = function(OwnerAddress, SampleIndex, attribute, Value)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVector4ValueForString: Failed To Allocate The Params");return;end;
 SampleIndex = SampleIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SampleIndex at +0x0, attribute at +0x8, Value at +0x20
 writeInteger(_params + 0x0, SampleIndex)
 writeQword(_params + 0x8, attribute)
 writeQword(_params + 0x20, Value)
 UE.CallProcessEventEx(OwnerAddress, "GetVector4ValueForString", _params);
 local RET=readByte(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVector4ValueForString");

BL4.GetVectorValue = function(OwnerAddress, SampleIndex, attrIndex, Value, DoSwap, DoScale)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVectorValue: Failed To Allocate The Params");return;end;
 SampleIndex = SampleIndex or 0
 attrIndex = attrIndex or 0
 Value = Value or {X=0,Y=0,Z=0}
 DoSwap = DoSwap or false
 DoScale = DoScale or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SampleIndex at +0x0, attrIndex at +0x4, Value at +0x8, DoSwap at +0x20, DoScale at +0x21
 writeInteger(_params + 0x0, SampleIndex)
 writeInteger(_params + 0x4, attrIndex)
 writeDouble(_params + 0x8, (Value and Value.X) or 0)
 writeDouble(_params + 0x10, (Value and Value.Y) or 0)
 writeDouble(_params + 0x18, (Value and Value.Z) or 0)
 writeByte(_params + 0x20, DoSwap)
 writeByte(_params + 0x21, DoScale)
 UE.CallProcessEventEx(OwnerAddress, "GetVectorValue", _params);
 local RET=readByte(_params + 0x22);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVectorValue");

BL4.GetVectorValueForString = function(OwnerAddress, SampleIndex, attribute, Value, DoSwap, DoScale)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVectorValueForString: Failed To Allocate The Params");return;end;
 SampleIndex = SampleIndex or 0
 Value = Value or {X=0,Y=0,Z=0}
 DoSwap = DoSwap or false
 DoScale = DoScale or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SampleIndex at +0x0, attribute at +0x8, Value at +0x18, DoSwap at +0x30, DoScale at +0x31
 writeInteger(_params + 0x0, SampleIndex)
 writeQword(_params + 0x8, attribute)
 writeDouble(_params + 0x18, (Value and Value.X) or 0)
 writeDouble(_params + 0x20, (Value and Value.Y) or 0)
 writeDouble(_params + 0x28, (Value and Value.Z) or 0)
 writeByte(_params + 0x30, DoSwap)
 writeByte(_params + 0x31, DoScale)
 UE.CallProcessEventEx(OwnerAddress, "GetVectorValueForString", _params);
 local RET=readByte(_params + 0x32);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVectorValueForString");

BL4.GetVelocityValue = function(OwnerAddress, SampleIndex, Value)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVelocityValue: Failed To Allocate The Params");return;end;
 SampleIndex = SampleIndex or 0
 Value = Value or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SampleIndex at +0x0, Value at +0x8
 writeInteger(_params + 0x0, SampleIndex)
 writeDouble(_params + 0x8, (Value and Value.X) or 0)
 writeDouble(_params + 0x10, (Value and Value.Y) or 0)
 writeDouble(_params + 0x18, (Value and Value.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetVelocityValue", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVelocityValue");

BL4.SetUseCustomCSVTitleRow = function(OwnerAddress, bInUseCustomCSVTitleRow)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetUseCustomCSVTitleRow: Failed To Allocate The Params");return;end;
 bInUseCustomCSVTitleRow = bInUseCustomCSVTitleRow or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInUseCustomCSVTitleRow at +0x0
 writeByte(_params + 0x0, bInUseCustomCSVTitleRow)
 UE.CallProcessEventEx(OwnerAddress, "SetUseCustomCSVTitleRow", _params);
 deAlloc(_params);
end
FNR("BL4.SetUseCustomCSVTitleRow");

