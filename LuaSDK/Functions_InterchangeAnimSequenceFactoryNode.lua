BL4.GetAnimatedAttributeCurveName = function(OwnerAddress, Index, OutAttributeCurveName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAnimatedAttributeCurveName: Failed To Allocate The Params");return;end;
 Index = Index or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Index at +0x0, OutAttributeCurveName at +0x8
 writeInteger(_params + 0x0, Index)
 writeQword(_params + 0x8, OutAttributeCurveName)
 UE.CallProcessEventEx(OwnerAddress, "GetAnimatedAttributeCurveName", _params);
 deAlloc(_params);
end
FNR("BL4.GetAnimatedAttributeCurveName");

BL4.GetAnimatedAttributeCurveNames = function(OwnerAddress, OutAttributeCurveNames)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAnimatedAttributeCurveNames: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OutAttributeCurveNames at +0x0
 writeQword(_params + 0x0, OutAttributeCurveNames)
 UE.CallProcessEventEx(OwnerAddress, "GetAnimatedAttributeCurveNames", _params);
 deAlloc(_params);
end
FNR("BL4.GetAnimatedAttributeCurveNames");

BL4.GetAnimatedAttributeCurveNamesCount = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAnimatedAttributeCurveNamesCount: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAnimatedAttributeCurveNamesCount", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAnimatedAttributeCurveNamesCount");

BL4.GetAnimatedAttributeStepCurveName = function(OwnerAddress, Index, OutAttributeStepCurveName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAnimatedAttributeStepCurveName: Failed To Allocate The Params");return;end;
 Index = Index or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Index at +0x0, OutAttributeStepCurveName at +0x8
 writeInteger(_params + 0x0, Index)
 writeQword(_params + 0x8, OutAttributeStepCurveName)
 UE.CallProcessEventEx(OwnerAddress, "GetAnimatedAttributeStepCurveName", _params);
 deAlloc(_params);
end
FNR("BL4.GetAnimatedAttributeStepCurveName");

BL4.GetAnimatedAttributeStepCurveNames = function(OwnerAddress, OutAttributeStepCurveNames)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAnimatedAttributeStepCurveNames: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OutAttributeStepCurveNames at +0x0
 writeQword(_params + 0x0, OutAttributeStepCurveNames)
 UE.CallProcessEventEx(OwnerAddress, "GetAnimatedAttributeStepCurveNames", _params);
 deAlloc(_params);
end
FNR("BL4.GetAnimatedAttributeStepCurveNames");

BL4.GetAnimatedAttributeStepCurveNamesCount = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAnimatedAttributeStepCurveNamesCount: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAnimatedAttributeStepCurveNamesCount", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAnimatedAttributeStepCurveNamesCount");

BL4.GetAnimatedMaterialCurveSuffixe = function(OwnerAddress, Index, OutMaterialCurveSuffixe)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAnimatedMaterialCurveSuffixe: Failed To Allocate The Params");return;end;
 Index = Index or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Index at +0x0, OutMaterialCurveSuffixe at +0x8
 writeInteger(_params + 0x0, Index)
 writeQword(_params + 0x8, OutMaterialCurveSuffixe)
 UE.CallProcessEventEx(OwnerAddress, "GetAnimatedMaterialCurveSuffixe", _params);
 deAlloc(_params);
end
FNR("BL4.GetAnimatedMaterialCurveSuffixe");

BL4.GetAnimatedMaterialCurveSuffixes = function(OwnerAddress, OutMaterialCurveSuffixes)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAnimatedMaterialCurveSuffixes: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OutMaterialCurveSuffixes at +0x0
 writeQword(_params + 0x0, OutMaterialCurveSuffixes)
 UE.CallProcessEventEx(OwnerAddress, "GetAnimatedMaterialCurveSuffixes", _params);
 deAlloc(_params);
end
FNR("BL4.GetAnimatedMaterialCurveSuffixes");

BL4.GetAnimatedMaterialCurveSuffixesCount = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAnimatedMaterialCurveSuffixesCount: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAnimatedMaterialCurveSuffixesCount", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAnimatedMaterialCurveSuffixesCount");

BL4.GetCustomAddCurveMetadataToSkeleton = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomAddCurveMetadataToSkeleton: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomAddCurveMetadataToSkeleton", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomAddCurveMetadataToSkeleton");

BL4.GetCustomDeleteExistingCustomAttributeCurves = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomDeleteExistingCustomAttributeCurves: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomDeleteExistingCustomAttributeCurves", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomDeleteExistingCustomAttributeCurves");

BL4.GetCustomDeleteExistingMorphTargetCurves = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomDeleteExistingMorphTargetCurves: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomDeleteExistingMorphTargetCurves", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomDeleteExistingMorphTargetCurves");

BL4.GetCustomDeleteExistingNonCurveCustomAttributes = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomDeleteExistingNonCurveCustomAttributes: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomDeleteExistingNonCurveCustomAttributes", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomDeleteExistingNonCurveCustomAttributes");

BL4.GetCustomDoNotImportCurveWithZero = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomDoNotImportCurveWithZero: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomDoNotImportCurveWithZero", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomDoNotImportCurveWithZero");

BL4.GetCustomImportAttributeCurves = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomImportAttributeCurves: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomImportAttributeCurves", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomImportAttributeCurves");

BL4.GetCustomImportBoneTracks = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomImportBoneTracks: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomImportBoneTracks", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomImportBoneTracks");

BL4.GetCustomImportBoneTracksRangeStart = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomImportBoneTracksRangeStart: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomImportBoneTracksRangeStart", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomImportBoneTracksRangeStart");

BL4.GetCustomImportBoneTracksRangeStop = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomImportBoneTracksRangeStop: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomImportBoneTracksRangeStop", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomImportBoneTracksRangeStop");

BL4.GetCustomImportBoneTracksSampleRate = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomImportBoneTracksSampleRate: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomImportBoneTracksSampleRate", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomImportBoneTracksSampleRate");

BL4.GetCustomMaterialDriveParameterOnCustomAttribute = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomMaterialDriveParameterOnCustomAttribute: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomMaterialDriveParameterOnCustomAttribute", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomMaterialDriveParameterOnCustomAttribute");

BL4.GetCustomRemoveCurveRedundantKeys = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomRemoveCurveRedundantKeys: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomRemoveCurveRedundantKeys", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomRemoveCurveRedundantKeys");

BL4.GetCustomSkeletonFactoryNodeUid = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomSkeletonFactoryNodeUid: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomSkeletonFactoryNodeUid", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomSkeletonFactoryNodeUid");

BL4.GetCustomSkeletonSoftObjectPath = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomSkeletonSoftObjectPath: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomSkeletonSoftObjectPath", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomSkeletonSoftObjectPath");

BL4.GetMorphTargetNodeAnimationPayloadKeys = function(OwnerAddress, OutMorphTargetNodeAnimationPayloads)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMorphTargetNodeAnimationPayloadKeys: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OutMorphTargetNodeAnimationPayloads at +0x0
 writeQword(_params + 0x0, OutMorphTargetNodeAnimationPayloads)
 UE.CallProcessEventEx(OwnerAddress, "GetMorphTargetNodeAnimationPayloadKeys", _params);
 deAlloc(_params);
end
FNR("BL4.GetMorphTargetNodeAnimationPayloadKeys");

BL4.GetObjectClass = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetObjectClass: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetObjectClass", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetObjectClass");

BL4.GetSceneNodeAnimationPayloadKeys = function(OwnerAddress, OutSceneNodeAnimationPayloadKeys)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSceneNodeAnimationPayloadKeys: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OutSceneNodeAnimationPayloadKeys at +0x0
 writeQword(_params + 0x0, OutSceneNodeAnimationPayloadKeys)
 UE.CallProcessEventEx(OwnerAddress, "GetSceneNodeAnimationPayloadKeys", _params);
 deAlloc(_params);
end
FNR("BL4.GetSceneNodeAnimationPayloadKeys");

BL4.InitializeAnimSequenceNode = function(OwnerAddress, UniqueID, DisplayLabel)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InitializeAnimSequenceNode: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: UniqueID at +0x0, DisplayLabel at +0x10
 writeQword(_params + 0x0, UniqueID)
 writeQword(_params + 0x10, DisplayLabel)
 UE.CallProcessEventEx(OwnerAddress, "InitializeAnimSequenceNode", _params);
 deAlloc(_params);
end
FNR("BL4.InitializeAnimSequenceNode");

BL4.RemoveAnimatedAttributeCurveName = function(OwnerAddress, AttributeCurveName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveAnimatedAttributeCurveName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeCurveName at +0x0
 writeQword(_params + 0x0, AttributeCurveName)
 UE.CallProcessEventEx(OwnerAddress, "RemoveAnimatedAttributeCurveName", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RemoveAnimatedAttributeCurveName");

BL4.RemoveAnimatedAttributeStepCurveName = function(OwnerAddress, AttributeStepCurveName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveAnimatedAttributeStepCurveName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeStepCurveName at +0x0
 writeQword(_params + 0x0, AttributeStepCurveName)
 UE.CallProcessEventEx(OwnerAddress, "RemoveAnimatedAttributeStepCurveName", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RemoveAnimatedAttributeStepCurveName");

BL4.RemoveAnimatedMaterialCurveSuffixe = function(OwnerAddress, MaterialCurveSuffixe)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveAnimatedMaterialCurveSuffixe: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MaterialCurveSuffixe at +0x0
 writeQword(_params + 0x0, MaterialCurveSuffixe)
 UE.CallProcessEventEx(OwnerAddress, "RemoveAnimatedMaterialCurveSuffixe", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RemoveAnimatedMaterialCurveSuffixe");

BL4.SetAnimatedAttributeCurveName = function(OwnerAddress, AttributeCurveName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAnimatedAttributeCurveName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeCurveName at +0x0
 writeQword(_params + 0x0, AttributeCurveName)
 UE.CallProcessEventEx(OwnerAddress, "SetAnimatedAttributeCurveName", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetAnimatedAttributeCurveName");

BL4.SetAnimatedAttributeStepCurveName = function(OwnerAddress, AttributeStepCurveName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAnimatedAttributeStepCurveName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeStepCurveName at +0x0
 writeQword(_params + 0x0, AttributeStepCurveName)
 UE.CallProcessEventEx(OwnerAddress, "SetAnimatedAttributeStepCurveName", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetAnimatedAttributeStepCurveName");

BL4.SetAnimatedMaterialCurveSuffixe = function(OwnerAddress, MaterialCurveSuffixe)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAnimatedMaterialCurveSuffixe: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MaterialCurveSuffixe at +0x0
 writeQword(_params + 0x0, MaterialCurveSuffixe)
 UE.CallProcessEventEx(OwnerAddress, "SetAnimatedMaterialCurveSuffixe", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetAnimatedMaterialCurveSuffixe");

BL4.SetAnimationPayloadKeysForMorphTargetNodeUids = function(OwnerAddress, MorphTargetAnimationPayloadKeyUids, MorphTargetAnimationPayloadKeyTypes)
 local _paramsSize = 0xA0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAnimationPayloadKeysForMorphTargetNodeUids: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MorphTargetAnimationPayloadKeyUids at +0x0, MorphTargetAnimationPayloadKeyTypes at +0x50
 writeQword(_params + 0x0, MorphTargetAnimationPayloadKeyUids)
 writeQword(_params + 0x50, MorphTargetAnimationPayloadKeyTypes)
 UE.CallProcessEventEx(OwnerAddress, "SetAnimationPayloadKeysForMorphTargetNodeUids", _params);
 deAlloc(_params);
end
FNR("BL4.SetAnimationPayloadKeysForMorphTargetNodeUids");

BL4.SetAnimationPayloadKeysForSceneNodeUids = function(OwnerAddress, SceneNodeAnimationPayloadKeyUids, SceneNodeAnimationPayloadKeyTypes)
 local _paramsSize = 0xA0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAnimationPayloadKeysForSceneNodeUids: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SceneNodeAnimationPayloadKeyUids at +0x0, SceneNodeAnimationPayloadKeyTypes at +0x50
 writeQword(_params + 0x0, SceneNodeAnimationPayloadKeyUids)
 writeQword(_params + 0x50, SceneNodeAnimationPayloadKeyTypes)
 UE.CallProcessEventEx(OwnerAddress, "SetAnimationPayloadKeysForSceneNodeUids", _params);
 deAlloc(_params);
end
FNR("BL4.SetAnimationPayloadKeysForSceneNodeUids");

BL4.SetCustomAddCurveMetadataToSkeleton = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomAddCurveMetadataToSkeleton: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomAddCurveMetadataToSkeleton", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomAddCurveMetadataToSkeleton");

BL4.SetCustomDeleteExistingCustomAttributeCurves = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomDeleteExistingCustomAttributeCurves: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomDeleteExistingCustomAttributeCurves", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomDeleteExistingCustomAttributeCurves");

BL4.SetCustomDeleteExistingMorphTargetCurves = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomDeleteExistingMorphTargetCurves: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomDeleteExistingMorphTargetCurves", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomDeleteExistingMorphTargetCurves");

BL4.SetCustomDeleteExistingNonCurveCustomAttributes = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomDeleteExistingNonCurveCustomAttributes: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomDeleteExistingNonCurveCustomAttributes", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomDeleteExistingNonCurveCustomAttributes");

BL4.SetCustomDoNotImportCurveWithZero = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomDoNotImportCurveWithZero: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomDoNotImportCurveWithZero", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomDoNotImportCurveWithZero");

BL4.SetCustomImportAttributeCurves = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomImportAttributeCurves: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomImportAttributeCurves", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomImportAttributeCurves");

BL4.SetCustomImportBoneTracks = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomImportBoneTracks: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomImportBoneTracks", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomImportBoneTracks");

BL4.SetCustomImportBoneTracksRangeStart = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomImportBoneTracksRangeStart: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomImportBoneTracksRangeStart", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomImportBoneTracksRangeStart");

BL4.SetCustomImportBoneTracksRangeStop = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomImportBoneTracksRangeStop: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomImportBoneTracksRangeStop", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomImportBoneTracksRangeStop");

BL4.SetCustomImportBoneTracksSampleRate = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomImportBoneTracksSampleRate: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomImportBoneTracksSampleRate", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomImportBoneTracksSampleRate");

BL4.SetCustomMaterialDriveParameterOnCustomAttribute = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomMaterialDriveParameterOnCustomAttribute: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomMaterialDriveParameterOnCustomAttribute", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomMaterialDriveParameterOnCustomAttribute");

BL4.SetCustomRemoveCurveRedundantKeys = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomRemoveCurveRedundantKeys: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomRemoveCurveRedundantKeys", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomRemoveCurveRedundantKeys");

BL4.SetCustomSkeletonFactoryNodeUid = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomSkeletonFactoryNodeUid: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomSkeletonFactoryNodeUid", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomSkeletonFactoryNodeUid");

BL4.SetCustomSkeletonSoftObjectPath = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomSkeletonSoftObjectPath: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomSkeletonSoftObjectPath", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomSkeletonSoftObjectPath");

