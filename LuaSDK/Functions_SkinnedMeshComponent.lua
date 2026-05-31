BL4.BoneIsChildOf = function(OwnerAddress, BoneName, ParentBoneName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BoneIsChildOf: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0, ParentBoneName at +0x8
 writeQword(_params + 0x0, BoneName)
 writeQword(_params + 0x8, ParentBoneName)
 UE.CallProcessEventEx(OwnerAddress, "BoneIsChildOf", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BoneIsChildOf");

BL4.ClearSkinWeightOverride = function(OwnerAddress, LODIndex)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClearSkinWeightOverride: Failed To Allocate The Params");return;end;
 LODIndex = LODIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: LODIndex at +0x0
 writeInteger(_params + 0x0, LODIndex)
 UE.CallProcessEventEx(OwnerAddress, "ClearSkinWeightOverride", _params);
 deAlloc(_params);
end
FNR("BL4.ClearSkinWeightOverride");

BL4.ClearSkinWeightProfile = function(OwnerAddress, InLayer)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClearSkinWeightProfile: Failed To Allocate The Params");return;end;
 InLayer = InLayer or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InLayer at +0x0
 writeByte(_params + 0x0, InLayer)
 UE.CallProcessEventEx(OwnerAddress, "ClearSkinWeightProfile", _params);
 deAlloc(_params);
end
FNR("BL4.ClearSkinWeightProfile");

BL4.ClearVertexColorOverride = function(OwnerAddress, LODIndex)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClearVertexColorOverride: Failed To Allocate The Params");return;end;
 LODIndex = LODIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: LODIndex at +0x0
 writeInteger(_params + 0x0, LODIndex)
 UE.CallProcessEventEx(OwnerAddress, "ClearVertexColorOverride", _params);
 deAlloc(_params);
end
FNR("BL4.ClearVertexColorOverride");

BL4.FindClosestBone_K2 = function(OwnerAddress, TestLocation, BoneLocation, IgnoreScale, bRequirePhysicsAsset)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindClosestBone_K2: Failed To Allocate The Params");return;end;
 TestLocation = TestLocation or {X=0,Y=0,Z=0}
 BoneLocation = BoneLocation or {X=0,Y=0,Z=0}
 IgnoreScale = IgnoreScale or 0
 bRequirePhysicsAsset = bRequirePhysicsAsset or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TestLocation at +0x0, BoneLocation at +0x18, IgnoreScale at +0x30, bRequirePhysicsAsset at +0x34
 writeDouble(_params + 0x0, (TestLocation and TestLocation.X) or 0)
 writeDouble(_params + 0x8, (TestLocation and TestLocation.Y) or 0)
 writeDouble(_params + 0x10, (TestLocation and TestLocation.Z) or 0)
 writeDouble(_params + 0x18, (BoneLocation and BoneLocation.X) or 0)
 writeDouble(_params + 0x20, (BoneLocation and BoneLocation.Y) or 0)
 writeDouble(_params + 0x28, (BoneLocation and BoneLocation.Z) or 0)
 writeFloat(_params + 0x30, IgnoreScale)
 writeByte(_params + 0x34, bRequirePhysicsAsset)
 UE.CallProcessEventEx(OwnerAddress, "FindClosestBone_K2", _params);
 local RET=readQword(_params + 0x38);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindClosestBone_K2");

BL4.GetAlwaysUseMeshDeformer = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAlwaysUseMeshDeformer: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAlwaysUseMeshDeformer", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAlwaysUseMeshDeformer");

BL4.GetBoneIndex = function(OwnerAddress, BoneName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBoneIndex: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0
 writeQword(_params + 0x0, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "GetBoneIndex", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBoneIndex");

BL4.GetBoneName = function(OwnerAddress, BoneIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBoneName: Failed To Allocate The Params");return;end;
 BoneIndex = BoneIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneIndex at +0x0
 writeInteger(_params + 0x0, BoneIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetBoneName", _params);
 local RET=readQword(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBoneName");

BL4.GetBoneTransform = function(OwnerAddress, InBoneName, TransformSpace)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBoneTransform: Failed To Allocate The Params");return;end;
 TransformSpace = TransformSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InBoneName at +0x0, TransformSpace at +0x8
 writeQword(_params + 0x0, InBoneName)
 writeByte(_params + 0x8, TransformSpace)
 UE.CallProcessEventEx(OwnerAddress, "GetBoneTransform", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBoneTransform");

BL4.GetCurrentSkinWeightProfileLayerNames = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCurrentSkinWeightProfileLayerNames: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCurrentSkinWeightProfileLayerNames", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCurrentSkinWeightProfileLayerNames");

BL4.GetCurrentSkinWeightProfileName = function(OwnerAddress, InLayer)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCurrentSkinWeightProfileName: Failed To Allocate The Params");return;end;
 InLayer = InLayer or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InLayer at +0x0
 writeByte(_params + 0x0, InLayer)
 UE.CallProcessEventEx(OwnerAddress, "GetCurrentSkinWeightProfileName", _params);
 local RET=readQword(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCurrentSkinWeightProfileName");

BL4.GetDeltaTransformFromRefPose = function(OwnerAddress, BoneName, BaseName)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDeltaTransformFromRefPose: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0, BaseName at +0x8
 writeQword(_params + 0x0, BoneName)
 writeQword(_params + 0x8, BaseName)
 UE.CallProcessEventEx(OwnerAddress, "GetDeltaTransformFromRefPose", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDeltaTransformFromRefPose");

BL4.GetForcedLOD = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetForcedLOD: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetForcedLOD", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetForcedLOD");

BL4.GetMeshDeformerInstance = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMeshDeformerInstance: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetMeshDeformerInstance", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMeshDeformerInstance");

BL4.GetNumBones = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumBones: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetNumBones", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumBones");

BL4.GetNumLODs = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumLODs: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetNumLODs", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumLODs");

BL4.GetParentBone = function(OwnerAddress, BoneName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetParentBone: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0
 writeQword(_params + 0x0, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "GetParentBone", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetParentBone");

BL4.GetPredictedLODLevel = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPredictedLODLevel: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetPredictedLODLevel", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPredictedLODLevel");

BL4.GetRefPosePosition = function(OwnerAddress, BoneIndex)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRefPosePosition: Failed To Allocate The Params");return;end;
 BoneIndex = BoneIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneIndex at +0x0
 writeInteger(_params + 0x0, BoneIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetRefPosePosition", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRefPosePosition");

BL4.GetRefPoseTransform = function(OwnerAddress, BoneIndex)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRefPoseTransform: Failed To Allocate The Params");return;end;
 BoneIndex = BoneIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneIndex at +0x0
 writeInteger(_params + 0x0, BoneIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetRefPoseTransform", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRefPoseTransform");

BL4.GetSkeletalMesh_DEPRECATED = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSkeletalMesh_DEPRECATED: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetSkeletalMesh_DEPRECATED", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSkeletalMesh_DEPRECATED");

BL4.GetSkinnedAsset = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSkinnedAsset: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetSkinnedAsset", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSkinnedAsset");

BL4.GetSocketBoneName = function(OwnerAddress, InSocketName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSocketBoneName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSocketName at +0x0
 writeQword(_params + 0x0, InSocketName)
 UE.CallProcessEventEx(OwnerAddress, "GetSocketBoneName", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSocketBoneName");

BL4.GetTwistAndSwingAngleOfDeltaRotationFromRefPose = function(OwnerAddress, BoneName, OutTwistAngle, OutSwingAngle)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTwistAndSwingAngleOfDeltaRotationFromRefPose: Failed To Allocate The Params");return;end;
 OutTwistAngle = OutTwistAngle or 0
 OutSwingAngle = OutSwingAngle or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0, OutTwistAngle at +0x8, OutSwingAngle at +0xC
 writeQword(_params + 0x0, BoneName)
 writeFloat(_params + 0x8, OutTwistAngle)
 writeFloat(_params + 0xC, OutSwingAngle)
 UE.CallProcessEventEx(OwnerAddress, "GetTwistAndSwingAngleOfDeltaRotationFromRefPose", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTwistAndSwingAngleOfDeltaRotationFromRefPose");

BL4.HideBoneByName = function(OwnerAddress, BoneName, PhysBodyOption)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.HideBoneByName: Failed To Allocate The Params");return;end;
 PhysBodyOption = PhysBodyOption or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0, PhysBodyOption at +0x8
 writeQword(_params + 0x0, BoneName)
 writeByte(_params + 0x8, PhysBodyOption)
 UE.CallProcessEventEx(OwnerAddress, "HideBoneByName", _params);
 deAlloc(_params);
end
FNR("BL4.HideBoneByName");

BL4.IsBoneHiddenByName = function(OwnerAddress, BoneName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsBoneHiddenByName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0
 writeQword(_params + 0x0, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "IsBoneHiddenByName", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsBoneHiddenByName");

BL4.IsMaterialSectionShown = function(OwnerAddress, MaterialID, LODIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsMaterialSectionShown: Failed To Allocate The Params");return;end;
 MaterialID = MaterialID or 0
 LODIndex = LODIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MaterialID at +0x0, LODIndex at +0x4
 writeInteger(_params + 0x0, MaterialID)
 writeInteger(_params + 0x4, LODIndex)
 UE.CallProcessEventEx(OwnerAddress, "IsMaterialSectionShown", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsMaterialSectionShown");

BL4.IsUsingSkinWeightProfile = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsUsingSkinWeightProfile: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsUsingSkinWeightProfile", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsUsingSkinWeightProfile");

BL4.OverrideMinLOD = function(OwnerAddress, InNewMinLOD)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OverrideMinLOD: Failed To Allocate The Params");return;end;
 InNewMinLOD = InNewMinLOD or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InNewMinLOD at +0x0
 writeInteger(_params + 0x0, InNewMinLOD)
 UE.CallProcessEventEx(OwnerAddress, "OverrideMinLOD", _params);
 deAlloc(_params);
end
FNR("BL4.OverrideMinLOD");

BL4.SetAlwaysUseMeshDeformer = function(OwnerAddress, bShouldAlwaysUseMeshDeformer)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAlwaysUseMeshDeformer: Failed To Allocate The Params");return;end;
 bShouldAlwaysUseMeshDeformer = bShouldAlwaysUseMeshDeformer or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bShouldAlwaysUseMeshDeformer at +0x0
 writeByte(_params + 0x0, bShouldAlwaysUseMeshDeformer)
 UE.CallProcessEventEx(OwnerAddress, "SetAlwaysUseMeshDeformer", _params);
 deAlloc(_params);
end
FNR("BL4.SetAlwaysUseMeshDeformer");

BL4.SetCapsuleIndirectShadowMinVisibility = function(OwnerAddress, NewValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCapsuleIndirectShadowMinVisibility: Failed To Allocate The Params");return;end;
 NewValue = NewValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewValue at +0x0
 writeFloat(_params + 0x0, NewValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCapsuleIndirectShadowMinVisibility", _params);
 deAlloc(_params);
end
FNR("BL4.SetCapsuleIndirectShadowMinVisibility");

BL4.SetCastCapsuleDirectShadow = function(OwnerAddress, bNewValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCastCapsuleDirectShadow: Failed To Allocate The Params");return;end;
 bNewValue = bNewValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bNewValue at +0x0
 writeByte(_params + 0x0, bNewValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCastCapsuleDirectShadow", _params);
 deAlloc(_params);
end
FNR("BL4.SetCastCapsuleDirectShadow");

BL4.SetCastCapsuleIndirectShadow = function(OwnerAddress, bNewValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCastCapsuleIndirectShadow: Failed To Allocate The Params");return;end;
 bNewValue = bNewValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bNewValue at +0x0
 writeByte(_params + 0x0, bNewValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCastCapsuleIndirectShadow", _params);
 deAlloc(_params);
end
FNR("BL4.SetCastCapsuleIndirectShadow");

BL4.SetForcedLOD = function(OwnerAddress, InNewForcedLOD)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetForcedLOD: Failed To Allocate The Params");return;end;
 InNewForcedLOD = InNewForcedLOD or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InNewForcedLOD at +0x0
 writeInteger(_params + 0x0, InNewForcedLOD)
 UE.CallProcessEventEx(OwnerAddress, "SetForcedLOD", _params);
 deAlloc(_params);
end
FNR("BL4.SetForcedLOD");

BL4.SetLeaderPoseComponent = function(NewLeaderBoneComponent_SkinnedMeshComponent, bForceUpdate, bInFollowerShouldTickPose)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLeaderPoseComponent: Failed To Allocate The Params");return;end;
 bForceUpdate = bForceUpdate or false
 bInFollowerShouldTickPose = bInFollowerShouldTickPose or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewLeaderBoneComponent at +0x0, bForceUpdate at +0x8, bInFollowerShouldTickPose at +0x9
 writeQword(_params + 0x0, NewLeaderBoneComponent_SkinnedMeshComponent)
 writeByte(_params + 0x8, bForceUpdate)
 writeByte(_params + 0x9, bInFollowerShouldTickPose)
 UE.CallProcessEventEx(NewLeaderBoneComponent_SkinnedMeshComponent, "SetLeaderPoseComponent", _params);
 deAlloc(_params);
end
FNR("BL4.SetLeaderPoseComponent");

BL4.SetMeshDeformer = function(InMeshDeformer_MeshDeformer)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMeshDeformer: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InMeshDeformer at +0x0
 writeQword(_params + 0x0, InMeshDeformer_MeshDeformer)
 UE.CallProcessEventEx(InMeshDeformer_MeshDeformer, "SetMeshDeformer", _params);
 deAlloc(_params);
end
FNR("BL4.SetMeshDeformer");

BL4.SetMinLOD = function(OwnerAddress, InNewMinLOD)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMinLOD: Failed To Allocate The Params");return;end;
 InNewMinLOD = InNewMinLOD or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InNewMinLOD at +0x0
 writeInteger(_params + 0x0, InNewMinLOD)
 UE.CallProcessEventEx(OwnerAddress, "SetMinLOD", _params);
 deAlloc(_params);
end
FNR("BL4.SetMinLOD");

BL4.SetPhysicsAsset = function(NewPhysicsAsset_PhysicsAsset, bForceReInit, bCanRefreshBones)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPhysicsAsset: Failed To Allocate The Params");return;end;
 bForceReInit = bForceReInit or false
 bCanRefreshBones = bCanRefreshBones or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewPhysicsAsset at +0x0, bForceReInit at +0x8, bCanRefreshBones at +0x9
 writeQword(_params + 0x0, NewPhysicsAsset_PhysicsAsset)
 writeByte(_params + 0x8, bForceReInit)
 writeByte(_params + 0x9, bCanRefreshBones)
 UE.CallProcessEventEx(NewPhysicsAsset_PhysicsAsset, "SetPhysicsAsset", _params);
 deAlloc(_params);
end
FNR("BL4.SetPhysicsAsset");

BL4.SetRenderStatic = function(OwnerAddress, bNewValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRenderStatic: Failed To Allocate The Params");return;end;
 bNewValue = bNewValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bNewValue at +0x0
 writeByte(_params + 0x0, bNewValue)
 UE.CallProcessEventEx(OwnerAddress, "SetRenderStatic", _params);
 deAlloc(_params);
end
FNR("BL4.SetRenderStatic");

BL4.SetSkinnedAssetAndUpdate = function(NewMesh_SkinnedAsset, bReinitPose)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSkinnedAssetAndUpdate: Failed To Allocate The Params");return;end;
 bReinitPose = bReinitPose or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewMesh at +0x0, bReinitPose at +0x8
 writeQword(_params + 0x0, NewMesh_SkinnedAsset)
 writeByte(_params + 0x8, bReinitPose)
 UE.CallProcessEventEx(NewMesh_SkinnedAsset, "SetSkinnedAssetAndUpdate", _params);
 deAlloc(_params);
end
FNR("BL4.SetSkinnedAssetAndUpdate");

BL4.SetSkinWeightOverride = function(OwnerAddress, LODIndex, SkinWeights)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSkinWeightOverride: Failed To Allocate The Params");return;end;
 LODIndex = LODIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: LODIndex at +0x0, SkinWeights at +0x8
 writeInteger(_params + 0x0, LODIndex)
 writeQword(_params + 0x8, SkinWeights)
 UE.CallProcessEventEx(OwnerAddress, "SetSkinWeightOverride", _params);
 deAlloc(_params);
end
FNR("BL4.SetSkinWeightOverride");

BL4.SetSkinWeightProfile = function(OwnerAddress, InProfileName, InLayer)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSkinWeightProfile: Failed To Allocate The Params");return;end;
 InLayer = InLayer or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InProfileName at +0x0, InLayer at +0x8
 writeQword(_params + 0x0, InProfileName)
 writeByte(_params + 0x8, InLayer)
 UE.CallProcessEventEx(OwnerAddress, "SetSkinWeightProfile", _params);
 local RET=readByte(_params + 0x9);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetSkinWeightProfile");

BL4.SetVertexColorOverride_LinearColor = function(OwnerAddress, LODIndex, VertexColors)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVertexColorOverride_LinearColor: Failed To Allocate The Params");return;end;
 LODIndex = LODIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: LODIndex at +0x0, VertexColors at +0x8
 writeInteger(_params + 0x0, LODIndex)
 writeQword(_params + 0x8, VertexColors)
 UE.CallProcessEventEx(OwnerAddress, "SetVertexColorOverride_LinearColor", _params);
 deAlloc(_params);
end
FNR("BL4.SetVertexColorOverride_LinearColor");

BL4.ShowAllMaterialSections = function(OwnerAddress, LODIndex)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ShowAllMaterialSections: Failed To Allocate The Params");return;end;
 LODIndex = LODIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: LODIndex at +0x0
 writeInteger(_params + 0x0, LODIndex)
 UE.CallProcessEventEx(OwnerAddress, "ShowAllMaterialSections", _params);
 deAlloc(_params);
end
FNR("BL4.ShowAllMaterialSections");

BL4.ShowMaterialSection = function(OwnerAddress, MaterialID, SectionIndex, bShow, LODIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ShowMaterialSection: Failed To Allocate The Params");return;end;
 MaterialID = MaterialID or 0
 SectionIndex = SectionIndex or 0
 bShow = bShow or false
 LODIndex = LODIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MaterialID at +0x0, SectionIndex at +0x4, bShow at +0x8, LODIndex at +0xC
 writeInteger(_params + 0x0, MaterialID)
 writeInteger(_params + 0x4, SectionIndex)
 writeByte(_params + 0x8, bShow)
 writeInteger(_params + 0xC, LODIndex)
 UE.CallProcessEventEx(OwnerAddress, "ShowMaterialSection", _params);
 deAlloc(_params);
end
FNR("BL4.ShowMaterialSection");

BL4.TransformFromBoneSpace = function(OwnerAddress, BoneName, InPosition, InRotation, OutPosition, OutRotation)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TransformFromBoneSpace: Failed To Allocate The Params");return;end;
 InPosition = InPosition or {X=0,Y=0,Z=0}
 InRotation = InRotation or {Pitch=0,Yaw=0,Roll=0}
 OutPosition = OutPosition or {X=0,Y=0,Z=0}
 OutRotation = OutRotation or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0, InPosition at +0x8, InRotation at +0x20, OutPosition at +0x38, OutRotation at +0x50
 writeQword(_params + 0x0, BoneName)
 writeDouble(_params + 0x8, (InPosition and InPosition.X) or 0)
 writeDouble(_params + 0x10, (InPosition and InPosition.Y) or 0)
 writeDouble(_params + 0x18, (InPosition and InPosition.Z) or 0)
 writeDouble(_params + 0x20, (InRotation and InRotation.Pitch) or 0)
 writeDouble(_params + 0x28, (InRotation and InRotation.Yaw) or 0)
 writeDouble(_params + 0x30, (InRotation and InRotation.Roll) or 0)
 writeDouble(_params + 0x38, (OutPosition and OutPosition.X) or 0)
 writeDouble(_params + 0x40, (OutPosition and OutPosition.Y) or 0)
 writeDouble(_params + 0x48, (OutPosition and OutPosition.Z) or 0)
 writeDouble(_params + 0x50, (OutRotation and OutRotation.Pitch) or 0)
 writeDouble(_params + 0x58, (OutRotation and OutRotation.Yaw) or 0)
 writeDouble(_params + 0x60, (OutRotation and OutRotation.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "TransformFromBoneSpace", _params);
 deAlloc(_params);
end
FNR("BL4.TransformFromBoneSpace");

BL4.TransformToBoneSpace = function(OwnerAddress, BoneName, InPosition, InRotation, OutPosition, OutRotation)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TransformToBoneSpace: Failed To Allocate The Params");return;end;
 InPosition = InPosition or {X=0,Y=0,Z=0}
 InRotation = InRotation or {Pitch=0,Yaw=0,Roll=0}
 OutPosition = OutPosition or {X=0,Y=0,Z=0}
 OutRotation = OutRotation or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0, InPosition at +0x8, InRotation at +0x20, OutPosition at +0x38, OutRotation at +0x50
 writeQword(_params + 0x0, BoneName)
 writeDouble(_params + 0x8, (InPosition and InPosition.X) or 0)
 writeDouble(_params + 0x10, (InPosition and InPosition.Y) or 0)
 writeDouble(_params + 0x18, (InPosition and InPosition.Z) or 0)
 writeDouble(_params + 0x20, (InRotation and InRotation.Pitch) or 0)
 writeDouble(_params + 0x28, (InRotation and InRotation.Yaw) or 0)
 writeDouble(_params + 0x30, (InRotation and InRotation.Roll) or 0)
 writeDouble(_params + 0x38, (OutPosition and OutPosition.X) or 0)
 writeDouble(_params + 0x40, (OutPosition and OutPosition.Y) or 0)
 writeDouble(_params + 0x48, (OutPosition and OutPosition.Z) or 0)
 writeDouble(_params + 0x50, (OutRotation and OutRotation.Pitch) or 0)
 writeDouble(_params + 0x58, (OutRotation and OutRotation.Yaw) or 0)
 writeDouble(_params + 0x60, (OutRotation and OutRotation.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "TransformToBoneSpace", _params);
 deAlloc(_params);
end
FNR("BL4.TransformToBoneSpace");

BL4.UnHideBoneByName = function(OwnerAddress, BoneName)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnHideBoneByName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0
 writeQword(_params + 0x0, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "UnHideBoneByName", _params);
 deAlloc(_params);
end
FNR("BL4.UnHideBoneByName");

BL4.UnloadSkinWeightProfile = function(OwnerAddress, InProfileName)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnloadSkinWeightProfile: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InProfileName at +0x0
 writeQword(_params + 0x0, InProfileName)
 UE.CallProcessEventEx(OwnerAddress, "UnloadSkinWeightProfile", _params);
 deAlloc(_params);
end
FNR("BL4.UnloadSkinWeightProfile");

