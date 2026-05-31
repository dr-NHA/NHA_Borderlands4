BL4.GetNiagaraArrayBool = function(NiagaraSystem_NiagaraComponent, OverrideName)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNiagaraArrayBool: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "GetNiagaraArrayBool", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNiagaraArrayBool");

BL4.GetNiagaraArrayBoolValue = function(NiagaraSystem_NiagaraComponent, OverrideName, Index)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNiagaraArrayBoolValue: Failed To Allocate The Params");return;end;
 Index = Index or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, Index at +0x10
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeInteger(_params + 0x10, Index)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "GetNiagaraArrayBoolValue", _params);
 local RET=readByte(_params + 0x14);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNiagaraArrayBoolValue");

BL4.GetNiagaraArrayColor = function(NiagaraSystem_NiagaraComponent, OverrideName)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNiagaraArrayColor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "GetNiagaraArrayColor", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNiagaraArrayColor");

BL4.GetNiagaraArrayColorValue = function(NiagaraSystem_NiagaraComponent, OverrideName, Index)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNiagaraArrayColorValue: Failed To Allocate The Params");return;end;
 Index = Index or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, Index at +0x10
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeInteger(_params + 0x10, Index)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "GetNiagaraArrayColorValue", _params);
 local RET={R=readFloat(_params+0x14),G=readFloat(_params+0x18),B=readFloat(_params+0x1C),A=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNiagaraArrayColorValue");

BL4.GetNiagaraArrayFloat = function(NiagaraSystem_NiagaraComponent, OverrideName)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNiagaraArrayFloat: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "GetNiagaraArrayFloat", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNiagaraArrayFloat");

BL4.GetNiagaraArrayFloatValue = function(NiagaraSystem_NiagaraComponent, OverrideName, Index)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNiagaraArrayFloatValue: Failed To Allocate The Params");return;end;
 Index = Index or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, Index at +0x10
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeInteger(_params + 0x10, Index)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "GetNiagaraArrayFloatValue", _params);
 local RET=readFloat(_params + 0x14);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNiagaraArrayFloatValue");

BL4.GetNiagaraArrayInt32 = function(NiagaraSystem_NiagaraComponent, OverrideName)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNiagaraArrayInt32: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "GetNiagaraArrayInt32", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNiagaraArrayInt32");

BL4.GetNiagaraArrayInt32Value = function(NiagaraSystem_NiagaraComponent, OverrideName, Index)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNiagaraArrayInt32Value: Failed To Allocate The Params");return;end;
 Index = Index or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, Index at +0x10
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeInteger(_params + 0x10, Index)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "GetNiagaraArrayInt32Value", _params);
 local RET=readInteger(_params + 0x14);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNiagaraArrayInt32Value");

BL4.GetNiagaraArrayMatrix = function(NiagaraSystem_NiagaraComponent, OverrideName, bApplyLWCRebase)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNiagaraArrayMatrix: Failed To Allocate The Params");return;end;
 bApplyLWCRebase = bApplyLWCRebase or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, bApplyLWCRebase at +0x10
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeByte(_params + 0x10, bApplyLWCRebase)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "GetNiagaraArrayMatrix", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNiagaraArrayMatrix");

BL4.GetNiagaraArrayMatrixValue = function(NiagaraSystem_NiagaraComponent, OverrideName, Index, bApplyLWCRebase)
 local _paramsSize = 0xA0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNiagaraArrayMatrixValue: Failed To Allocate The Params");return;end;
 Index = Index or 0
 bApplyLWCRebase = bApplyLWCRebase or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, Index at +0x10, bApplyLWCRebase at +0x14
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeInteger(_params + 0x10, Index)
 writeByte(_params + 0x14, bApplyLWCRebase)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "GetNiagaraArrayMatrixValue", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNiagaraArrayMatrixValue");

BL4.GetNiagaraArrayPosition = function(NiagaraSystem_NiagaraComponent, OverrideName)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNiagaraArrayPosition: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "GetNiagaraArrayPosition", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNiagaraArrayPosition");

BL4.GetNiagaraArrayPositionValue = function(NiagaraSystem_NiagaraComponent, OverrideName, Index)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNiagaraArrayPositionValue: Failed To Allocate The Params");return;end;
 Index = Index or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, Index at +0x10
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeInteger(_params + 0x10, Index)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "GetNiagaraArrayPositionValue", _params);
 local RET={X=readFloat(_params+0x18),Y=readFloat(_params+0x20),Z=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNiagaraArrayPositionValue");

BL4.GetNiagaraArrayQuat = function(NiagaraSystem_NiagaraComponent, OverrideName)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNiagaraArrayQuat: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "GetNiagaraArrayQuat", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNiagaraArrayQuat");

BL4.GetNiagaraArrayQuatValue = function(NiagaraSystem_NiagaraComponent, OverrideName, Index)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNiagaraArrayQuatValue: Failed To Allocate The Params");return;end;
 Index = Index or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, Index at +0x10
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeInteger(_params + 0x10, Index)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "GetNiagaraArrayQuatValue", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNiagaraArrayQuatValue");

BL4.GetNiagaraArrayUInt8 = function(NiagaraSystem_NiagaraComponent, OverrideName)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNiagaraArrayUInt8: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "GetNiagaraArrayUInt8", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNiagaraArrayUInt8");

BL4.GetNiagaraArrayUInt8Value = function(NiagaraSystem_NiagaraComponent, OverrideName, Index)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNiagaraArrayUInt8Value: Failed To Allocate The Params");return;end;
 Index = Index or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, Index at +0x10
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeInteger(_params + 0x10, Index)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "GetNiagaraArrayUInt8Value", _params);
 local RET=readInteger(_params + 0x14);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNiagaraArrayUInt8Value");

BL4.GetNiagaraArrayVector = function(NiagaraSystem_NiagaraComponent, OverrideName)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNiagaraArrayVector: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "GetNiagaraArrayVector", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNiagaraArrayVector");

BL4.GetNiagaraArrayVector2D = function(NiagaraSystem_NiagaraComponent, OverrideName)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNiagaraArrayVector2D: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "GetNiagaraArrayVector2D", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNiagaraArrayVector2D");

BL4.GetNiagaraArrayVector2DValue = function(NiagaraSystem_NiagaraComponent, OverrideName, Index)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNiagaraArrayVector2DValue: Failed To Allocate The Params");return;end;
 Index = Index or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, Index at +0x10
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeInteger(_params + 0x10, Index)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "GetNiagaraArrayVector2DValue", _params);
 local RET={X=readFloat(_params+0x18),Y=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNiagaraArrayVector2DValue");

BL4.GetNiagaraArrayVector4 = function(NiagaraSystem_NiagaraComponent, OverrideName)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNiagaraArrayVector4: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "GetNiagaraArrayVector4", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNiagaraArrayVector4");

BL4.GetNiagaraArrayVector4Value = function(NiagaraSystem_NiagaraComponent, OverrideName, Index)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNiagaraArrayVector4Value: Failed To Allocate The Params");return;end;
 Index = Index or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, Index at +0x10
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeInteger(_params + 0x10, Index)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "GetNiagaraArrayVector4Value", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNiagaraArrayVector4Value");

BL4.GetNiagaraArrayVectorValue = function(NiagaraSystem_NiagaraComponent, OverrideName, Index)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNiagaraArrayVectorValue: Failed To Allocate The Params");return;end;
 Index = Index or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, Index at +0x10
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeInteger(_params + 0x10, Index)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "GetNiagaraArrayVectorValue", _params);
 local RET={X=readFloat(_params+0x18),Y=readFloat(_params+0x20),Z=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNiagaraArrayVectorValue");

BL4.SetNiagaraArrayBool = function(NiagaraSystem_NiagaraComponent, OverrideName, ArrayData)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraArrayBool: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, ArrayData at +0x10
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeQword(_params + 0x10, ArrayData)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "SetNiagaraArrayBool", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraArrayBool");

BL4.SetNiagaraArrayBoolValue = function(NiagaraSystem_NiagaraComponent, OverrideName, Index, Value, bSizeToFit)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraArrayBoolValue: Failed To Allocate The Params");return;end;
 Index = Index or 0
 Value = Value or false
 bSizeToFit = bSizeToFit or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, Index at +0x10, Value at +0x14, bSizeToFit at +0x15
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeInteger(_params + 0x10, Index)
 writeByte(_params + 0x14, Value)
 writeByte(_params + 0x15, bSizeToFit)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "SetNiagaraArrayBoolValue", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraArrayBoolValue");

BL4.SetNiagaraArrayColor = function(NiagaraSystem_NiagaraComponent, OverrideName, ArrayData)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraArrayColor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, ArrayData at +0x10
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeQword(_params + 0x10, ArrayData)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "SetNiagaraArrayColor", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraArrayColor");

BL4.SetNiagaraArrayColorValue = function(NiagaraSystem_NiagaraComponent, OverrideName, Index, Value, bSizeToFit)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraArrayColorValue: Failed To Allocate The Params");return;end;
 Index = Index or 0
 Value = Value or {R=0,G=0,B=0,A=0}
 bSizeToFit = bSizeToFit or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, Index at +0x10, Value at +0x14, bSizeToFit at +0x24
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeInteger(_params + 0x10, Index)
 writeFloat(_params + 0x14, (Value and Value.R) or 0)
 writeFloat(_params + 0x18, (Value and Value.G) or 0)
 writeFloat(_params + 0x1C, (Value and Value.B) or 0)
 writeFloat(_params + 0x20, (Value and Value.A) or 0)
 writeByte(_params + 0x24, bSizeToFit)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "SetNiagaraArrayColorValue", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraArrayColorValue");

BL4.SetNiagaraArrayFloat = function(NiagaraSystem_NiagaraComponent, OverrideName, ArrayData)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraArrayFloat: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, ArrayData at +0x10
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeQword(_params + 0x10, ArrayData)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "SetNiagaraArrayFloat", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraArrayFloat");

BL4.SetNiagaraArrayFloatValue = function(NiagaraSystem_NiagaraComponent, OverrideName, Index, Value, bSizeToFit)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraArrayFloatValue: Failed To Allocate The Params");return;end;
 Index = Index or 0
 Value = Value or 0
 bSizeToFit = bSizeToFit or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, Index at +0x10, Value at +0x14, bSizeToFit at +0x18
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeInteger(_params + 0x10, Index)
 writeFloat(_params + 0x14, Value)
 writeByte(_params + 0x18, bSizeToFit)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "SetNiagaraArrayFloatValue", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraArrayFloatValue");

BL4.SetNiagaraArrayInt32 = function(NiagaraSystem_NiagaraComponent, OverrideName, ArrayData)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraArrayInt32: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, ArrayData at +0x10
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeQword(_params + 0x10, ArrayData)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "SetNiagaraArrayInt32", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraArrayInt32");

BL4.SetNiagaraArrayInt32Value = function(NiagaraSystem_NiagaraComponent, OverrideName, Index, Value, bSizeToFit)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraArrayInt32Value: Failed To Allocate The Params");return;end;
 Index = Index or 0
 Value = Value or 0
 bSizeToFit = bSizeToFit or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, Index at +0x10, Value at +0x14, bSizeToFit at +0x18
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeInteger(_params + 0x10, Index)
 writeInteger(_params + 0x14, Value)
 writeByte(_params + 0x18, bSizeToFit)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "SetNiagaraArrayInt32Value", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraArrayInt32Value");

BL4.SetNiagaraArrayMatrix = function(NiagaraSystem_NiagaraComponent, OverrideName, ArrayData, bApplyLWCRebase)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraArrayMatrix: Failed To Allocate The Params");return;end;
 bApplyLWCRebase = bApplyLWCRebase or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, ArrayData at +0x10, bApplyLWCRebase at +0x20
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeQword(_params + 0x10, ArrayData)
 writeByte(_params + 0x20, bApplyLWCRebase)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "SetNiagaraArrayMatrix", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraArrayMatrix");

BL4.SetNiagaraArrayMatrixValue = function(NiagaraSystem_NiagaraComponent, OverrideName, Index, Value, bSizeToFit, bApplyLWCRebase)
 local _paramsSize = 0xA8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraArrayMatrixValue: Failed To Allocate The Params");return;end;
 Index = Index or 0
 bSizeToFit = bSizeToFit or false
 bApplyLWCRebase = bApplyLWCRebase or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, Index at +0x10, Value at +0x20, bSizeToFit at +0xA0, bApplyLWCRebase at +0xA1
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeInteger(_params + 0x10, Index)
 writeQword(_params + 0x20, Value)
 writeByte(_params + 0xA0, bSizeToFit)
 writeByte(_params + 0xA1, bApplyLWCRebase)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "SetNiagaraArrayMatrixValue", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraArrayMatrixValue");

BL4.SetNiagaraArrayPosition = function(NiagaraSystem_NiagaraComponent, OverrideName, ArrayData)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraArrayPosition: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, ArrayData at +0x10
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeQword(_params + 0x10, ArrayData)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "SetNiagaraArrayPosition", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraArrayPosition");

BL4.SetNiagaraArrayPositionValue = function(NiagaraSystem_NiagaraComponent, OverrideName, Index, Value, bSizeToFit)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraArrayPositionValue: Failed To Allocate The Params");return;end;
 Index = Index or 0
 Value = Value or {X=0,Y=0,Z=0}
 bSizeToFit = bSizeToFit or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, Index at +0x10, Value at +0x18, bSizeToFit at +0x30
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeInteger(_params + 0x10, Index)
 writeDouble(_params + 0x18, (Value and Value.X) or 0)
 writeDouble(_params + 0x20, (Value and Value.Y) or 0)
 writeDouble(_params + 0x28, (Value and Value.Z) or 0)
 writeByte(_params + 0x30, bSizeToFit)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "SetNiagaraArrayPositionValue", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraArrayPositionValue");

BL4.SetNiagaraArrayQuat = function(NiagaraSystem_NiagaraComponent, OverrideName, ArrayData)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraArrayQuat: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, ArrayData at +0x10
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeQword(_params + 0x10, ArrayData)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "SetNiagaraArrayQuat", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraArrayQuat");

BL4.SetNiagaraArrayQuatValue = function(NiagaraSystem_NiagaraComponent, OverrideName, Index, Value, bSizeToFit)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraArrayQuatValue: Failed To Allocate The Params");return;end;
 Index = Index or 0
 bSizeToFit = bSizeToFit or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, Index at +0x10, Value at +0x20, bSizeToFit at +0x40
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeInteger(_params + 0x10, Index)
 writeQword(_params + 0x20, Value)
 writeByte(_params + 0x40, bSizeToFit)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "SetNiagaraArrayQuatValue", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraArrayQuatValue");

BL4.SetNiagaraArrayUInt8 = function(NiagaraSystem_NiagaraComponent, OverrideName, ArrayData)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraArrayUInt8: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, ArrayData at +0x10
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeQword(_params + 0x10, ArrayData)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "SetNiagaraArrayUInt8", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraArrayUInt8");

BL4.SetNiagaraArrayUInt8Value = function(NiagaraSystem_NiagaraComponent, OverrideName, Index, Value, bSizeToFit)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraArrayUInt8Value: Failed To Allocate The Params");return;end;
 Index = Index or 0
 Value = Value or 0
 bSizeToFit = bSizeToFit or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, Index at +0x10, Value at +0x14, bSizeToFit at +0x18
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeInteger(_params + 0x10, Index)
 writeInteger(_params + 0x14, Value)
 writeByte(_params + 0x18, bSizeToFit)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "SetNiagaraArrayUInt8Value", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraArrayUInt8Value");

BL4.SetNiagaraArrayVector = function(NiagaraSystem_NiagaraComponent, OverrideName, ArrayData)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraArrayVector: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, ArrayData at +0x10
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeQword(_params + 0x10, ArrayData)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "SetNiagaraArrayVector", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraArrayVector");

BL4.SetNiagaraArrayVector2D = function(NiagaraSystem_NiagaraComponent, OverrideName, ArrayData)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraArrayVector2D: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, ArrayData at +0x10
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeQword(_params + 0x10, ArrayData)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "SetNiagaraArrayVector2D", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraArrayVector2D");

BL4.SetNiagaraArrayVector2DValue = function(NiagaraSystem_NiagaraComponent, OverrideName, Index, Value, bSizeToFit)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraArrayVector2DValue: Failed To Allocate The Params");return;end;
 Index = Index or 0
 Value = Value or {X=0,Y=0}
 bSizeToFit = bSizeToFit or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, Index at +0x10, Value at +0x18, bSizeToFit at +0x28
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeInteger(_params + 0x10, Index)
 writeDouble(_params + 0x18, (Value and Value.X) or 0)
 writeDouble(_params + 0x20, (Value and Value.Y) or 0)
 writeByte(_params + 0x28, bSizeToFit)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "SetNiagaraArrayVector2DValue", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraArrayVector2DValue");

BL4.SetNiagaraArrayVector4 = function(NiagaraSystem_NiagaraComponent, OverrideName, ArrayData)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraArrayVector4: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, ArrayData at +0x10
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeQword(_params + 0x10, ArrayData)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "SetNiagaraArrayVector4", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraArrayVector4");

BL4.SetNiagaraArrayVector4Value = function(NiagaraSystem_NiagaraComponent, OverrideName, Index, Value, bSizeToFit)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraArrayVector4Value: Failed To Allocate The Params");return;end;
 Index = Index or 0
 bSizeToFit = bSizeToFit or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, Index at +0x10, Value at +0x20, bSizeToFit at +0x40
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeInteger(_params + 0x10, Index)
 writeQword(_params + 0x20, Value)
 writeByte(_params + 0x40, bSizeToFit)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "SetNiagaraArrayVector4Value", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraArrayVector4Value");

BL4.SetNiagaraArrayVectorValue = function(NiagaraSystem_NiagaraComponent, OverrideName, Index, Value, bSizeToFit)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraArrayVectorValue: Failed To Allocate The Params");return;end;
 Index = Index or 0
 Value = Value or {X=0,Y=0,Z=0}
 bSizeToFit = bSizeToFit or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NiagaraSystem at +0x0, OverrideName at +0x8, Index at +0x10, Value at +0x18, bSizeToFit at +0x30
 writeQword(_params + 0x0, NiagaraSystem_NiagaraComponent)
 writeQword(_params + 0x8, OverrideName)
 writeInteger(_params + 0x10, Index)
 writeDouble(_params + 0x18, (Value and Value.X) or 0)
 writeDouble(_params + 0x20, (Value and Value.Y) or 0)
 writeDouble(_params + 0x28, (Value and Value.Z) or 0)
 writeByte(_params + 0x30, bSizeToFit)
 UE.CallProcessEventEx(NiagaraSystem_NiagaraComponent, "SetNiagaraArrayVectorValue", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraArrayVectorValue");

