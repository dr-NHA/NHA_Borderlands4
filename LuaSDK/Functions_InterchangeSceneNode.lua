BL4.AddSpecializedType = function(OwnerAddress, SpecializedType)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddSpecializedType: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SpecializedType at +0x0
 writeQword(_params + 0x0, SpecializedType)
 UE.CallProcessEventEx(OwnerAddress, "AddSpecializedType", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddSpecializedType");

BL4.GetCustomAnimationAssetUidToPlay = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomAnimationAssetUidToPlay: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomAnimationAssetUidToPlay", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomAnimationAssetUidToPlay");

BL4.GetCustomAssetInstanceUid = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomAssetInstanceUid: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomAssetInstanceUid", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomAssetInstanceUid");

BL4.GetCustomBindPoseGlobalTransform = function(BaseNodeContainer_InterchangeBaseNodeContainer, GlobalOffsetTransform, AttributeValue, bForceRecache)
 local _paramsSize = 0xD8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomBindPoseGlobalTransform: Failed To Allocate The Params");return;end;
 bForceRecache = bForceRecache or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BaseNodeContainer at +0x0, GlobalOffsetTransform at +0x10, AttributeValue at +0x70, bForceRecache at +0xD0
 writeQword(_params + 0x0, BaseNodeContainer_InterchangeBaseNodeContainer)
 writeQword(_params + 0x10, GlobalOffsetTransform)
 writeQword(_params + 0x70, AttributeValue)
 writeByte(_params + 0xD0, bForceRecache)
 UE.CallProcessEventEx(BaseNodeContainer_InterchangeBaseNodeContainer, "GetCustomBindPoseGlobalTransform", _params);
 local RET=readByte(_params + 0xD1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomBindPoseGlobalTransform");

BL4.GetCustomBindPoseLocalTransform = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomBindPoseLocalTransform: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomBindPoseLocalTransform", _params);
 local RET=readByte(_params + 0x60);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomBindPoseLocalTransform");

BL4.GetCustomGeometricTransform = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomGeometricTransform: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomGeometricTransform", _params);
 local RET=readByte(_params + 0x60);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomGeometricTransform");

BL4.GetCustomGlobalTransform = function(BaseNodeContainer_InterchangeBaseNodeContainer, GlobalOffsetTransform, AttributeValue, bForceRecache)
 local _paramsSize = 0xD8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomGlobalTransform: Failed To Allocate The Params");return;end;
 bForceRecache = bForceRecache or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BaseNodeContainer at +0x0, GlobalOffsetTransform at +0x10, AttributeValue at +0x70, bForceRecache at +0xD0
 writeQword(_params + 0x0, BaseNodeContainer_InterchangeBaseNodeContainer)
 writeQword(_params + 0x10, GlobalOffsetTransform)
 writeQword(_params + 0x70, AttributeValue)
 writeByte(_params + 0xD0, bForceRecache)
 UE.CallProcessEventEx(BaseNodeContainer_InterchangeBaseNodeContainer, "GetCustomGlobalTransform", _params);
 local RET=readByte(_params + 0xD1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomGlobalTransform");

BL4.GetCustomHasBindPose = function(OwnerAddress, bHasBindPose)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomHasBindPose: Failed To Allocate The Params");return;end;
 bHasBindPose = bHasBindPose or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bHasBindPose at +0x0
 writeByte(_params + 0x0, bHasBindPose)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomHasBindPose", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomHasBindPose");

BL4.GetCustomLocalTransform = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomLocalTransform: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomLocalTransform", _params);
 local RET=readByte(_params + 0x60);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomLocalTransform");

BL4.GetCustomPivotNodeTransform = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomPivotNodeTransform: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomPivotNodeTransform", _params);
 local RET=readByte(_params + 0x60);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomPivotNodeTransform");

BL4.GetCustomTimeZeroGlobalTransform = function(BaseNodeContainer_InterchangeBaseNodeContainer, GlobalOffsetTransform, AttributeValue, bForceRecache)
 local _paramsSize = 0xD8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomTimeZeroGlobalTransform: Failed To Allocate The Params");return;end;
 bForceRecache = bForceRecache or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BaseNodeContainer at +0x0, GlobalOffsetTransform at +0x10, AttributeValue at +0x70, bForceRecache at +0xD0
 writeQword(_params + 0x0, BaseNodeContainer_InterchangeBaseNodeContainer)
 writeQword(_params + 0x10, GlobalOffsetTransform)
 writeQword(_params + 0x70, AttributeValue)
 writeByte(_params + 0xD0, bForceRecache)
 UE.CallProcessEventEx(BaseNodeContainer_InterchangeBaseNodeContainer, "GetCustomTimeZeroGlobalTransform", _params);
 local RET=readByte(_params + 0xD1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomTimeZeroGlobalTransform");

BL4.GetCustomTimeZeroLocalTransform = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomTimeZeroLocalTransform: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomTimeZeroLocalTransform", _params);
 local RET=readByte(_params + 0x60);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomTimeZeroLocalTransform");

BL4.GetGlobalBindPoseReferenceForMeshUID = function(OwnerAddress, MeshUid, GlobalBindPoseReference)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetGlobalBindPoseReferenceForMeshUID: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MeshUid at +0x0, GlobalBindPoseReference at +0x10
 writeQword(_params + 0x0, MeshUid)
 writeQword(_params + 0x10, GlobalBindPoseReference)
 UE.CallProcessEventEx(OwnerAddress, "GetGlobalBindPoseReferenceForMeshUID", _params);
 local RET=readByte(_params + 0x90);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetGlobalBindPoseReferenceForMeshUID");

BL4.GetMorphTargetCurveWeights = function(OwnerAddress, OutMorphTargetCurveWeights)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMorphTargetCurveWeights: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OutMorphTargetCurveWeights at +0x0
 writeQword(_params + 0x0, OutMorphTargetCurveWeights)
 UE.CallProcessEventEx(OwnerAddress, "GetMorphTargetCurveWeights", _params);
 deAlloc(_params);
end
FNR("BL4.GetMorphTargetCurveWeights");

BL4.GetSlotMaterialDependencies = function(OwnerAddress, OutMaterialDependencies)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSlotMaterialDependencies: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OutMaterialDependencies at +0x0
 writeQword(_params + 0x0, OutMaterialDependencies)
 UE.CallProcessEventEx(OwnerAddress, "GetSlotMaterialDependencies", _params);
 deAlloc(_params);
end
FNR("BL4.GetSlotMaterialDependencies");

BL4.GetSlotMaterialDependencyUid = function(OwnerAddress, SlotName, OutMaterialDependency)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSlotMaterialDependencyUid: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SlotName at +0x0, OutMaterialDependency at +0x10
 writeQword(_params + 0x0, SlotName)
 writeQword(_params + 0x10, OutMaterialDependency)
 UE.CallProcessEventEx(OwnerAddress, "GetSlotMaterialDependencyUid", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSlotMaterialDependencyUid");

BL4.GetSpecializedType = function(OwnerAddress, Index, OutSpecializedType)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSpecializedType: Failed To Allocate The Params");return;end;
 Index = Index or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Index at +0x0, OutSpecializedType at +0x8
 writeInteger(_params + 0x0, Index)
 writeQword(_params + 0x8, OutSpecializedType)
 UE.CallProcessEventEx(OwnerAddress, "GetSpecializedType", _params);
 deAlloc(_params);
end
FNR("BL4.GetSpecializedType");

BL4.GetSpecializedTypeCount = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSpecializedTypeCount: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetSpecializedTypeCount", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSpecializedTypeCount");

BL4.GetSpecializedTypes = function(OwnerAddress, OutSpecializedTypes)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSpecializedTypes: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OutSpecializedTypes at +0x0
 writeQword(_params + 0x0, OutSpecializedTypes)
 UE.CallProcessEventEx(OwnerAddress, "GetSpecializedTypes", _params);
 deAlloc(_params);
end
FNR("BL4.GetSpecializedTypes");

BL4.IsSpecializedTypeContains = function(OwnerAddress, SpecializedType)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsSpecializedTypeContains: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SpecializedType at +0x0
 writeQword(_params + 0x0, SpecializedType)
 UE.CallProcessEventEx(OwnerAddress, "IsSpecializedTypeContains", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsSpecializedTypeContains");

BL4.RemoveSlotMaterialDependencyUid = function(OwnerAddress, SlotName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveSlotMaterialDependencyUid: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SlotName at +0x0
 writeQword(_params + 0x0, SlotName)
 UE.CallProcessEventEx(OwnerAddress, "RemoveSlotMaterialDependencyUid", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RemoveSlotMaterialDependencyUid");

BL4.RemoveSpecializedType = function(OwnerAddress, SpecializedType)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveSpecializedType: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SpecializedType at +0x0
 writeQword(_params + 0x0, SpecializedType)
 UE.CallProcessEventEx(OwnerAddress, "RemoveSpecializedType", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RemoveSpecializedType");

BL4.SetCustomAnimationAssetUidToPlay = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomAnimationAssetUidToPlay: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomAnimationAssetUidToPlay", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomAnimationAssetUidToPlay");

BL4.SetCustomAssetInstanceUid = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomAssetInstanceUid: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomAssetInstanceUid", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomAssetInstanceUid");

BL4.SetCustomBindPoseLocalTransform = function(BaseNodeContainer_InterchangeBaseNodeContainer, AttributeValue, bResetCache)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomBindPoseLocalTransform: Failed To Allocate The Params");return;end;
 bResetCache = bResetCache or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BaseNodeContainer at +0x0, AttributeValue at +0x10, bResetCache at +0x70
 writeQword(_params + 0x0, BaseNodeContainer_InterchangeBaseNodeContainer)
 writeQword(_params + 0x10, AttributeValue)
 writeByte(_params + 0x70, bResetCache)
 UE.CallProcessEventEx(BaseNodeContainer_InterchangeBaseNodeContainer, "SetCustomBindPoseLocalTransform", _params);
 local RET=readByte(_params + 0x71);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomBindPoseLocalTransform");

BL4.SetCustomGeometricTransform = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomGeometricTransform: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomGeometricTransform", _params);
 local RET=readByte(_params + 0x60);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomGeometricTransform");

BL4.SetCustomHasBindPose = function(OwnerAddress, bHasBindPose)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomHasBindPose: Failed To Allocate The Params");return;end;
 bHasBindPose = bHasBindPose or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bHasBindPose at +0x0
 writeByte(_params + 0x0, bHasBindPose)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomHasBindPose", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomHasBindPose");

BL4.SetCustomLocalTransform = function(BaseNodeContainer_InterchangeBaseNodeContainer, AttributeValue, bResetCache)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomLocalTransform: Failed To Allocate The Params");return;end;
 bResetCache = bResetCache or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BaseNodeContainer at +0x0, AttributeValue at +0x10, bResetCache at +0x70
 writeQword(_params + 0x0, BaseNodeContainer_InterchangeBaseNodeContainer)
 writeQword(_params + 0x10, AttributeValue)
 writeByte(_params + 0x70, bResetCache)
 UE.CallProcessEventEx(BaseNodeContainer_InterchangeBaseNodeContainer, "SetCustomLocalTransform", _params);
 local RET=readByte(_params + 0x71);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomLocalTransform");

BL4.SetCustomPivotNodeTransform = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomPivotNodeTransform: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomPivotNodeTransform", _params);
 local RET=readByte(_params + 0x60);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomPivotNodeTransform");

BL4.SetCustomTimeZeroLocalTransform = function(BaseNodeContainer_InterchangeBaseNodeContainer, AttributeValue, bResetCache)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomTimeZeroLocalTransform: Failed To Allocate The Params");return;end;
 bResetCache = bResetCache or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BaseNodeContainer at +0x0, AttributeValue at +0x10, bResetCache at +0x70
 writeQword(_params + 0x0, BaseNodeContainer_InterchangeBaseNodeContainer)
 writeQword(_params + 0x10, AttributeValue)
 writeByte(_params + 0x70, bResetCache)
 UE.CallProcessEventEx(BaseNodeContainer_InterchangeBaseNodeContainer, "SetCustomTimeZeroLocalTransform", _params);
 local RET=readByte(_params + 0x71);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomTimeZeroLocalTransform");

BL4.SetGlobalBindPoseReferenceForMeshUIDs = function(OwnerAddress, GlobalBindPoseReferenceForMeshUIDs)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetGlobalBindPoseReferenceForMeshUIDs: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: GlobalBindPoseReferenceForMeshUIDs at +0x0
 writeQword(_params + 0x0, GlobalBindPoseReferenceForMeshUIDs)
 UE.CallProcessEventEx(OwnerAddress, "SetGlobalBindPoseReferenceForMeshUIDs", _params);
 deAlloc(_params);
end
FNR("BL4.SetGlobalBindPoseReferenceForMeshUIDs");

BL4.SetMorphTargetCurveWeight = function(OwnerAddress, MorphTargetName, Weight)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMorphTargetCurveWeight: Failed To Allocate The Params");return;end;
 Weight = Weight or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MorphTargetName at +0x0, Weight at +0x10
 writeQword(_params + 0x0, MorphTargetName)
 writeFloat(_params + 0x10, Weight)
 UE.CallProcessEventEx(OwnerAddress, "SetMorphTargetCurveWeight", _params);
 local RET=readByte(_params + 0x14);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetMorphTargetCurveWeight");

BL4.SetSlotMaterialDependencyUid = function(OwnerAddress, SlotName, MaterialDependencyUid)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSlotMaterialDependencyUid: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SlotName at +0x0, MaterialDependencyUid at +0x10
 writeQword(_params + 0x0, SlotName)
 writeQword(_params + 0x10, MaterialDependencyUid)
 UE.CallProcessEventEx(OwnerAddress, "SetSlotMaterialDependencyUid", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetSlotMaterialDependencyUid");

