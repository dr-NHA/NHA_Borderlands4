BL4.AddAttribute = function(OwnerAddress, AttributeIdentifier, bShouldTransact)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddAttribute: Failed To Allocate The Params");return;end;
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeIdentifier at +0x0, bShouldTransact at +0x40
 writeQword(_params + 0x0, AttributeIdentifier)
 writeByte(_params + 0x40, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "AddAttribute", _params);
 local RET=readByte(_params + 0x41);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddAttribute");

BL4.AddBoneCurve = function(OwnerAddress, BoneName, bShouldTransact)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddBoneCurve: Failed To Allocate The Params");return;end;
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0, bShouldTransact at +0x8
 writeQword(_params + 0x0, BoneName)
 writeByte(_params + 0x8, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "AddBoneCurve", _params);
 local RET=readByte(_params + 0x9);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddBoneCurve");

BL4.AddBoneTrack = function(OwnerAddress, BoneName, bShouldTransact)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddBoneTrack: Failed To Allocate The Params");return;end;
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0, bShouldTransact at +0x8
 writeQword(_params + 0x0, BoneName)
 writeByte(_params + 0x8, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "AddBoneTrack", _params);
 local RET=readInteger(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddBoneTrack");

BL4.AddCurve = function(OwnerAddress, CurveId, CurveFlags, bShouldTransact)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddCurve: Failed To Allocate The Params");return;end;
 CurveFlags = CurveFlags or 0
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CurveId at +0x0, CurveFlags at +0xC, bShouldTransact at +0x10
 writeQword(_params + 0x0, CurveId)
 writeInteger(_params + 0xC, CurveFlags)
 writeByte(_params + 0x10, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "AddCurve", _params);
 local RET=readByte(_params + 0x11);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddCurve");

BL4.CloseBracket = function(OwnerAddress, bShouldTransact)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CloseBracket: Failed To Allocate The Params");return;end;
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bShouldTransact at +0x0
 writeByte(_params + 0x0, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "CloseBracket", _params);
 deAlloc(_params);
end
FNR("BL4.CloseBracket");

BL4.DuplicateAttribute = function(OwnerAddress, AttributeIdentifier, NewAttributeIdentifier, bShouldTransact)
 local _paramsSize = 0x88
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DuplicateAttribute: Failed To Allocate The Params");return;end;
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeIdentifier at +0x0, NewAttributeIdentifier at +0x40, bShouldTransact at +0x80
 writeQword(_params + 0x0, AttributeIdentifier)
 writeQword(_params + 0x40, NewAttributeIdentifier)
 writeByte(_params + 0x80, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "DuplicateAttribute", _params);
 local RET=readByte(_params + 0x81);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DuplicateAttribute");

BL4.DuplicateCurve = function(OwnerAddress, CopyCurveId, NewCurveId, bShouldTransact)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DuplicateCurve: Failed To Allocate The Params");return;end;
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CopyCurveId at +0x0, NewCurveId at +0xC, bShouldTransact at +0x18
 writeQword(_params + 0x0, CopyCurveId)
 writeQword(_params + 0xC, NewCurveId)
 writeByte(_params + 0x18, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "DuplicateCurve", _params);
 local RET=readByte(_params + 0x19);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DuplicateCurve");

BL4.FindOrAddCurveNamesOnSkeleton = function(Skeleton, SupportedCurveType, bShouldTransact)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindOrAddCurveNamesOnSkeleton: Failed To Allocate The Params");return;end;
 SupportedCurveType = SupportedCurveType or 0
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Skeleton at +0x0, SupportedCurveType at +0x8, bShouldTransact at +0x9
 writeQword(_params + 0x0, Skeleton)
 writeByte(_params + 0x8, SupportedCurveType)
 writeByte(_params + 0x9, bShouldTransact)
 UE.CallProcessEventEx(Skeleton, "FindOrAddCurveNamesOnSkeleton", _params);
 deAlloc(_params);
end
FNR("BL4.FindOrAddCurveNamesOnSkeleton");

BL4.GetModelInterface = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetModelInterface: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetModelInterface", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetModelInterface");

BL4.InsertBoneTrack = function(OwnerAddress, BoneName, DesiredIndex, bShouldTransact)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InsertBoneTrack: Failed To Allocate The Params");return;end;
 DesiredIndex = DesiredIndex or 0
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0, DesiredIndex at +0x8, bShouldTransact at +0xC
 writeQword(_params + 0x0, BoneName)
 writeInteger(_params + 0x8, DesiredIndex)
 writeByte(_params + 0xC, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "InsertBoneTrack", _params);
 local RET=readInteger(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.InsertBoneTrack");

BL4.OpenBracket = function(OwnerAddress, InTitle, bShouldTransact)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OpenBracket: Failed To Allocate The Params");return;end;
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InTitle at +0x0, bShouldTransact at +0x10
 writeQword(_params + 0x0, InTitle)
 writeByte(_params + 0x10, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "OpenBracket", _params);
 deAlloc(_params);
end
FNR("BL4.OpenBracket");

BL4.RemoveAllAttributes = function(OwnerAddress, bShouldTransact)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveAllAttributes: Failed To Allocate The Params");return;end;
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bShouldTransact at +0x0
 writeByte(_params + 0x0, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "RemoveAllAttributes", _params);
 local RET=readInteger(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RemoveAllAttributes");

BL4.RemoveAllAttributesForBone = function(OwnerAddress, BoneName, bShouldTransact)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveAllAttributesForBone: Failed To Allocate The Params");return;end;
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0, bShouldTransact at +0x8
 writeQword(_params + 0x0, BoneName)
 writeByte(_params + 0x8, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "RemoveAllAttributesForBone", _params);
 local RET=readInteger(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RemoveAllAttributesForBone");

BL4.RemoveAllBoneTracks = function(OwnerAddress, bShouldTransact)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveAllBoneTracks: Failed To Allocate The Params");return;end;
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bShouldTransact at +0x0
 writeByte(_params + 0x0, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "RemoveAllBoneTracks", _params);
 deAlloc(_params);
end
FNR("BL4.RemoveAllBoneTracks");

BL4.RemoveAllCurvesOfType = function(OwnerAddress, SupportedCurveType, bShouldTransact)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveAllCurvesOfType: Failed To Allocate The Params");return;end;
 SupportedCurveType = SupportedCurveType or 0
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: SupportedCurveType at +0x0, bShouldTransact at +0x1
 writeByte(_params + 0x0, SupportedCurveType)
 writeByte(_params + 0x1, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "RemoveAllCurvesOfType", _params);
 deAlloc(_params);
end
FNR("BL4.RemoveAllCurvesOfType");

BL4.RemoveAttribute = function(OwnerAddress, AttributeIdentifier, bShouldTransact)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveAttribute: Failed To Allocate The Params");return;end;
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeIdentifier at +0x0, bShouldTransact at +0x40
 writeQword(_params + 0x0, AttributeIdentifier)
 writeByte(_params + 0x40, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "RemoveAttribute", _params);
 local RET=readByte(_params + 0x41);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RemoveAttribute");

BL4.RemoveAttributeKey = function(OwnerAddress, AttributeIdentifier, time, bShouldTransact)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveAttributeKey: Failed To Allocate The Params");return;end;
 time = time or 0
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeIdentifier at +0x0, time at +0x40, bShouldTransact at +0x44
 writeQword(_params + 0x0, AttributeIdentifier)
 writeFloat(_params + 0x40, time)
 writeByte(_params + 0x44, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "RemoveAttributeKey", _params);
 local RET=readByte(_params + 0x45);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RemoveAttributeKey");

BL4.RemoveBoneTrack = function(OwnerAddress, BoneName, bShouldTransact)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveBoneTrack: Failed To Allocate The Params");return;end;
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0, bShouldTransact at +0x8
 writeQword(_params + 0x0, BoneName)
 writeByte(_params + 0x8, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "RemoveBoneTrack", _params);
 local RET=readByte(_params + 0x9);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RemoveBoneTrack");

BL4.RemoveCurve = function(OwnerAddress, CurveId, bShouldTransact)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveCurve: Failed To Allocate The Params");return;end;
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CurveId at +0x0, bShouldTransact at +0xC
 writeQword(_params + 0x0, CurveId)
 writeByte(_params + 0xC, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "RemoveCurve", _params);
 local RET=readByte(_params + 0xD);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RemoveCurve");

BL4.RemoveCurveKey = function(OwnerAddress, CurveId, time, bShouldTransact)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveCurveKey: Failed To Allocate The Params");return;end;
 time = time or 0
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CurveId at +0x0, time at +0xC, bShouldTransact at +0x10
 writeQword(_params + 0x0, CurveId)
 writeFloat(_params + 0xC, time)
 writeByte(_params + 0x10, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "RemoveCurveKey", _params);
 local RET=readByte(_params + 0x11);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RemoveCurveKey");

BL4.RemoveTransformCurveKey = function(OwnerAddress, CurveId, time, bShouldTransact)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveTransformCurveKey: Failed To Allocate The Params");return;end;
 time = time or 0
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CurveId at +0x0, time at +0xC, bShouldTransact at +0x10
 writeQword(_params + 0x0, CurveId)
 writeFloat(_params + 0xC, time)
 writeByte(_params + 0x10, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "RemoveTransformCurveKey", _params);
 local RET=readByte(_params + 0x11);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RemoveTransformCurveKey");

BL4.RenameCurve = function(OwnerAddress, CurveToRenameId, NewCurveId, bShouldTransact)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RenameCurve: Failed To Allocate The Params");return;end;
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CurveToRenameId at +0x0, NewCurveId at +0xC, bShouldTransact at +0x18
 writeQword(_params + 0x0, CurveToRenameId)
 writeQword(_params + 0xC, NewCurveId)
 writeByte(_params + 0x18, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "RenameCurve", _params);
 local RET=readByte(_params + 0x19);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RenameCurve");

BL4.Resize = function(OwnerAddress, Length, T0, T1, bShouldTransact)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Resize: Failed To Allocate The Params");return;end;
 Length = Length or 0
 T0 = T0 or 0
 T1 = T1 or 0
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Length at +0x0, T0 at +0x4, T1 at +0x8, bShouldTransact at +0xC
 writeFloat(_params + 0x0, Length)
 writeFloat(_params + 0x4, T0)
 writeFloat(_params + 0x8, T1)
 writeByte(_params + 0xC, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "Resize", _params);
 deAlloc(_params);
end
FNR("BL4.Resize");

BL4.ResizeInFrames = function(OwnerAddress, NewLengthInFrames, T0, T1, bShouldTransact)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ResizeInFrames: Failed To Allocate The Params");return;end;
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewLengthInFrames at +0x0, T0 at +0x4, T1 at +0x8, bShouldTransact at +0xC
 writeQword(_params + 0x0, NewLengthInFrames)
 writeQword(_params + 0x4, T0)
 writeQword(_params + 0x8, T1)
 writeByte(_params + 0xC, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "ResizeInFrames", _params);
 deAlloc(_params);
end
FNR("BL4.ResizeInFrames");

BL4.ResizeNumberOfFrames = function(OwnerAddress, NewLengthInFrames, T0, T1, bShouldTransact)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ResizeNumberOfFrames: Failed To Allocate The Params");return;end;
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewLengthInFrames at +0x0, T0 at +0x4, T1 at +0x8, bShouldTransact at +0xC
 writeQword(_params + 0x0, NewLengthInFrames)
 writeQword(_params + 0x4, T0)
 writeQword(_params + 0x8, T1)
 writeByte(_params + 0xC, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "ResizeNumberOfFrames", _params);
 deAlloc(_params);
end
FNR("BL4.ResizeNumberOfFrames");

BL4.ResizePlayLength = function(OwnerAddress, NewLength, T0, T1, bShouldTransact)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ResizePlayLength: Failed To Allocate The Params");return;end;
 NewLength = NewLength or 0
 T0 = T0 or 0
 T1 = T1 or 0
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewLength at +0x0, T0 at +0x4, T1 at +0x8, bShouldTransact at +0xC
 writeFloat(_params + 0x0, NewLength)
 writeFloat(_params + 0x4, T0)
 writeFloat(_params + 0x8, T1)
 writeByte(_params + 0xC, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "ResizePlayLength", _params);
 deAlloc(_params);
end
FNR("BL4.ResizePlayLength");

BL4.ScaleCurve = function(OwnerAddress, CurveId, Origin, Factor, bShouldTransact)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ScaleCurve: Failed To Allocate The Params");return;end;
 Origin = Origin or 0
 Factor = Factor or 0
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CurveId at +0x0, Origin at +0xC, Factor at +0x10, bShouldTransact at +0x14
 writeQword(_params + 0x0, CurveId)
 writeFloat(_params + 0xC, Origin)
 writeFloat(_params + 0x10, Factor)
 writeByte(_params + 0x14, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "ScaleCurve", _params);
 local RET=readByte(_params + 0x15);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ScaleCurve");

BL4.SetBoneTrackKeys = function(OwnerAddress, BoneName, PositionalKeys, RotationalKeys, ScalingKeys, bShouldTransact)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBoneTrackKeys: Failed To Allocate The Params");return;end;
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0, PositionalKeys at +0x8, RotationalKeys at +0x18, ScalingKeys at +0x28, bShouldTransact at +0x38
 writeQword(_params + 0x0, BoneName)
 writeQword(_params + 0x8, PositionalKeys)
 writeQword(_params + 0x18, RotationalKeys)
 writeQword(_params + 0x28, ScalingKeys)
 writeByte(_params + 0x38, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "SetBoneTrackKeys", _params);
 local RET=readByte(_params + 0x39);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetBoneTrackKeys");

BL4.SetCurveColor = function(OwnerAddress, CurveId, Color, bShouldTransact)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCurveColor: Failed To Allocate The Params");return;end;
 Color = Color or {R=0,G=0,B=0,A=0}
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CurveId at +0x0, Color at +0xC, bShouldTransact at +0x1C
 writeQword(_params + 0x0, CurveId)
 writeFloat(_params + 0xC, (Color and Color.R) or 0)
 writeFloat(_params + 0x10, (Color and Color.G) or 0)
 writeFloat(_params + 0x14, (Color and Color.B) or 0)
 writeFloat(_params + 0x18, (Color and Color.A) or 0)
 writeByte(_params + 0x1C, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "SetCurveColor", _params);
 local RET=readByte(_params + 0x1D);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCurveColor");

BL4.SetCurveComment = function(OwnerAddress, CurveId, Comment, bShouldTransact)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCurveComment: Failed To Allocate The Params");return;end;
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CurveId at +0x0, Comment at +0x10, bShouldTransact at +0x20
 writeQword(_params + 0x0, CurveId)
 writeQword(_params + 0x10, Comment)
 writeByte(_params + 0x20, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "SetCurveComment", _params);
 local RET=readByte(_params + 0x21);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCurveComment");

BL4.SetCurveFlag = function(OwnerAddress, CurveId, Flag, bState, bShouldTransact)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCurveFlag: Failed To Allocate The Params");return;end;
 Flag = Flag or 0
 bState = bState or false
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CurveId at +0x0, Flag at +0xC, bState at +0xD, bShouldTransact at +0xE
 writeQword(_params + 0x0, CurveId)
 writeByte(_params + 0xC, Flag)
 writeByte(_params + 0xD, bState)
 writeByte(_params + 0xE, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "SetCurveFlag", _params);
 local RET=readByte(_params + 0xF);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCurveFlag");

BL4.SetCurveFlags = function(OwnerAddress, CurveId, Flags, bShouldTransact)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCurveFlags: Failed To Allocate The Params");return;end;
 Flags = Flags or 0
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CurveId at +0x0, Flags at +0xC, bShouldTransact at +0x10
 writeQword(_params + 0x0, CurveId)
 writeInteger(_params + 0xC, Flags)
 writeByte(_params + 0x10, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "SetCurveFlags", _params);
 local RET=readByte(_params + 0x11);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCurveFlags");

BL4.SetCurveKey = function(OwnerAddress, CurveId, Key, bShouldTransact)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCurveKey: Failed To Allocate The Params");return;end;
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CurveId at +0x0, Key at +0xC, bShouldTransact at +0x28
 writeQword(_params + 0x0, CurveId)
 writeQword(_params + 0xC, Key)
 writeByte(_params + 0x28, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "SetCurveKey", _params);
 local RET=readByte(_params + 0x29);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCurveKey");

BL4.SetCurveKeys = function(OwnerAddress, CurveId, CurveKeys, bShouldTransact)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCurveKeys: Failed To Allocate The Params");return;end;
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CurveId at +0x0, CurveKeys at +0x10, bShouldTransact at +0x20
 writeQword(_params + 0x0, CurveId)
 writeQword(_params + 0x10, CurveKeys)
 writeByte(_params + 0x20, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "SetCurveKeys", _params);
 local RET=readByte(_params + 0x21);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCurveKeys");

BL4.SetFrameRate = function(OwnerAddress, FrameRate, bShouldTransact)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetFrameRate: Failed To Allocate The Params");return;end;
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: FrameRate at +0x0, bShouldTransact at +0x8
 writeQword(_params + 0x0, FrameRate)
 writeByte(_params + 0x8, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "SetFrameRate", _params);
 deAlloc(_params);
end
FNR("BL4.SetFrameRate");

BL4.SetModel = function(OwnerAddress, InModel)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetModel: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InModel at +0x0
 writeQword(_params + 0x0, InModel)
 UE.CallProcessEventEx(OwnerAddress, "SetModel", _params);
 deAlloc(_params);
end
FNR("BL4.SetModel");

BL4.SetNumberOfFrames = function(OwnerAddress, NewLengthInFrames, bShouldTransact)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNumberOfFrames: Failed To Allocate The Params");return;end;
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewLengthInFrames at +0x0, bShouldTransact at +0x4
 writeQword(_params + 0x0, NewLengthInFrames)
 writeByte(_params + 0x4, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "SetNumberOfFrames", _params);
 deAlloc(_params);
end
FNR("BL4.SetNumberOfFrames");

BL4.SetPlayLength = function(OwnerAddress, Length, bShouldTransact)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPlayLength: Failed To Allocate The Params");return;end;
 Length = Length or 0
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Length at +0x0, bShouldTransact at +0x4
 writeFloat(_params + 0x0, Length)
 writeByte(_params + 0x4, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "SetPlayLength", _params);
 deAlloc(_params);
end
FNR("BL4.SetPlayLength");

BL4.SetTransformCurveKey = function(OwnerAddress, CurveId, time, Value, bShouldTransact)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTransformCurveKey: Failed To Allocate The Params");return;end;
 time = time or 0
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CurveId at +0x0, time at +0xC, Value at +0x10, bShouldTransact at +0x70
 writeQword(_params + 0x0, CurveId)
 writeFloat(_params + 0xC, time)
 writeQword(_params + 0x10, Value)
 writeByte(_params + 0x70, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "SetTransformCurveKey", _params);
 local RET=readByte(_params + 0x71);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetTransformCurveKey");

BL4.SetTransformCurveKeys = function(OwnerAddress, CurveId, TransformValues, TimeKeys, bShouldTransact)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTransformCurveKeys: Failed To Allocate The Params");return;end;
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CurveId at +0x0, TransformValues at +0x10, TimeKeys at +0x20, bShouldTransact at +0x30
 writeQword(_params + 0x0, CurveId)
 writeQword(_params + 0x10, TransformValues)
 writeQword(_params + 0x20, TimeKeys)
 writeByte(_params + 0x30, bShouldTransact)
 UE.CallProcessEventEx(OwnerAddress, "SetTransformCurveKeys", _params);
 local RET=readByte(_params + 0x31);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetTransformCurveKeys");

BL4.UpdateCurveNamesFromSkeleton = function(Skeleton, SupportedCurveType, bShouldTransact)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UpdateCurveNamesFromSkeleton: Failed To Allocate The Params");return;end;
 SupportedCurveType = SupportedCurveType or 0
 bShouldTransact = bShouldTransact or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Skeleton at +0x0, SupportedCurveType at +0x8, bShouldTransact at +0x9
 writeQword(_params + 0x0, Skeleton)
 writeByte(_params + 0x8, SupportedCurveType)
 writeByte(_params + 0x9, bShouldTransact)
 UE.CallProcessEventEx(Skeleton, "UpdateCurveNamesFromSkeleton", _params);
 deAlloc(_params);
end
FNR("BL4.UpdateCurveNamesFromSkeleton");

