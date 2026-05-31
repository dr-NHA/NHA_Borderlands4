BL4.Conv_ActorToGbxParam = function(Value_Actor)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_ActorToGbxParam: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeQword(_params + 0x0, Value_Actor)
 UE.CallProcessEventEx(Value_Actor, "Conv_ActorToGbxParam", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_ActorToGbxParam");

BL4.Conv_AttributeToGbxParam = function(OwnerAddress, Value)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_AttributeToGbxParam: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeQword(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "Conv_AttributeToGbxParam", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_AttributeToGbxParam");

BL4.Conv_BlackboardEntryToGbxParam = function(OwnerAddress, Value)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_BlackboardEntryToGbxParam: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeQword(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "Conv_BlackboardEntryToGbxParam", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_BlackboardEntryToGbxParam");

BL4.Conv_BoolToGbxParam = function(OwnerAddress, Value)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_BoolToGbxParam: Failed To Allocate The Params");return;end;
 Value = Value or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeByte(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "Conv_BoolToGbxParam", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_BoolToGbxParam");

BL4.Conv_DoubleToGbxParam = function(OwnerAddress, Value)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_DoubleToGbxParam: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeQword(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "Conv_DoubleToGbxParam", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_DoubleToGbxParam");

BL4.Conv_FloatToGbxParam = function(OwnerAddress, Value)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_FloatToGbxParam: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeFloat(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "Conv_FloatToGbxParam", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_FloatToGbxParam");

BL4.Conv_GameplayTagToGbxParam = function(OwnerAddress, Value)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_GameplayTagToGbxParam: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeQword(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "Conv_GameplayTagToGbxParam", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_GameplayTagToGbxParam");

BL4.Conv_GbxDefToGbxParam = function(OwnerAddress, Value)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_GbxDefToGbxParam: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeQword(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "Conv_GbxDefToGbxParam", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_GbxDefToGbxParam");

BL4.Conv_GbxParamToString = function(OwnerAddress, GbxParam)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_GbxParamToString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: GbxParam at +0x0
 writeQword(_params + 0x0, GbxParam)
 UE.CallProcessEventEx(OwnerAddress, "Conv_GbxParamToString", _params);
 local RET=readQword(_params + 0x38);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_GbxParamToString");

BL4.Conv_HitResultToGbxParam = function(OwnerAddress, Value)
 local _paramsSize = 0x138
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_HitResultToGbxParam: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeQword(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "Conv_HitResultToGbxParam", _params);
 local RET=readQword(_params + 0x100);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_HitResultToGbxParam");

BL4.Conv_IntToGbxParam = function(OwnerAddress, Value)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_IntToGbxParam: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeInteger(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "Conv_IntToGbxParam", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_IntToGbxParam");

BL4.Conv_LinearColorToGbxParam = function(OwnerAddress, Value)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_LinearColorToGbxParam: Failed To Allocate The Params");return;end;
 Value = Value or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeFloat(_params + 0x0, (Value and Value.R) or 0)
 writeFloat(_params + 0x4, (Value and Value.G) or 0)
 writeFloat(_params + 0x8, (Value and Value.B) or 0)
 writeFloat(_params + 0xC, (Value and Value.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Conv_LinearColorToGbxParam", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_LinearColorToGbxParam");

BL4.Conv_NameToGbxParam = function(OwnerAddress, Value)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_NameToGbxParam: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeQword(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "Conv_NameToGbxParam", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_NameToGbxParam");

BL4.Conv_NumericRangeToGbxParam = function(OwnerAddress, Value)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_NumericRangeToGbxParam: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeQword(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "Conv_NumericRangeToGbxParam", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_NumericRangeToGbxParam");

BL4.Conv_ObjectToGbxParam = function(Value_Object)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_ObjectToGbxParam: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeQword(_params + 0x0, Value_Object)
 UE.CallProcessEventEx(Value_Object, "Conv_ObjectToGbxParam", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_ObjectToGbxParam");

BL4.Conv_RotatorToGbxParam = function(OwnerAddress, Value)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_RotatorToGbxParam: Failed To Allocate The Params");return;end;
 Value = Value or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeDouble(_params + 0x0, (Value and Value.Pitch) or 0)
 writeDouble(_params + 0x8, (Value and Value.Yaw) or 0)
 writeDouble(_params + 0x10, (Value and Value.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Conv_RotatorToGbxParam", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_RotatorToGbxParam");

BL4.Conv_SceneComponentToGbxParam = function(Value_SceneComponent)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_SceneComponentToGbxParam: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeQword(_params + 0x0, Value_SceneComponent)
 UE.CallProcessEventEx(Value_SceneComponent, "Conv_SceneComponentToGbxParam", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_SceneComponentToGbxParam");

BL4.Conv_SoftObjectPtrToGbxParam = function(Value_Object)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_SoftObjectPtrToGbxParam: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeQword(_params + 0x0, Value_Object)
 UE.CallProcessEventEx(Value_Object, "Conv_SoftObjectPtrToGbxParam", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_SoftObjectPtrToGbxParam");

BL4.Conv_StringToGbxParam = function(OwnerAddress, Value)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_StringToGbxParam: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeQword(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "Conv_StringToGbxParam", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_StringToGbxParam");

BL4.Conv_TextToGbxParam = function(OwnerAddress, Value)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_TextToGbxParam: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeQword(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "Conv_TextToGbxParam", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_TextToGbxParam");

BL4.Conv_VectorToGbxParam = function(OwnerAddress, Value)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_VectorToGbxParam: Failed To Allocate The Params");return;end;
 Value = Value or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeDouble(_params + 0x0, (Value and Value.X) or 0)
 writeDouble(_params + 0x8, (Value and Value.Y) or 0)
 writeDouble(_params + 0x10, (Value and Value.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Conv_VectorToGbxParam", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_VectorToGbxParam");

BL4.GetGbxParam_Double = function(OwnerAddress, GbxParam, Context_Object)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetGbxParam_Double: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: GbxParam at +0x0, Context at +0x38
 writeQword(_params + 0x0, GbxParam)
 writeQword(_params + 0x38, Context_Object)
 UE.CallProcessEventEx(OwnerAddress, "GetGbxParam_Double", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetGbxParam_Double");

BL4.GetGbxParam_Float = function(OwnerAddress, GbxParam, Context_Object)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetGbxParam_Float: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: GbxParam at +0x0, Context at +0x38
 writeQword(_params + 0x0, GbxParam)
 writeQword(_params + 0x38, Context_Object)
 UE.CallProcessEventEx(OwnerAddress, "GetGbxParam_Float", _params);
 local RET=readFloat(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetGbxParam_Float");

BL4.GetGbxParam_Int = function(OwnerAddress, GbxParam, Context_Object)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetGbxParam_Int: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: GbxParam at +0x0, Context at +0x38
 writeQword(_params + 0x0, GbxParam)
 writeQword(_params + 0x38, Context_Object)
 UE.CallProcessEventEx(OwnerAddress, "GetGbxParam_Int", _params);
 local RET=readInteger(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetGbxParam_Int");

BL4.GetRelativeDirection = function(Actor, Direction)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRelativeDirection: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Actor at +0x0, Direction at +0x8
 writeQword(_params + 0x0, Actor)
 writeQword(_params + 0x8, Direction)
 UE.CallProcessEventEx(Actor, "GetRelativeDirection", _params);
 local RET={X=readFloat(_params+0x38),Y=readFloat(_params+0x40),Z=readFloat(_params+0x48)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRelativeDirection");

BL4.GetRelativeLocation = function(Actor, Location)
 local _paramsSize = 0x80
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRelativeLocation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Actor at +0x0, Location at +0x8
 writeQword(_params + 0x0, Actor)
 writeQword(_params + 0x8, Location)
 UE.CallProcessEventEx(Actor, "GetRelativeLocation", _params);
 local RET={X=readFloat(_params+0x68),Y=readFloat(_params+0x70),Z=readFloat(_params+0x78)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRelativeLocation");

BL4.GetRelativeRotation = function(Actor, Rotation)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRelativeRotation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Actor at +0x0, Rotation at +0x8
 writeQword(_params + 0x0, Actor)
 writeQword(_params + 0x8, Rotation)
 UE.CallProcessEventEx(Actor, "GetRelativeRotation", _params);
 local RET={Pitch=readFloat(_params+0x38),Yaw=readFloat(_params+0x40),Roll=readFloat(_params+0x48)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRelativeRotation");

BL4.GetRelativeVelocity = function(Actor, Direction, speed)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRelativeVelocity: Failed To Allocate The Params");return;end;
 speed = speed or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Actor at +0x0, Direction at +0x8, speed at +0x38
 writeQword(_params + 0x0, Actor)
 writeQword(_params + 0x8, Direction)
 writeFloat(_params + 0x38, speed)
 UE.CallProcessEventEx(Actor, "GetRelativeVelocity", _params);
 local RET={X=readFloat(_params+0x40),Y=readFloat(_params+0x48),Z=readFloat(_params+0x50)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRelativeVelocity");

BL4.GetSummary_GbxParam = function(OwnerAddress, Param)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSummary_GbxParam: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Param at +0x0
 writeQword(_params + 0x0, Param)
 UE.CallProcessEventEx(OwnerAddress, "GetSummary_GbxParam", _params);
 local RET=readQword(_params + 0x38);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSummary_GbxParam");

BL4.MakeGbxParamFromString = function(OwnerAddress, String)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeGbxParamFromString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: String at +0x0
 writeQword(_params + 0x0, String)
 UE.CallProcessEventEx(OwnerAddress, "MakeGbxParamFromString", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeGbxParamFromString");

BL4.MakeRelativeLocation = function(OwnerAddress, type, socket, OffsetDirection, OffsetDistance, OffsetVector)
 local _paramsSize = 0xC0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeRelativeLocation: Failed To Allocate The Params");return;end;
 type = type or 0
 OffsetDistance = OffsetDistance or 0
 OffsetVector = OffsetVector or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: type at +0x0, socket at +0x4, OffsetDirection at +0x10, OffsetDistance at +0x40, OffsetVector at +0x48
 writeByte(_params + 0x0, type)
 writeQword(_params + 0x4, socket)
 writeQword(_params + 0x10, OffsetDirection)
 writeFloat(_params + 0x40, OffsetDistance)
 writeDouble(_params + 0x48, (OffsetVector and OffsetVector.X) or 0)
 writeDouble(_params + 0x50, (OffsetVector and OffsetVector.Y) or 0)
 writeDouble(_params + 0x58, (OffsetVector and OffsetVector.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "MakeRelativeLocation", _params);
 local RET=readQword(_params + 0x60);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeRelativeLocation");

BL4.MakeRelativeRotation = function(OwnerAddress, type, Modifier, Offset, ConeAroundDirection, socket)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeRelativeRotation: Failed To Allocate The Params");return;end;
 type = type or 0
 Modifier = Modifier or 0
 Offset = Offset or {Pitch=0,Yaw=0,Roll=0}
 ConeAroundDirection = ConeAroundDirection or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: type at +0x0, Modifier at +0x1, Offset at +0x8, ConeAroundDirection at +0x20, socket at +0x24
 writeByte(_params + 0x0, type)
 writeByte(_params + 0x1, Modifier)
 writeDouble(_params + 0x8, (Offset and Offset.Pitch) or 0)
 writeDouble(_params + 0x10, (Offset and Offset.Yaw) or 0)
 writeDouble(_params + 0x18, (Offset and Offset.Roll) or 0)
 writeFloat(_params + 0x20, ConeAroundDirection)
 writeQword(_params + 0x24, socket)
 UE.CallProcessEventEx(OwnerAddress, "MakeRelativeRotation", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeRelativeRotation");

BL4.Resolve = function(OwnerAddress, Param, Context_Object, Value)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Resolve: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Param at +0x0, Context at +0x38, Value at +0x40
 writeQword(_params + 0x0, Param)
 writeQword(_params + 0x38, Context_Object)
 writeInteger(_params + 0x40, Value)
 UE.CallProcessEventEx(OwnerAddress, "Resolve", _params);
 deAlloc(_params);
end
FNR("BL4.Resolve");

BL4.Resolve_Actor = function(OwnerAddress, Param, Context_Object)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Resolve_Actor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Param at +0x0, Context at +0x38
 writeQword(_params + 0x0, Param)
 writeQword(_params + 0x38, Context_Object)
 UE.CallProcessEventEx(OwnerAddress, "Resolve_Actor", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Resolve_Actor");

BL4.Resolve_Bool = function(OwnerAddress, Param, Context_Object)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Resolve_Bool: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Param at +0x0, Context at +0x38
 writeQword(_params + 0x0, Param)
 writeQword(_params + 0x38, Context_Object)
 UE.CallProcessEventEx(OwnerAddress, "Resolve_Bool", _params);
 local RET=readByte(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Resolve_Bool");

BL4.Resolve_Double = function(OwnerAddress, Param, Context_Object)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Resolve_Double: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Param at +0x0, Context at +0x38
 writeQword(_params + 0x0, Param)
 writeQword(_params + 0x38, Context_Object)
 UE.CallProcessEventEx(OwnerAddress, "Resolve_Double", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Resolve_Double");

BL4.Resolve_Float = function(OwnerAddress, Param, Context_Object)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Resolve_Float: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Param at +0x0, Context at +0x38
 writeQword(_params + 0x0, Param)
 writeQword(_params + 0x38, Context_Object)
 UE.CallProcessEventEx(OwnerAddress, "Resolve_Float", _params);
 local RET=readFloat(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Resolve_Float");

BL4.Resolve_GameplayTag = function(OwnerAddress, Param, Context_Object)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Resolve_GameplayTag: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Param at +0x0, Context at +0x38
 writeQword(_params + 0x0, Param)
 writeQword(_params + 0x38, Context_Object)
 UE.CallProcessEventEx(OwnerAddress, "Resolve_GameplayTag", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Resolve_GameplayTag");

BL4.Resolve_GbxDef = function(OwnerAddress, Param, Context_Object)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Resolve_GbxDef: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Param at +0x0, Context at +0x38
 writeQword(_params + 0x0, Param)
 writeQword(_params + 0x38, Context_Object)
 UE.CallProcessEventEx(OwnerAddress, "Resolve_GbxDef", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Resolve_GbxDef");

BL4.Resolve_Int = function(OwnerAddress, Param, Context_Object)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Resolve_Int: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Param at +0x0, Context at +0x38
 writeQword(_params + 0x0, Param)
 writeQword(_params + 0x38, Context_Object)
 UE.CallProcessEventEx(OwnerAddress, "Resolve_Int", _params);
 local RET=readInteger(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Resolve_Int");

BL4.Resolve_Name = function(OwnerAddress, Param, Context_Object)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Resolve_Name: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Param at +0x0, Context at +0x38
 writeQword(_params + 0x0, Param)
 writeQword(_params + 0x38, Context_Object)
 UE.CallProcessEventEx(OwnerAddress, "Resolve_Name", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Resolve_Name");

BL4.Resolve_NumericRange = function(OwnerAddress, Param, Context_Object)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Resolve_NumericRange: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Param at +0x0, Context at +0x38
 writeQword(_params + 0x0, Param)
 writeQword(_params + 0x38, Context_Object)
 UE.CallProcessEventEx(OwnerAddress, "Resolve_NumericRange", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Resolve_NumericRange");

BL4.Resolve_Object = function(OwnerAddress, Param, Context_Object)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Resolve_Object: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Param at +0x0, Context at +0x38
 writeQword(_params + 0x0, Param)
 writeQword(_params + 0x38, Context_Object)
 UE.CallProcessEventEx(OwnerAddress, "Resolve_Object", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Resolve_Object");

BL4.Resolve_Rotator = function(OwnerAddress, Param, Context_Object)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Resolve_Rotator: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Param at +0x0, Context at +0x38
 writeQword(_params + 0x0, Param)
 writeQword(_params + 0x38, Context_Object)
 UE.CallProcessEventEx(OwnerAddress, "Resolve_Rotator", _params);
 local RET={Pitch=readFloat(_params+0x40),Yaw=readFloat(_params+0x48),Roll=readFloat(_params+0x50)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Resolve_Rotator");

BL4.Resolve_SceneComponent = function(OwnerAddress, Param, Context_Object)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Resolve_SceneComponent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Param at +0x0, Context at +0x38
 writeQword(_params + 0x0, Param)
 writeQword(_params + 0x38, Context_Object)
 UE.CallProcessEventEx(OwnerAddress, "Resolve_SceneComponent", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Resolve_SceneComponent");

BL4.Resolve_SoftObjectPtr = function(OwnerAddress, Param, Context_Object)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Resolve_SoftObjectPtr: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Param at +0x0, Context at +0x38
 writeQword(_params + 0x0, Param)
 writeQword(_params + 0x38, Context_Object)
 UE.CallProcessEventEx(OwnerAddress, "Resolve_SoftObjectPtr", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Resolve_SoftObjectPtr");

BL4.Resolve_String = function(OwnerAddress, Param, Context_Object)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Resolve_String: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Param at +0x0, Context at +0x38
 writeQword(_params + 0x0, Param)
 writeQword(_params + 0x38, Context_Object)
 UE.CallProcessEventEx(OwnerAddress, "Resolve_String", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Resolve_String");

BL4.Resolve_Text = function(OwnerAddress, Param, Context_Object)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Resolve_Text: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Param at +0x0, Context at +0x38
 writeQword(_params + 0x0, Param)
 writeQword(_params + 0x38, Context_Object)
 UE.CallProcessEventEx(OwnerAddress, "Resolve_Text", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Resolve_Text");

BL4.Resolve_Vector = function(OwnerAddress, Param, Context_Object)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Resolve_Vector: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Param at +0x0, Context at +0x38
 writeQword(_params + 0x0, Param)
 writeQword(_params + 0x38, Context_Object)
 UE.CallProcessEventEx(OwnerAddress, "Resolve_Vector", _params);
 local RET={X=readFloat(_params+0x40),Y=readFloat(_params+0x48),Z=readFloat(_params+0x50)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Resolve_Vector");

BL4.SetGbxParam_Double = function(OwnerAddress, GbxParam, DoubleValue)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetGbxParam_Double: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: GbxParam at +0x0, DoubleValue at +0x38
 writeQword(_params + 0x0, GbxParam)
 writeQword(_params + 0x38, DoubleValue)
 UE.CallProcessEventEx(OwnerAddress, "SetGbxParam_Double", _params);
 deAlloc(_params);
end
FNR("BL4.SetGbxParam_Double");

BL4.SetGbxParam_Float = function(OwnerAddress, GbxParam, FloatValue)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetGbxParam_Float: Failed To Allocate The Params");return;end;
 FloatValue = FloatValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: GbxParam at +0x0, FloatValue at +0x38
 writeQword(_params + 0x0, GbxParam)
 writeFloat(_params + 0x38, FloatValue)
 UE.CallProcessEventEx(OwnerAddress, "SetGbxParam_Float", _params);
 deAlloc(_params);
end
FNR("BL4.SetGbxParam_Float");

BL4.SetGbxParam_Int = function(OwnerAddress, GbxParam, IntValue)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetGbxParam_Int: Failed To Allocate The Params");return;end;
 IntValue = IntValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: GbxParam at +0x0, IntValue at +0x38
 writeQword(_params + 0x0, GbxParam)
 writeInteger(_params + 0x38, IntValue)
 UE.CallProcessEventEx(OwnerAddress, "SetGbxParam_Int", _params);
 deAlloc(_params);
end
FNR("BL4.SetGbxParam_Int");

