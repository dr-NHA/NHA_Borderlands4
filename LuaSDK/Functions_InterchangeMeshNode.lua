BL4.GetCustomBoundingBox = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomBoundingBox: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomBoundingBox", _params);
 local RET=readByte(_params + 0x38);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomBoundingBox");

BL4.GetCustomHasSmoothGroup = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomHasSmoothGroup: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomHasSmoothGroup", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomHasSmoothGroup");

BL4.GetCustomHasVertexBinormal = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomHasVertexBinormal: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomHasVertexBinormal", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomHasVertexBinormal");

BL4.GetCustomHasVertexColor = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomHasVertexColor: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomHasVertexColor", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomHasVertexColor");

BL4.GetCustomHasVertexNormal = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomHasVertexNormal: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomHasVertexNormal", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomHasVertexNormal");

BL4.GetCustomHasVertexTangent = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomHasVertexTangent: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomHasVertexTangent", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomHasVertexTangent");

BL4.GetCustomPolygonCount = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomPolygonCount: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeInteger(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomPolygonCount", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomPolygonCount");

BL4.GetCustomUVCount = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomUVCount: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeInteger(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomUVCount", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomUVCount");

BL4.GetCustomVertexCount = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomVertexCount: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeInteger(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomVertexCount", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomVertexCount");

BL4.GetMorphTargetDependeciesCount = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMorphTargetDependeciesCount: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetMorphTargetDependeciesCount", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMorphTargetDependeciesCount");

BL4.GetMorphTargetDependencies = function(OwnerAddress, OutDependencies)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMorphTargetDependencies: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OutDependencies at +0x0
 writeQword(_params + 0x0, OutDependencies)
 UE.CallProcessEventEx(OwnerAddress, "GetMorphTargetDependencies", _params);
 deAlloc(_params);
end
FNR("BL4.GetMorphTargetDependencies");

BL4.GetMorphTargetDependency = function(OwnerAddress, Index, OutDependency)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMorphTargetDependency: Failed To Allocate The Params");return;end;
 Index = Index or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Index at +0x0, OutDependency at +0x8
 writeInteger(_params + 0x0, Index)
 writeQword(_params + 0x8, OutDependency)
 UE.CallProcessEventEx(OwnerAddress, "GetMorphTargetDependency", _params);
 deAlloc(_params);
end
FNR("BL4.GetMorphTargetDependency");

BL4.GetMorphTargetName = function(OwnerAddress, OutMorphTargetName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMorphTargetName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OutMorphTargetName at +0x0
 writeQword(_params + 0x0, OutMorphTargetName)
 UE.CallProcessEventEx(OwnerAddress, "GetMorphTargetName", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMorphTargetName");

BL4.GetSceneInstanceUid = function(OwnerAddress, Index, OutDependency)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSceneInstanceUid: Failed To Allocate The Params");return;end;
 Index = Index or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Index at +0x0, OutDependency at +0x8
 writeInteger(_params + 0x0, Index)
 writeQword(_params + 0x8, OutDependency)
 UE.CallProcessEventEx(OwnerAddress, "GetSceneInstanceUid", _params);
 deAlloc(_params);
end
FNR("BL4.GetSceneInstanceUid");

BL4.GetSceneInstanceUids = function(OwnerAddress, OutDependencies)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSceneInstanceUids: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OutDependencies at +0x0
 writeQword(_params + 0x0, OutDependencies)
 UE.CallProcessEventEx(OwnerAddress, "GetSceneInstanceUids", _params);
 deAlloc(_params);
end
FNR("BL4.GetSceneInstanceUids");

BL4.GetSceneInstanceUidsCount = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSceneInstanceUidsCount: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetSceneInstanceUidsCount", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSceneInstanceUidsCount");

BL4.GetSkeletonDependeciesCount = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSkeletonDependeciesCount: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetSkeletonDependeciesCount", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSkeletonDependeciesCount");

BL4.GetSkeletonDependencies = function(OwnerAddress, OutDependencies)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSkeletonDependencies: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OutDependencies at +0x0
 writeQword(_params + 0x0, OutDependencies)
 UE.CallProcessEventEx(OwnerAddress, "GetSkeletonDependencies", _params);
 deAlloc(_params);
end
FNR("BL4.GetSkeletonDependencies");

BL4.GetSkeletonDependency = function(OwnerAddress, Index, OutDependency)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSkeletonDependency: Failed To Allocate The Params");return;end;
 Index = Index or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Index at +0x0, OutDependency at +0x8
 writeInteger(_params + 0x0, Index)
 writeQword(_params + 0x8, OutDependency)
 UE.CallProcessEventEx(OwnerAddress, "GetSkeletonDependency", _params);
 deAlloc(_params);
end
FNR("BL4.GetSkeletonDependency");

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

BL4.IsMorphTarget = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsMorphTarget: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsMorphTarget", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsMorphTarget");

BL4.IsSkinnedMesh = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsSkinnedMesh: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsSkinnedMesh", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsSkinnedMesh");

BL4.RemoveMorphTargetDependencyUid = function(OwnerAddress, DependencyUid)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveMorphTargetDependencyUid: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DependencyUid at +0x0
 writeQword(_params + 0x0, DependencyUid)
 UE.CallProcessEventEx(OwnerAddress, "RemoveMorphTargetDependencyUid", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RemoveMorphTargetDependencyUid");

BL4.RemoveSceneInstanceUid = function(OwnerAddress, DependencyUid)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveSceneInstanceUid: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DependencyUid at +0x0
 writeQword(_params + 0x0, DependencyUid)
 UE.CallProcessEventEx(OwnerAddress, "RemoveSceneInstanceUid", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RemoveSceneInstanceUid");

BL4.RemoveSkeletonDependencyUid = function(OwnerAddress, DependencyUid)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveSkeletonDependencyUid: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DependencyUid at +0x0
 writeQword(_params + 0x0, DependencyUid)
 UE.CallProcessEventEx(OwnerAddress, "RemoveSkeletonDependencyUid", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RemoveSkeletonDependencyUid");

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

BL4.SetCustomBoundingBox = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomBoundingBox: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomBoundingBox", _params);
 local RET=readByte(_params + 0x38);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomBoundingBox");

BL4.SetCustomHasSmoothGroup = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomHasSmoothGroup: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomHasSmoothGroup", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomHasSmoothGroup");

BL4.SetCustomHasVertexBinormal = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomHasVertexBinormal: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomHasVertexBinormal", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomHasVertexBinormal");

BL4.SetCustomHasVertexColor = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomHasVertexColor: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomHasVertexColor", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomHasVertexColor");

BL4.SetCustomHasVertexNormal = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomHasVertexNormal: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomHasVertexNormal", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomHasVertexNormal");

BL4.SetCustomHasVertexTangent = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomHasVertexTangent: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomHasVertexTangent", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomHasVertexTangent");

BL4.SetCustomPolygonCount = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomPolygonCount: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeInteger(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomPolygonCount", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomPolygonCount");

BL4.SetCustomUVCount = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomUVCount: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeInteger(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomUVCount", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomUVCount");

BL4.SetCustomVertexCount = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomVertexCount: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeInteger(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomVertexCount", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomVertexCount");

BL4.SetMorphTarget = function(OwnerAddress, bIsMorphTarget)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMorphTarget: Failed To Allocate The Params");return;end;
 bIsMorphTarget = bIsMorphTarget or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bIsMorphTarget at +0x0
 writeByte(_params + 0x0, bIsMorphTarget)
 UE.CallProcessEventEx(OwnerAddress, "SetMorphTarget", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetMorphTarget");

BL4.SetMorphTargetDependencyUid = function(OwnerAddress, DependencyUid)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMorphTargetDependencyUid: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DependencyUid at +0x0
 writeQword(_params + 0x0, DependencyUid)
 UE.CallProcessEventEx(OwnerAddress, "SetMorphTargetDependencyUid", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetMorphTargetDependencyUid");

BL4.SetMorphTargetName = function(OwnerAddress, MorphTargetName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMorphTargetName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MorphTargetName at +0x0
 writeQword(_params + 0x0, MorphTargetName)
 UE.CallProcessEventEx(OwnerAddress, "SetMorphTargetName", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetMorphTargetName");

BL4.SetPayLoadKey = function(OwnerAddress, PayloadKey, PayLoadType)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPayLoadKey: Failed To Allocate The Params");return;end;
 PayLoadType = PayLoadType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PayloadKey at +0x0, PayLoadType at +0x10
 writeQword(_params + 0x0, PayloadKey)
 writeByte(_params + 0x10, PayLoadType)
 UE.CallProcessEventEx(OwnerAddress, "SetPayLoadKey", _params);
 deAlloc(_params);
end
FNR("BL4.SetPayLoadKey");

BL4.SetSceneInstanceUid = function(OwnerAddress, DependencyUid)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSceneInstanceUid: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DependencyUid at +0x0
 writeQword(_params + 0x0, DependencyUid)
 UE.CallProcessEventEx(OwnerAddress, "SetSceneInstanceUid", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetSceneInstanceUid");

BL4.SetSkeletonDependencyUid = function(OwnerAddress, DependencyUid)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSkeletonDependencyUid: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DependencyUid at +0x0
 writeQword(_params + 0x0, DependencyUid)
 UE.CallProcessEventEx(OwnerAddress, "SetSkeletonDependencyUid", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetSkeletonDependencyUid");

BL4.SetSkinnedMesh = function(OwnerAddress, bIsSkinnedMesh)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSkinnedMesh: Failed To Allocate The Params");return;end;
 bIsSkinnedMesh = bIsSkinnedMesh or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bIsSkinnedMesh at +0x0
 writeByte(_params + 0x0, bIsSkinnedMesh)
 UE.CallProcessEventEx(OwnerAddress, "SetSkinnedMesh", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetSkinnedMesh");

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

