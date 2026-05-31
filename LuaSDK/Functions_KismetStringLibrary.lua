BL4.BuildString_Bool = function(OwnerAddress, AppendTo, Prefix, InBool, Suffix)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BuildString_Bool: Failed To Allocate The Params");return;end;
 InBool = InBool or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AppendTo at +0x0, Prefix at +0x10, InBool at +0x20, Suffix at +0x28
 writeQword(_params + 0x0, AppendTo)
 writeQword(_params + 0x10, Prefix)
 writeByte(_params + 0x20, InBool)
 writeQword(_params + 0x28, Suffix)
 UE.CallProcessEventEx(OwnerAddress, "BuildString_Bool", _params);
 local RET=readQword(_params + 0x38);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BuildString_Bool");

BL4.BuildString_Color = function(OwnerAddress, AppendTo, Prefix, InColor, Suffix)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BuildString_Color: Failed To Allocate The Params");return;end;
 InColor = InColor or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AppendTo at +0x0, Prefix at +0x10, InColor at +0x20, Suffix at +0x30
 writeQword(_params + 0x0, AppendTo)
 writeQword(_params + 0x10, Prefix)
 writeFloat(_params + 0x20, (InColor and InColor.R) or 0)
 writeFloat(_params + 0x24, (InColor and InColor.G) or 0)
 writeFloat(_params + 0x28, (InColor and InColor.B) or 0)
 writeFloat(_params + 0x2C, (InColor and InColor.A) or 0)
 writeQword(_params + 0x30, Suffix)
 UE.CallProcessEventEx(OwnerAddress, "BuildString_Color", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BuildString_Color");

BL4.BuildString_Double = function(OwnerAddress, AppendTo, Prefix, InDouble, Suffix)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BuildString_Double: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AppendTo at +0x0, Prefix at +0x10, InDouble at +0x20, Suffix at +0x28
 writeQword(_params + 0x0, AppendTo)
 writeQword(_params + 0x10, Prefix)
 writeQword(_params + 0x20, InDouble)
 writeQword(_params + 0x28, Suffix)
 UE.CallProcessEventEx(OwnerAddress, "BuildString_Double", _params);
 local RET=readQword(_params + 0x38);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BuildString_Double");

BL4.BuildString_Int = function(OwnerAddress, AppendTo, Prefix, inInt, Suffix)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BuildString_Int: Failed To Allocate The Params");return;end;
 inInt = inInt or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AppendTo at +0x0, Prefix at +0x10, inInt at +0x20, Suffix at +0x28
 writeQword(_params + 0x0, AppendTo)
 writeQword(_params + 0x10, Prefix)
 writeInteger(_params + 0x20, inInt)
 writeQword(_params + 0x28, Suffix)
 UE.CallProcessEventEx(OwnerAddress, "BuildString_Int", _params);
 local RET=readQword(_params + 0x38);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BuildString_Int");

BL4.BuildString_IntVector = function(OwnerAddress, AppendTo, Prefix, InIntVector, Suffix)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BuildString_IntVector: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AppendTo at +0x0, Prefix at +0x10, InIntVector at +0x20, Suffix at +0x30
 writeQword(_params + 0x0, AppendTo)
 writeQword(_params + 0x10, Prefix)
 writeQword(_params + 0x20, InIntVector)
 writeQword(_params + 0x30, Suffix)
 UE.CallProcessEventEx(OwnerAddress, "BuildString_IntVector", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BuildString_IntVector");

BL4.BuildString_Name = function(OwnerAddress, AppendTo, Prefix, InName, Suffix)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BuildString_Name: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AppendTo at +0x0, Prefix at +0x10, InName at +0x20, Suffix at +0x28
 writeQword(_params + 0x0, AppendTo)
 writeQword(_params + 0x10, Prefix)
 writeQword(_params + 0x20, InName)
 writeQword(_params + 0x28, Suffix)
 UE.CallProcessEventEx(OwnerAddress, "BuildString_Name", _params);
 local RET=readQword(_params + 0x38);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BuildString_Name");

BL4.BuildString_Object = function(OwnerAddress, AppendTo, Prefix, InObj_Object, Suffix)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BuildString_Object: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AppendTo at +0x0, Prefix at +0x10, InObj at +0x20, Suffix at +0x28
 writeQword(_params + 0x0, AppendTo)
 writeQword(_params + 0x10, Prefix)
 writeQword(_params + 0x20, InObj_Object)
 writeQword(_params + 0x28, Suffix)
 UE.CallProcessEventEx(OwnerAddress, "BuildString_Object", _params);
 local RET=readQword(_params + 0x38);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BuildString_Object");

BL4.BuildString_Rotator = function(OwnerAddress, AppendTo, Prefix, InRot, Suffix)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BuildString_Rotator: Failed To Allocate The Params");return;end;
 InRot = InRot or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AppendTo at +0x0, Prefix at +0x10, InRot at +0x20, Suffix at +0x38
 writeQword(_params + 0x0, AppendTo)
 writeQword(_params + 0x10, Prefix)
 writeDouble(_params + 0x20, (InRot and InRot.Pitch) or 0)
 writeDouble(_params + 0x28, (InRot and InRot.Yaw) or 0)
 writeDouble(_params + 0x30, (InRot and InRot.Roll) or 0)
 writeQword(_params + 0x38, Suffix)
 UE.CallProcessEventEx(OwnerAddress, "BuildString_Rotator", _params);
 local RET=readQword(_params + 0x48);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BuildString_Rotator");

BL4.BuildString_Vector = function(OwnerAddress, AppendTo, Prefix, InVector, Suffix)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BuildString_Vector: Failed To Allocate The Params");return;end;
 InVector = InVector or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AppendTo at +0x0, Prefix at +0x10, InVector at +0x20, Suffix at +0x38
 writeQword(_params + 0x0, AppendTo)
 writeQword(_params + 0x10, Prefix)
 writeDouble(_params + 0x20, (InVector and InVector.X) or 0)
 writeDouble(_params + 0x28, (InVector and InVector.Y) or 0)
 writeDouble(_params + 0x30, (InVector and InVector.Z) or 0)
 writeQword(_params + 0x38, Suffix)
 UE.CallProcessEventEx(OwnerAddress, "BuildString_Vector", _params);
 local RET=readQword(_params + 0x48);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BuildString_Vector");

BL4.BuildString_Vector2d = function(OwnerAddress, AppendTo, Prefix, InVector2D, Suffix)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BuildString_Vector2d: Failed To Allocate The Params");return;end;
 InVector2D = InVector2D or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AppendTo at +0x0, Prefix at +0x10, InVector2D at +0x20, Suffix at +0x30
 writeQword(_params + 0x0, AppendTo)
 writeQword(_params + 0x10, Prefix)
 writeDouble(_params + 0x20, (InVector2D and InVector2D.X) or 0)
 writeDouble(_params + 0x28, (InVector2D and InVector2D.Y) or 0)
 writeQword(_params + 0x30, Suffix)
 UE.CallProcessEventEx(OwnerAddress, "BuildString_Vector2d", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BuildString_Vector2d");

BL4.Concat_StrStr = function(OwnerAddress, A, B)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Concat_StrStr: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x10, B)
 UE.CallProcessEventEx(OwnerAddress, "Concat_StrStr", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Concat_StrStr");

BL4.Contains = function(OwnerAddress, SearchIn, Substring, bUseCase, bSearchFromEnd)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Contains: Failed To Allocate The Params");return;end;
 bUseCase = bUseCase or false
 bSearchFromEnd = bSearchFromEnd or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SearchIn at +0x0, Substring at +0x10, bUseCase at +0x20, bSearchFromEnd at +0x21
 writeQword(_params + 0x0, SearchIn)
 writeQword(_params + 0x10, Substring)
 writeByte(_params + 0x20, bUseCase)
 writeByte(_params + 0x21, bSearchFromEnd)
 UE.CallProcessEventEx(OwnerAddress, "Contains", _params);
 local RET=readByte(_params + 0x22);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Contains");

BL4.Conv_BoolToString = function(OwnerAddress, InBool)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_BoolToString: Failed To Allocate The Params");return;end;
 InBool = InBool or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InBool at +0x0
 writeByte(_params + 0x0, InBool)
 UE.CallProcessEventEx(OwnerAddress, "Conv_BoolToString", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_BoolToString");

BL4.Conv_BoxCenterAndExtentsToString = function(OwnerAddress, Box)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_BoxCenterAndExtentsToString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Box at +0x0
 writeQword(_params + 0x0, Box)
 UE.CallProcessEventEx(OwnerAddress, "Conv_BoxCenterAndExtentsToString", _params);
 local RET=readQword(_params + 0x38);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_BoxCenterAndExtentsToString");

BL4.Conv_BoxToString = function(OwnerAddress, Box)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_BoxToString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Box at +0x0
 writeQword(_params + 0x0, Box)
 UE.CallProcessEventEx(OwnerAddress, "Conv_BoxToString", _params);
 local RET=readQword(_params + 0x38);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_BoxToString");

BL4.Conv_ByteToString = function(OwnerAddress, InByte)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_ByteToString: Failed To Allocate The Params");return;end;
 InByte = InByte or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InByte at +0x0
 writeByte(_params + 0x0, InByte)
 UE.CallProcessEventEx(OwnerAddress, "Conv_ByteToString", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_ByteToString");

BL4.Conv_ColorToString = function(OwnerAddress, InColor)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_ColorToString: Failed To Allocate The Params");return;end;
 InColor = InColor or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InColor at +0x0
 writeFloat(_params + 0x0, (InColor and InColor.R) or 0)
 writeFloat(_params + 0x4, (InColor and InColor.G) or 0)
 writeFloat(_params + 0x8, (InColor and InColor.B) or 0)
 writeFloat(_params + 0xC, (InColor and InColor.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Conv_ColorToString", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_ColorToString");

BL4.Conv_DoubleToString = function(OwnerAddress, InDouble)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_DoubleToString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InDouble at +0x0
 writeQword(_params + 0x0, InDouble)
 UE.CallProcessEventEx(OwnerAddress, "Conv_DoubleToString", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_DoubleToString");

BL4.Conv_GameDataHandleToName = function(OwnerAddress, InHandle)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_GameDataHandleToName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InHandle at +0x0
 writeQword(_params + 0x0, InHandle)
 UE.CallProcessEventEx(OwnerAddress, "Conv_GameDataHandleToName", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_GameDataHandleToName");

BL4.Conv_GameDataHandleToString = function(OwnerAddress, InHandle)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_GameDataHandleToString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InHandle at +0x0
 writeQword(_params + 0x0, InHandle)
 UE.CallProcessEventEx(OwnerAddress, "Conv_GameDataHandleToString", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_GameDataHandleToString");

BL4.Conv_GbxDefPtrToString = function(OwnerAddress, def)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_GbxDefPtrToString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: def at +0x0
 writeQword(_params + 0x0, def)
 UE.CallProcessEventEx(OwnerAddress, "Conv_GbxDefPtrToString", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_GbxDefPtrToString");

BL4.Conv_InputDeviceIdToString = function(OwnerAddress, InDeviceId)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_InputDeviceIdToString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InDeviceId at +0x0
 writeQword(_params + 0x0, InDeviceId)
 UE.CallProcessEventEx(OwnerAddress, "Conv_InputDeviceIdToString", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_InputDeviceIdToString");

BL4.Conv_Int64ToString = function(OwnerAddress, inInt)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_Int64ToString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: inInt at +0x0
 writeQword(_params + 0x0, inInt)
 UE.CallProcessEventEx(OwnerAddress, "Conv_Int64ToString", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_Int64ToString");

BL4.Conv_IntPointToString = function(OwnerAddress, InIntPoint)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_IntPointToString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InIntPoint at +0x0
 writeQword(_params + 0x0, InIntPoint)
 UE.CallProcessEventEx(OwnerAddress, "Conv_IntPointToString", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_IntPointToString");

BL4.Conv_IntToString = function(OwnerAddress, inInt)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_IntToString: Failed To Allocate The Params");return;end;
 inInt = inInt or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: inInt at +0x0
 writeInteger(_params + 0x0, inInt)
 UE.CallProcessEventEx(OwnerAddress, "Conv_IntToString", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_IntToString");

BL4.Conv_IntVectorToString = function(OwnerAddress, InIntVec)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_IntVectorToString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InIntVec at +0x0
 writeQword(_params + 0x0, InIntVec)
 UE.CallProcessEventEx(OwnerAddress, "Conv_IntVectorToString", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_IntVectorToString");

BL4.Conv_MatrixToString = function(OwnerAddress, InMatrix)
 local _paramsSize = 0x90
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_MatrixToString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InMatrix at +0x0
 writeQword(_params + 0x0, InMatrix)
 UE.CallProcessEventEx(OwnerAddress, "Conv_MatrixToString", _params);
 local RET=readQword(_params + 0x80);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_MatrixToString");

BL4.Conv_NameToString = function(OwnerAddress, InName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_NameToString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InName at +0x0
 writeQword(_params + 0x0, InName)
 UE.CallProcessEventEx(OwnerAddress, "Conv_NameToString", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_NameToString");

BL4.Conv_ObjectToString = function(InObj_Object)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_ObjectToString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InObj at +0x0
 writeQword(_params + 0x0, InObj_Object)
 UE.CallProcessEventEx(InObj_Object, "Conv_ObjectToString", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_ObjectToString");

BL4.Conv_PlatformUserIdToString = function(OwnerAddress, InPlatformUserId)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_PlatformUserIdToString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InPlatformUserId at +0x0
 writeQword(_params + 0x0, InPlatformUserId)
 UE.CallProcessEventEx(OwnerAddress, "Conv_PlatformUserIdToString", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_PlatformUserIdToString");

BL4.Conv_RotatorToString = function(OwnerAddress, InRot)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_RotatorToString: Failed To Allocate The Params");return;end;
 InRot = InRot or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InRot at +0x0
 writeDouble(_params + 0x0, (InRot and InRot.Pitch) or 0)
 writeDouble(_params + 0x8, (InRot and InRot.Yaw) or 0)
 writeDouble(_params + 0x10, (InRot and InRot.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Conv_RotatorToString", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_RotatorToString");

BL4.Conv_StringToColor = function(OwnerAddress, InString, OutConvertedColor, OutIsValid)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_StringToColor: Failed To Allocate The Params");return;end;
 OutConvertedColor = OutConvertedColor or {R=0,G=0,B=0,A=0}
 OutIsValid = OutIsValid or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InString at +0x0, OutConvertedColor at +0x10, OutIsValid at +0x20
 writeQword(_params + 0x0, InString)
 writeFloat(_params + 0x10, (OutConvertedColor and OutConvertedColor.R) or 0)
 writeFloat(_params + 0x14, (OutConvertedColor and OutConvertedColor.G) or 0)
 writeFloat(_params + 0x18, (OutConvertedColor and OutConvertedColor.B) or 0)
 writeFloat(_params + 0x1C, (OutConvertedColor and OutConvertedColor.A) or 0)
 writeByte(_params + 0x20, OutIsValid)
 UE.CallProcessEventEx(OwnerAddress, "Conv_StringToColor", _params);
 deAlloc(_params);
end
FNR("BL4.Conv_StringToColor");

BL4.Conv_StringToDouble = function(OwnerAddress, InString)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_StringToDouble: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InString at +0x0
 writeQword(_params + 0x0, InString)
 UE.CallProcessEventEx(OwnerAddress, "Conv_StringToDouble", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_StringToDouble");

BL4.Conv_StringToInt = function(OwnerAddress, InString)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_StringToInt: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InString at +0x0
 writeQword(_params + 0x0, InString)
 UE.CallProcessEventEx(OwnerAddress, "Conv_StringToInt", _params);
 local RET=readInteger(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_StringToInt");

BL4.Conv_StringToInt64 = function(OwnerAddress, InString)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_StringToInt64: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InString at +0x0
 writeQword(_params + 0x0, InString)
 UE.CallProcessEventEx(OwnerAddress, "Conv_StringToInt64", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_StringToInt64");

BL4.Conv_StringToName = function(OwnerAddress, InString)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_StringToName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InString at +0x0
 writeQword(_params + 0x0, InString)
 UE.CallProcessEventEx(OwnerAddress, "Conv_StringToName", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_StringToName");

BL4.Conv_StringToRotator = function(OwnerAddress, InString, OutConvertedRotator, OutIsValid)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_StringToRotator: Failed To Allocate The Params");return;end;
 OutConvertedRotator = OutConvertedRotator or {Pitch=0,Yaw=0,Roll=0}
 OutIsValid = OutIsValid or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InString at +0x0, OutConvertedRotator at +0x10, OutIsValid at +0x28
 writeQword(_params + 0x0, InString)
 writeDouble(_params + 0x10, (OutConvertedRotator and OutConvertedRotator.Pitch) or 0)
 writeDouble(_params + 0x18, (OutConvertedRotator and OutConvertedRotator.Yaw) or 0)
 writeDouble(_params + 0x20, (OutConvertedRotator and OutConvertedRotator.Roll) or 0)
 writeByte(_params + 0x28, OutIsValid)
 UE.CallProcessEventEx(OwnerAddress, "Conv_StringToRotator", _params);
 deAlloc(_params);
end
FNR("BL4.Conv_StringToRotator");

BL4.Conv_StringToVector = function(OwnerAddress, InString, OutConvertedVector, OutIsValid)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_StringToVector: Failed To Allocate The Params");return;end;
 OutConvertedVector = OutConvertedVector or {X=0,Y=0,Z=0}
 OutIsValid = OutIsValid or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InString at +0x0, OutConvertedVector at +0x10, OutIsValid at +0x28
 writeQword(_params + 0x0, InString)
 writeDouble(_params + 0x10, (OutConvertedVector and OutConvertedVector.X) or 0)
 writeDouble(_params + 0x18, (OutConvertedVector and OutConvertedVector.Y) or 0)
 writeDouble(_params + 0x20, (OutConvertedVector and OutConvertedVector.Z) or 0)
 writeByte(_params + 0x28, OutIsValid)
 UE.CallProcessEventEx(OwnerAddress, "Conv_StringToVector", _params);
 deAlloc(_params);
end
FNR("BL4.Conv_StringToVector");

BL4.Conv_StringToVector2D = function(OwnerAddress, InString, OutConvertedVector2D, OutIsValid)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_StringToVector2D: Failed To Allocate The Params");return;end;
 OutConvertedVector2D = OutConvertedVector2D or {X=0,Y=0}
 OutIsValid = OutIsValid or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InString at +0x0, OutConvertedVector2D at +0x10, OutIsValid at +0x20
 writeQword(_params + 0x0, InString)
 writeDouble(_params + 0x10, (OutConvertedVector2D and OutConvertedVector2D.X) or 0)
 writeDouble(_params + 0x18, (OutConvertedVector2D and OutConvertedVector2D.Y) or 0)
 writeByte(_params + 0x20, OutIsValid)
 UE.CallProcessEventEx(OwnerAddress, "Conv_StringToVector2D", _params);
 deAlloc(_params);
end
FNR("BL4.Conv_StringToVector2D");

BL4.Conv_StringToVector3f = function(OwnerAddress, InString, OutConvertedVector, OutIsValid)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_StringToVector3f: Failed To Allocate The Params");return;end;
 OutIsValid = OutIsValid or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InString at +0x0, OutConvertedVector at +0x10, OutIsValid at +0x1C
 writeQword(_params + 0x0, InString)
 writeQword(_params + 0x10, OutConvertedVector)
 writeByte(_params + 0x1C, OutIsValid)
 UE.CallProcessEventEx(OwnerAddress, "Conv_StringToVector3f", _params);
 deAlloc(_params);
end
FNR("BL4.Conv_StringToVector3f");

BL4.Conv_TransformToString = function(OwnerAddress, InTrans)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_TransformToString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InTrans at +0x0
 writeQword(_params + 0x0, InTrans)
 UE.CallProcessEventEx(OwnerAddress, "Conv_TransformToString", _params);
 local RET=readQword(_params + 0x60);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_TransformToString");

BL4.Conv_Vector2dToString = function(OwnerAddress, InVec)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_Vector2dToString: Failed To Allocate The Params");return;end;
 InVec = InVec or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVec at +0x0
 writeDouble(_params + 0x0, (InVec and InVec.X) or 0)
 writeDouble(_params + 0x8, (InVec and InVec.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Conv_Vector2dToString", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_Vector2dToString");

BL4.Conv_Vector3fToString = function(OwnerAddress, InVec)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_Vector3fToString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVec at +0x0
 writeQword(_params + 0x0, InVec)
 UE.CallProcessEventEx(OwnerAddress, "Conv_Vector3fToString", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_Vector3fToString");

BL4.Conv_VectorToString = function(OwnerAddress, InVec)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_VectorToString: Failed To Allocate The Params");return;end;
 InVec = InVec or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVec at +0x0
 writeDouble(_params + 0x0, (InVec and InVec.X) or 0)
 writeDouble(_params + 0x8, (InVec and InVec.Y) or 0)
 writeDouble(_params + 0x10, (InVec and InVec.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Conv_VectorToString", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_VectorToString");

BL4.CullArray = function(OwnerAddress, SourceString, inArray)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CullArray: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceString at +0x0, inArray at +0x10
 writeQword(_params + 0x0, SourceString)
 writeQword(_params + 0x10, inArray)
 UE.CallProcessEventEx(OwnerAddress, "CullArray", _params);
 local RET=readInteger(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CullArray");

BL4.EndsWith = function(OwnerAddress, SourceString, InSuffix, SearchCase)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EndsWith: Failed To Allocate The Params");return;end;
 SearchCase = SearchCase or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceString at +0x0, InSuffix at +0x10, SearchCase at +0x20
 writeQword(_params + 0x0, SourceString)
 writeQword(_params + 0x10, InSuffix)
 writeByte(_params + 0x20, SearchCase)
 UE.CallProcessEventEx(OwnerAddress, "EndsWith", _params);
 local RET=readByte(_params + 0x21);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EndsWith");

BL4.EqualEqual_FgdhFgdh = function(OwnerAddress, A, B)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_FgdhFgdh: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x18, B)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_FgdhFgdh", _params);
 local RET=readByte(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_FgdhFgdh");

BL4.EqualEqual_GbxDefPtrGbxDefPtr = function(OwnerAddress, A, B)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_GbxDefPtrGbxDefPtr: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x18, B)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_GbxDefPtrGbxDefPtr", _params);
 local RET=readByte(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_GbxDefPtrGbxDefPtr");

BL4.EqualEqual_StriStri = function(OwnerAddress, A, B)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_StriStri: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x10, B)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_StriStri", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_StriStri");

BL4.EqualEqual_StrStr = function(OwnerAddress, A, B)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_StrStr: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x10, B)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_StrStr", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_StrStr");

BL4.FindSubstring = function(OwnerAddress, SearchIn, Substring, bUseCase, bSearchFromEnd, StartPosition)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindSubstring: Failed To Allocate The Params");return;end;
 bUseCase = bUseCase or false
 bSearchFromEnd = bSearchFromEnd or false
 StartPosition = StartPosition or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SearchIn at +0x0, Substring at +0x10, bUseCase at +0x20, bSearchFromEnd at +0x21, StartPosition at +0x24
 writeQword(_params + 0x0, SearchIn)
 writeQword(_params + 0x10, Substring)
 writeByte(_params + 0x20, bUseCase)
 writeByte(_params + 0x21, bSearchFromEnd)
 writeInteger(_params + 0x24, StartPosition)
 UE.CallProcessEventEx(OwnerAddress, "FindSubstring", _params);
 local RET=readInteger(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindSubstring");

BL4.GetCharacterArrayFromString = function(OwnerAddress, SourceString)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCharacterArrayFromString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceString at +0x0
 writeQword(_params + 0x0, SourceString)
 UE.CallProcessEventEx(OwnerAddress, "GetCharacterArrayFromString", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCharacterArrayFromString");

BL4.GetCharacterAsNumber = function(OwnerAddress, SourceString, Index)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCharacterAsNumber: Failed To Allocate The Params");return;end;
 Index = Index or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceString at +0x0, Index at +0x10
 writeQword(_params + 0x0, SourceString)
 writeInteger(_params + 0x10, Index)
 UE.CallProcessEventEx(OwnerAddress, "GetCharacterAsNumber", _params);
 local RET=readInteger(_params + 0x14);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCharacterAsNumber");

BL4.GetSubstring = function(OwnerAddress, SourceString, StartIndex, Length)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSubstring: Failed To Allocate The Params");return;end;
 StartIndex = StartIndex or 0
 Length = Length or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceString at +0x0, StartIndex at +0x10, Length at +0x14
 writeQword(_params + 0x0, SourceString)
 writeInteger(_params + 0x10, StartIndex)
 writeInteger(_params + 0x14, Length)
 UE.CallProcessEventEx(OwnerAddress, "GetSubstring", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSubstring");

BL4.IsEmpty = function(OwnerAddress, InString)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsEmpty: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InString at +0x0
 writeQword(_params + 0x0, InString)
 UE.CallProcessEventEx(OwnerAddress, "IsEmpty", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsEmpty");

BL4.IsNumeric = function(OwnerAddress, SourceString)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsNumeric: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceString at +0x0
 writeQword(_params + 0x0, SourceString)
 UE.CallProcessEventEx(OwnerAddress, "IsNumeric", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsNumeric");

BL4.JoinStringArray = function(OwnerAddress, SourceArray, Separator)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.JoinStringArray: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceArray at +0x0, Separator at +0x10
 writeQword(_params + 0x0, SourceArray)
 writeQword(_params + 0x10, Separator)
 UE.CallProcessEventEx(OwnerAddress, "JoinStringArray", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.JoinStringArray");

BL4.Left = function(OwnerAddress, SourceString, Count)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Left: Failed To Allocate The Params");return;end;
 Count = Count or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceString at +0x0, Count at +0x10
 writeQword(_params + 0x0, SourceString)
 writeInteger(_params + 0x10, Count)
 UE.CallProcessEventEx(OwnerAddress, "Left", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Left");

BL4.LeftChop = function(OwnerAddress, SourceString, Count)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LeftChop: Failed To Allocate The Params");return;end;
 Count = Count or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceString at +0x0, Count at +0x10
 writeQword(_params + 0x0, SourceString)
 writeInteger(_params + 0x10, Count)
 UE.CallProcessEventEx(OwnerAddress, "LeftChop", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.LeftChop");

BL4.LeftPad = function(OwnerAddress, SourceString, ChCount)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LeftPad: Failed To Allocate The Params");return;end;
 ChCount = ChCount or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceString at +0x0, ChCount at +0x10
 writeQword(_params + 0x0, SourceString)
 writeInteger(_params + 0x10, ChCount)
 UE.CallProcessEventEx(OwnerAddress, "LeftPad", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.LeftPad");

BL4.Len = function(OwnerAddress, S)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Len: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: S at +0x0
 writeQword(_params + 0x0, S)
 UE.CallProcessEventEx(OwnerAddress, "Len", _params);
 local RET=readInteger(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Len");

BL4.MatchesWildcard = function(OwnerAddress, SourceString, Wildcard, SearchCase)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MatchesWildcard: Failed To Allocate The Params");return;end;
 SearchCase = SearchCase or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceString at +0x0, Wildcard at +0x10, SearchCase at +0x20
 writeQword(_params + 0x0, SourceString)
 writeQword(_params + 0x10, Wildcard)
 writeByte(_params + 0x20, SearchCase)
 UE.CallProcessEventEx(OwnerAddress, "MatchesWildcard", _params);
 local RET=readByte(_params + 0x21);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MatchesWildcard");

BL4.Mid = function(OwnerAddress, SourceString, Start, Count)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Mid: Failed To Allocate The Params");return;end;
 Start = Start or 0
 Count = Count or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceString at +0x0, Start at +0x10, Count at +0x14
 writeQword(_params + 0x0, SourceString)
 writeInteger(_params + 0x10, Start)
 writeInteger(_params + 0x14, Count)
 UE.CallProcessEventEx(OwnerAddress, "Mid", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Mid");

BL4.NotEqual_FgdhFgdh = function(OwnerAddress, A, B)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_FgdhFgdh: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x18, B)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_FgdhFgdh", _params);
 local RET=readByte(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_FgdhFgdh");

BL4.NotEqual_GbxDefPtrGbxDefPtr = function(OwnerAddress, A, B)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_GbxDefPtrGbxDefPtr: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x18, B)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_GbxDefPtrGbxDefPtr", _params);
 local RET=readByte(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_GbxDefPtrGbxDefPtr");

BL4.NotEqual_StriStri = function(OwnerAddress, A, B)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_StriStri: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x10, B)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_StriStri", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_StriStri");

BL4.NotEqual_StrStr = function(OwnerAddress, A, B)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_StrStr: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x10, B)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_StrStr", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_StrStr");

BL4.ParseIntoArray = function(OwnerAddress, SourceString, Delimiter, CullEmptyStrings)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ParseIntoArray: Failed To Allocate The Params");return;end;
 CullEmptyStrings = CullEmptyStrings or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceString at +0x0, Delimiter at +0x10, CullEmptyStrings at +0x20
 writeQword(_params + 0x0, SourceString)
 writeQword(_params + 0x10, Delimiter)
 writeByte(_params + 0x20, CullEmptyStrings)
 UE.CallProcessEventEx(OwnerAddress, "ParseIntoArray", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ParseIntoArray");

BL4.Replace = function(OwnerAddress, SourceString, From, To, SearchCase)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Replace: Failed To Allocate The Params");return;end;
 SearchCase = SearchCase or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceString at +0x0, From at +0x10, To at +0x20, SearchCase at +0x30
 writeQword(_params + 0x0, SourceString)
 writeQword(_params + 0x10, From)
 writeQword(_params + 0x20, To)
 writeByte(_params + 0x30, SearchCase)
 UE.CallProcessEventEx(OwnerAddress, "Replace", _params);
 local RET=readQword(_params + 0x38);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Replace");

BL4.ReplaceInline = function(OwnerAddress, SourceString, SearchText, ReplacementText, SearchCase)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReplaceInline: Failed To Allocate The Params");return;end;
 SearchCase = SearchCase or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceString at +0x0, SearchText at +0x10, ReplacementText at +0x20, SearchCase at +0x30
 writeQword(_params + 0x0, SourceString)
 writeQword(_params + 0x10, SearchText)
 writeQword(_params + 0x20, ReplacementText)
 writeByte(_params + 0x30, SearchCase)
 UE.CallProcessEventEx(OwnerAddress, "ReplaceInline", _params);
 local RET=readInteger(_params + 0x34);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ReplaceInline");

BL4.Reverse = function(OwnerAddress, SourceString)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Reverse: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceString at +0x0
 writeQword(_params + 0x0, SourceString)
 UE.CallProcessEventEx(OwnerAddress, "Reverse", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Reverse");

BL4.Right = function(OwnerAddress, SourceString, Count)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Right: Failed To Allocate The Params");return;end;
 Count = Count or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceString at +0x0, Count at +0x10
 writeQword(_params + 0x0, SourceString)
 writeInteger(_params + 0x10, Count)
 UE.CallProcessEventEx(OwnerAddress, "Right", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Right");

BL4.RightChop = function(OwnerAddress, SourceString, Count)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RightChop: Failed To Allocate The Params");return;end;
 Count = Count or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceString at +0x0, Count at +0x10
 writeQword(_params + 0x0, SourceString)
 writeInteger(_params + 0x10, Count)
 UE.CallProcessEventEx(OwnerAddress, "RightChop", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RightChop");

BL4.RightPad = function(OwnerAddress, SourceString, ChCount)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RightPad: Failed To Allocate The Params");return;end;
 ChCount = ChCount or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceString at +0x0, ChCount at +0x10
 writeQword(_params + 0x0, SourceString)
 writeInteger(_params + 0x10, ChCount)
 UE.CallProcessEventEx(OwnerAddress, "RightPad", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RightPad");

BL4.SetGbxDefPtrFromString = function(OwnerAddress, def, Value)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetGbxDefPtrFromString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: def at +0x0, Value at +0x18
 writeQword(_params + 0x0, def)
 writeQword(_params + 0x18, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetGbxDefPtrFromString", _params);
 deAlloc(_params);
end
FNR("BL4.SetGbxDefPtrFromString");

BL4.SetHandleFromString = function(OwnerAddress, Handle, Value)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetHandleFromString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Handle at +0x0, Value at +0x18
 writeQword(_params + 0x0, Handle)
 writeQword(_params + 0x18, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetHandleFromString", _params);
 deAlloc(_params);
end
FNR("BL4.SetHandleFromString");

BL4.Split = function(OwnerAddress, SourceString, InStr, LeftS, RightS, SearchCase, SearchDir)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Split: Failed To Allocate The Params");return;end;
 SearchCase = SearchCase or 0
 SearchDir = SearchDir or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceString at +0x0, InStr at +0x10, LeftS at +0x20, RightS at +0x30, SearchCase at +0x40, SearchDir at +0x41
 writeQword(_params + 0x0, SourceString)
 writeQword(_params + 0x10, InStr)
 writeQword(_params + 0x20, LeftS)
 writeQword(_params + 0x30, RightS)
 writeByte(_params + 0x40, SearchCase)
 writeByte(_params + 0x41, SearchDir)
 UE.CallProcessEventEx(OwnerAddress, "Split", _params);
 local RET=readByte(_params + 0x42);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Split");

BL4.StartsWith = function(OwnerAddress, SourceString, InPrefix, SearchCase)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StartsWith: Failed To Allocate The Params");return;end;
 SearchCase = SearchCase or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceString at +0x0, InPrefix at +0x10, SearchCase at +0x20
 writeQword(_params + 0x0, SourceString)
 writeQword(_params + 0x10, InPrefix)
 writeByte(_params + 0x20, SearchCase)
 UE.CallProcessEventEx(OwnerAddress, "StartsWith", _params);
 local RET=readByte(_params + 0x21);
 deAlloc(_params);
 return RET;
end
FNR("BL4.StartsWith");

BL4.TimeSecondsToString = function(OwnerAddress, InSeconds)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TimeSecondsToString: Failed To Allocate The Params");return;end;
 InSeconds = InSeconds or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSeconds at +0x0
 writeFloat(_params + 0x0, InSeconds)
 UE.CallProcessEventEx(OwnerAddress, "TimeSecondsToString", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.TimeSecondsToString");

BL4.ToLower = function(OwnerAddress, SourceString)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ToLower: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceString at +0x0
 writeQword(_params + 0x0, SourceString)
 UE.CallProcessEventEx(OwnerAddress, "ToLower", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ToLower");

BL4.ToUpper = function(OwnerAddress, SourceString)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ToUpper: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceString at +0x0
 writeQword(_params + 0x0, SourceString)
 UE.CallProcessEventEx(OwnerAddress, "ToUpper", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ToUpper");

BL4.Trim = function(OwnerAddress, SourceString)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Trim: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceString at +0x0
 writeQword(_params + 0x0, SourceString)
 UE.CallProcessEventEx(OwnerAddress, "Trim", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Trim");

BL4.TrimTrailing = function(OwnerAddress, SourceString)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TrimTrailing: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceString at +0x0
 writeQword(_params + 0x0, SourceString)
 UE.CallProcessEventEx(OwnerAddress, "TrimTrailing", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.TrimTrailing");

