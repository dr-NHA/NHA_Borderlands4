BL4.ChildCount = function(OwnerAddress, LiveLinkTransform)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ChildCount: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: LiveLinkTransform at +0x0
 writeQword(_params + 0x0, LiveLinkTransform)
 UE.CallProcessEventEx(OwnerAddress, "ChildCount", _params);
 local RET=readInteger(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ChildCount");

BL4.ComponentSpaceTransform = function(OwnerAddress, LiveLinkTransform, Transform)
 local _paramsSize = 0x80
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ComponentSpaceTransform: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: LiveLinkTransform at +0x0, Transform at +0x20
 writeQword(_params + 0x0, LiveLinkTransform)
 writeQword(_params + 0x20, Transform)
 UE.CallProcessEventEx(OwnerAddress, "ComponentSpaceTransform", _params);
 deAlloc(_params);
end
FNR("BL4.ComponentSpaceTransform");

BL4.EvaluateLiveLinkFrame = function(OwnerAddress, SubjectRepresentation, OutBlueprintData)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EvaluateLiveLinkFrame: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SubjectRepresentation at +0x0, OutBlueprintData at +0x10
 writeQword(_params + 0x0, SubjectRepresentation)
 writeQword(_params + 0x10, OutBlueprintData)
 UE.CallProcessEventEx(OwnerAddress, "EvaluateLiveLinkFrame", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EvaluateLiveLinkFrame");

BL4.EvaluateLiveLinkFrameAtSceneTime = function(OwnerAddress, SubjectName, Role_Class, SceneTime, OutBlueprintData)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EvaluateLiveLinkFrameAtSceneTime: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SubjectName at +0x0, Role at +0x8, SceneTime at +0x10, OutBlueprintData at +0x28
 writeQword(_params + 0x0, SubjectName)
 writeQword(_params + 0x8, Role_Class)
 writeQword(_params + 0x10, SceneTime)
 writeQword(_params + 0x28, OutBlueprintData)
 UE.CallProcessEventEx(OwnerAddress, "EvaluateLiveLinkFrameAtSceneTime", _params);
 local RET=readByte(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EvaluateLiveLinkFrameAtSceneTime");

BL4.EvaluateLiveLinkFrameAtWorldTimeOffset = function(OwnerAddress, SubjectName, Role_Class, WorldTimeOffset, OutBlueprintData)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EvaluateLiveLinkFrameAtWorldTimeOffset: Failed To Allocate The Params");return;end;
 WorldTimeOffset = WorldTimeOffset or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SubjectName at +0x0, Role at +0x8, WorldTimeOffset at +0x10, OutBlueprintData at +0x18
 writeQword(_params + 0x0, SubjectName)
 writeQword(_params + 0x8, Role_Class)
 writeFloat(_params + 0x10, WorldTimeOffset)
 writeQword(_params + 0x18, OutBlueprintData)
 UE.CallProcessEventEx(OwnerAddress, "EvaluateLiveLinkFrameAtWorldTimeOffset", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EvaluateLiveLinkFrameAtWorldTimeOffset");

BL4.EvaluateLiveLinkFrameWithSpecificRole = function(OwnerAddress, SubjectName, Role_Class, OutBlueprintData)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EvaluateLiveLinkFrameWithSpecificRole: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SubjectName at +0x0, Role at +0x8, OutBlueprintData at +0x10
 writeQword(_params + 0x0, SubjectName)
 writeQword(_params + 0x8, Role_Class)
 writeQword(_params + 0x10, OutBlueprintData)
 UE.CallProcessEventEx(OwnerAddress, "EvaluateLiveLinkFrameWithSpecificRole", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EvaluateLiveLinkFrameWithSpecificRole");

BL4.GetAnimationFrameData = function(OwnerAddress, SubjectFrameHandle, AnimationFrameData)
 local _paramsSize = 0xD0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAnimationFrameData: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SubjectFrameHandle at +0x0, AnimationFrameData at +0x18
 writeQword(_params + 0x0, SubjectFrameHandle)
 writeQword(_params + 0x18, AnimationFrameData)
 UE.CallProcessEventEx(OwnerAddress, "GetAnimationFrameData", _params);
 local RET=readByte(_params + 0xC8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAnimationFrameData");

BL4.GetAnimationStaticData = function(OwnerAddress, SubjectFrameHandle, AnimationStaticData)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAnimationStaticData: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SubjectFrameHandle at +0x0, AnimationStaticData at +0x18
 writeQword(_params + 0x0, SubjectFrameHandle)
 writeQword(_params + 0x18, AnimationStaticData)
 UE.CallProcessEventEx(OwnerAddress, "GetAnimationStaticData", _params);
 local RET=readByte(_params + 0x48);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAnimationStaticData");

BL4.GetBasicData = function(OwnerAddress, SubjectFrameHandle, BasicBlueprintData)
 local _paramsSize = 0xD0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBasicData: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SubjectFrameHandle at +0x0, BasicBlueprintData at +0x18
 writeQword(_params + 0x0, SubjectFrameHandle)
 writeQword(_params + 0x18, BasicBlueprintData)
 UE.CallProcessEventEx(OwnerAddress, "GetBasicData", _params);
 deAlloc(_params);
end
FNR("BL4.GetBasicData");

BL4.GetChildren = function(OwnerAddress, LiveLinkTransform, Children)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetChildren: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: LiveLinkTransform at +0x0, Children at +0x20
 writeQword(_params + 0x0, LiveLinkTransform)
 writeQword(_params + 0x20, Children)
 UE.CallProcessEventEx(OwnerAddress, "GetChildren", _params);
 deAlloc(_params);
end
FNR("BL4.GetChildren");

BL4.GetCurves = function(OwnerAddress, SubjectFrameHandle, Curves)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCurves: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SubjectFrameHandle at +0x0, Curves at +0x18
 writeQword(_params + 0x0, SubjectFrameHandle)
 writeQword(_params + 0x18, Curves)
 UE.CallProcessEventEx(OwnerAddress, "GetCurves", _params);
 deAlloc(_params);
end
FNR("BL4.GetCurves");

BL4.GetLiveLinkEnabledSubjectNames = function(OwnerAddress, bIncludeVirtualSubject)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLiveLinkEnabledSubjectNames: Failed To Allocate The Params");return;end;
 bIncludeVirtualSubject = bIncludeVirtualSubject or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bIncludeVirtualSubject at +0x0
 writeByte(_params + 0x0, bIncludeVirtualSubject)
 UE.CallProcessEventEx(OwnerAddress, "GetLiveLinkEnabledSubjectNames", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLiveLinkEnabledSubjectNames");

BL4.GetLiveLinkSubjectRole = function(OwnerAddress, SubjectName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLiveLinkSubjectRole: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SubjectName at +0x0
 writeQword(_params + 0x0, SubjectName)
 UE.CallProcessEventEx(OwnerAddress, "GetLiveLinkSubjectRole", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLiveLinkSubjectRole");

BL4.GetLiveLinkSubjects = function(OwnerAddress, bIncludeDisabledSubject, bIncludeVirtualSubject)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLiveLinkSubjects: Failed To Allocate The Params");return;end;
 bIncludeDisabledSubject = bIncludeDisabledSubject or false
 bIncludeVirtualSubject = bIncludeVirtualSubject or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bIncludeDisabledSubject at +0x0, bIncludeVirtualSubject at +0x1
 writeByte(_params + 0x0, bIncludeDisabledSubject)
 writeByte(_params + 0x1, bIncludeVirtualSubject)
 UE.CallProcessEventEx(OwnerAddress, "GetLiveLinkSubjects", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLiveLinkSubjects");

BL4.GetLiveLinkSubjectState = function(OwnerAddress, SubjectName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLiveLinkSubjectState: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SubjectName at +0x0
 writeQword(_params + 0x0, SubjectName)
 UE.CallProcessEventEx(OwnerAddress, "GetLiveLinkSubjectState", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLiveLinkSubjectState");

BL4.GetMetadata = function(OwnerAddress, SubjectFrameHandle, MetaData)
 local _paramsSize = 0x88
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMetadata: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SubjectFrameHandle at +0x0, MetaData at +0x18
 writeQword(_params + 0x0, SubjectFrameHandle)
 writeQword(_params + 0x18, MetaData)
 UE.CallProcessEventEx(OwnerAddress, "GetMetadata", _params);
 deAlloc(_params);
end
FNR("BL4.GetMetadata");

BL4.GetParent = function(OwnerAddress, LiveLinkTransform, Parent)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetParent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: LiveLinkTransform at +0x0, Parent at +0x20
 writeQword(_params + 0x0, LiveLinkTransform)
 writeQword(_params + 0x20, Parent)
 UE.CallProcessEventEx(OwnerAddress, "GetParent", _params);
 deAlloc(_params);
end
FNR("BL4.GetParent");

BL4.GetPropertyValue = function(OwnerAddress, BasicData, PropertyName, Value)
 local _paramsSize = 0xC8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPropertyValue: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BasicData at +0x0, PropertyName at +0xB8, Value at +0xC0
 writeQword(_params + 0x0, BasicData)
 writeQword(_params + 0xB8, PropertyName)
 writeFloat(_params + 0xC0, Value)
 UE.CallProcessEventEx(OwnerAddress, "GetPropertyValue", _params);
 local RET=readByte(_params + 0xC4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPropertyValue");

BL4.GetRootTransform = function(OwnerAddress, SubjectFrameHandle, LiveLinkTransform)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRootTransform: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SubjectFrameHandle at +0x0, LiveLinkTransform at +0x18
 writeQword(_params + 0x0, SubjectFrameHandle)
 writeQword(_params + 0x18, LiveLinkTransform)
 UE.CallProcessEventEx(OwnerAddress, "GetRootTransform", _params);
 deAlloc(_params);
end
FNR("BL4.GetRootTransform");

BL4.GetSourceMachineName = function(OwnerAddress, SourceHandle)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSourceMachineName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceHandle at +0x0
 writeQword(_params + 0x0, SourceHandle)
 UE.CallProcessEventEx(OwnerAddress, "GetSourceMachineName", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSourceMachineName");

BL4.GetSourceStatus = function(OwnerAddress, SourceHandle)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSourceStatus: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceHandle at +0x0
 writeQword(_params + 0x0, SourceHandle)
 UE.CallProcessEventEx(OwnerAddress, "GetSourceStatus", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSourceStatus");

BL4.GetSourceType = function(OwnerAddress, SourceHandle)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSourceType: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceHandle at +0x0
 writeQword(_params + 0x0, SourceHandle)
 UE.CallProcessEventEx(OwnerAddress, "GetSourceType", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSourceType");

BL4.GetSourceTypeFromGuid = function(OwnerAddress, SourceGuid)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSourceTypeFromGuid: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceGuid at +0x0
 writeQword(_params + 0x0, SourceGuid)
 UE.CallProcessEventEx(OwnerAddress, "GetSourceTypeFromGuid", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSourceTypeFromGuid");

BL4.GetSpecificLiveLinkSubjectRole = function(OwnerAddress, SubjectKey)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSpecificLiveLinkSubjectRole: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SubjectKey at +0x0
 writeQword(_params + 0x0, SubjectKey)
 UE.CallProcessEventEx(OwnerAddress, "GetSpecificLiveLinkSubjectRole", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSpecificLiveLinkSubjectRole");

BL4.GetTransformByIndex = function(OwnerAddress, SubjectFrameHandle, TransformIndex, LiveLinkTransform)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTransformByIndex: Failed To Allocate The Params");return;end;
 TransformIndex = TransformIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SubjectFrameHandle at +0x0, TransformIndex at +0x18, LiveLinkTransform at +0x20
 writeQword(_params + 0x0, SubjectFrameHandle)
 writeInteger(_params + 0x18, TransformIndex)
 writeQword(_params + 0x20, LiveLinkTransform)
 UE.CallProcessEventEx(OwnerAddress, "GetTransformByIndex", _params);
 deAlloc(_params);
end
FNR("BL4.GetTransformByIndex");

BL4.GetTransformByName = function(OwnerAddress, SubjectFrameHandle, TransformName, LiveLinkTransform)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTransformByName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SubjectFrameHandle at +0x0, TransformName at +0x18, LiveLinkTransform at +0x20
 writeQword(_params + 0x0, SubjectFrameHandle)
 writeQword(_params + 0x18, TransformName)
 writeQword(_params + 0x20, LiveLinkTransform)
 UE.CallProcessEventEx(OwnerAddress, "GetTransformByName", _params);
 deAlloc(_params);
end
FNR("BL4.GetTransformByName");

BL4.HasParent = function(OwnerAddress, LiveLinkTransform)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.HasParent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: LiveLinkTransform at +0x0
 writeQword(_params + 0x0, LiveLinkTransform)
 UE.CallProcessEventEx(OwnerAddress, "HasParent", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.HasParent");

BL4.IsLiveLinkSubjectEnabled = function(OwnerAddress, SubjectName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsLiveLinkSubjectEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SubjectName at +0x0
 writeQword(_params + 0x0, SubjectName)
 UE.CallProcessEventEx(OwnerAddress, "IsLiveLinkSubjectEnabled", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsLiveLinkSubjectEnabled");

BL4.IsSourceStillValid = function(OwnerAddress, SourceHandle)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsSourceStillValid: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceHandle at +0x0
 writeQword(_params + 0x0, SourceHandle)
 UE.CallProcessEventEx(OwnerAddress, "IsSourceStillValid", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsSourceStillValid");

BL4.IsSpecificLiveLinkSubjectEnabled = function(OwnerAddress, SubjectKey, bForThisFrame)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsSpecificLiveLinkSubjectEnabled: Failed To Allocate The Params");return;end;
 bForThisFrame = bForThisFrame or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SubjectKey at +0x0, bForThisFrame at +0x18
 writeQword(_params + 0x0, SubjectKey)
 writeByte(_params + 0x18, bForThisFrame)
 UE.CallProcessEventEx(OwnerAddress, "IsSpecificLiveLinkSubjectEnabled", _params);
 local RET=readByte(_params + 0x19);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsSpecificLiveLinkSubjectEnabled");

BL4.NumberOfTransforms = function(OwnerAddress, SubjectFrameHandle)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NumberOfTransforms: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SubjectFrameHandle at +0x0
 writeQword(_params + 0x0, SubjectFrameHandle)
 UE.CallProcessEventEx(OwnerAddress, "NumberOfTransforms", _params);
 local RET=readInteger(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NumberOfTransforms");

BL4.ParentBoneSpaceTransform = function(OwnerAddress, LiveLinkTransform, Transform)
 local _paramsSize = 0x80
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ParentBoneSpaceTransform: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: LiveLinkTransform at +0x0, Transform at +0x20
 writeQword(_params + 0x0, LiveLinkTransform)
 writeQword(_params + 0x20, Transform)
 UE.CallProcessEventEx(OwnerAddress, "ParentBoneSpaceTransform", _params);
 deAlloc(_params);
end
FNR("BL4.ParentBoneSpaceTransform");

BL4.RemoveSource = function(OwnerAddress, SourceHandle)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveSource: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceHandle at +0x0
 writeQword(_params + 0x0, SourceHandle)
 UE.CallProcessEventEx(OwnerAddress, "RemoveSource", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RemoveSource");

BL4.SetLiveLinkSubjectEnabled = function(OwnerAddress, SubjectKey, bEnabled)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLiveLinkSubjectEnabled: Failed To Allocate The Params");return;end;
 bEnabled = bEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SubjectKey at +0x0, bEnabled at +0x18
 writeQword(_params + 0x0, SubjectKey)
 writeByte(_params + 0x18, bEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetLiveLinkSubjectEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetLiveLinkSubjectEnabled");

BL4.TransformName = function(OwnerAddress, LiveLinkTransform, Name)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TransformName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: LiveLinkTransform at +0x0, Name at +0x20
 writeQword(_params + 0x0, LiveLinkTransform)
 writeQword(_params + 0x20, Name)
 UE.CallProcessEventEx(OwnerAddress, "TransformName", _params);
 deAlloc(_params);
end
FNR("BL4.TransformName");

BL4.TransformNames = function(OwnerAddress, SubjectFrameHandle, TransformNames)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TransformNames: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SubjectFrameHandle at +0x0, TransformNames at +0x18
 writeQword(_params + 0x0, SubjectFrameHandle)
 writeQword(_params + 0x18, TransformNames)
 UE.CallProcessEventEx(OwnerAddress, "TransformNames", _params);
 deAlloc(_params);
end
FNR("BL4.TransformNames");

