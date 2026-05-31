BL4.Contains_ForBlueprint = function(OwnerAddress, InKey)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Contains_ForBlueprint: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0
 writeQword(_params + 0x0, InKey)
 UE.CallProcessEventEx(OwnerAddress, "Contains_ForBlueprint", _params);
 local RET=readByte(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Contains_ForBlueprint");

BL4.CopyPose = function(InHierarchy_RigHierarchy, bCurrent, bInitial, bWeights, bMatchPoseInGlobalIfNeeded)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CopyPose: Failed To Allocate The Params");return;end;
 bCurrent = bCurrent or false
 bInitial = bInitial or false
 bWeights = bWeights or false
 bMatchPoseInGlobalIfNeeded = bMatchPoseInGlobalIfNeeded or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InHierarchy at +0x0, bCurrent at +0x8, bInitial at +0x9, bWeights at +0xA, bMatchPoseInGlobalIfNeeded at +0xB
 writeQword(_params + 0x0, InHierarchy_RigHierarchy)
 writeByte(_params + 0x8, bCurrent)
 writeByte(_params + 0x9, bInitial)
 writeByte(_params + 0xA, bWeights)
 writeByte(_params + 0xB, bMatchPoseInGlobalIfNeeded)
 UE.CallProcessEventEx(InHierarchy_RigHierarchy, "CopyPose", _params);
 deAlloc(_params);
end
FNR("BL4.CopyPose");

BL4.FindBone_ForBlueprintOnly = function(OwnerAddress, InKey)
 local _paramsSize = 0x128
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindBone_ForBlueprintOnly: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0
 writeQword(_params + 0x0, InKey)
 UE.CallProcessEventEx(OwnerAddress, "FindBone_ForBlueprintOnly", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindBone_ForBlueprintOnly");

BL4.FindControl_ForBlueprintOnly = function(OwnerAddress, InKey)
 local _paramsSize = 0x510
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindControl_ForBlueprintOnly: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0
 writeQword(_params + 0x0, InKey)
 UE.CallProcessEventEx(OwnerAddress, "FindControl_ForBlueprintOnly", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindControl_ForBlueprintOnly");

BL4.FindNull_ForBlueprintOnly = function(OwnerAddress, InKey)
 local _paramsSize = 0x220
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindNull_ForBlueprintOnly: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0
 writeQword(_params + 0x0, InKey)
 UE.CallProcessEventEx(OwnerAddress, "FindNull_ForBlueprintOnly", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindNull_ForBlueprintOnly");

BL4.GetAllKeys_ForBlueprint = function(OwnerAddress, bTraverse)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAllKeys_ForBlueprint: Failed To Allocate The Params");return;end;
 bTraverse = bTraverse or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bTraverse at +0x0
 writeByte(_params + 0x0, bTraverse)
 UE.CallProcessEventEx(OwnerAddress, "GetAllKeys_ForBlueprint", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAllKeys_ForBlueprint");

BL4.GetBoneKeys = function(OwnerAddress, bTraverse)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBoneKeys: Failed To Allocate The Params");return;end;
 bTraverse = bTraverse or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bTraverse at +0x0
 writeByte(_params + 0x0, bTraverse)
 UE.CallProcessEventEx(OwnerAddress, "GetBoneKeys", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBoneKeys");

BL4.GetBoolArrayMetadata = function(OwnerAddress, InItem, InMetadataName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBoolArrayMetadata: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 UE.CallProcessEventEx(OwnerAddress, "GetBoolArrayMetadata", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBoolArrayMetadata");

BL4.GetBoolMetadata = function(OwnerAddress, InItem, InMetadataName, DefaultValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBoolMetadata: Failed To Allocate The Params");return;end;
 DefaultValue = DefaultValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC, DefaultValue at +0x14
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 writeByte(_params + 0x14, DefaultValue)
 UE.CallProcessEventEx(OwnerAddress, "GetBoolMetadata", _params);
 local RET=readByte(_params + 0x15);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBoolMetadata");

BL4.GetChildren = function(OwnerAddress, InKey, bRecursive)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetChildren: Failed To Allocate The Params");return;end;
 bRecursive = bRecursive or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, bRecursive at +0xC
 writeQword(_params + 0x0, InKey)
 writeByte(_params + 0xC, bRecursive)
 UE.CallProcessEventEx(OwnerAddress, "GetChildren", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetChildren");

BL4.GetConnectorKeys = function(OwnerAddress, bTraverse)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetConnectorKeys: Failed To Allocate The Params");return;end;
 bTraverse = bTraverse or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bTraverse at +0x0
 writeByte(_params + 0x0, bTraverse)
 UE.CallProcessEventEx(OwnerAddress, "GetConnectorKeys", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetConnectorKeys");

BL4.GetConnectorStates = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetConnectorStates: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetConnectorStates", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetConnectorStates");

BL4.GetControlKeys = function(OwnerAddress, bTraverse)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetControlKeys: Failed To Allocate The Params");return;end;
 bTraverse = bTraverse or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bTraverse at +0x0
 writeByte(_params + 0x0, bTraverse)
 UE.CallProcessEventEx(OwnerAddress, "GetControlKeys", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetControlKeys");

BL4.GetController = function(OwnerAddress, bCreateIfNeeded)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetController: Failed To Allocate The Params");return;end;
 bCreateIfNeeded = bCreateIfNeeded or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bCreateIfNeeded at +0x0
 writeByte(_params + 0x0, bCreateIfNeeded)
 UE.CallProcessEventEx(OwnerAddress, "GetController", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetController");

BL4.GetControlPreferredEulerAngles = function(OwnerAddress, InKey, InRotationOrder, bInitial)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetControlPreferredEulerAngles: Failed To Allocate The Params");return;end;
 InRotationOrder = InRotationOrder or 0
 bInitial = bInitial or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, InRotationOrder at +0xC, bInitial at +0xD
 writeQword(_params + 0x0, InKey)
 writeByte(_params + 0xC, InRotationOrder)
 writeByte(_params + 0xD, bInitial)
 UE.CallProcessEventEx(OwnerAddress, "GetControlPreferredEulerAngles", _params);
 local RET={X=readFloat(_params+0x10),Y=readFloat(_params+0x18),Z=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetControlPreferredEulerAngles");

BL4.GetControlPreferredEulerAnglesByIndex = function(OwnerAddress, InElementIndex, InRotationOrder, bInitial)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetControlPreferredEulerAnglesByIndex: Failed To Allocate The Params");return;end;
 InElementIndex = InElementIndex or 0
 InRotationOrder = InRotationOrder or 0
 bInitial = bInitial or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InElementIndex at +0x0, InRotationOrder at +0x4, bInitial at +0x5
 writeInteger(_params + 0x0, InElementIndex)
 writeByte(_params + 0x4, InRotationOrder)
 writeByte(_params + 0x5, bInitial)
 UE.CallProcessEventEx(OwnerAddress, "GetControlPreferredEulerAnglesByIndex", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetControlPreferredEulerAnglesByIndex");

BL4.GetControlPreferredEulerRotationOrder = function(OwnerAddress, InKey, bFromSettings)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetControlPreferredEulerRotationOrder: Failed To Allocate The Params");return;end;
 bFromSettings = bFromSettings or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, bFromSettings at +0xC
 writeQword(_params + 0x0, InKey)
 writeByte(_params + 0xC, bFromSettings)
 UE.CallProcessEventEx(OwnerAddress, "GetControlPreferredEulerRotationOrder", _params);
 local RET=readByte(_params + 0xD);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetControlPreferredEulerRotationOrder");

BL4.GetControlPreferredEulerRotationOrderByIndex = function(OwnerAddress, InElementIndex, bFromSettings)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetControlPreferredEulerRotationOrderByIndex: Failed To Allocate The Params");return;end;
 InElementIndex = InElementIndex or 0
 bFromSettings = bFromSettings or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InElementIndex at +0x0, bFromSettings at +0x4
 writeInteger(_params + 0x0, InElementIndex)
 writeByte(_params + 0x4, bFromSettings)
 UE.CallProcessEventEx(OwnerAddress, "GetControlPreferredEulerRotationOrderByIndex", _params);
 local RET=readByte(_params + 0x5);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetControlPreferredEulerRotationOrderByIndex");

BL4.GetControlPreferredRotator = function(OwnerAddress, InKey, bInitial)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetControlPreferredRotator: Failed To Allocate The Params");return;end;
 bInitial = bInitial or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, bInitial at +0xC
 writeQword(_params + 0x0, InKey)
 writeByte(_params + 0xC, bInitial)
 UE.CallProcessEventEx(OwnerAddress, "GetControlPreferredRotator", _params);
 local RET={Pitch=readFloat(_params+0x10),Yaw=readFloat(_params+0x18),Roll=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetControlPreferredRotator");

BL4.GetControlPreferredRotatorByIndex = function(OwnerAddress, InElementIndex, bInitial)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetControlPreferredRotatorByIndex: Failed To Allocate The Params");return;end;
 InElementIndex = InElementIndex or 0
 bInitial = bInitial or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InElementIndex at +0x0, bInitial at +0x4
 writeInteger(_params + 0x0, InElementIndex)
 writeByte(_params + 0x4, bInitial)
 UE.CallProcessEventEx(OwnerAddress, "GetControlPreferredRotatorByIndex", _params);
 local RET={Pitch=readFloat(_params+0x8),Yaw=readFloat(_params+0x10),Roll=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetControlPreferredRotatorByIndex");

BL4.GetControlValue = function(OwnerAddress, InKey, InValueType)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetControlValue: Failed To Allocate The Params");return;end;
 InValueType = InValueType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, InValueType at +0xC
 writeQword(_params + 0x0, InKey)
 writeByte(_params + 0xC, InValueType)
 UE.CallProcessEventEx(OwnerAddress, "GetControlValue", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetControlValue");

BL4.GetControlValueByIndex = function(OwnerAddress, InElementIndex, InValueType)
 local _paramsSize = 0x90
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetControlValueByIndex: Failed To Allocate The Params");return;end;
 InElementIndex = InElementIndex or 0
 InValueType = InValueType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InElementIndex at +0x0, InValueType at +0x4
 writeInteger(_params + 0x0, InElementIndex)
 writeByte(_params + 0x4, InValueType)
 UE.CallProcessEventEx(OwnerAddress, "GetControlValueByIndex", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetControlValueByIndex");

BL4.GetCurveKeys = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCurveKeys: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCurveKeys", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCurveKeys");

BL4.GetCurveValue = function(OwnerAddress, InKey)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCurveValue: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0
 writeQword(_params + 0x0, InKey)
 UE.CallProcessEventEx(OwnerAddress, "GetCurveValue", _params);
 local RET=readFloat(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCurveValue");

BL4.GetCurveValueByIndex = function(OwnerAddress, InElementIndex)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCurveValueByIndex: Failed To Allocate The Params");return;end;
 InElementIndex = InElementIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InElementIndex at +0x0
 writeInteger(_params + 0x0, InElementIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetCurveValueByIndex", _params);
 local RET=readFloat(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCurveValueByIndex");

BL4.GetDefaultParent = function(OwnerAddress, InKey)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDefaultParent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0
 writeQword(_params + 0x0, InKey)
 UE.CallProcessEventEx(OwnerAddress, "GetDefaultParent", _params);
 local RET=readQword(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDefaultParent");

BL4.GetEulerTransformFromControlValue = function(OwnerAddress, InValue)
 local _paramsSize = 0xD0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetEulerTransformFromControlValue: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InValue at +0x0
 writeQword(_params + 0x0, InValue)
 UE.CallProcessEventEx(OwnerAddress, "GetEulerTransformFromControlValue", _params);
 local RET=readQword(_params + 0x88);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetEulerTransformFromControlValue");

BL4.GetFirstParent = function(OwnerAddress, InKey)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetFirstParent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0
 writeQword(_params + 0x0, InKey)
 UE.CallProcessEventEx(OwnerAddress, "GetFirstParent", _params);
 local RET=readQword(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetFirstParent");

BL4.GetFloatArrayMetadata = function(OwnerAddress, InItem, InMetadataName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetFloatArrayMetadata: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 UE.CallProcessEventEx(OwnerAddress, "GetFloatArrayMetadata", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetFloatArrayMetadata");

BL4.GetFloatFromControlValue = function(OwnerAddress, InValue)
 local _paramsSize = 0x88
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetFloatFromControlValue: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InValue at +0x0
 writeQword(_params + 0x0, InValue)
 UE.CallProcessEventEx(OwnerAddress, "GetFloatFromControlValue", _params);
 local RET=readFloat(_params + 0x84);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetFloatFromControlValue");

BL4.GetFloatMetadata = function(OwnerAddress, InItem, InMetadataName, DefaultValue)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetFloatMetadata: Failed To Allocate The Params");return;end;
 DefaultValue = DefaultValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC, DefaultValue at +0x14
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 writeFloat(_params + 0x14, DefaultValue)
 UE.CallProcessEventEx(OwnerAddress, "GetFloatMetadata", _params);
 local RET=readFloat(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetFloatMetadata");

BL4.GetGlobalControlOffsetTransform = function(OwnerAddress, InKey, bInitial)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetGlobalControlOffsetTransform: Failed To Allocate The Params");return;end;
 bInitial = bInitial or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, bInitial at +0xC
 writeQword(_params + 0x0, InKey)
 writeByte(_params + 0xC, bInitial)
 UE.CallProcessEventEx(OwnerAddress, "GetGlobalControlOffsetTransform", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetGlobalControlOffsetTransform");

BL4.GetGlobalControlOffsetTransformByIndex = function(OwnerAddress, InElementIndex, bInitial)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetGlobalControlOffsetTransformByIndex: Failed To Allocate The Params");return;end;
 InElementIndex = InElementIndex or 0
 bInitial = bInitial or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InElementIndex at +0x0, bInitial at +0x4
 writeInteger(_params + 0x0, InElementIndex)
 writeByte(_params + 0x4, bInitial)
 UE.CallProcessEventEx(OwnerAddress, "GetGlobalControlOffsetTransformByIndex", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetGlobalControlOffsetTransformByIndex");

BL4.GetGlobalControlShapeTransform = function(OwnerAddress, InKey, bInitial)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetGlobalControlShapeTransform: Failed To Allocate The Params");return;end;
 bInitial = bInitial or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, bInitial at +0xC
 writeQword(_params + 0x0, InKey)
 writeByte(_params + 0xC, bInitial)
 UE.CallProcessEventEx(OwnerAddress, "GetGlobalControlShapeTransform", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetGlobalControlShapeTransform");

BL4.GetGlobalControlShapeTransformByIndex = function(OwnerAddress, InElementIndex, bInitial)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetGlobalControlShapeTransformByIndex: Failed To Allocate The Params");return;end;
 InElementIndex = InElementIndex or 0
 bInitial = bInitial or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InElementIndex at +0x0, bInitial at +0x4
 writeInteger(_params + 0x0, InElementIndex)
 writeByte(_params + 0x4, bInitial)
 UE.CallProcessEventEx(OwnerAddress, "GetGlobalControlShapeTransformByIndex", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetGlobalControlShapeTransformByIndex");

BL4.GetGlobalTransform = function(OwnerAddress, InKey, bInitial)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetGlobalTransform: Failed To Allocate The Params");return;end;
 bInitial = bInitial or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, bInitial at +0xC
 writeQword(_params + 0x0, InKey)
 writeByte(_params + 0xC, bInitial)
 UE.CallProcessEventEx(OwnerAddress, "GetGlobalTransform", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetGlobalTransform");

BL4.GetGlobalTransformByIndex = function(OwnerAddress, InElementIndex, bInitial)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetGlobalTransformByIndex: Failed To Allocate The Params");return;end;
 InElementIndex = InElementIndex or 0
 bInitial = bInitial or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InElementIndex at +0x0, bInitial at +0x4
 writeInteger(_params + 0x0, InElementIndex)
 writeByte(_params + 0x4, bInitial)
 UE.CallProcessEventEx(OwnerAddress, "GetGlobalTransformByIndex", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetGlobalTransformByIndex");

BL4.GetIndex_ForBlueprint = function(OwnerAddress, InKey)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetIndex_ForBlueprint: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0
 writeQword(_params + 0x0, InKey)
 UE.CallProcessEventEx(OwnerAddress, "GetIndex_ForBlueprint", _params);
 local RET=readInteger(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetIndex_ForBlueprint");

BL4.GetInt32ArrayMetadata = function(OwnerAddress, InItem, InMetadataName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInt32ArrayMetadata: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 UE.CallProcessEventEx(OwnerAddress, "GetInt32ArrayMetadata", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInt32ArrayMetadata");

BL4.GetInt32Metadata = function(OwnerAddress, InItem, InMetadataName, DefaultValue)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInt32Metadata: Failed To Allocate The Params");return;end;
 DefaultValue = DefaultValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC, DefaultValue at +0x14
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 writeInteger(_params + 0x14, DefaultValue)
 UE.CallProcessEventEx(OwnerAddress, "GetInt32Metadata", _params);
 local RET=readInteger(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInt32Metadata");

BL4.GetIntFromControlValue = function(OwnerAddress, InValue)
 local _paramsSize = 0x88
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetIntFromControlValue: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InValue at +0x0
 writeQword(_params + 0x0, InValue)
 UE.CallProcessEventEx(OwnerAddress, "GetIntFromControlValue", _params);
 local RET=readInteger(_params + 0x84);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetIntFromControlValue");

BL4.GetKey = function(OwnerAddress, InElementIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetKey: Failed To Allocate The Params");return;end;
 InElementIndex = InElementIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InElementIndex at +0x0
 writeInteger(_params + 0x0, InElementIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetKey", _params);
 local RET=readQword(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetKey");

BL4.GetKeys = function(OwnerAddress, InElementIndices)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetKeys: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InElementIndices at +0x0
 writeQword(_params + 0x0, InElementIndices)
 UE.CallProcessEventEx(OwnerAddress, "GetKeys", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetKeys");

BL4.GetLinearColorArrayMetadata = function(OwnerAddress, InItem, InMetadataName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLinearColorArrayMetadata: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 UE.CallProcessEventEx(OwnerAddress, "GetLinearColorArrayMetadata", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLinearColorArrayMetadata");

BL4.GetLinearColorMetadata = function(OwnerAddress, InItem, InMetadataName, DefaultValue)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLinearColorMetadata: Failed To Allocate The Params");return;end;
 DefaultValue = DefaultValue or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC, DefaultValue at +0x14
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 writeFloat(_params + 0x14, (DefaultValue and DefaultValue.R) or 0)
 writeFloat(_params + 0x18, (DefaultValue and DefaultValue.G) or 0)
 writeFloat(_params + 0x1C, (DefaultValue and DefaultValue.B) or 0)
 writeFloat(_params + 0x20, (DefaultValue and DefaultValue.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetLinearColorMetadata", _params);
 local RET={R=readFloat(_params+0x24),G=readFloat(_params+0x28),B=readFloat(_params+0x2C),A=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLinearColorMetadata");

BL4.GetLocalControlShapeTransform = function(OwnerAddress, InKey, bInitial)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLocalControlShapeTransform: Failed To Allocate The Params");return;end;
 bInitial = bInitial or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, bInitial at +0xC
 writeQword(_params + 0x0, InKey)
 writeByte(_params + 0xC, bInitial)
 UE.CallProcessEventEx(OwnerAddress, "GetLocalControlShapeTransform", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLocalControlShapeTransform");

BL4.GetLocalControlShapeTransformByIndex = function(OwnerAddress, InElementIndex, bInitial)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLocalControlShapeTransformByIndex: Failed To Allocate The Params");return;end;
 InElementIndex = InElementIndex or 0
 bInitial = bInitial or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InElementIndex at +0x0, bInitial at +0x4
 writeInteger(_params + 0x0, InElementIndex)
 writeByte(_params + 0x4, bInitial)
 UE.CallProcessEventEx(OwnerAddress, "GetLocalControlShapeTransformByIndex", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLocalControlShapeTransformByIndex");

BL4.GetLocalIndex_ForBlueprint = function(OwnerAddress, InKey)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLocalIndex_ForBlueprint: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0
 writeQword(_params + 0x0, InKey)
 UE.CallProcessEventEx(OwnerAddress, "GetLocalIndex_ForBlueprint", _params);
 local RET=readInteger(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLocalIndex_ForBlueprint");

BL4.GetLocalTransform = function(OwnerAddress, InKey, bInitial)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLocalTransform: Failed To Allocate The Params");return;end;
 bInitial = bInitial or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, bInitial at +0xC
 writeQword(_params + 0x0, InKey)
 writeByte(_params + 0xC, bInitial)
 UE.CallProcessEventEx(OwnerAddress, "GetLocalTransform", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLocalTransform");

BL4.GetLocalTransformByIndex = function(OwnerAddress, InElementIndex, bInitial)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLocalTransformByIndex: Failed To Allocate The Params");return;end;
 InElementIndex = InElementIndex or 0
 bInitial = bInitial or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InElementIndex at +0x0, bInitial at +0x4
 writeInteger(_params + 0x0, InElementIndex)
 writeByte(_params + 0x4, bInitial)
 UE.CallProcessEventEx(OwnerAddress, "GetLocalTransformByIndex", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLocalTransformByIndex");

BL4.GetMetadataNames = function(OwnerAddress, InItem)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMetadataNames: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0
 writeQword(_params + 0x0, InItem)
 UE.CallProcessEventEx(OwnerAddress, "GetMetadataNames", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMetadataNames");

BL4.GetMetadataType = function(OwnerAddress, InItem, InMetadataName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMetadataType: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 UE.CallProcessEventEx(OwnerAddress, "GetMetadataType", _params);
 local RET=readByte(_params + 0x14);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMetadataType");

BL4.GetModulePath = function(OwnerAddress, InItem)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetModulePath: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0
 writeQword(_params + 0x0, InItem)
 UE.CallProcessEventEx(OwnerAddress, "GetModulePath", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetModulePath");

BL4.GetModulePathFName = function(OwnerAddress, InItem)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetModulePathFName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0
 writeQword(_params + 0x0, InItem)
 UE.CallProcessEventEx(OwnerAddress, "GetModulePathFName", _params);
 local RET=readQword(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetModulePathFName");

BL4.GetNameArrayMetadata = function(OwnerAddress, InItem, InMetadataName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNameArrayMetadata: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 UE.CallProcessEventEx(OwnerAddress, "GetNameArrayMetadata", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNameArrayMetadata");

BL4.GetNameMetadata = function(OwnerAddress, InItem, InMetadataName, DefaultValue)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNameMetadata: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC, DefaultValue at +0x14
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 writeQword(_params + 0x14, DefaultValue)
 UE.CallProcessEventEx(OwnerAddress, "GetNameMetadata", _params);
 local RET=readQword(_params + 0x1C);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNameMetadata");

BL4.GetNameSpace = function(OwnerAddress, InItem)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNameSpace: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0
 writeQword(_params + 0x0, InItem)
 UE.CallProcessEventEx(OwnerAddress, "GetNameSpace", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNameSpace");

BL4.GetNameSpaceFName = function(OwnerAddress, InItem)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNameSpaceFName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0
 writeQword(_params + 0x0, InItem)
 UE.CallProcessEventEx(OwnerAddress, "GetNameSpaceFName", _params);
 local RET=readQword(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNameSpaceFName");

BL4.GetNullKeys = function(OwnerAddress, bTraverse)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNullKeys: Failed To Allocate The Params");return;end;
 bTraverse = bTraverse or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bTraverse at +0x0
 writeByte(_params + 0x0, bTraverse)
 UE.CallProcessEventEx(OwnerAddress, "GetNullKeys", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNullKeys");

BL4.GetNumberOfParents = function(OwnerAddress, InKey)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumberOfParents: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0
 writeQword(_params + 0x0, InKey)
 UE.CallProcessEventEx(OwnerAddress, "GetNumberOfParents", _params);
 local RET=readInteger(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumberOfParents");

BL4.GetParents = function(OwnerAddress, InKey, bRecursive)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetParents: Failed To Allocate The Params");return;end;
 bRecursive = bRecursive or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, bRecursive at +0xC
 writeQword(_params + 0x0, InKey)
 writeByte(_params + 0xC, bRecursive)
 UE.CallProcessEventEx(OwnerAddress, "GetParents", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetParents");

BL4.GetParentTransform = function(OwnerAddress, InKey, bInitial)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetParentTransform: Failed To Allocate The Params");return;end;
 bInitial = bInitial or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, bInitial at +0xC
 writeQword(_params + 0x0, InKey)
 writeByte(_params + 0xC, bInitial)
 UE.CallProcessEventEx(OwnerAddress, "GetParentTransform", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetParentTransform");

BL4.GetParentTransformByIndex = function(OwnerAddress, InElementIndex, bInitial)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetParentTransformByIndex: Failed To Allocate The Params");return;end;
 InElementIndex = InElementIndex or 0
 bInitial = bInitial or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InElementIndex at +0x0, bInitial at +0x4
 writeInteger(_params + 0x0, InElementIndex)
 writeByte(_params + 0x4, bInitial)
 UE.CallProcessEventEx(OwnerAddress, "GetParentTransformByIndex", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetParentTransformByIndex");

BL4.GetParentWeight = function(OwnerAddress, InChild, InParent, bInitial)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetParentWeight: Failed To Allocate The Params");return;end;
 bInitial = bInitial or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InChild at +0x0, InParent at +0xC, bInitial at +0x18
 writeQword(_params + 0x0, InChild)
 writeQword(_params + 0xC, InParent)
 writeByte(_params + 0x18, bInitial)
 UE.CallProcessEventEx(OwnerAddress, "GetParentWeight", _params);
 local RET=readQword(_params + 0x1C);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetParentWeight");

BL4.GetParentWeightArray = function(OwnerAddress, InChild, bInitial)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetParentWeightArray: Failed To Allocate The Params");return;end;
 bInitial = bInitial or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InChild at +0x0, bInitial at +0xC
 writeQword(_params + 0x0, InChild)
 writeByte(_params + 0xC, bInitial)
 UE.CallProcessEventEx(OwnerAddress, "GetParentWeightArray", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetParentWeightArray");

BL4.GetPhysicsKeys = function(OwnerAddress, bTraverse)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPhysicsKeys: Failed To Allocate The Params");return;end;
 bTraverse = bTraverse or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bTraverse at +0x0
 writeByte(_params + 0x0, bTraverse)
 UE.CallProcessEventEx(OwnerAddress, "GetPhysicsKeys", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPhysicsKeys");

BL4.GetPose = function(OwnerAddress, bInitial, bIncludeTransientControls)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPose: Failed To Allocate The Params");return;end;
 bInitial = bInitial or false
 bIncludeTransientControls = bIncludeTransientControls or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bInitial at +0x0, bIncludeTransientControls at +0x1
 writeByte(_params + 0x0, bInitial)
 writeByte(_params + 0x1, bIncludeTransientControls)
 UE.CallProcessEventEx(OwnerAddress, "GetPose", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPose");

BL4.GetPreviousName = function(OwnerAddress, InKey)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPreviousName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0
 writeQword(_params + 0x0, InKey)
 UE.CallProcessEventEx(OwnerAddress, "GetPreviousName", _params);
 local RET=readQword(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPreviousName");

BL4.GetPreviousParent = function(OwnerAddress, InKey)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPreviousParent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0
 writeQword(_params + 0x0, InKey)
 UE.CallProcessEventEx(OwnerAddress, "GetPreviousParent", _params);
 local RET=readQword(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPreviousParent");

BL4.GetQuatArrayMetadata = function(OwnerAddress, InItem, InMetadataName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetQuatArrayMetadata: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 UE.CallProcessEventEx(OwnerAddress, "GetQuatArrayMetadata", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetQuatArrayMetadata");

BL4.GetQuatMetadata = function(OwnerAddress, InItem, InMetadataName, DefaultValue)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetQuatMetadata: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC, DefaultValue at +0x20
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 writeQword(_params + 0x20, DefaultValue)
 UE.CallProcessEventEx(OwnerAddress, "GetQuatMetadata", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetQuatMetadata");

BL4.GetReferenceKeys = function(OwnerAddress, bTraverse)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetReferenceKeys: Failed To Allocate The Params");return;end;
 bTraverse = bTraverse or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bTraverse at +0x0
 writeByte(_params + 0x0, bTraverse)
 UE.CallProcessEventEx(OwnerAddress, "GetReferenceKeys", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetReferenceKeys");

BL4.GetRigElementKeyArrayMetadata = function(OwnerAddress, InItem, InMetadataName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRigElementKeyArrayMetadata: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 UE.CallProcessEventEx(OwnerAddress, "GetRigElementKeyArrayMetadata", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRigElementKeyArrayMetadata");

BL4.GetRigElementKeyMetadata = function(OwnerAddress, InItem, InMetadataName, DefaultValue)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRigElementKeyMetadata: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC, DefaultValue at +0x14
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 writeQword(_params + 0x14, DefaultValue)
 UE.CallProcessEventEx(OwnerAddress, "GetRigElementKeyMetadata", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRigElementKeyMetadata");

BL4.GetRootElementKeys = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRootElementKeys: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetRootElementKeys", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRootElementKeys");

BL4.GetRotatorArrayMetadata = function(OwnerAddress, InItem, InMetadataName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRotatorArrayMetadata: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 UE.CallProcessEventEx(OwnerAddress, "GetRotatorArrayMetadata", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRotatorArrayMetadata");

BL4.GetRotatorFromControlValue = function(OwnerAddress, InValue)
 local _paramsSize = 0xA0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRotatorFromControlValue: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InValue at +0x0
 writeQword(_params + 0x0, InValue)
 UE.CallProcessEventEx(OwnerAddress, "GetRotatorFromControlValue", _params);
 local RET={Pitch=readFloat(_params+0x88),Yaw=readFloat(_params+0x90),Roll=readFloat(_params+0x98)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRotatorFromControlValue");

BL4.GetRotatorMetadata = function(OwnerAddress, InItem, InMetadataName, DefaultValue)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRotatorMetadata: Failed To Allocate The Params");return;end;
 DefaultValue = DefaultValue or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC, DefaultValue at +0x18
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 writeDouble(_params + 0x18, (DefaultValue and DefaultValue.Pitch) or 0)
 writeDouble(_params + 0x20, (DefaultValue and DefaultValue.Yaw) or 0)
 writeDouble(_params + 0x28, (DefaultValue and DefaultValue.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetRotatorMetadata", _params);
 local RET={Pitch=readFloat(_params+0x30),Yaw=readFloat(_params+0x38),Roll=readFloat(_params+0x40)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRotatorMetadata");

BL4.GetRuleManager = function(OwnerAddress, bCreateIfNeeded)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRuleManager: Failed To Allocate The Params");return;end;
 bCreateIfNeeded = bCreateIfNeeded or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bCreateIfNeeded at +0x0
 writeByte(_params + 0x0, bCreateIfNeeded)
 UE.CallProcessEventEx(OwnerAddress, "GetRuleManager", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRuleManager");

BL4.GetSelectedKeys = function(OwnerAddress, InTypeFilter)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSelectedKeys: Failed To Allocate The Params");return;end;
 InTypeFilter = InTypeFilter or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InTypeFilter at +0x0
 writeByte(_params + 0x0, InTypeFilter)
 UE.CallProcessEventEx(OwnerAddress, "GetSelectedKeys", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSelectedKeys");

BL4.GetSocketKeys = function(OwnerAddress, bTraverse)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSocketKeys: Failed To Allocate The Params");return;end;
 bTraverse = bTraverse or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bTraverse at +0x0
 writeByte(_params + 0x0, bTraverse)
 UE.CallProcessEventEx(OwnerAddress, "GetSocketKeys", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSocketKeys");

BL4.GetSocketStates = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSocketStates: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetSocketStates", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSocketStates");

BL4.GetTags = function(OwnerAddress, InItem)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTags: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0
 writeQword(_params + 0x0, InItem)
 UE.CallProcessEventEx(OwnerAddress, "GetTags", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTags");

BL4.GetTransformArrayMetadata = function(OwnerAddress, InItem, InMetadataName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTransformArrayMetadata: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 UE.CallProcessEventEx(OwnerAddress, "GetTransformArrayMetadata", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTransformArrayMetadata");

BL4.GetTransformFromControlValue = function(OwnerAddress, InValue)
 local _paramsSize = 0xF0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTransformFromControlValue: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InValue at +0x0
 writeQword(_params + 0x0, InValue)
 UE.CallProcessEventEx(OwnerAddress, "GetTransformFromControlValue", _params);
 local RET=readQword(_params + 0x90);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTransformFromControlValue");

BL4.GetTransformMetadata = function(OwnerAddress, InItem, InMetadataName, DefaultValue)
 local _paramsSize = 0xE0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTransformMetadata: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC, DefaultValue at +0x20
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 writeQword(_params + 0x20, DefaultValue)
 UE.CallProcessEventEx(OwnerAddress, "GetTransformMetadata", _params);
 local RET=readQword(_params + 0x80);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTransformMetadata");

BL4.GetTransformNoScaleFromControlValue = function(OwnerAddress, InValue)
 local _paramsSize = 0xD0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTransformNoScaleFromControlValue: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InValue at +0x0
 writeQword(_params + 0x0, InValue)
 UE.CallProcessEventEx(OwnerAddress, "GetTransformNoScaleFromControlValue", _params);
 local RET=readQword(_params + 0x90);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTransformNoScaleFromControlValue");

BL4.GetVector2DFromControlValue = function(OwnerAddress, InValue)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVector2DFromControlValue: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InValue at +0x0
 writeQword(_params + 0x0, InValue)
 UE.CallProcessEventEx(OwnerAddress, "GetVector2DFromControlValue", _params);
 local RET={X=readFloat(_params+0x88),Y=readFloat(_params+0x90)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVector2DFromControlValue");

BL4.GetVectorArrayMetadata = function(OwnerAddress, InItem, InMetadataName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVectorArrayMetadata: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 UE.CallProcessEventEx(OwnerAddress, "GetVectorArrayMetadata", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVectorArrayMetadata");

BL4.GetVectorFromControlValue = function(OwnerAddress, InValue)
 local _paramsSize = 0xA0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVectorFromControlValue: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InValue at +0x0
 writeQword(_params + 0x0, InValue)
 UE.CallProcessEventEx(OwnerAddress, "GetVectorFromControlValue", _params);
 local RET={X=readFloat(_params+0x88),Y=readFloat(_params+0x90),Z=readFloat(_params+0x98)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVectorFromControlValue");

BL4.GetVectorMetadata = function(OwnerAddress, InItem, InMetadataName, DefaultValue)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVectorMetadata: Failed To Allocate The Params");return;end;
 DefaultValue = DefaultValue or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC, DefaultValue at +0x18
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 writeDouble(_params + 0x18, (DefaultValue and DefaultValue.X) or 0)
 writeDouble(_params + 0x20, (DefaultValue and DefaultValue.Y) or 0)
 writeDouble(_params + 0x28, (DefaultValue and DefaultValue.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetVectorMetadata", _params);
 local RET={X=readFloat(_params+0x30),Y=readFloat(_params+0x38),Z=readFloat(_params+0x40)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVectorMetadata");

BL4.HasTag = function(OwnerAddress, InItem, InTag)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.HasTag: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InTag at +0xC
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InTag)
 UE.CallProcessEventEx(OwnerAddress, "HasTag", _params);
 local RET=readByte(_params + 0x14);
 deAlloc(_params);
 return RET;
end
FNR("BL4.HasTag");

BL4.IsControllerAvailable = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsControllerAvailable: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsControllerAvailable", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsControllerAvailable");

BL4.IsCopyingHierarchy = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsCopyingHierarchy: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsCopyingHierarchy", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsCopyingHierarchy");

BL4.IsCurveValueSet = function(OwnerAddress, InKey)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsCurveValueSet: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0
 writeQword(_params + 0x0, InKey)
 UE.CallProcessEventEx(OwnerAddress, "IsCurveValueSet", _params);
 local RET=readByte(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsCurveValueSet");

BL4.IsCurveValueSetByIndex = function(OwnerAddress, InElementIndex)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsCurveValueSetByIndex: Failed To Allocate The Params");return;end;
 InElementIndex = InElementIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InElementIndex at +0x0
 writeInteger(_params + 0x0, InElementIndex)
 UE.CallProcessEventEx(OwnerAddress, "IsCurveValueSetByIndex", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsCurveValueSetByIndex");

BL4.IsParentedTo = function(OwnerAddress, InChild, InParent)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsParentedTo: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InChild at +0x0, InParent at +0xC
 writeQword(_params + 0x0, InChild)
 writeQword(_params + 0xC, InParent)
 UE.CallProcessEventEx(OwnerAddress, "IsParentedTo", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsParentedTo");

BL4.IsProcedural = function(OwnerAddress, InKey)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsProcedural: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0
 writeQword(_params + 0x0, InKey)
 UE.CallProcessEventEx(OwnerAddress, "IsProcedural", _params);
 local RET=readByte(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsProcedural");

BL4.IsSelected = function(OwnerAddress, InKey)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsSelected: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0
 writeQword(_params + 0x0, InKey)
 UE.CallProcessEventEx(OwnerAddress, "IsSelected", _params);
 local RET=readByte(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsSelected");

BL4.IsSelectedByIndex = function(OwnerAddress, InIndex)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsSelectedByIndex: Failed To Allocate The Params");return;end;
 InIndex = InIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InIndex at +0x0
 writeInteger(_params + 0x0, InIndex)
 UE.CallProcessEventEx(OwnerAddress, "IsSelectedByIndex", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsSelectedByIndex");

BL4.IsValidIndex = function(OwnerAddress, InElementIndex)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsValidIndex: Failed To Allocate The Params");return;end;
 InElementIndex = InElementIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InElementIndex at +0x0
 writeInteger(_params + 0x0, InElementIndex)
 UE.CallProcessEventEx(OwnerAddress, "IsValidIndex", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsValidIndex");

BL4.MakeControlValueFromBool = function(OwnerAddress, InValue)
 local _paramsSize = 0x88
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeControlValueFromBool: Failed To Allocate The Params");return;end;
 InValue = InValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InValue at +0x0
 writeByte(_params + 0x0, InValue)
 UE.CallProcessEventEx(OwnerAddress, "MakeControlValueFromBool", _params);
 local RET=readQword(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeControlValueFromBool");

BL4.MakeControlValueFromEulerTransform = function(OwnerAddress, InValue)
 local _paramsSize = 0xD0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeControlValueFromEulerTransform: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InValue at +0x0
 writeQword(_params + 0x0, InValue)
 UE.CallProcessEventEx(OwnerAddress, "MakeControlValueFromEulerTransform", _params);
 local RET=readQword(_params + 0x48);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeControlValueFromEulerTransform");

BL4.MakeControlValueFromFloat = function(OwnerAddress, InValue)
 local _paramsSize = 0x88
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeControlValueFromFloat: Failed To Allocate The Params");return;end;
 InValue = InValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InValue at +0x0
 writeFloat(_params + 0x0, InValue)
 UE.CallProcessEventEx(OwnerAddress, "MakeControlValueFromFloat", _params);
 local RET=readQword(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeControlValueFromFloat");

BL4.MakeControlValueFromInt = function(OwnerAddress, InValue)
 local _paramsSize = 0x88
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeControlValueFromInt: Failed To Allocate The Params");return;end;
 InValue = InValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InValue at +0x0
 writeInteger(_params + 0x0, InValue)
 UE.CallProcessEventEx(OwnerAddress, "MakeControlValueFromInt", _params);
 local RET=readQword(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeControlValueFromInt");

BL4.MakeControlValueFromRotator = function(OwnerAddress, InValue)
 local _paramsSize = 0xA0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeControlValueFromRotator: Failed To Allocate The Params");return;end;
 InValue = InValue or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InValue at +0x0
 writeDouble(_params + 0x0, (InValue and InValue.Pitch) or 0)
 writeDouble(_params + 0x8, (InValue and InValue.Yaw) or 0)
 writeDouble(_params + 0x10, (InValue and InValue.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "MakeControlValueFromRotator", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeControlValueFromRotator");

BL4.MakeControlValueFromTransform = function(OwnerAddress, InValue)
 local _paramsSize = 0xE8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeControlValueFromTransform: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InValue at +0x0
 writeQword(_params + 0x0, InValue)
 UE.CallProcessEventEx(OwnerAddress, "MakeControlValueFromTransform", _params);
 local RET=readQword(_params + 0x60);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeControlValueFromTransform");

BL4.MakeControlValueFromTransformNoScale = function(OwnerAddress, InValue)
 local _paramsSize = 0xC8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeControlValueFromTransformNoScale: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InValue at +0x0
 writeQword(_params + 0x0, InValue)
 UE.CallProcessEventEx(OwnerAddress, "MakeControlValueFromTransformNoScale", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeControlValueFromTransformNoScale");

BL4.MakeControlValueFromVector = function(OwnerAddress, InValue)
 local _paramsSize = 0xA0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeControlValueFromVector: Failed To Allocate The Params");return;end;
 InValue = InValue or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InValue at +0x0
 writeDouble(_params + 0x0, (InValue and InValue.X) or 0)
 writeDouble(_params + 0x8, (InValue and InValue.Y) or 0)
 writeDouble(_params + 0x10, (InValue and InValue.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "MakeControlValueFromVector", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeControlValueFromVector");

BL4.MakeControlValueFromVector2D = function(OwnerAddress, InValue)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeControlValueFromVector2D: Failed To Allocate The Params");return;end;
 InValue = InValue or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InValue at +0x0
 writeDouble(_params + 0x0, (InValue and InValue.X) or 0)
 writeDouble(_params + 0x8, (InValue and InValue.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "MakeControlValueFromVector2D", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeControlValueFromVector2D");

BL4.Num = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Num: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "Num", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Num");

BL4.RemoveAllMetadata = function(OwnerAddress, InItem)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveAllMetadata: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0
 writeQword(_params + 0x0, InItem)
 UE.CallProcessEventEx(OwnerAddress, "RemoveAllMetadata", _params);
 local RET=readByte(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RemoveAllMetadata");

BL4.RemoveMetadata = function(OwnerAddress, InItem, InMetadataName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveMetadata: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 UE.CallProcessEventEx(OwnerAddress, "RemoveMetadata", _params);
 local RET=readByte(_params + 0x14);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RemoveMetadata");

BL4.ResetPoseToInitial = function(OwnerAddress, InTypeFilter)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ResetPoseToInitial: Failed To Allocate The Params");return;end;
 InTypeFilter = InTypeFilter or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InTypeFilter at +0x0
 writeByte(_params + 0x0, InTypeFilter)
 UE.CallProcessEventEx(OwnerAddress, "ResetPoseToInitial", _params);
 deAlloc(_params);
end
FNR("BL4.ResetPoseToInitial");

BL4.RestoreConnectorsFromStates = function(OwnerAddress, InStates, bSetupUndoRedo)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RestoreConnectorsFromStates: Failed To Allocate The Params");return;end;
 bSetupUndoRedo = bSetupUndoRedo or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InStates at +0x0, bSetupUndoRedo at +0x10
 writeQword(_params + 0x0, InStates)
 writeByte(_params + 0x10, bSetupUndoRedo)
 UE.CallProcessEventEx(OwnerAddress, "RestoreConnectorsFromStates", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RestoreConnectorsFromStates");

BL4.RestoreSocketsFromStates = function(OwnerAddress, InStates, bSetupUndoRedo)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RestoreSocketsFromStates: Failed To Allocate The Params");return;end;
 bSetupUndoRedo = bSetupUndoRedo or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InStates at +0x0, bSetupUndoRedo at +0x10
 writeQword(_params + 0x0, InStates)
 writeByte(_params + 0x10, bSetupUndoRedo)
 UE.CallProcessEventEx(OwnerAddress, "RestoreSocketsFromStates", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RestoreSocketsFromStates");

BL4.SendAutoKeyEvent = function(OwnerAddress, InElement, InOffsetInSeconds, bAsynchronous)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SendAutoKeyEvent: Failed To Allocate The Params");return;end;
 InOffsetInSeconds = InOffsetInSeconds or 0
 bAsynchronous = bAsynchronous or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InElement at +0x0, InOffsetInSeconds at +0xC, bAsynchronous at +0x10
 writeQword(_params + 0x0, InElement)
 writeFloat(_params + 0xC, InOffsetInSeconds)
 writeByte(_params + 0x10, bAsynchronous)
 UE.CallProcessEventEx(OwnerAddress, "SendAutoKeyEvent", _params);
 deAlloc(_params);
end
FNR("BL4.SendAutoKeyEvent");

BL4.SetBoolArrayMetadata = function(OwnerAddress, InItem, InMetadataName, InValue)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBoolArrayMetadata: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC, InValue at +0x18
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 writeQword(_params + 0x18, InValue)
 UE.CallProcessEventEx(OwnerAddress, "SetBoolArrayMetadata", _params);
 local RET=readByte(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetBoolArrayMetadata");

BL4.SetBoolMetadata = function(OwnerAddress, InItem, InMetadataName, InValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBoolMetadata: Failed To Allocate The Params");return;end;
 InValue = InValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC, InValue at +0x14
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 writeByte(_params + 0x14, InValue)
 UE.CallProcessEventEx(OwnerAddress, "SetBoolMetadata", _params);
 local RET=readByte(_params + 0x15);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetBoolMetadata");

BL4.SetConnectorSettings = function(OwnerAddress, InKey, InSettings, bSetupUndo, bForce, bPrintPythonCommands)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetConnectorSettings: Failed To Allocate The Params");return;end;
 bSetupUndo = bSetupUndo or false
 bForce = bForce or false
 bPrintPythonCommands = bPrintPythonCommands or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, InSettings at +0x10, bSetupUndo at +0x38, bForce at +0x39, bPrintPythonCommands at +0x3A
 writeQword(_params + 0x0, InKey)
 writeQword(_params + 0x10, InSettings)
 writeByte(_params + 0x38, bSetupUndo)
 writeByte(_params + 0x39, bForce)
 writeByte(_params + 0x3A, bPrintPythonCommands)
 UE.CallProcessEventEx(OwnerAddress, "SetConnectorSettings", _params);
 deAlloc(_params);
end
FNR("BL4.SetConnectorSettings");

BL4.SetConnectorSettingsByIndex = function(OwnerAddress, InElementIndex, InSettings, bSetupUndo, bForce, bPrintPythonCommands)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetConnectorSettingsByIndex: Failed To Allocate The Params");return;end;
 InElementIndex = InElementIndex or 0
 bSetupUndo = bSetupUndo or false
 bForce = bForce or false
 bPrintPythonCommands = bPrintPythonCommands or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InElementIndex at +0x0, InSettings at +0x8, bSetupUndo at +0x30, bForce at +0x31, bPrintPythonCommands at +0x32
 writeInteger(_params + 0x0, InElementIndex)
 writeQword(_params + 0x8, InSettings)
 writeByte(_params + 0x30, bSetupUndo)
 writeByte(_params + 0x31, bForce)
 writeByte(_params + 0x32, bPrintPythonCommands)
 UE.CallProcessEventEx(OwnerAddress, "SetConnectorSettingsByIndex", _params);
 deAlloc(_params);
end
FNR("BL4.SetConnectorSettingsByIndex");

BL4.SetControlOffsetTransform = function(OwnerAddress, InKey, InTransform, bInitial, bAffectChildren, bSetupUndo, bPrintPythonCommands)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControlOffsetTransform: Failed To Allocate The Params");return;end;
 bInitial = bInitial or false
 bAffectChildren = bAffectChildren or false
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommands = bPrintPythonCommands or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, InTransform at +0x10, bInitial at +0x70, bAffectChildren at +0x71, bSetupUndo at +0x72, bPrintPythonCommands at +0x73
 writeQword(_params + 0x0, InKey)
 writeQword(_params + 0x10, InTransform)
 writeByte(_params + 0x70, bInitial)
 writeByte(_params + 0x71, bAffectChildren)
 writeByte(_params + 0x72, bSetupUndo)
 writeByte(_params + 0x73, bPrintPythonCommands)
 UE.CallProcessEventEx(OwnerAddress, "SetControlOffsetTransform", _params);
 deAlloc(_params);
end
FNR("BL4.SetControlOffsetTransform");

BL4.SetControlOffsetTransformByIndex = function(OwnerAddress, InElementIndex, InTransform, bInitial, bAffectChildren, bSetupUndo, bPrintPythonCommands)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControlOffsetTransformByIndex: Failed To Allocate The Params");return;end;
 InElementIndex = InElementIndex or 0
 bInitial = bInitial or false
 bAffectChildren = bAffectChildren or false
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommands = bPrintPythonCommands or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InElementIndex at +0x0, InTransform at +0x10, bInitial at +0x70, bAffectChildren at +0x71, bSetupUndo at +0x72, bPrintPythonCommands at +0x73
 writeInteger(_params + 0x0, InElementIndex)
 writeQword(_params + 0x10, InTransform)
 writeByte(_params + 0x70, bInitial)
 writeByte(_params + 0x71, bAffectChildren)
 writeByte(_params + 0x72, bSetupUndo)
 writeByte(_params + 0x73, bPrintPythonCommands)
 UE.CallProcessEventEx(OwnerAddress, "SetControlOffsetTransformByIndex", _params);
 deAlloc(_params);
end
FNR("BL4.SetControlOffsetTransformByIndex");

BL4.SetControlPreferredEulerAngles = function(OwnerAddress, InKey, InEulerAngles, InRotationOrder, bInitial, bFixEulerFlips)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControlPreferredEulerAngles: Failed To Allocate The Params");return;end;
 InEulerAngles = InEulerAngles or {X=0,Y=0,Z=0}
 InRotationOrder = InRotationOrder or 0
 bInitial = bInitial or false
 bFixEulerFlips = bFixEulerFlips or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, InEulerAngles at +0x10, InRotationOrder at +0x28, bInitial at +0x29, bFixEulerFlips at +0x2A
 writeQword(_params + 0x0, InKey)
 writeDouble(_params + 0x10, (InEulerAngles and InEulerAngles.X) or 0)
 writeDouble(_params + 0x18, (InEulerAngles and InEulerAngles.Y) or 0)
 writeDouble(_params + 0x20, (InEulerAngles and InEulerAngles.Z) or 0)
 writeByte(_params + 0x28, InRotationOrder)
 writeByte(_params + 0x29, bInitial)
 writeByte(_params + 0x2A, bFixEulerFlips)
 UE.CallProcessEventEx(OwnerAddress, "SetControlPreferredEulerAngles", _params);
 deAlloc(_params);
end
FNR("BL4.SetControlPreferredEulerAngles");

BL4.SetControlPreferredEulerAnglesByIndex = function(OwnerAddress, InElementIndex, InEulerAngles, InRotationOrder, bInitial, bFixEulerFlips)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControlPreferredEulerAnglesByIndex: Failed To Allocate The Params");return;end;
 InElementIndex = InElementIndex or 0
 InEulerAngles = InEulerAngles or {X=0,Y=0,Z=0}
 InRotationOrder = InRotationOrder or 0
 bInitial = bInitial or false
 bFixEulerFlips = bFixEulerFlips or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InElementIndex at +0x0, InEulerAngles at +0x8, InRotationOrder at +0x20, bInitial at +0x21, bFixEulerFlips at +0x22
 writeInteger(_params + 0x0, InElementIndex)
 writeDouble(_params + 0x8, (InEulerAngles and InEulerAngles.X) or 0)
 writeDouble(_params + 0x10, (InEulerAngles and InEulerAngles.Y) or 0)
 writeDouble(_params + 0x18, (InEulerAngles and InEulerAngles.Z) or 0)
 writeByte(_params + 0x20, InRotationOrder)
 writeByte(_params + 0x21, bInitial)
 writeByte(_params + 0x22, bFixEulerFlips)
 UE.CallProcessEventEx(OwnerAddress, "SetControlPreferredEulerAnglesByIndex", _params);
 deAlloc(_params);
end
FNR("BL4.SetControlPreferredEulerAnglesByIndex");

BL4.SetControlPreferredRotationOrder = function(OwnerAddress, InKey, InRotationOrder)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControlPreferredRotationOrder: Failed To Allocate The Params");return;end;
 InRotationOrder = InRotationOrder or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, InRotationOrder at +0xC
 writeQword(_params + 0x0, InKey)
 writeByte(_params + 0xC, InRotationOrder)
 UE.CallProcessEventEx(OwnerAddress, "SetControlPreferredRotationOrder", _params);
 deAlloc(_params);
end
FNR("BL4.SetControlPreferredRotationOrder");

BL4.SetControlPreferredRotationOrderByIndex = function(OwnerAddress, InElementIndex, InRotationOrder)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControlPreferredRotationOrderByIndex: Failed To Allocate The Params");return;end;
 InElementIndex = InElementIndex or 0
 InRotationOrder = InRotationOrder or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InElementIndex at +0x0, InRotationOrder at +0x4
 writeInteger(_params + 0x0, InElementIndex)
 writeByte(_params + 0x4, InRotationOrder)
 UE.CallProcessEventEx(OwnerAddress, "SetControlPreferredRotationOrderByIndex", _params);
 deAlloc(_params);
end
FNR("BL4.SetControlPreferredRotationOrderByIndex");

BL4.SetControlPreferredRotator = function(OwnerAddress, InKey, InRotator, bInitial, bFixEulerFlips)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControlPreferredRotator: Failed To Allocate The Params");return;end;
 InRotator = InRotator or {Pitch=0,Yaw=0,Roll=0}
 bInitial = bInitial or false
 bFixEulerFlips = bFixEulerFlips or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, InRotator at +0x10, bInitial at +0x28, bFixEulerFlips at +0x29
 writeQword(_params + 0x0, InKey)
 writeDouble(_params + 0x10, (InRotator and InRotator.Pitch) or 0)
 writeDouble(_params + 0x18, (InRotator and InRotator.Yaw) or 0)
 writeDouble(_params + 0x20, (InRotator and InRotator.Roll) or 0)
 writeByte(_params + 0x28, bInitial)
 writeByte(_params + 0x29, bFixEulerFlips)
 UE.CallProcessEventEx(OwnerAddress, "SetControlPreferredRotator", _params);
 deAlloc(_params);
end
FNR("BL4.SetControlPreferredRotator");

BL4.SetControlPreferredRotatorByIndex = function(OwnerAddress, InElementIndex, InRotator, bInitial, bFixEulerFlips)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControlPreferredRotatorByIndex: Failed To Allocate The Params");return;end;
 InElementIndex = InElementIndex or 0
 InRotator = InRotator or {Pitch=0,Yaw=0,Roll=0}
 bInitial = bInitial or false
 bFixEulerFlips = bFixEulerFlips or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InElementIndex at +0x0, InRotator at +0x8, bInitial at +0x20, bFixEulerFlips at +0x21
 writeInteger(_params + 0x0, InElementIndex)
 writeDouble(_params + 0x8, (InRotator and InRotator.Pitch) or 0)
 writeDouble(_params + 0x10, (InRotator and InRotator.Yaw) or 0)
 writeDouble(_params + 0x18, (InRotator and InRotator.Roll) or 0)
 writeByte(_params + 0x20, bInitial)
 writeByte(_params + 0x21, bFixEulerFlips)
 UE.CallProcessEventEx(OwnerAddress, "SetControlPreferredRotatorByIndex", _params);
 deAlloc(_params);
end
FNR("BL4.SetControlPreferredRotatorByIndex");

BL4.SetControlSettings = function(OwnerAddress, InKey, InSettings, bSetupUndo, bForce, bPrintPythonCommands)
 local _paramsSize = 0x1D0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControlSettings: Failed To Allocate The Params");return;end;
 bSetupUndo = bSetupUndo or false
 bForce = bForce or false
 bPrintPythonCommands = bPrintPythonCommands or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, InSettings at +0x10, bSetupUndo at +0x1C8, bForce at +0x1C9, bPrintPythonCommands at +0x1CA
 writeQword(_params + 0x0, InKey)
 writeQword(_params + 0x10, InSettings)
 writeByte(_params + 0x1C8, bSetupUndo)
 writeByte(_params + 0x1C9, bForce)
 writeByte(_params + 0x1CA, bPrintPythonCommands)
 UE.CallProcessEventEx(OwnerAddress, "SetControlSettings", _params);
 deAlloc(_params);
end
FNR("BL4.SetControlSettings");

BL4.SetControlSettingsByIndex = function(OwnerAddress, InElementIndex, InSettings, bSetupUndo, bForce, bPrintPythonCommands)
 local _paramsSize = 0x1C8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControlSettingsByIndex: Failed To Allocate The Params");return;end;
 InElementIndex = InElementIndex or 0
 bSetupUndo = bSetupUndo or false
 bForce = bForce or false
 bPrintPythonCommands = bPrintPythonCommands or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InElementIndex at +0x0, InSettings at +0x8, bSetupUndo at +0x1C0, bForce at +0x1C1, bPrintPythonCommands at +0x1C2
 writeInteger(_params + 0x0, InElementIndex)
 writeQword(_params + 0x8, InSettings)
 writeByte(_params + 0x1C0, bSetupUndo)
 writeByte(_params + 0x1C1, bForce)
 writeByte(_params + 0x1C2, bPrintPythonCommands)
 UE.CallProcessEventEx(OwnerAddress, "SetControlSettingsByIndex", _params);
 deAlloc(_params);
end
FNR("BL4.SetControlSettingsByIndex");

BL4.SetControlShapeTransform = function(OwnerAddress, InKey, InTransform, bInitial, bSetupUndo)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControlShapeTransform: Failed To Allocate The Params");return;end;
 bInitial = bInitial or false
 bSetupUndo = bSetupUndo or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, InTransform at +0x10, bInitial at +0x70, bSetupUndo at +0x71
 writeQword(_params + 0x0, InKey)
 writeQword(_params + 0x10, InTransform)
 writeByte(_params + 0x70, bInitial)
 writeByte(_params + 0x71, bSetupUndo)
 UE.CallProcessEventEx(OwnerAddress, "SetControlShapeTransform", _params);
 deAlloc(_params);
end
FNR("BL4.SetControlShapeTransform");

BL4.SetControlShapeTransformByIndex = function(OwnerAddress, InElementIndex, InTransform, bInitial, bSetupUndo)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControlShapeTransformByIndex: Failed To Allocate The Params");return;end;
 InElementIndex = InElementIndex or 0
 bInitial = bInitial or false
 bSetupUndo = bSetupUndo or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InElementIndex at +0x0, InTransform at +0x10, bInitial at +0x70, bSetupUndo at +0x71
 writeInteger(_params + 0x0, InElementIndex)
 writeQword(_params + 0x10, InTransform)
 writeByte(_params + 0x70, bInitial)
 writeByte(_params + 0x71, bSetupUndo)
 UE.CallProcessEventEx(OwnerAddress, "SetControlShapeTransformByIndex", _params);
 deAlloc(_params);
end
FNR("BL4.SetControlShapeTransformByIndex");

BL4.SetControlValue = function(OwnerAddress, InKey, InValue, InValueType, bSetupUndo, bPrintPythonCommands)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControlValue: Failed To Allocate The Params");return;end;
 InValueType = InValueType or 0
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommands = bPrintPythonCommands or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, InValue at +0xC, InValueType at +0x90, bSetupUndo at +0x91, bPrintPythonCommands at +0x92
 writeQword(_params + 0x0, InKey)
 writeQword(_params + 0xC, InValue)
 writeByte(_params + 0x90, InValueType)
 writeByte(_params + 0x91, bSetupUndo)
 writeByte(_params + 0x92, bPrintPythonCommands)
 UE.CallProcessEventEx(OwnerAddress, "SetControlValue", _params);
 deAlloc(_params);
end
FNR("BL4.SetControlValue");

BL4.SetControlValueByIndex = function(OwnerAddress, InElementIndex, InValue, InValueType, bSetupUndo, bPrintPythonCommands)
 local _paramsSize = 0x90
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControlValueByIndex: Failed To Allocate The Params");return;end;
 InElementIndex = InElementIndex or 0
 InValueType = InValueType or 0
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommands = bPrintPythonCommands or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InElementIndex at +0x0, InValue at +0x4, InValueType at +0x88, bSetupUndo at +0x89, bPrintPythonCommands at +0x8A
 writeInteger(_params + 0x0, InElementIndex)
 writeQword(_params + 0x4, InValue)
 writeByte(_params + 0x88, InValueType)
 writeByte(_params + 0x89, bSetupUndo)
 writeByte(_params + 0x8A, bPrintPythonCommands)
 UE.CallProcessEventEx(OwnerAddress, "SetControlValueByIndex", _params);
 deAlloc(_params);
end
FNR("BL4.SetControlValueByIndex");

BL4.SetControlVisibility = function(OwnerAddress, InKey, bVisibility)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControlVisibility: Failed To Allocate The Params");return;end;
 bVisibility = bVisibility or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, bVisibility at +0xC
 writeQword(_params + 0x0, InKey)
 writeByte(_params + 0xC, bVisibility)
 UE.CallProcessEventEx(OwnerAddress, "SetControlVisibility", _params);
 deAlloc(_params);
end
FNR("BL4.SetControlVisibility");

BL4.SetControlVisibilityByIndex = function(OwnerAddress, InElementIndex, bVisibility)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControlVisibilityByIndex: Failed To Allocate The Params");return;end;
 InElementIndex = InElementIndex or 0
 bVisibility = bVisibility or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InElementIndex at +0x0, bVisibility at +0x4
 writeInteger(_params + 0x0, InElementIndex)
 writeByte(_params + 0x4, bVisibility)
 UE.CallProcessEventEx(OwnerAddress, "SetControlVisibilityByIndex", _params);
 deAlloc(_params);
end
FNR("BL4.SetControlVisibilityByIndex");

BL4.SetCurveValue = function(OwnerAddress, InKey, InValue, bSetupUndo)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCurveValue: Failed To Allocate The Params");return;end;
 InValue = InValue or 0
 bSetupUndo = bSetupUndo or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, InValue at +0xC, bSetupUndo at +0x10
 writeQword(_params + 0x0, InKey)
 writeFloat(_params + 0xC, InValue)
 writeByte(_params + 0x10, bSetupUndo)
 UE.CallProcessEventEx(OwnerAddress, "SetCurveValue", _params);
 deAlloc(_params);
end
FNR("BL4.SetCurveValue");

BL4.SetCurveValueByIndex = function(OwnerAddress, InElementIndex, InValue, bSetupUndo)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCurveValueByIndex: Failed To Allocate The Params");return;end;
 InElementIndex = InElementIndex or 0
 InValue = InValue or 0
 bSetupUndo = bSetupUndo or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InElementIndex at +0x0, InValue at +0x4, bSetupUndo at +0x8
 writeInteger(_params + 0x0, InElementIndex)
 writeFloat(_params + 0x4, InValue)
 writeByte(_params + 0x8, bSetupUndo)
 UE.CallProcessEventEx(OwnerAddress, "SetCurveValueByIndex", _params);
 deAlloc(_params);
end
FNR("BL4.SetCurveValueByIndex");

BL4.SetFloatArrayMetadata = function(OwnerAddress, InItem, InMetadataName, InValue)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetFloatArrayMetadata: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC, InValue at +0x18
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 writeQword(_params + 0x18, InValue)
 UE.CallProcessEventEx(OwnerAddress, "SetFloatArrayMetadata", _params);
 local RET=readByte(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetFloatArrayMetadata");

BL4.SetFloatMetadata = function(OwnerAddress, InItem, InMetadataName, InValue)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetFloatMetadata: Failed To Allocate The Params");return;end;
 InValue = InValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC, InValue at +0x14
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 writeFloat(_params + 0x14, InValue)
 UE.CallProcessEventEx(OwnerAddress, "SetFloatMetadata", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetFloatMetadata");

BL4.SetGlobalTransform = function(OwnerAddress, InKey, InTransform, bInitial, bAffectChildren, bSetupUndo, bPrintPythonCommand)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetGlobalTransform: Failed To Allocate The Params");return;end;
 bInitial = bInitial or false
 bAffectChildren = bAffectChildren or false
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommand = bPrintPythonCommand or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, InTransform at +0x10, bInitial at +0x70, bAffectChildren at +0x71, bSetupUndo at +0x72, bPrintPythonCommand at +0x73
 writeQword(_params + 0x0, InKey)
 writeQword(_params + 0x10, InTransform)
 writeByte(_params + 0x70, bInitial)
 writeByte(_params + 0x71, bAffectChildren)
 writeByte(_params + 0x72, bSetupUndo)
 writeByte(_params + 0x73, bPrintPythonCommand)
 UE.CallProcessEventEx(OwnerAddress, "SetGlobalTransform", _params);
 deAlloc(_params);
end
FNR("BL4.SetGlobalTransform");

BL4.SetGlobalTransformByIndex = function(OwnerAddress, InElementIndex, InTransform, bInitial, bAffectChildren, bSetupUndo, bPrintPythonCommand)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetGlobalTransformByIndex: Failed To Allocate The Params");return;end;
 InElementIndex = InElementIndex or 0
 bInitial = bInitial or false
 bAffectChildren = bAffectChildren or false
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommand = bPrintPythonCommand or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InElementIndex at +0x0, InTransform at +0x10, bInitial at +0x70, bAffectChildren at +0x71, bSetupUndo at +0x72, bPrintPythonCommand at +0x73
 writeInteger(_params + 0x0, InElementIndex)
 writeQword(_params + 0x10, InTransform)
 writeByte(_params + 0x70, bInitial)
 writeByte(_params + 0x71, bAffectChildren)
 writeByte(_params + 0x72, bSetupUndo)
 writeByte(_params + 0x73, bPrintPythonCommand)
 UE.CallProcessEventEx(OwnerAddress, "SetGlobalTransformByIndex", _params);
 deAlloc(_params);
end
FNR("BL4.SetGlobalTransformByIndex");

BL4.SetInt32ArrayMetadata = function(OwnerAddress, InItem, InMetadataName, InValue)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetInt32ArrayMetadata: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC, InValue at +0x18
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 writeQword(_params + 0x18, InValue)
 UE.CallProcessEventEx(OwnerAddress, "SetInt32ArrayMetadata", _params);
 local RET=readByte(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetInt32ArrayMetadata");

BL4.SetInt32Metadata = function(OwnerAddress, InItem, InMetadataName, InValue)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetInt32Metadata: Failed To Allocate The Params");return;end;
 InValue = InValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC, InValue at +0x14
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 writeInteger(_params + 0x14, InValue)
 UE.CallProcessEventEx(OwnerAddress, "SetInt32Metadata", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetInt32Metadata");

BL4.SetLinearColorArrayMetadata = function(OwnerAddress, InItem, InMetadataName, InValue)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLinearColorArrayMetadata: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC, InValue at +0x18
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 writeQword(_params + 0x18, InValue)
 UE.CallProcessEventEx(OwnerAddress, "SetLinearColorArrayMetadata", _params);
 local RET=readByte(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetLinearColorArrayMetadata");

BL4.SetLinearColorMetadata = function(OwnerAddress, InItem, InMetadataName, InValue)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLinearColorMetadata: Failed To Allocate The Params");return;end;
 InValue = InValue or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC, InValue at +0x14
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 writeFloat(_params + 0x14, (InValue and InValue.R) or 0)
 writeFloat(_params + 0x18, (InValue and InValue.G) or 0)
 writeFloat(_params + 0x1C, (InValue and InValue.B) or 0)
 writeFloat(_params + 0x20, (InValue and InValue.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetLinearColorMetadata", _params);
 local RET=readByte(_params + 0x24);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetLinearColorMetadata");

BL4.SetLocalTransform = function(OwnerAddress, InKey, InTransform, bInitial, bAffectChildren, bSetupUndo, bPrintPythonCommands)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLocalTransform: Failed To Allocate The Params");return;end;
 bInitial = bInitial or false
 bAffectChildren = bAffectChildren or false
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommands = bPrintPythonCommands or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, InTransform at +0x10, bInitial at +0x70, bAffectChildren at +0x71, bSetupUndo at +0x72, bPrintPythonCommands at +0x73
 writeQword(_params + 0x0, InKey)
 writeQword(_params + 0x10, InTransform)
 writeByte(_params + 0x70, bInitial)
 writeByte(_params + 0x71, bAffectChildren)
 writeByte(_params + 0x72, bSetupUndo)
 writeByte(_params + 0x73, bPrintPythonCommands)
 UE.CallProcessEventEx(OwnerAddress, "SetLocalTransform", _params);
 deAlloc(_params);
end
FNR("BL4.SetLocalTransform");

BL4.SetLocalTransformByIndex = function(OwnerAddress, InElementIndex, InTransform, bInitial, bAffectChildren, bSetupUndo, bPrintPythonCommands)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLocalTransformByIndex: Failed To Allocate The Params");return;end;
 InElementIndex = InElementIndex or 0
 bInitial = bInitial or false
 bAffectChildren = bAffectChildren or false
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommands = bPrintPythonCommands or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InElementIndex at +0x0, InTransform at +0x10, bInitial at +0x70, bAffectChildren at +0x71, bSetupUndo at +0x72, bPrintPythonCommands at +0x73
 writeInteger(_params + 0x0, InElementIndex)
 writeQword(_params + 0x10, InTransform)
 writeByte(_params + 0x70, bInitial)
 writeByte(_params + 0x71, bAffectChildren)
 writeByte(_params + 0x72, bSetupUndo)
 writeByte(_params + 0x73, bPrintPythonCommands)
 UE.CallProcessEventEx(OwnerAddress, "SetLocalTransformByIndex", _params);
 deAlloc(_params);
end
FNR("BL4.SetLocalTransformByIndex");

BL4.SetNameArrayMetadata = function(OwnerAddress, InItem, InMetadataName, InValue)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNameArrayMetadata: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC, InValue at +0x18
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 writeQword(_params + 0x18, InValue)
 UE.CallProcessEventEx(OwnerAddress, "SetNameArrayMetadata", _params);
 local RET=readByte(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetNameArrayMetadata");

BL4.SetNameMetadata = function(OwnerAddress, InItem, InMetadataName, InValue)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNameMetadata: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC, InValue at +0x14
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 writeQword(_params + 0x14, InValue)
 UE.CallProcessEventEx(OwnerAddress, "SetNameMetadata", _params);
 local RET=readByte(_params + 0x1C);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetNameMetadata");

BL4.SetParentWeight = function(OwnerAddress, InChild, InParent, InWeight, bInitial, bAffectChildren)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetParentWeight: Failed To Allocate The Params");return;end;
 bInitial = bInitial or false
 bAffectChildren = bAffectChildren or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InChild at +0x0, InParent at +0xC, InWeight at +0x18, bInitial at +0x24, bAffectChildren at +0x25
 writeQword(_params + 0x0, InChild)
 writeQword(_params + 0xC, InParent)
 writeQword(_params + 0x18, InWeight)
 writeByte(_params + 0x24, bInitial)
 writeByte(_params + 0x25, bAffectChildren)
 UE.CallProcessEventEx(OwnerAddress, "SetParentWeight", _params);
 local RET=readByte(_params + 0x26);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetParentWeight");

BL4.SetParentWeightArray = function(OwnerAddress, InChild, InWeights, bInitial, bAffectChildren)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetParentWeightArray: Failed To Allocate The Params");return;end;
 bInitial = bInitial or false
 bAffectChildren = bAffectChildren or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InChild at +0x0, InWeights at +0x10, bInitial at +0x20, bAffectChildren at +0x21
 writeQword(_params + 0x0, InChild)
 writeQword(_params + 0x10, InWeights)
 writeByte(_params + 0x20, bInitial)
 writeByte(_params + 0x21, bAffectChildren)
 UE.CallProcessEventEx(OwnerAddress, "SetParentWeightArray", _params);
 local RET=readByte(_params + 0x22);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetParentWeightArray");

BL4.SetPose_ForBlueprint = function(OwnerAddress, InPose)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPose_ForBlueprint: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InPose at +0x0
 writeQword(_params + 0x0, InPose)
 UE.CallProcessEventEx(OwnerAddress, "SetPose_ForBlueprint", _params);
 deAlloc(_params);
end
FNR("BL4.SetPose_ForBlueprint");

BL4.SetQuatArrayMetadata = function(OwnerAddress, InItem, InMetadataName, InValue)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetQuatArrayMetadata: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC, InValue at +0x18
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 writeQword(_params + 0x18, InValue)
 UE.CallProcessEventEx(OwnerAddress, "SetQuatArrayMetadata", _params);
 local RET=readByte(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetQuatArrayMetadata");

BL4.SetQuatMetadata = function(OwnerAddress, InItem, InMetadataName, InValue)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetQuatMetadata: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC, InValue at +0x20
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 writeQword(_params + 0x20, InValue)
 UE.CallProcessEventEx(OwnerAddress, "SetQuatMetadata", _params);
 local RET=readByte(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetQuatMetadata");

BL4.SetRigElementKeyArrayMetadata = function(OwnerAddress, InItem, InMetadataName, InValue)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRigElementKeyArrayMetadata: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC, InValue at +0x18
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 writeQword(_params + 0x18, InValue)
 UE.CallProcessEventEx(OwnerAddress, "SetRigElementKeyArrayMetadata", _params);
 local RET=readByte(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetRigElementKeyArrayMetadata");

BL4.SetRigElementKeyMetadata = function(OwnerAddress, InItem, InMetadataName, InValue)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRigElementKeyMetadata: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC, InValue at +0x14
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 writeQword(_params + 0x14, InValue)
 UE.CallProcessEventEx(OwnerAddress, "SetRigElementKeyMetadata", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetRigElementKeyMetadata");

BL4.SetRotatorArrayMetadata = function(OwnerAddress, InItem, InMetadataName, InValue)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRotatorArrayMetadata: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC, InValue at +0x18
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 writeQword(_params + 0x18, InValue)
 UE.CallProcessEventEx(OwnerAddress, "SetRotatorArrayMetadata", _params);
 local RET=readByte(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetRotatorArrayMetadata");

BL4.SetRotatorMetadata = function(OwnerAddress, InItem, InMetadataName, InValue)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRotatorMetadata: Failed To Allocate The Params");return;end;
 InValue = InValue or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC, InValue at +0x18
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 writeDouble(_params + 0x18, (InValue and InValue.Pitch) or 0)
 writeDouble(_params + 0x20, (InValue and InValue.Yaw) or 0)
 writeDouble(_params + 0x28, (InValue and InValue.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetRotatorMetadata", _params);
 local RET=readByte(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetRotatorMetadata");

BL4.SetTag = function(OwnerAddress, InItem, InTag)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTag: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InTag at +0xC
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InTag)
 UE.CallProcessEventEx(OwnerAddress, "SetTag", _params);
 local RET=readByte(_params + 0x14);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetTag");

BL4.SetTransformArrayMetadata = function(OwnerAddress, InItem, InMetadataName, InValue)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTransformArrayMetadata: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC, InValue at +0x18
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 writeQword(_params + 0x18, InValue)
 UE.CallProcessEventEx(OwnerAddress, "SetTransformArrayMetadata", _params);
 local RET=readByte(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetTransformArrayMetadata");

BL4.SetTransformMetadata = function(OwnerAddress, InItem, InMetadataName, InValue)
 local _paramsSize = 0x88
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTransformMetadata: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC, InValue at +0x20
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 writeQword(_params + 0x20, InValue)
 UE.CallProcessEventEx(OwnerAddress, "SetTransformMetadata", _params);
 local RET=readByte(_params + 0x80);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetTransformMetadata");

BL4.SetVectorArrayMetadata = function(OwnerAddress, InItem, InMetadataName, InValue)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVectorArrayMetadata: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC, InValue at +0x18
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 writeQword(_params + 0x18, InValue)
 UE.CallProcessEventEx(OwnerAddress, "SetVectorArrayMetadata", _params);
 local RET=readByte(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetVectorArrayMetadata");

BL4.SetVectorMetadata = function(OwnerAddress, InItem, InMetadataName, InValue)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVectorMetadata: Failed To Allocate The Params");return;end;
 InValue = InValue or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InItem at +0x0, InMetadataName at +0xC, InValue at +0x18
 writeQword(_params + 0x0, InItem)
 writeQword(_params + 0xC, InMetadataName)
 writeDouble(_params + 0x18, (InValue and InValue.X) or 0)
 writeDouble(_params + 0x20, (InValue and InValue.Y) or 0)
 writeDouble(_params + 0x28, (InValue and InValue.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetVectorMetadata", _params);
 local RET=readByte(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetVectorMetadata");

BL4.SortKeys = function(OwnerAddress, InKeys)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SortKeys: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKeys at +0x0
 writeQword(_params + 0x0, InKeys)
 UE.CallProcessEventEx(OwnerAddress, "SortKeys", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SortKeys");

BL4.SwitchToDefaultParent = function(OwnerAddress, InChild, bInitial, bAffectChildren)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SwitchToDefaultParent: Failed To Allocate The Params");return;end;
 bInitial = bInitial or false
 bAffectChildren = bAffectChildren or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InChild at +0x0, bInitial at +0xC, bAffectChildren at +0xD
 writeQword(_params + 0x0, InChild)
 writeByte(_params + 0xC, bInitial)
 writeByte(_params + 0xD, bAffectChildren)
 UE.CallProcessEventEx(OwnerAddress, "SwitchToDefaultParent", _params);
 local RET=readByte(_params + 0xE);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SwitchToDefaultParent");

BL4.SwitchToParent = function(OwnerAddress, InChild, InParent, bInitial, bAffectChildren)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SwitchToParent: Failed To Allocate The Params");return;end;
 bInitial = bInitial or false
 bAffectChildren = bAffectChildren or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InChild at +0x0, InParent at +0xC, bInitial at +0x18, bAffectChildren at +0x19
 writeQword(_params + 0x0, InChild)
 writeQword(_params + 0xC, InParent)
 writeByte(_params + 0x18, bInitial)
 writeByte(_params + 0x19, bAffectChildren)
 UE.CallProcessEventEx(OwnerAddress, "SwitchToParent", _params);
 local RET=readByte(_params + 0x1A);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SwitchToParent");

BL4.SwitchToWorldSpace = function(OwnerAddress, InChild, bInitial, bAffectChildren)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SwitchToWorldSpace: Failed To Allocate The Params");return;end;
 bInitial = bInitial or false
 bAffectChildren = bAffectChildren or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InChild at +0x0, bInitial at +0xC, bAffectChildren at +0xD
 writeQword(_params + 0x0, InChild)
 writeByte(_params + 0xC, bInitial)
 writeByte(_params + 0xD, bAffectChildren)
 UE.CallProcessEventEx(OwnerAddress, "SwitchToWorldSpace", _params);
 local RET=readByte(_params + 0xE);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SwitchToWorldSpace");

BL4.UnsetCurveValue = function(OwnerAddress, InKey, bSetupUndo)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnsetCurveValue: Failed To Allocate The Params");return;end;
 bSetupUndo = bSetupUndo or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, bSetupUndo at +0xC
 writeQword(_params + 0x0, InKey)
 writeByte(_params + 0xC, bSetupUndo)
 UE.CallProcessEventEx(OwnerAddress, "UnsetCurveValue", _params);
 deAlloc(_params);
end
FNR("BL4.UnsetCurveValue");

BL4.UnsetCurveValueByIndex = function(OwnerAddress, InElementIndex, bSetupUndo)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnsetCurveValueByIndex: Failed To Allocate The Params");return;end;
 InElementIndex = InElementIndex or 0
 bSetupUndo = bSetupUndo or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InElementIndex at +0x0, bSetupUndo at +0x4
 writeInteger(_params + 0x0, InElementIndex)
 writeByte(_params + 0x4, bSetupUndo)
 UE.CallProcessEventEx(OwnerAddress, "UnsetCurveValueByIndex", _params);
 deAlloc(_params);
end
FNR("BL4.UnsetCurveValueByIndex");

