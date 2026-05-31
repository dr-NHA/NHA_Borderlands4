BL4.abs = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.abs: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "abs", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.abs");

BL4.Abs_Int = function(OwnerAddress, A)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Abs_Int: Failed To Allocate The Params");return;end;
 A = A or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeInteger(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "Abs_Int", _params);
 local RET=readInteger(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Abs_Int");

BL4.Abs_Int64 = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Abs_Int64: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "Abs_Int64", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Abs_Int64");

BL4.acos = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.acos: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "acos", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.acos");

BL4.Add_ByteByte = function(OwnerAddress, A, B)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Add_ByteByte: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x1
 writeByte(_params + 0x0, A)
 writeByte(_params + 0x1, B)
 UE.CallProcessEventEx(OwnerAddress, "Add_ByteByte", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Add_ByteByte");

BL4.Add_DateTimeDateTime = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Add_DateTimeDateTime: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Add_DateTimeDateTime", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Add_DateTimeDateTime");

BL4.Add_DateTimeTimespan = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Add_DateTimeTimespan: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Add_DateTimeTimespan", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Add_DateTimeTimespan");

BL4.Add_DoubleDouble = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Add_DoubleDouble: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Add_DoubleDouble", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Add_DoubleDouble");

BL4.Add_Int64Int64 = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Add_Int64Int64: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Add_Int64Int64", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Add_Int64Int64");

BL4.Add_IntInt = function(OwnerAddress, A, B)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Add_IntInt: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 UE.CallProcessEventEx(OwnerAddress, "Add_IntInt", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Add_IntInt");

BL4.Add_IntPointInt = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Add_IntPointInt: Failed To Allocate The Params");return;end;
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeInteger(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Add_IntPointInt", _params);
 local RET=readQword(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Add_IntPointInt");

BL4.Add_IntPointIntPoint = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Add_IntPointIntPoint: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Add_IntPointIntPoint", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Add_IntPointIntPoint");

BL4.Add_LinearColorLinearColor = function(OwnerAddress, A, B)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Add_LinearColorLinearColor: Failed To Allocate The Params");return;end;
 A = A or {R=0,G=0,B=0,A=0}
 B = B or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10
 writeFloat(_params + 0x0, (A and A.R) or 0)
 writeFloat(_params + 0x4, (A and A.G) or 0)
 writeFloat(_params + 0x8, (A and A.B) or 0)
 writeFloat(_params + 0xC, (A and A.A) or 0)
 writeFloat(_params + 0x10, (B and B.R) or 0)
 writeFloat(_params + 0x14, (B and B.G) or 0)
 writeFloat(_params + 0x18, (B and B.B) or 0)
 writeFloat(_params + 0x1C, (B and B.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Add_LinearColorLinearColor", _params);
 local RET={R=readFloat(_params+0x20),G=readFloat(_params+0x24),B=readFloat(_params+0x28),A=readFloat(_params+0x2C)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Add_LinearColorLinearColor");

BL4.Add_MatrixMatrix = function(OwnerAddress, A, B)
 local _paramsSize = 0x180
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Add_MatrixMatrix: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x80
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x80, B)
 UE.CallProcessEventEx(OwnerAddress, "Add_MatrixMatrix", _params);
 local RET=readQword(_params + 0x100);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Add_MatrixMatrix");

BL4.Add_QuatQuat = function(OwnerAddress, A, B)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Add_QuatQuat: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x20
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x20, B)
 UE.CallProcessEventEx(OwnerAddress, "Add_QuatQuat", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Add_QuatQuat");

BL4.Add_TimespanTimespan = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Add_TimespanTimespan: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Add_TimespanTimespan", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Add_TimespanTimespan");

BL4.Add_Vector2DFloat = function(OwnerAddress, A, B)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Add_Vector2DFloat: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeQword(_params + 0x10, B)
 UE.CallProcessEventEx(OwnerAddress, "Add_Vector2DFloat", _params);
 local RET={X=readFloat(_params+0x18),Y=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Add_Vector2DFloat");

BL4.Add_Vector2DVector2D = function(OwnerAddress, A, B)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Add_Vector2DVector2D: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 B = B or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (B and B.X) or 0)
 writeDouble(_params + 0x18, (B and B.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Add_Vector2DVector2D", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Add_Vector2DVector2D");

BL4.Add_Vector4Vector4 = function(OwnerAddress, A, B)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Add_Vector4Vector4: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x20
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x20, B)
 UE.CallProcessEventEx(OwnerAddress, "Add_Vector4Vector4", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Add_Vector4Vector4");

BL4.Add_VectorFloat = function(OwnerAddress, A, B)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Add_VectorFloat: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeQword(_params + 0x18, B)
 UE.CallProcessEventEx(OwnerAddress, "Add_VectorFloat", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Add_VectorFloat");

BL4.Add_VectorInt = function(OwnerAddress, A, B)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Add_VectorInt: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeInteger(_params + 0x18, B)
 UE.CallProcessEventEx(OwnerAddress, "Add_VectorInt", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Add_VectorInt");

BL4.Add_VectorVector = function(OwnerAddress, A, B)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Add_VectorVector: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 B = B or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeDouble(_params + 0x18, (B and B.X) or 0)
 writeDouble(_params + 0x20, (B and B.Y) or 0)
 writeDouble(_params + 0x28, (B and B.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Add_VectorVector", _params);
 local RET={X=readFloat(_params+0x30),Y=readFloat(_params+0x38),Z=readFloat(_params+0x40)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Add_VectorVector");

BL4.And_Int64Int64 = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.And_Int64Int64: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "And_Int64Int64", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.And_Int64Int64");

BL4.And_IntInt = function(OwnerAddress, A, B)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.And_IntInt: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 UE.CallProcessEventEx(OwnerAddress, "And_IntInt", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.And_IntInt");

BL4.asin = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.asin: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "asin", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.asin");

BL4.atan = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.atan: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "atan", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.atan");

BL4.Atan2 = function(OwnerAddress, Y, X)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Atan2: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Y at +0x0, X at +0x8
 writeQword(_params + 0x0, Y)
 writeQword(_params + 0x8, X)
 UE.CallProcessEventEx(OwnerAddress, "Atan2", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Atan2");

BL4.AverageOfIntArray = function(OwnerAddress, IntArray, AverageValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AverageOfIntArray: Failed To Allocate The Params");return;end;
 AverageValue = AverageValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: IntArray at +0x0, AverageValue at +0x10
 writeQword(_params + 0x0, IntArray)
 writeFloat(_params + 0x10, AverageValue)
 UE.CallProcessEventEx(OwnerAddress, "AverageOfIntArray", _params);
 deAlloc(_params);
end
FNR("BL4.AverageOfIntArray");

BL4.BMax = function(OwnerAddress, A, B)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BMax: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x1
 writeByte(_params + 0x0, A)
 writeByte(_params + 0x1, B)
 UE.CallProcessEventEx(OwnerAddress, "BMax", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BMax");

BL4.BMin = function(OwnerAddress, A, B)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BMin: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x1
 writeByte(_params + 0x0, A)
 writeByte(_params + 0x1, B)
 UE.CallProcessEventEx(OwnerAddress, "BMin", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BMin");

BL4.BooleanAND = function(OwnerAddress, A, B)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BooleanAND: Failed To Allocate The Params");return;end;
 A = A or false
 B = B or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x1
 writeByte(_params + 0x0, A)
 writeByte(_params + 0x1, B)
 UE.CallProcessEventEx(OwnerAddress, "BooleanAND", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BooleanAND");

BL4.BooleanNAND = function(OwnerAddress, A, B)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BooleanNAND: Failed To Allocate The Params");return;end;
 A = A or false
 B = B or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x1
 writeByte(_params + 0x0, A)
 writeByte(_params + 0x1, B)
 UE.CallProcessEventEx(OwnerAddress, "BooleanNAND", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BooleanNAND");

BL4.BooleanNOR = function(OwnerAddress, A, B)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BooleanNOR: Failed To Allocate The Params");return;end;
 A = A or false
 B = B or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x1
 writeByte(_params + 0x0, A)
 writeByte(_params + 0x1, B)
 UE.CallProcessEventEx(OwnerAddress, "BooleanNOR", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BooleanNOR");

BL4.BooleanOR = function(OwnerAddress, A, B)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BooleanOR: Failed To Allocate The Params");return;end;
 A = A or false
 B = B or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x1
 writeByte(_params + 0x0, A)
 writeByte(_params + 0x1, B)
 UE.CallProcessEventEx(OwnerAddress, "BooleanOR", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BooleanOR");

BL4.BooleanXOR = function(OwnerAddress, A, B)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BooleanXOR: Failed To Allocate The Params");return;end;
 A = A or false
 B = B or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x1
 writeByte(_params + 0x0, A)
 writeByte(_params + 0x1, B)
 UE.CallProcessEventEx(OwnerAddress, "BooleanXOR", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BooleanXOR");

BL4.Box_ExpandBy = function(OwnerAddress, Box, Negative, Positive)
 local _paramsSize = 0xA0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Box_ExpandBy: Failed To Allocate The Params");return;end;
 Negative = Negative or {X=0,Y=0,Z=0}
 Positive = Positive or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Box at +0x0, Negative at +0x38, Positive at +0x50
 writeQword(_params + 0x0, Box)
 writeDouble(_params + 0x38, (Negative and Negative.X) or 0)
 writeDouble(_params + 0x40, (Negative and Negative.Y) or 0)
 writeDouble(_params + 0x48, (Negative and Negative.Z) or 0)
 writeDouble(_params + 0x50, (Positive and Positive.X) or 0)
 writeDouble(_params + 0x58, (Positive and Positive.Y) or 0)
 writeDouble(_params + 0x60, (Positive and Positive.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Box_ExpandBy", _params);
 local RET=readQword(_params + 0x68);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Box_ExpandBy");

BL4.Box_GetClosestPointTo = function(OwnerAddress, Box, Point)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Box_GetClosestPointTo: Failed To Allocate The Params");return;end;
 Point = Point or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Box at +0x0, Point at +0x38
 writeQword(_params + 0x0, Box)
 writeDouble(_params + 0x38, (Point and Point.X) or 0)
 writeDouble(_params + 0x40, (Point and Point.Y) or 0)
 writeDouble(_params + 0x48, (Point and Point.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Box_GetClosestPointTo", _params);
 local RET={X=readFloat(_params+0x50),Y=readFloat(_params+0x58),Z=readFloat(_params+0x60)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Box_GetClosestPointTo");

BL4.Box_Intersects = function(OwnerAddress, A, B)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Box_Intersects: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x38
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x38, B)
 UE.CallProcessEventEx(OwnerAddress, "Box_Intersects", _params);
 local RET=readByte(_params + 0x70);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Box_Intersects");

BL4.Box_IsInside = function(OwnerAddress, InnerTest, OuterTest)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Box_IsInside: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InnerTest at +0x0, OuterTest at +0x38
 writeQword(_params + 0x0, InnerTest)
 writeQword(_params + 0x38, OuterTest)
 UE.CallProcessEventEx(OwnerAddress, "Box_IsInside", _params);
 local RET=readByte(_params + 0x70);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Box_IsInside");

BL4.Box_IsInsideOrOn = function(OwnerAddress, InnerTest, OuterTest)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Box_IsInsideOrOn: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InnerTest at +0x0, OuterTest at +0x38
 writeQword(_params + 0x0, InnerTest)
 writeQword(_params + 0x38, OuterTest)
 UE.CallProcessEventEx(OwnerAddress, "Box_IsInsideOrOn", _params);
 local RET=readByte(_params + 0x70);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Box_IsInsideOrOn");

BL4.Box_IsPointInside = function(OwnerAddress, Box, Point)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Box_IsPointInside: Failed To Allocate The Params");return;end;
 Point = Point or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Box at +0x0, Point at +0x38
 writeQword(_params + 0x0, Box)
 writeDouble(_params + 0x38, (Point and Point.X) or 0)
 writeDouble(_params + 0x40, (Point and Point.Y) or 0)
 writeDouble(_params + 0x48, (Point and Point.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Box_IsPointInside", _params);
 local RET=readByte(_params + 0x50);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Box_IsPointInside");

BL4.Box_Overlap = function(OwnerAddress, A, B)
 local _paramsSize = 0xA8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Box_Overlap: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x38
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x38, B)
 UE.CallProcessEventEx(OwnerAddress, "Box_Overlap", _params);
 local RET=readQword(_params + 0x70);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Box_Overlap");

BL4.BreakBoxSphereBounds = function(OwnerAddress, InBoxSphereBounds, Origin, BoxExtent, SphereRadius)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakBoxSphereBounds: Failed To Allocate The Params");return;end;
 Origin = Origin or {X=0,Y=0,Z=0}
 BoxExtent = BoxExtent or {X=0,Y=0,Z=0}
 SphereRadius = SphereRadius or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InBoxSphereBounds at +0x0, Origin at +0x38, BoxExtent at +0x50, SphereRadius at +0x68
 writeQword(_params + 0x0, InBoxSphereBounds)
 writeDouble(_params + 0x38, (Origin and Origin.X) or 0)
 writeDouble(_params + 0x40, (Origin and Origin.Y) or 0)
 writeDouble(_params + 0x48, (Origin and Origin.Z) or 0)
 writeDouble(_params + 0x50, (BoxExtent and BoxExtent.X) or 0)
 writeDouble(_params + 0x58, (BoxExtent and BoxExtent.Y) or 0)
 writeDouble(_params + 0x60, (BoxExtent and BoxExtent.Z) or 0)
 writeFloat(_params + 0x68, SphereRadius)
 UE.CallProcessEventEx(OwnerAddress, "BreakBoxSphereBounds", _params);
 deAlloc(_params);
end
FNR("BL4.BreakBoxSphereBounds");

BL4.BreakColor = function(OwnerAddress, InColor, R, G, B, A)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakColor: Failed To Allocate The Params");return;end;
 InColor = InColor or {R=0,G=0,B=0,A=0}
 R = R or 0
 G = G or 0
 B = B or 0
 A = A or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InColor at +0x0, R at +0x10, G at +0x14, B at +0x18, A at +0x1C
 writeFloat(_params + 0x0, (InColor and InColor.R) or 0)
 writeFloat(_params + 0x4, (InColor and InColor.G) or 0)
 writeFloat(_params + 0x8, (InColor and InColor.B) or 0)
 writeFloat(_params + 0xC, (InColor and InColor.A) or 0)
 writeFloat(_params + 0x10, R)
 writeFloat(_params + 0x14, G)
 writeFloat(_params + 0x18, B)
 writeFloat(_params + 0x1C, A)
 UE.CallProcessEventEx(OwnerAddress, "BreakColor", _params);
 deAlloc(_params);
end
FNR("BL4.BreakColor");

BL4.BreakDateTime = function(OwnerAddress, InDateTime, Year, Month, Day, Hour, Minute, Second, Millisecond)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakDateTime: Failed To Allocate The Params");return;end;
 Year = Year or 0
 Month = Month or 0
 Day = Day or 0
 Hour = Hour or 0
 Minute = Minute or 0
 Second = Second or 0
 Millisecond = Millisecond or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InDateTime at +0x0, Year at +0x8, Month at +0xC, Day at +0x10, Hour at +0x14, Minute at +0x18, Second at +0x1C, Millisecond at +0x20
 writeQword(_params + 0x0, InDateTime)
 writeInteger(_params + 0x8, Year)
 writeInteger(_params + 0xC, Month)
 writeInteger(_params + 0x10, Day)
 writeInteger(_params + 0x14, Hour)
 writeInteger(_params + 0x18, Minute)
 writeInteger(_params + 0x1C, Second)
 writeInteger(_params + 0x20, Millisecond)
 UE.CallProcessEventEx(OwnerAddress, "BreakDateTime", _params);
 deAlloc(_params);
end
FNR("BL4.BreakDateTime");

BL4.BreakFrameRate = function(OwnerAddress, InFrameRate, Numerator, Denominator)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakFrameRate: Failed To Allocate The Params");return;end;
 Numerator = Numerator or 0
 Denominator = Denominator or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InFrameRate at +0x0, Numerator at +0x8, Denominator at +0xC
 writeQword(_params + 0x0, InFrameRate)
 writeInteger(_params + 0x8, Numerator)
 writeInteger(_params + 0xC, Denominator)
 UE.CallProcessEventEx(OwnerAddress, "BreakFrameRate", _params);
 deAlloc(_params);
end
FNR("BL4.BreakFrameRate");

BL4.BreakQualifiedFrameTime = function(OwnerAddress, InFrameTime, frame, FrameRate, SubFrame)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakQualifiedFrameTime: Failed To Allocate The Params");return;end;
 SubFrame = SubFrame or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InFrameTime at +0x0, frame at +0x10, FrameRate at +0x14, SubFrame at +0x1C
 writeQword(_params + 0x0, InFrameTime)
 writeQword(_params + 0x10, frame)
 writeQword(_params + 0x14, FrameRate)
 writeFloat(_params + 0x1C, SubFrame)
 UE.CallProcessEventEx(OwnerAddress, "BreakQualifiedFrameTime", _params);
 deAlloc(_params);
end
FNR("BL4.BreakQualifiedFrameTime");

BL4.BreakQuat = function(OwnerAddress, InQuat, X, Y, Z, W)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakQuat: Failed To Allocate The Params");return;end;
 X = X or 0
 Y = Y or 0
 Z = Z or 0
 W = W or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InQuat at +0x0, X at +0x20, Y at +0x24, Z at +0x28, W at +0x2C
 writeQword(_params + 0x0, InQuat)
 writeFloat(_params + 0x20, X)
 writeFloat(_params + 0x24, Y)
 writeFloat(_params + 0x28, Z)
 writeFloat(_params + 0x2C, W)
 UE.CallProcessEventEx(OwnerAddress, "BreakQuat", _params);
 deAlloc(_params);
end
FNR("BL4.BreakQuat");

BL4.BreakRandomStream = function(OwnerAddress, InRandomStream, InitialSeed)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakRandomStream: Failed To Allocate The Params");return;end;
 InitialSeed = InitialSeed or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InRandomStream at +0x0, InitialSeed at +0x8
 writeQword(_params + 0x0, InRandomStream)
 writeInteger(_params + 0x8, InitialSeed)
 UE.CallProcessEventEx(OwnerAddress, "BreakRandomStream", _params);
 deAlloc(_params);
end
FNR("BL4.BreakRandomStream");

BL4.BreakRotator = function(OwnerAddress, InRot, roll, pitch, yaw)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakRotator: Failed To Allocate The Params");return;end;
 InRot = InRot or {Pitch=0,Yaw=0,Roll=0}
 roll = roll or 0
 pitch = pitch or 0
 yaw = yaw or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InRot at +0x0, roll at +0x18, pitch at +0x1C, yaw at +0x20
 writeDouble(_params + 0x0, (InRot and InRot.Pitch) or 0)
 writeDouble(_params + 0x8, (InRot and InRot.Yaw) or 0)
 writeDouble(_params + 0x10, (InRot and InRot.Roll) or 0)
 writeFloat(_params + 0x18, roll)
 writeFloat(_params + 0x1C, pitch)
 writeFloat(_params + 0x20, yaw)
 UE.CallProcessEventEx(OwnerAddress, "BreakRotator", _params);
 deAlloc(_params);
end
FNR("BL4.BreakRotator");

BL4.BreakRotIntoAxes = function(OwnerAddress, InRot, X, Y, Z)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakRotIntoAxes: Failed To Allocate The Params");return;end;
 InRot = InRot or {Pitch=0,Yaw=0,Roll=0}
 X = X or {X=0,Y=0,Z=0}
 Y = Y or {X=0,Y=0,Z=0}
 Z = Z or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InRot at +0x0, X at +0x18, Y at +0x30, Z at +0x48
 writeDouble(_params + 0x0, (InRot and InRot.Pitch) or 0)
 writeDouble(_params + 0x8, (InRot and InRot.Yaw) or 0)
 writeDouble(_params + 0x10, (InRot and InRot.Roll) or 0)
 writeDouble(_params + 0x18, (X and X.X) or 0)
 writeDouble(_params + 0x20, (X and X.Y) or 0)
 writeDouble(_params + 0x28, (X and X.Z) or 0)
 writeDouble(_params + 0x30, (Y and Y.X) or 0)
 writeDouble(_params + 0x38, (Y and Y.Y) or 0)
 writeDouble(_params + 0x40, (Y and Y.Z) or 0)
 writeDouble(_params + 0x48, (Z and Z.X) or 0)
 writeDouble(_params + 0x50, (Z and Z.Y) or 0)
 writeDouble(_params + 0x58, (Z and Z.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "BreakRotIntoAxes", _params);
 deAlloc(_params);
end
FNR("BL4.BreakRotIntoAxes");

BL4.BreakTimespan = function(OwnerAddress, InTimespan, Days, Hours, Minutes, Seconds, Milliseconds)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakTimespan: Failed To Allocate The Params");return;end;
 Days = Days or 0
 Hours = Hours or 0
 Minutes = Minutes or 0
 Seconds = Seconds or 0
 Milliseconds = Milliseconds or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InTimespan at +0x0, Days at +0x8, Hours at +0xC, Minutes at +0x10, Seconds at +0x14, Milliseconds at +0x18
 writeQword(_params + 0x0, InTimespan)
 writeInteger(_params + 0x8, Days)
 writeInteger(_params + 0xC, Hours)
 writeInteger(_params + 0x10, Minutes)
 writeInteger(_params + 0x14, Seconds)
 writeInteger(_params + 0x18, Milliseconds)
 UE.CallProcessEventEx(OwnerAddress, "BreakTimespan", _params);
 deAlloc(_params);
end
FNR("BL4.BreakTimespan");

BL4.BreakTimespan2 = function(OwnerAddress, InTimespan, Days, Hours, Minutes, Seconds, FractionNano)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakTimespan2: Failed To Allocate The Params");return;end;
 Days = Days or 0
 Hours = Hours or 0
 Minutes = Minutes or 0
 Seconds = Seconds or 0
 FractionNano = FractionNano or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InTimespan at +0x0, Days at +0x8, Hours at +0xC, Minutes at +0x10, Seconds at +0x14, FractionNano at +0x18
 writeQword(_params + 0x0, InTimespan)
 writeInteger(_params + 0x8, Days)
 writeInteger(_params + 0xC, Hours)
 writeInteger(_params + 0x10, Minutes)
 writeInteger(_params + 0x14, Seconds)
 writeInteger(_params + 0x18, FractionNano)
 UE.CallProcessEventEx(OwnerAddress, "BreakTimespan2", _params);
 deAlloc(_params);
end
FNR("BL4.BreakTimespan2");

BL4.BreakTransform = function(OwnerAddress, InTransform, Location, Rotation, scale)
 local _paramsSize = 0xA8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakTransform: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 Rotation = Rotation or {Pitch=0,Yaw=0,Roll=0}
 scale = scale or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InTransform at +0x0, Location at +0x60, Rotation at +0x78, scale at +0x90
 writeQword(_params + 0x0, InTransform)
 writeDouble(_params + 0x60, (Location and Location.X) or 0)
 writeDouble(_params + 0x68, (Location and Location.Y) or 0)
 writeDouble(_params + 0x70, (Location and Location.Z) or 0)
 writeDouble(_params + 0x78, (Rotation and Rotation.Pitch) or 0)
 writeDouble(_params + 0x80, (Rotation and Rotation.Yaw) or 0)
 writeDouble(_params + 0x88, (Rotation and Rotation.Roll) or 0)
 writeDouble(_params + 0x90, (scale and scale.X) or 0)
 writeDouble(_params + 0x98, (scale and scale.Y) or 0)
 writeDouble(_params + 0xA0, (scale and scale.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "BreakTransform", _params);
 deAlloc(_params);
end
FNR("BL4.BreakTransform");

BL4.BreakVector = function(OwnerAddress, InVec, X, Y, Z)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakVector: Failed To Allocate The Params");return;end;
 InVec = InVec or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVec at +0x0, X at +0x18, Y at +0x20, Z at +0x28
 writeDouble(_params + 0x0, (InVec and InVec.X) or 0)
 writeDouble(_params + 0x8, (InVec and InVec.Y) or 0)
 writeDouble(_params + 0x10, (InVec and InVec.Z) or 0)
 writeQword(_params + 0x18, X)
 writeQword(_params + 0x20, Y)
 writeQword(_params + 0x28, Z)
 UE.CallProcessEventEx(OwnerAddress, "BreakVector", _params);
 deAlloc(_params);
end
FNR("BL4.BreakVector");

BL4.BreakVector2D = function(OwnerAddress, InVec, X, Y)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakVector2D: Failed To Allocate The Params");return;end;
 InVec = InVec or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVec at +0x0, X at +0x10, Y at +0x18
 writeDouble(_params + 0x0, (InVec and InVec.X) or 0)
 writeDouble(_params + 0x8, (InVec and InVec.Y) or 0)
 writeQword(_params + 0x10, X)
 writeQword(_params + 0x18, Y)
 UE.CallProcessEventEx(OwnerAddress, "BreakVector2D", _params);
 deAlloc(_params);
end
FNR("BL4.BreakVector2D");

BL4.BreakVector4 = function(OwnerAddress, InVec, X, Y, Z, W)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakVector4: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVec at +0x0, X at +0x20, Y at +0x28, Z at +0x30, W at +0x38
 writeQword(_params + 0x0, InVec)
 writeQword(_params + 0x20, X)
 writeQword(_params + 0x28, Y)
 writeQword(_params + 0x30, Z)
 writeQword(_params + 0x38, W)
 UE.CallProcessEventEx(OwnerAddress, "BreakVector4", _params);
 deAlloc(_params);
end
FNR("BL4.BreakVector4");

BL4.BreakVector_NetQuantize = function(OwnerAddress, InVec, X, Y, Z)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakVector_NetQuantize: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVec at +0x0, X at +0x18, Y at +0x20, Z at +0x28
 writeQword(_params + 0x0, InVec)
 writeQword(_params + 0x18, X)
 writeQword(_params + 0x20, Y)
 writeQword(_params + 0x28, Z)
 UE.CallProcessEventEx(OwnerAddress, "BreakVector_NetQuantize", _params);
 deAlloc(_params);
end
FNR("BL4.BreakVector_NetQuantize");

BL4.BreakVector_NetQuantize10 = function(OwnerAddress, InVec, X, Y, Z)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakVector_NetQuantize10: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVec at +0x0, X at +0x18, Y at +0x20, Z at +0x28
 writeQword(_params + 0x0, InVec)
 writeQword(_params + 0x18, X)
 writeQword(_params + 0x20, Y)
 writeQword(_params + 0x28, Z)
 UE.CallProcessEventEx(OwnerAddress, "BreakVector_NetQuantize10", _params);
 deAlloc(_params);
end
FNR("BL4.BreakVector_NetQuantize10");

BL4.BreakVector_NetQuantize100 = function(OwnerAddress, InVec, X, Y, Z)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakVector_NetQuantize100: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVec at +0x0, X at +0x18, Y at +0x20, Z at +0x28
 writeQword(_params + 0x0, InVec)
 writeQword(_params + 0x18, X)
 writeQword(_params + 0x20, Y)
 writeQword(_params + 0x28, Z)
 UE.CallProcessEventEx(OwnerAddress, "BreakVector_NetQuantize100", _params);
 deAlloc(_params);
end
FNR("BL4.BreakVector_NetQuantize100");

BL4.BreakVector_NetQuantizeNormal = function(OwnerAddress, InVec, X, Y, Z)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakVector_NetQuantizeNormal: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVec at +0x0, X at +0x18, Y at +0x20, Z at +0x28
 writeQword(_params + 0x0, InVec)
 writeQword(_params + 0x18, X)
 writeQword(_params + 0x20, Y)
 writeQword(_params + 0x28, Z)
 UE.CallProcessEventEx(OwnerAddress, "BreakVector_NetQuantizeNormal", _params);
 deAlloc(_params);
end
FNR("BL4.BreakVector_NetQuantizeNormal");

BL4.CInterpTo = function(OwnerAddress, current, target, DeltaTime, InterpSpeed)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CInterpTo: Failed To Allocate The Params");return;end;
 current = current or {R=0,G=0,B=0,A=0}
 target = target or {R=0,G=0,B=0,A=0}
 DeltaTime = DeltaTime or 0
 InterpSpeed = InterpSpeed or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: current at +0x0, target at +0x10, DeltaTime at +0x20, InterpSpeed at +0x24
 writeFloat(_params + 0x0, (current and current.R) or 0)
 writeFloat(_params + 0x4, (current and current.G) or 0)
 writeFloat(_params + 0x8, (current and current.B) or 0)
 writeFloat(_params + 0xC, (current and current.A) or 0)
 writeFloat(_params + 0x10, (target and target.R) or 0)
 writeFloat(_params + 0x14, (target and target.G) or 0)
 writeFloat(_params + 0x18, (target and target.B) or 0)
 writeFloat(_params + 0x1C, (target and target.A) or 0)
 writeFloat(_params + 0x20, DeltaTime)
 writeFloat(_params + 0x24, InterpSpeed)
 UE.CallProcessEventEx(OwnerAddress, "CInterpTo", _params);
 local RET={R=readFloat(_params+0x28),G=readFloat(_params+0x2C),B=readFloat(_params+0x30),A=readFloat(_params+0x34)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.CInterpTo");

BL4.clamp = function(OwnerAddress, Value, min, MAX)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.clamp: Failed To Allocate The Params");return;end;
 Value = Value or 0
 min = min or 0
 MAX = MAX or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0, min at +0x4, MAX at +0x8
 writeInteger(_params + 0x0, Value)
 writeInteger(_params + 0x4, min)
 writeInteger(_params + 0x8, MAX)
 UE.CallProcessEventEx(OwnerAddress, "clamp", _params);
 local RET=readInteger(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.clamp");

BL4.ClampAngle = function(OwnerAddress, AngleDegrees, MinAngleDegrees, MaxAngleDegrees)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClampAngle: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AngleDegrees at +0x0, MinAngleDegrees at +0x8, MaxAngleDegrees at +0x10
 writeQword(_params + 0x0, AngleDegrees)
 writeQword(_params + 0x8, MinAngleDegrees)
 writeQword(_params + 0x10, MaxAngleDegrees)
 UE.CallProcessEventEx(OwnerAddress, "ClampAngle", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ClampAngle");

BL4.ClampAxes2D = function(OwnerAddress, A, MinAxisVal, MaxAxisVal)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClampAxes2D: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, MinAxisVal at +0x10, MaxAxisVal at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeQword(_params + 0x10, MinAxisVal)
 writeQword(_params + 0x18, MaxAxisVal)
 UE.CallProcessEventEx(OwnerAddress, "ClampAxes2D", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.ClampAxes2D");

BL4.ClampAxis = function(OwnerAddress, Angle)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClampAxis: Failed To Allocate The Params");return;end;
 Angle = Angle or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Angle at +0x0
 writeFloat(_params + 0x0, Angle)
 UE.CallProcessEventEx(OwnerAddress, "ClampAxis", _params);
 local RET=readFloat(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ClampAxis");

BL4.ClampInt64 = function(OwnerAddress, Value, min, MAX)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClampInt64: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0, min at +0x8, MAX at +0x10
 writeQword(_params + 0x0, Value)
 writeQword(_params + 0x8, min)
 writeQword(_params + 0x10, MAX)
 UE.CallProcessEventEx(OwnerAddress, "ClampInt64", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ClampInt64");

BL4.ClampVectorSize = function(OwnerAddress, A, min, MAX)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClampVectorSize: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, min at +0x18, MAX at +0x20
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeQword(_params + 0x18, min)
 writeQword(_params + 0x20, MAX)
 UE.CallProcessEventEx(OwnerAddress, "ClampVectorSize", _params);
 local RET={X=readFloat(_params+0x28),Y=readFloat(_params+0x30),Z=readFloat(_params+0x38)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.ClampVectorSize");

BL4.ClassIsChildOf = function(TestClass_Class, ParentClass_Class)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClassIsChildOf: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TestClass at +0x0, ParentClass at +0x8
 writeQword(_params + 0x0, TestClass_Class)
 writeQword(_params + 0x8, ParentClass_Class)
 UE.CallProcessEventEx(TestClass_Class, "ClassIsChildOf", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ClassIsChildOf");

BL4.ComposeRotators = function(OwnerAddress, A, B)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ComposeRotators: Failed To Allocate The Params");return;end;
 A = A or {Pitch=0,Yaw=0,Roll=0}
 B = B or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18
 writeDouble(_params + 0x0, (A and A.Pitch) or 0)
 writeDouble(_params + 0x8, (A and A.Yaw) or 0)
 writeDouble(_params + 0x10, (A and A.Roll) or 0)
 writeDouble(_params + 0x18, (B and B.Pitch) or 0)
 writeDouble(_params + 0x20, (B and B.Yaw) or 0)
 writeDouble(_params + 0x28, (B and B.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "ComposeRotators", _params);
 local RET={Pitch=readFloat(_params+0x30),Yaw=readFloat(_params+0x38),Roll=readFloat(_params+0x40)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.ComposeRotators");

BL4.ComposeTransforms = function(OwnerAddress, A, B)
 local _paramsSize = 0x120
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ComposeTransforms: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x60
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x60, B)
 UE.CallProcessEventEx(OwnerAddress, "ComposeTransforms", _params);
 local RET=readQword(_params + 0xC0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ComposeTransforms");

BL4.Conv_BoolToByte = function(OwnerAddress, InBool)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_BoolToByte: Failed To Allocate The Params");return;end;
 InBool = InBool or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InBool at +0x0
 writeByte(_params + 0x0, InBool)
 UE.CallProcessEventEx(OwnerAddress, "Conv_BoolToByte", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_BoolToByte");

BL4.Conv_BoolToDouble = function(OwnerAddress, InBool)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_BoolToDouble: Failed To Allocate The Params");return;end;
 InBool = InBool or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InBool at +0x0
 writeByte(_params + 0x0, InBool)
 UE.CallProcessEventEx(OwnerAddress, "Conv_BoolToDouble", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_BoolToDouble");

BL4.Conv_BoolToInt = function(OwnerAddress, InBool)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_BoolToInt: Failed To Allocate The Params");return;end;
 InBool = InBool or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InBool at +0x0
 writeByte(_params + 0x0, InBool)
 UE.CallProcessEventEx(OwnerAddress, "Conv_BoolToInt", _params);
 local RET=readInteger(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_BoolToInt");

BL4.Conv_ByteToDouble = function(OwnerAddress, InByte)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_ByteToDouble: Failed To Allocate The Params");return;end;
 InByte = InByte or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InByte at +0x0
 writeByte(_params + 0x0, InByte)
 UE.CallProcessEventEx(OwnerAddress, "Conv_ByteToDouble", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_ByteToDouble");

BL4.Conv_ByteToInt = function(OwnerAddress, InByte)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_ByteToInt: Failed To Allocate The Params");return;end;
 InByte = InByte or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InByte at +0x0
 writeByte(_params + 0x0, InByte)
 UE.CallProcessEventEx(OwnerAddress, "Conv_ByteToInt", _params);
 local RET=readInteger(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_ByteToInt");

BL4.Conv_ByteToInt64 = function(OwnerAddress, InByte)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_ByteToInt64: Failed To Allocate The Params");return;end;
 InByte = InByte or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InByte at +0x0
 writeByte(_params + 0x0, InByte)
 UE.CallProcessEventEx(OwnerAddress, "Conv_ByteToInt64", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_ByteToInt64");

BL4.Conv_ColorToLinearColor = function(OwnerAddress, InColor)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_ColorToLinearColor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InColor at +0x0
 writeQword(_params + 0x0, InColor)
 UE.CallProcessEventEx(OwnerAddress, "Conv_ColorToLinearColor", _params);
 local RET={R=readFloat(_params+0x4),G=readFloat(_params+0x8),B=readFloat(_params+0xC),A=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_ColorToLinearColor");

BL4.Conv_DoubleToFloat = function(OwnerAddress, InDouble)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_DoubleToFloat: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InDouble at +0x0
 writeQword(_params + 0x0, InDouble)
 UE.CallProcessEventEx(OwnerAddress, "Conv_DoubleToFloat", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_DoubleToFloat");

BL4.Conv_DoubleToInt64 = function(OwnerAddress, InDouble)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_DoubleToInt64: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InDouble at +0x0
 writeQword(_params + 0x0, InDouble)
 UE.CallProcessEventEx(OwnerAddress, "Conv_DoubleToInt64", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_DoubleToInt64");

BL4.Conv_DoubleToLinearColor = function(OwnerAddress, InDouble)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_DoubleToLinearColor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InDouble at +0x0
 writeQword(_params + 0x0, InDouble)
 UE.CallProcessEventEx(OwnerAddress, "Conv_DoubleToLinearColor", _params);
 local RET={R=readFloat(_params+0x8),G=readFloat(_params+0xC),B=readFloat(_params+0x10),A=readFloat(_params+0x14)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_DoubleToLinearColor");

BL4.Conv_DoubleToVector = function(OwnerAddress, InDouble)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_DoubleToVector: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InDouble at +0x0
 writeQword(_params + 0x0, InDouble)
 UE.CallProcessEventEx(OwnerAddress, "Conv_DoubleToVector", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_DoubleToVector");

BL4.Conv_DoubleToVector2D = function(OwnerAddress, InDouble)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_DoubleToVector2D: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InDouble at +0x0
 writeQword(_params + 0x0, InDouble)
 UE.CallProcessEventEx(OwnerAddress, "Conv_DoubleToVector2D", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_DoubleToVector2D");

BL4.Conv_FloatToDouble = function(OwnerAddress, InFloat)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_FloatToDouble: Failed To Allocate The Params");return;end;
 InFloat = InFloat or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InFloat at +0x0
 writeFloat(_params + 0x0, InFloat)
 UE.CallProcessEventEx(OwnerAddress, "Conv_FloatToDouble", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_FloatToDouble");

BL4.Conv_Int64ToByte = function(OwnerAddress, inInt)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_Int64ToByte: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: inInt at +0x0
 writeQword(_params + 0x0, inInt)
 UE.CallProcessEventEx(OwnerAddress, "Conv_Int64ToByte", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_Int64ToByte");

BL4.Conv_Int64ToDouble = function(OwnerAddress, inInt)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_Int64ToDouble: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: inInt at +0x0
 writeQword(_params + 0x0, inInt)
 UE.CallProcessEventEx(OwnerAddress, "Conv_Int64ToDouble", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_Int64ToDouble");

BL4.Conv_Int64ToInt = function(OwnerAddress, inInt)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_Int64ToInt: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: inInt at +0x0
 writeQword(_params + 0x0, inInt)
 UE.CallProcessEventEx(OwnerAddress, "Conv_Int64ToInt", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_Int64ToInt");

BL4.Conv_IntPointToVector2D = function(OwnerAddress, InIntPoint)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_IntPointToVector2D: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InIntPoint at +0x0
 writeQword(_params + 0x0, InIntPoint)
 UE.CallProcessEventEx(OwnerAddress, "Conv_IntPointToVector2D", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_IntPointToVector2D");

BL4.Conv_IntToBool = function(OwnerAddress, inInt)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_IntToBool: Failed To Allocate The Params");return;end;
 inInt = inInt or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: inInt at +0x0
 writeInteger(_params + 0x0, inInt)
 UE.CallProcessEventEx(OwnerAddress, "Conv_IntToBool", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_IntToBool");

BL4.Conv_IntToByte = function(OwnerAddress, inInt)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_IntToByte: Failed To Allocate The Params");return;end;
 inInt = inInt or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: inInt at +0x0
 writeInteger(_params + 0x0, inInt)
 UE.CallProcessEventEx(OwnerAddress, "Conv_IntToByte", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_IntToByte");

BL4.Conv_IntToDouble = function(OwnerAddress, inInt)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_IntToDouble: Failed To Allocate The Params");return;end;
 inInt = inInt or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: inInt at +0x0
 writeInteger(_params + 0x0, inInt)
 UE.CallProcessEventEx(OwnerAddress, "Conv_IntToDouble", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_IntToDouble");

BL4.Conv_IntToInt64 = function(OwnerAddress, inInt)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_IntToInt64: Failed To Allocate The Params");return;end;
 inInt = inInt or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: inInt at +0x0
 writeInteger(_params + 0x0, inInt)
 UE.CallProcessEventEx(OwnerAddress, "Conv_IntToInt64", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_IntToInt64");

BL4.Conv_IntToIntVector = function(OwnerAddress, inInt)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_IntToIntVector: Failed To Allocate The Params");return;end;
 inInt = inInt or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: inInt at +0x0
 writeInteger(_params + 0x0, inInt)
 UE.CallProcessEventEx(OwnerAddress, "Conv_IntToIntVector", _params);
 local RET=readQword(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_IntToIntVector");

BL4.Conv_IntToVector = function(OwnerAddress, inInt)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_IntToVector: Failed To Allocate The Params");return;end;
 inInt = inInt or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: inInt at +0x0
 writeInteger(_params + 0x0, inInt)
 UE.CallProcessEventEx(OwnerAddress, "Conv_IntToVector", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_IntToVector");

BL4.Conv_IntVectorToVector = function(OwnerAddress, InIntVector)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_IntVectorToVector: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InIntVector at +0x0
 writeQword(_params + 0x0, InIntVector)
 UE.CallProcessEventEx(OwnerAddress, "Conv_IntVectorToVector", _params);
 local RET={X=readFloat(_params+0x10),Y=readFloat(_params+0x18),Z=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_IntVectorToVector");

BL4.Conv_LinearColorToColor = function(OwnerAddress, InLinearColor, InUseSRGB)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_LinearColorToColor: Failed To Allocate The Params");return;end;
 InLinearColor = InLinearColor or {R=0,G=0,B=0,A=0}
 InUseSRGB = InUseSRGB or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InLinearColor at +0x0, InUseSRGB at +0x10
 writeFloat(_params + 0x0, (InLinearColor and InLinearColor.R) or 0)
 writeFloat(_params + 0x4, (InLinearColor and InLinearColor.G) or 0)
 writeFloat(_params + 0x8, (InLinearColor and InLinearColor.B) or 0)
 writeFloat(_params + 0xC, (InLinearColor and InLinearColor.A) or 0)
 writeByte(_params + 0x10, InUseSRGB)
 UE.CallProcessEventEx(OwnerAddress, "Conv_LinearColorToColor", _params);
 local RET=readQword(_params + 0x14);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_LinearColorToColor");

BL4.Conv_LinearColorToVector = function(OwnerAddress, InLinearColor)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_LinearColorToVector: Failed To Allocate The Params");return;end;
 InLinearColor = InLinearColor or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InLinearColor at +0x0
 writeFloat(_params + 0x0, (InLinearColor and InLinearColor.R) or 0)
 writeFloat(_params + 0x4, (InLinearColor and InLinearColor.G) or 0)
 writeFloat(_params + 0x8, (InLinearColor and InLinearColor.B) or 0)
 writeFloat(_params + 0xC, (InLinearColor and InLinearColor.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Conv_LinearColorToVector", _params);
 local RET={X=readFloat(_params+0x10),Y=readFloat(_params+0x18),Z=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_LinearColorToVector");

BL4.Conv_MatrixToRotator = function(OwnerAddress, InMatrix)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_MatrixToRotator: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InMatrix at +0x0
 writeQword(_params + 0x0, InMatrix)
 UE.CallProcessEventEx(OwnerAddress, "Conv_MatrixToRotator", _params);
 local RET={Pitch=readFloat(_params+0x80),Yaw=readFloat(_params+0x88),Roll=readFloat(_params+0x90)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_MatrixToRotator");

BL4.Conv_MatrixToTransform = function(OwnerAddress, InMatrix)
 local _paramsSize = 0xE0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_MatrixToTransform: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InMatrix at +0x0
 writeQword(_params + 0x0, InMatrix)
 UE.CallProcessEventEx(OwnerAddress, "Conv_MatrixToTransform", _params);
 local RET=readQword(_params + 0x80);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_MatrixToTransform");

BL4.Conv_RotatorToQuaternion = function(OwnerAddress, InRot)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_RotatorToQuaternion: Failed To Allocate The Params");return;end;
 InRot = InRot or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InRot at +0x0
 writeDouble(_params + 0x0, (InRot and InRot.Pitch) or 0)
 writeDouble(_params + 0x8, (InRot and InRot.Yaw) or 0)
 writeDouble(_params + 0x10, (InRot and InRot.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Conv_RotatorToQuaternion", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_RotatorToQuaternion");

BL4.Conv_RotatorToTransform = function(OwnerAddress, InRotator)
 local _paramsSize = 0x80
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_RotatorToTransform: Failed To Allocate The Params");return;end;
 InRotator = InRotator or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InRotator at +0x0
 writeDouble(_params + 0x0, (InRotator and InRotator.Pitch) or 0)
 writeDouble(_params + 0x8, (InRotator and InRotator.Yaw) or 0)
 writeDouble(_params + 0x10, (InRotator and InRotator.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Conv_RotatorToTransform", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_RotatorToTransform");

BL4.Conv_RotatorToVector = function(OwnerAddress, InRot)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_RotatorToVector: Failed To Allocate The Params");return;end;
 InRot = InRot or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InRot at +0x0
 writeDouble(_params + 0x0, (InRot and InRot.Pitch) or 0)
 writeDouble(_params + 0x8, (InRot and InRot.Yaw) or 0)
 writeDouble(_params + 0x10, (InRot and InRot.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Conv_RotatorToVector", _params);
 local RET={X=readFloat(_params+0x18),Y=readFloat(_params+0x20),Z=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_RotatorToVector");

BL4.Conv_TransformToMatrix = function(OwnerAddress, Transform)
 local _paramsSize = 0xE0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_TransformToMatrix: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Transform at +0x0
 writeQword(_params + 0x0, Transform)
 UE.CallProcessEventEx(OwnerAddress, "Conv_TransformToMatrix", _params);
 local RET=readQword(_params + 0x60);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_TransformToMatrix");

BL4.Conv_Vector2DToIntPoint = function(OwnerAddress, InVector2D)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_Vector2DToIntPoint: Failed To Allocate The Params");return;end;
 InVector2D = InVector2D or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVector2D at +0x0
 writeDouble(_params + 0x0, (InVector2D and InVector2D.X) or 0)
 writeDouble(_params + 0x8, (InVector2D and InVector2D.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Conv_Vector2DToIntPoint", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_Vector2DToIntPoint");

BL4.Conv_Vector2DToVector = function(OwnerAddress, InVector2D, Z)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_Vector2DToVector: Failed To Allocate The Params");return;end;
 InVector2D = InVector2D or {X=0,Y=0}
 Z = Z or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVector2D at +0x0, Z at +0x10
 writeDouble(_params + 0x0, (InVector2D and InVector2D.X) or 0)
 writeDouble(_params + 0x8, (InVector2D and InVector2D.Y) or 0)
 writeFloat(_params + 0x10, Z)
 UE.CallProcessEventEx(OwnerAddress, "Conv_Vector2DToVector", _params);
 local RET={X=readFloat(_params+0x18),Y=readFloat(_params+0x20),Z=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_Vector2DToVector");

BL4.Conv_Vector4ToQuaternion = function(OwnerAddress, InVec)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_Vector4ToQuaternion: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVec at +0x0
 writeQword(_params + 0x0, InVec)
 UE.CallProcessEventEx(OwnerAddress, "Conv_Vector4ToQuaternion", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_Vector4ToQuaternion");

BL4.Conv_Vector4ToRotator = function(OwnerAddress, InVec)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_Vector4ToRotator: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVec at +0x0
 writeQword(_params + 0x0, InVec)
 UE.CallProcessEventEx(OwnerAddress, "Conv_Vector4ToRotator", _params);
 local RET={Pitch=readFloat(_params+0x20),Yaw=readFloat(_params+0x28),Roll=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_Vector4ToRotator");

BL4.Conv_Vector4ToVector = function(OwnerAddress, InVector4)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_Vector4ToVector: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVector4 at +0x0
 writeQword(_params + 0x0, InVector4)
 UE.CallProcessEventEx(OwnerAddress, "Conv_Vector4ToVector", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_Vector4ToVector");

BL4.Conv_VectorToLinearColor = function(OwnerAddress, InVec)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_VectorToLinearColor: Failed To Allocate The Params");return;end;
 InVec = InVec or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVec at +0x0
 writeDouble(_params + 0x0, (InVec and InVec.X) or 0)
 writeDouble(_params + 0x8, (InVec and InVec.Y) or 0)
 writeDouble(_params + 0x10, (InVec and InVec.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Conv_VectorToLinearColor", _params);
 local RET={R=readFloat(_params+0x18),G=readFloat(_params+0x1C),B=readFloat(_params+0x20),A=readFloat(_params+0x24)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_VectorToLinearColor");

BL4.Conv_VectorToQuaternion = function(OwnerAddress, InVec)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_VectorToQuaternion: Failed To Allocate The Params");return;end;
 InVec = InVec or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVec at +0x0
 writeDouble(_params + 0x0, (InVec and InVec.X) or 0)
 writeDouble(_params + 0x8, (InVec and InVec.Y) or 0)
 writeDouble(_params + 0x10, (InVec and InVec.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Conv_VectorToQuaternion", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_VectorToQuaternion");

BL4.Conv_VectorToRotator = function(OwnerAddress, InVec)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_VectorToRotator: Failed To Allocate The Params");return;end;
 InVec = InVec or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVec at +0x0
 writeDouble(_params + 0x0, (InVec and InVec.X) or 0)
 writeDouble(_params + 0x8, (InVec and InVec.Y) or 0)
 writeDouble(_params + 0x10, (InVec and InVec.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Conv_VectorToRotator", _params);
 local RET={Pitch=readFloat(_params+0x18),Yaw=readFloat(_params+0x20),Roll=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_VectorToRotator");

BL4.Conv_VectorToTransform = function(OwnerAddress, InLocation)
 local _paramsSize = 0x80
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_VectorToTransform: Failed To Allocate The Params");return;end;
 InLocation = InLocation or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InLocation at +0x0
 writeDouble(_params + 0x0, (InLocation and InLocation.X) or 0)
 writeDouble(_params + 0x8, (InLocation and InLocation.Y) or 0)
 writeDouble(_params + 0x10, (InLocation and InLocation.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Conv_VectorToTransform", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_VectorToTransform");

BL4.Conv_VectorToVector2D = function(OwnerAddress, InVector)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_VectorToVector2D: Failed To Allocate The Params");return;end;
 InVector = InVector or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVector at +0x0
 writeDouble(_params + 0x0, (InVector and InVector.X) or 0)
 writeDouble(_params + 0x8, (InVector and InVector.Y) or 0)
 writeDouble(_params + 0x10, (InVector and InVector.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Conv_VectorToVector2D", _params);
 local RET={X=readFloat(_params+0x18),Y=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_VectorToVector2D");

BL4.Convert1DTo2D = function(OwnerAddress, Index1D, XSize)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Convert1DTo2D: Failed To Allocate The Params");return;end;
 Index1D = Index1D or 0
 XSize = XSize or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Index1D at +0x0, XSize at +0x4
 writeInteger(_params + 0x0, Index1D)
 writeInteger(_params + 0x4, XSize)
 UE.CallProcessEventEx(OwnerAddress, "Convert1DTo2D", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Convert1DTo2D");

BL4.Convert1DTo3D = function(OwnerAddress, Index1D, XSize, YSize)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Convert1DTo3D: Failed To Allocate The Params");return;end;
 Index1D = Index1D or 0
 XSize = XSize or 0
 YSize = YSize or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Index1D at +0x0, XSize at +0x4, YSize at +0x8
 writeInteger(_params + 0x0, Index1D)
 writeInteger(_params + 0x4, XSize)
 writeInteger(_params + 0x8, YSize)
 UE.CallProcessEventEx(OwnerAddress, "Convert1DTo3D", _params);
 local RET=readQword(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Convert1DTo3D");

BL4.Convert2DTo1D = function(OwnerAddress, Index2D, XSize)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Convert2DTo1D: Failed To Allocate The Params");return;end;
 XSize = XSize or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Index2D at +0x0, XSize at +0x8
 writeQword(_params + 0x0, Index2D)
 writeInteger(_params + 0x8, XSize)
 UE.CallProcessEventEx(OwnerAddress, "Convert2DTo1D", _params);
 local RET=readInteger(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Convert2DTo1D");

BL4.Convert3DTo1D = function(OwnerAddress, Index3D, XSize, YSize)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Convert3DTo1D: Failed To Allocate The Params");return;end;
 XSize = XSize or 0
 YSize = YSize or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Index3D at +0x0, XSize at +0xC, YSize at +0x10
 writeQword(_params + 0x0, Index3D)
 writeInteger(_params + 0xC, XSize)
 writeInteger(_params + 0x10, YSize)
 UE.CallProcessEventEx(OwnerAddress, "Convert3DTo1D", _params);
 local RET=readInteger(_params + 0x14);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Convert3DTo1D");

BL4.cos = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.cos: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "cos", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.cos");

BL4.CreateVectorFromYawPitch = function(OwnerAddress, yaw, pitch, Length)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CreateVectorFromYawPitch: Failed To Allocate The Params");return;end;
 yaw = yaw or 0
 pitch = pitch or 0
 Length = Length or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: yaw at +0x0, pitch at +0x4, Length at +0x8
 writeFloat(_params + 0x0, yaw)
 writeFloat(_params + 0x4, pitch)
 writeFloat(_params + 0x8, Length)
 UE.CallProcessEventEx(OwnerAddress, "CreateVectorFromYawPitch", _params);
 local RET={X=readFloat(_params+0x10),Y=readFloat(_params+0x18),Z=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.CreateVectorFromYawPitch");

BL4.Cross_VectorVector = function(OwnerAddress, A, B)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Cross_VectorVector: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 B = B or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeDouble(_params + 0x18, (B and B.X) or 0)
 writeDouble(_params + 0x20, (B and B.Y) or 0)
 writeDouble(_params + 0x28, (B and B.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Cross_VectorVector", _params);
 local RET={X=readFloat(_params+0x30),Y=readFloat(_params+0x38),Z=readFloat(_params+0x40)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Cross_VectorVector");

BL4.CrossProduct2D = function(OwnerAddress, A, B)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CrossProduct2D: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 B = B or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (B and B.X) or 0)
 writeDouble(_params + 0x18, (B and B.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "CrossProduct2D", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CrossProduct2D");

BL4.DateTimeFromIsoString = function(OwnerAddress, IsoString, Result)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DateTimeFromIsoString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: IsoString at +0x0, Result at +0x10
 writeQword(_params + 0x0, IsoString)
 writeQword(_params + 0x10, Result)
 UE.CallProcessEventEx(OwnerAddress, "DateTimeFromIsoString", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DateTimeFromIsoString");

BL4.DateTimeFromString = function(OwnerAddress, DateTimeString, Result)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DateTimeFromString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DateTimeString at +0x0, Result at +0x10
 writeQword(_params + 0x0, DateTimeString)
 writeQword(_params + 0x10, Result)
 UE.CallProcessEventEx(OwnerAddress, "DateTimeFromString", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DateTimeFromString");

BL4.DateTimeMaxValue = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DateTimeMaxValue: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "DateTimeMaxValue", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DateTimeMaxValue");

BL4.DateTimeMinValue = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DateTimeMinValue: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "DateTimeMinValue", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DateTimeMinValue");

BL4.DaysInMonth = function(OwnerAddress, Year, Month)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DaysInMonth: Failed To Allocate The Params");return;end;
 Year = Year or 0
 Month = Month or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Year at +0x0, Month at +0x4
 writeInteger(_params + 0x0, Year)
 writeInteger(_params + 0x4, Month)
 UE.CallProcessEventEx(OwnerAddress, "DaysInMonth", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DaysInMonth");

BL4.DaysInYear = function(OwnerAddress, Year)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DaysInYear: Failed To Allocate The Params");return;end;
 Year = Year or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Year at +0x0
 writeInteger(_params + 0x0, Year)
 UE.CallProcessEventEx(OwnerAddress, "DaysInYear", _params);
 local RET=readInteger(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DaysInYear");

BL4.DegAcos = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DegAcos: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "DegAcos", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DegAcos");

BL4.DegAsin = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DegAsin: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "DegAsin", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DegAsin");

BL4.DegAtan = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DegAtan: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "DegAtan", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DegAtan");

BL4.DegAtan2 = function(OwnerAddress, Y, X)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DegAtan2: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Y at +0x0, X at +0x8
 writeQword(_params + 0x0, Y)
 writeQword(_params + 0x8, X)
 UE.CallProcessEventEx(OwnerAddress, "DegAtan2", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DegAtan2");

BL4.DegCos = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DegCos: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "DegCos", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DegCos");

BL4.DegreesToRadians = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DegreesToRadians: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "DegreesToRadians", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DegreesToRadians");

BL4.DegSin = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DegSin: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "DegSin", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DegSin");

BL4.DegTan = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DegTan: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "DegTan", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DegTan");

BL4.Distance2D = function(OwnerAddress, v1, v2)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Distance2D: Failed To Allocate The Params");return;end;
 v1 = v1 or {X=0,Y=0}
 v2 = v2 or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: v1 at +0x0, v2 at +0x10
 writeDouble(_params + 0x0, (v1 and v1.X) or 0)
 writeDouble(_params + 0x8, (v1 and v1.Y) or 0)
 writeDouble(_params + 0x10, (v2 and v2.X) or 0)
 writeDouble(_params + 0x18, (v2 and v2.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Distance2D", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Distance2D");

BL4.DistanceSquared2D = function(OwnerAddress, v1, v2)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DistanceSquared2D: Failed To Allocate The Params");return;end;
 v1 = v1 or {X=0,Y=0}
 v2 = v2 or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: v1 at +0x0, v2 at +0x10
 writeDouble(_params + 0x0, (v1 and v1.X) or 0)
 writeDouble(_params + 0x8, (v1 and v1.Y) or 0)
 writeDouble(_params + 0x10, (v2 and v2.X) or 0)
 writeDouble(_params + 0x18, (v2 and v2.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "DistanceSquared2D", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DistanceSquared2D");

BL4.Divide_ByteByte = function(OwnerAddress, A, B)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Divide_ByteByte: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x1
 writeByte(_params + 0x0, A)
 writeByte(_params + 0x1, B)
 UE.CallProcessEventEx(OwnerAddress, "Divide_ByteByte", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Divide_ByteByte");

BL4.Divide_DoubleDouble = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Divide_DoubleDouble: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Divide_DoubleDouble", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Divide_DoubleDouble");

BL4.Divide_Int64Int64 = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Divide_Int64Int64: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Divide_Int64Int64", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Divide_Int64Int64");

BL4.Divide_IntInt = function(OwnerAddress, A, B)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Divide_IntInt: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 UE.CallProcessEventEx(OwnerAddress, "Divide_IntInt", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Divide_IntInt");

BL4.Divide_IntPointInt = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Divide_IntPointInt: Failed To Allocate The Params");return;end;
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeInteger(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Divide_IntPointInt", _params);
 local RET=readQword(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Divide_IntPointInt");

BL4.Divide_IntPointIntPoint = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Divide_IntPointIntPoint: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Divide_IntPointIntPoint", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Divide_IntPointIntPoint");

BL4.Divide_LinearColorLinearColor = function(OwnerAddress, A, B)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Divide_LinearColorLinearColor: Failed To Allocate The Params");return;end;
 A = A or {R=0,G=0,B=0,A=0}
 B = B or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10
 writeFloat(_params + 0x0, (A and A.R) or 0)
 writeFloat(_params + 0x4, (A and A.G) or 0)
 writeFloat(_params + 0x8, (A and A.B) or 0)
 writeFloat(_params + 0xC, (A and A.A) or 0)
 writeFloat(_params + 0x10, (B and B.R) or 0)
 writeFloat(_params + 0x14, (B and B.G) or 0)
 writeFloat(_params + 0x18, (B and B.B) or 0)
 writeFloat(_params + 0x1C, (B and B.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Divide_LinearColorLinearColor", _params);
 local RET={R=readFloat(_params+0x20),G=readFloat(_params+0x24),B=readFloat(_params+0x28),A=readFloat(_params+0x2C)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Divide_LinearColorLinearColor");

BL4.Divide_TimespanFloat = function(OwnerAddress, A, Scalar)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Divide_TimespanFloat: Failed To Allocate The Params");return;end;
 Scalar = Scalar or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, Scalar at +0x8
 writeQword(_params + 0x0, A)
 writeFloat(_params + 0x8, Scalar)
 UE.CallProcessEventEx(OwnerAddress, "Divide_TimespanFloat", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Divide_TimespanFloat");

BL4.Divide_Vector2DFloat = function(OwnerAddress, A, B)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Divide_Vector2DFloat: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeQword(_params + 0x10, B)
 UE.CallProcessEventEx(OwnerAddress, "Divide_Vector2DFloat", _params);
 local RET={X=readFloat(_params+0x18),Y=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Divide_Vector2DFloat");

BL4.Divide_Vector2DVector2D = function(OwnerAddress, A, B)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Divide_Vector2DVector2D: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 B = B or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (B and B.X) or 0)
 writeDouble(_params + 0x18, (B and B.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Divide_Vector2DVector2D", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Divide_Vector2DVector2D");

BL4.Divide_Vector4Vector4 = function(OwnerAddress, A, B)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Divide_Vector4Vector4: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x20
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x20, B)
 UE.CallProcessEventEx(OwnerAddress, "Divide_Vector4Vector4", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Divide_Vector4Vector4");

BL4.Divide_VectorFloat = function(OwnerAddress, A, B)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Divide_VectorFloat: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeQword(_params + 0x18, B)
 UE.CallProcessEventEx(OwnerAddress, "Divide_VectorFloat", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Divide_VectorFloat");

BL4.Divide_VectorInt = function(OwnerAddress, A, B)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Divide_VectorInt: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeInteger(_params + 0x18, B)
 UE.CallProcessEventEx(OwnerAddress, "Divide_VectorInt", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Divide_VectorInt");

BL4.Divide_VectorVector = function(OwnerAddress, A, B)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Divide_VectorVector: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 B = B or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeDouble(_params + 0x18, (B and B.X) or 0)
 writeDouble(_params + 0x20, (B and B.Y) or 0)
 writeDouble(_params + 0x28, (B and B.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Divide_VectorVector", _params);
 local RET={X=readFloat(_params+0x30),Y=readFloat(_params+0x38),Z=readFloat(_params+0x40)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Divide_VectorVector");

BL4.Dot_VectorVector = function(OwnerAddress, A, B)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Dot_VectorVector: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 B = B or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeDouble(_params + 0x18, (B and B.X) or 0)
 writeDouble(_params + 0x20, (B and B.Y) or 0)
 writeDouble(_params + 0x28, (B and B.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Dot_VectorVector", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Dot_VectorVector");

BL4.DotProduct2D = function(OwnerAddress, A, B)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DotProduct2D: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 B = B or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (B and B.X) or 0)
 writeDouble(_params + 0x18, (B and B.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "DotProduct2D", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DotProduct2D");

BL4.DynamicWeightedMovingAverage_Float = function(OwnerAddress, CurrentSample, PreviousSample, MaxDistance, MinWeight, MaxWeight)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DynamicWeightedMovingAverage_Float: Failed To Allocate The Params");return;end;
 CurrentSample = CurrentSample or 0
 PreviousSample = PreviousSample or 0
 MaxDistance = MaxDistance or 0
 MinWeight = MinWeight or 0
 MaxWeight = MaxWeight or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CurrentSample at +0x0, PreviousSample at +0x4, MaxDistance at +0x8, MinWeight at +0xC, MaxWeight at +0x10
 writeFloat(_params + 0x0, CurrentSample)
 writeFloat(_params + 0x4, PreviousSample)
 writeFloat(_params + 0x8, MaxDistance)
 writeFloat(_params + 0xC, MinWeight)
 writeFloat(_params + 0x10, MaxWeight)
 UE.CallProcessEventEx(OwnerAddress, "DynamicWeightedMovingAverage_Float", _params);
 local RET=readFloat(_params + 0x14);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DynamicWeightedMovingAverage_Float");

BL4.DynamicWeightedMovingAverage_FRotator = function(OwnerAddress, CurrentSample, PreviousSample, MaxDistance, MinWeight, MaxWeight)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DynamicWeightedMovingAverage_FRotator: Failed To Allocate The Params");return;end;
 CurrentSample = CurrentSample or {Pitch=0,Yaw=0,Roll=0}
 PreviousSample = PreviousSample or {Pitch=0,Yaw=0,Roll=0}
 MaxDistance = MaxDistance or 0
 MinWeight = MinWeight or 0
 MaxWeight = MaxWeight or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CurrentSample at +0x0, PreviousSample at +0x18, MaxDistance at +0x30, MinWeight at +0x34, MaxWeight at +0x38
 writeDouble(_params + 0x0, (CurrentSample and CurrentSample.Pitch) or 0)
 writeDouble(_params + 0x8, (CurrentSample and CurrentSample.Yaw) or 0)
 writeDouble(_params + 0x10, (CurrentSample and CurrentSample.Roll) or 0)
 writeDouble(_params + 0x18, (PreviousSample and PreviousSample.Pitch) or 0)
 writeDouble(_params + 0x20, (PreviousSample and PreviousSample.Yaw) or 0)
 writeDouble(_params + 0x28, (PreviousSample and PreviousSample.Roll) or 0)
 writeFloat(_params + 0x30, MaxDistance)
 writeFloat(_params + 0x34, MinWeight)
 writeFloat(_params + 0x38, MaxWeight)
 UE.CallProcessEventEx(OwnerAddress, "DynamicWeightedMovingAverage_FRotator", _params);
 local RET={Pitch=readFloat(_params+0x40),Yaw=readFloat(_params+0x48),Roll=readFloat(_params+0x50)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.DynamicWeightedMovingAverage_FRotator");

BL4.DynamicWeightedMovingAverage_FVector = function(OwnerAddress, CurrentSample, PreviousSample, MaxDistance, MinWeight, MaxWeight)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DynamicWeightedMovingAverage_FVector: Failed To Allocate The Params");return;end;
 CurrentSample = CurrentSample or {X=0,Y=0,Z=0}
 PreviousSample = PreviousSample or {X=0,Y=0,Z=0}
 MaxDistance = MaxDistance or 0
 MinWeight = MinWeight or 0
 MaxWeight = MaxWeight or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CurrentSample at +0x0, PreviousSample at +0x18, MaxDistance at +0x30, MinWeight at +0x34, MaxWeight at +0x38
 writeDouble(_params + 0x0, (CurrentSample and CurrentSample.X) or 0)
 writeDouble(_params + 0x8, (CurrentSample and CurrentSample.Y) or 0)
 writeDouble(_params + 0x10, (CurrentSample and CurrentSample.Z) or 0)
 writeDouble(_params + 0x18, (PreviousSample and PreviousSample.X) or 0)
 writeDouble(_params + 0x20, (PreviousSample and PreviousSample.Y) or 0)
 writeDouble(_params + 0x28, (PreviousSample and PreviousSample.Z) or 0)
 writeFloat(_params + 0x30, MaxDistance)
 writeFloat(_params + 0x34, MinWeight)
 writeFloat(_params + 0x38, MaxWeight)
 UE.CallProcessEventEx(OwnerAddress, "DynamicWeightedMovingAverage_FVector", _params);
 local RET={X=readFloat(_params+0x40),Y=readFloat(_params+0x48),Z=readFloat(_params+0x50)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.DynamicWeightedMovingAverage_FVector");

BL4.Ease = function(OwnerAddress, A, B, ALPHA, EasingFunc, BlendExp, steps)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Ease: Failed To Allocate The Params");return;end;
 EasingFunc = EasingFunc or 0
 steps = steps or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8, ALPHA at +0x10, EasingFunc at +0x18, BlendExp at +0x20, steps at +0x28
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 writeQword(_params + 0x10, ALPHA)
 writeByte(_params + 0x18, EasingFunc)
 writeQword(_params + 0x20, BlendExp)
 writeInteger(_params + 0x28, steps)
 UE.CallProcessEventEx(OwnerAddress, "Ease", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Ease");

BL4.Equal_IntPointIntPoint = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Equal_IntPointIntPoint: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Equal_IntPointIntPoint", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Equal_IntPointIntPoint");

BL4.EqualEqual_BoolBool = function(OwnerAddress, A, B)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_BoolBool: Failed To Allocate The Params");return;end;
 A = A or false
 B = B or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x1
 writeByte(_params + 0x0, A)
 writeByte(_params + 0x1, B)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_BoolBool", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_BoolBool");

BL4.EqualEqual_ByteByte = function(OwnerAddress, A, B)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_ByteByte: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x1
 writeByte(_params + 0x0, A)
 writeByte(_params + 0x1, B)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_ByteByte", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_ByteByte");

BL4.EqualEqual_ClassClass = function(A_Class, B_Class)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_ClassClass: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A_Class)
 writeQword(_params + 0x8, B_Class)
 UE.CallProcessEventEx(A_Class, "EqualEqual_ClassClass", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_ClassClass");

BL4.EqualEqual_DateTimeDateTime = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_DateTimeDateTime: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_DateTimeDateTime", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_DateTimeDateTime");

BL4.EqualEqual_DoubleDouble = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_DoubleDouble: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_DoubleDouble", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_DoubleDouble");

BL4.EqualEqual_Int64Int64 = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_Int64Int64: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_Int64Int64", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_Int64Int64");

BL4.EqualEqual_IntInt = function(OwnerAddress, A, B)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_IntInt: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_IntInt", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_IntInt");

BL4.EqualEqual_LinearColorLinearColor = function(OwnerAddress, A, B)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_LinearColorLinearColor: Failed To Allocate The Params");return;end;
 A = A or {R=0,G=0,B=0,A=0}
 B = B or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10
 writeFloat(_params + 0x0, (A and A.R) or 0)
 writeFloat(_params + 0x4, (A and A.G) or 0)
 writeFloat(_params + 0x8, (A and A.B) or 0)
 writeFloat(_params + 0xC, (A and A.A) or 0)
 writeFloat(_params + 0x10, (B and B.R) or 0)
 writeFloat(_params + 0x14, (B and B.G) or 0)
 writeFloat(_params + 0x18, (B and B.B) or 0)
 writeFloat(_params + 0x1C, (B and B.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_LinearColorLinearColor", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_LinearColorLinearColor");

BL4.EqualEqual_MatrixMatrix = function(OwnerAddress, A, B, Tolerance)
 local _paramsSize = 0x108
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_MatrixMatrix: Failed To Allocate The Params");return;end;
 Tolerance = Tolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x80, Tolerance at +0x100
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x80, B)
 writeFloat(_params + 0x100, Tolerance)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_MatrixMatrix", _params);
 local RET=readByte(_params + 0x104);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_MatrixMatrix");

BL4.EqualEqual_NameName = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_NameName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_NameName", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_NameName");

BL4.EqualEqual_ObjectObject = function(A_Object, B_Object)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_ObjectObject: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A_Object)
 writeQword(_params + 0x8, B_Object)
 UE.CallProcessEventEx(A_Object, "EqualEqual_ObjectObject", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_ObjectObject");

BL4.EqualEqual_QuatQuat = function(OwnerAddress, A, B, Tolerance)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_QuatQuat: Failed To Allocate The Params");return;end;
 Tolerance = Tolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x20, Tolerance at +0x40
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x20, B)
 writeFloat(_params + 0x40, Tolerance)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_QuatQuat", _params);
 local RET=readByte(_params + 0x44);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_QuatQuat");

BL4.EqualEqual_RotatorRotator = function(OwnerAddress, A, B, ErrorTolerance)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_RotatorRotator: Failed To Allocate The Params");return;end;
 A = A or {Pitch=0,Yaw=0,Roll=0}
 B = B or {Pitch=0,Yaw=0,Roll=0}
 ErrorTolerance = ErrorTolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18, ErrorTolerance at +0x30
 writeDouble(_params + 0x0, (A and A.Pitch) or 0)
 writeDouble(_params + 0x8, (A and A.Yaw) or 0)
 writeDouble(_params + 0x10, (A and A.Roll) or 0)
 writeDouble(_params + 0x18, (B and B.Pitch) or 0)
 writeDouble(_params + 0x20, (B and B.Yaw) or 0)
 writeDouble(_params + 0x28, (B and B.Roll) or 0)
 writeFloat(_params + 0x30, ErrorTolerance)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_RotatorRotator", _params);
 local RET=readByte(_params + 0x34);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_RotatorRotator");

BL4.EqualEqual_TimespanTimespan = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_TimespanTimespan: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_TimespanTimespan", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_TimespanTimespan");

BL4.EqualEqual_TransformTransform = function(OwnerAddress, A, B)
 local _paramsSize = 0xC8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_TransformTransform: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x60
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x60, B)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_TransformTransform", _params);
 local RET=readByte(_params + 0xC0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_TransformTransform");

BL4.EqualEqual_Vector2DVector2D = function(OwnerAddress, A, B, ErrorTolerance)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_Vector2DVector2D: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 B = B or {X=0,Y=0}
 ErrorTolerance = ErrorTolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10, ErrorTolerance at +0x20
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (B and B.X) or 0)
 writeDouble(_params + 0x18, (B and B.Y) or 0)
 writeFloat(_params + 0x20, ErrorTolerance)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_Vector2DVector2D", _params);
 local RET=readByte(_params + 0x24);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_Vector2DVector2D");

BL4.EqualEqual_Vector4Vector4 = function(OwnerAddress, A, B, ErrorTolerance)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_Vector4Vector4: Failed To Allocate The Params");return;end;
 ErrorTolerance = ErrorTolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x20, ErrorTolerance at +0x40
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x20, B)
 writeFloat(_params + 0x40, ErrorTolerance)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_Vector4Vector4", _params);
 local RET=readByte(_params + 0x44);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_Vector4Vector4");

BL4.EqualEqual_VectorVector = function(OwnerAddress, A, B, ErrorTolerance)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_VectorVector: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 B = B or {X=0,Y=0,Z=0}
 ErrorTolerance = ErrorTolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18, ErrorTolerance at +0x30
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeDouble(_params + 0x18, (B and B.X) or 0)
 writeDouble(_params + 0x20, (B and B.Y) or 0)
 writeDouble(_params + 0x28, (B and B.Z) or 0)
 writeFloat(_params + 0x30, ErrorTolerance)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_VectorVector", _params);
 local RET=readByte(_params + 0x34);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_VectorVector");

BL4.EqualExactly_Vector2DVector2D = function(OwnerAddress, A, B)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualExactly_Vector2DVector2D: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 B = B or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (B and B.X) or 0)
 writeDouble(_params + 0x18, (B and B.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "EqualExactly_Vector2DVector2D", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualExactly_Vector2DVector2D");

BL4.EqualExactly_Vector4Vector4 = function(OwnerAddress, A, B)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualExactly_Vector4Vector4: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x20
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x20, B)
 UE.CallProcessEventEx(OwnerAddress, "EqualExactly_Vector4Vector4", _params);
 local RET=readByte(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualExactly_Vector4Vector4");

BL4.EqualExactly_VectorVector = function(OwnerAddress, A, B)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualExactly_VectorVector: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 B = B or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeDouble(_params + 0x18, (B and B.X) or 0)
 writeDouble(_params + 0x20, (B and B.Y) or 0)
 writeDouble(_params + 0x28, (B and B.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "EqualExactly_VectorVector", _params);
 local RET=readByte(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualExactly_VectorVector");

BL4.exp = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.exp: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "exp", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.exp");

BL4.FCeil = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FCeil: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "FCeil", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FCeil");

BL4.FCeil64 = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FCeil64: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "FCeil64", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FCeil64");

BL4.FClamp = function(OwnerAddress, Value, min, MAX)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FClamp: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0, min at +0x8, MAX at +0x10
 writeQword(_params + 0x0, Value)
 writeQword(_params + 0x8, min)
 writeQword(_params + 0x10, MAX)
 UE.CallProcessEventEx(OwnerAddress, "FClamp", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FClamp");

BL4.FFloor = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FFloor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "FFloor", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FFloor");

BL4.FFloor64 = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FFloor64: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "FFloor64", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FFloor64");

BL4.FindClosestPointOnLine = function(OwnerAddress, Point, LineOrigin, LineDirection)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindClosestPointOnLine: Failed To Allocate The Params");return;end;
 Point = Point or {X=0,Y=0,Z=0}
 LineOrigin = LineOrigin or {X=0,Y=0,Z=0}
 LineDirection = LineDirection or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Point at +0x0, LineOrigin at +0x18, LineDirection at +0x30
 writeDouble(_params + 0x0, (Point and Point.X) or 0)
 writeDouble(_params + 0x8, (Point and Point.Y) or 0)
 writeDouble(_params + 0x10, (Point and Point.Z) or 0)
 writeDouble(_params + 0x18, (LineOrigin and LineOrigin.X) or 0)
 writeDouble(_params + 0x20, (LineOrigin and LineOrigin.Y) or 0)
 writeDouble(_params + 0x28, (LineOrigin and LineOrigin.Z) or 0)
 writeDouble(_params + 0x30, (LineDirection and LineDirection.X) or 0)
 writeDouble(_params + 0x38, (LineDirection and LineDirection.Y) or 0)
 writeDouble(_params + 0x40, (LineDirection and LineDirection.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "FindClosestPointOnLine", _params);
 local RET={X=readFloat(_params+0x48),Y=readFloat(_params+0x50),Z=readFloat(_params+0x58)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindClosestPointOnLine");

BL4.FindClosestPointOnSegment = function(OwnerAddress, Point, SegmentStart, SegmentEnd)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindClosestPointOnSegment: Failed To Allocate The Params");return;end;
 Point = Point or {X=0,Y=0,Z=0}
 SegmentStart = SegmentStart or {X=0,Y=0,Z=0}
 SegmentEnd = SegmentEnd or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Point at +0x0, SegmentStart at +0x18, SegmentEnd at +0x30
 writeDouble(_params + 0x0, (Point and Point.X) or 0)
 writeDouble(_params + 0x8, (Point and Point.Y) or 0)
 writeDouble(_params + 0x10, (Point and Point.Z) or 0)
 writeDouble(_params + 0x18, (SegmentStart and SegmentStart.X) or 0)
 writeDouble(_params + 0x20, (SegmentStart and SegmentStart.Y) or 0)
 writeDouble(_params + 0x28, (SegmentStart and SegmentStart.Z) or 0)
 writeDouble(_params + 0x30, (SegmentEnd and SegmentEnd.X) or 0)
 writeDouble(_params + 0x38, (SegmentEnd and SegmentEnd.Y) or 0)
 writeDouble(_params + 0x40, (SegmentEnd and SegmentEnd.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "FindClosestPointOnSegment", _params);
 local RET={X=readFloat(_params+0x48),Y=readFloat(_params+0x50),Z=readFloat(_params+0x58)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindClosestPointOnSegment");

BL4.FindLookAtRotation = function(OwnerAddress, Start, target)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindLookAtRotation: Failed To Allocate The Params");return;end;
 Start = Start or {X=0,Y=0,Z=0}
 target = target or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Start at +0x0, target at +0x18
 writeDouble(_params + 0x0, (Start and Start.X) or 0)
 writeDouble(_params + 0x8, (Start and Start.Y) or 0)
 writeDouble(_params + 0x10, (Start and Start.Z) or 0)
 writeDouble(_params + 0x18, (target and target.X) or 0)
 writeDouble(_params + 0x20, (target and target.Y) or 0)
 writeDouble(_params + 0x28, (target and target.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "FindLookAtRotation", _params);
 local RET={Pitch=readFloat(_params+0x30),Yaw=readFloat(_params+0x38),Roll=readFloat(_params+0x40)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindLookAtRotation");

BL4.FindNearestPointsOnLineSegments = function(OwnerAddress, Segment1Start, Segment1End, Segment2Start, Segment2End, Segment1Point, Segment2Point)
 local _paramsSize = 0x90
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindNearestPointsOnLineSegments: Failed To Allocate The Params");return;end;
 Segment1Start = Segment1Start or {X=0,Y=0,Z=0}
 Segment1End = Segment1End or {X=0,Y=0,Z=0}
 Segment2Start = Segment2Start or {X=0,Y=0,Z=0}
 Segment2End = Segment2End or {X=0,Y=0,Z=0}
 Segment1Point = Segment1Point or {X=0,Y=0,Z=0}
 Segment2Point = Segment2Point or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Segment1Start at +0x0, Segment1End at +0x18, Segment2Start at +0x30, Segment2End at +0x48, Segment1Point at +0x60, Segment2Point at +0x78
 writeDouble(_params + 0x0, (Segment1Start and Segment1Start.X) or 0)
 writeDouble(_params + 0x8, (Segment1Start and Segment1Start.Y) or 0)
 writeDouble(_params + 0x10, (Segment1Start and Segment1Start.Z) or 0)
 writeDouble(_params + 0x18, (Segment1End and Segment1End.X) or 0)
 writeDouble(_params + 0x20, (Segment1End and Segment1End.Y) or 0)
 writeDouble(_params + 0x28, (Segment1End and Segment1End.Z) or 0)
 writeDouble(_params + 0x30, (Segment2Start and Segment2Start.X) or 0)
 writeDouble(_params + 0x38, (Segment2Start and Segment2Start.Y) or 0)
 writeDouble(_params + 0x40, (Segment2Start and Segment2Start.Z) or 0)
 writeDouble(_params + 0x48, (Segment2End and Segment2End.X) or 0)
 writeDouble(_params + 0x50, (Segment2End and Segment2End.Y) or 0)
 writeDouble(_params + 0x58, (Segment2End and Segment2End.Z) or 0)
 writeDouble(_params + 0x60, (Segment1Point and Segment1Point.X) or 0)
 writeDouble(_params + 0x68, (Segment1Point and Segment1Point.Y) or 0)
 writeDouble(_params + 0x70, (Segment1Point and Segment1Point.Z) or 0)
 writeDouble(_params + 0x78, (Segment2Point and Segment2Point.X) or 0)
 writeDouble(_params + 0x80, (Segment2Point and Segment2Point.Y) or 0)
 writeDouble(_params + 0x88, (Segment2Point and Segment2Point.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "FindNearestPointsOnLineSegments", _params);
 deAlloc(_params);
end
FNR("BL4.FindNearestPointsOnLineSegments");

BL4.FindRelativeLookAtRotation = function(OwnerAddress, StartTransform, TargetLocation)
 local _paramsSize = 0x90
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindRelativeLookAtRotation: Failed To Allocate The Params");return;end;
 TargetLocation = TargetLocation or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: StartTransform at +0x0, TargetLocation at +0x60
 writeQword(_params + 0x0, StartTransform)
 writeDouble(_params + 0x60, (TargetLocation and TargetLocation.X) or 0)
 writeDouble(_params + 0x68, (TargetLocation and TargetLocation.Y) or 0)
 writeDouble(_params + 0x70, (TargetLocation and TargetLocation.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "FindRelativeLookAtRotation", _params);
 local RET={Pitch=readFloat(_params+0x78),Yaw=readFloat(_params+0x80),Roll=readFloat(_params+0x88)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindRelativeLookAtRotation");

BL4.FInterpEaseInOut = function(OwnerAddress, A, B, ALPHA, Exponent)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FInterpEaseInOut: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8, ALPHA at +0x10, Exponent at +0x18
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 writeQword(_params + 0x10, ALPHA)
 writeQword(_params + 0x18, Exponent)
 UE.CallProcessEventEx(OwnerAddress, "FInterpEaseInOut", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FInterpEaseInOut");

BL4.FInterpTo = function(OwnerAddress, current, target, DeltaTime, InterpSpeed)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FInterpTo: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: current at +0x0, target at +0x8, DeltaTime at +0x10, InterpSpeed at +0x18
 writeQword(_params + 0x0, current)
 writeQword(_params + 0x8, target)
 writeQword(_params + 0x10, DeltaTime)
 writeQword(_params + 0x18, InterpSpeed)
 UE.CallProcessEventEx(OwnerAddress, "FInterpTo", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FInterpTo");

BL4.FInterpTo_Constant = function(OwnerAddress, current, target, DeltaTime, InterpSpeed)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FInterpTo_Constant: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: current at +0x0, target at +0x8, DeltaTime at +0x10, InterpSpeed at +0x18
 writeQword(_params + 0x0, current)
 writeQword(_params + 0x8, target)
 writeQword(_params + 0x10, DeltaTime)
 writeQword(_params + 0x18, InterpSpeed)
 UE.CallProcessEventEx(OwnerAddress, "FInterpTo_Constant", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FInterpTo_Constant");

BL4.FixedTurn = function(OwnerAddress, InCurrent, InDesired, InDeltaRate)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FixedTurn: Failed To Allocate The Params");return;end;
 InCurrent = InCurrent or 0
 InDesired = InDesired or 0
 InDeltaRate = InDeltaRate or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InCurrent at +0x0, InDesired at +0x4, InDeltaRate at +0x8
 writeFloat(_params + 0x0, InCurrent)
 writeFloat(_params + 0x4, InDesired)
 writeFloat(_params + 0x8, InDeltaRate)
 UE.CallProcessEventEx(OwnerAddress, "FixedTurn", _params);
 local RET=readFloat(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FixedTurn");

BL4.FloatSpringInterp = function(OwnerAddress, current, target, SpringState, Stiffness, CriticalDampingFactor, DeltaTime, Mass, TargetVelocityAmount, bClamp, MinValue, MaxValue, bInitializeFromTarget)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FloatSpringInterp: Failed To Allocate The Params");return;end;
 current = current or 0
 target = target or 0
 Stiffness = Stiffness or 0
 CriticalDampingFactor = CriticalDampingFactor or 0
 DeltaTime = DeltaTime or 0
 Mass = Mass or 0
 TargetVelocityAmount = TargetVelocityAmount or 0
 bClamp = bClamp or false
 MinValue = MinValue or 0
 MaxValue = MaxValue or 0
 bInitializeFromTarget = bInitializeFromTarget or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: current at +0x0, target at +0x4, SpringState at +0x8, Stiffness at +0x14, CriticalDampingFactor at +0x18, DeltaTime at +0x1C, Mass at +0x20, TargetVelocityAmount at +0x24, bClamp at +0x28, MinValue at +0x2C, MaxValue at +0x30, bInitializeFromTarget at +0x34
 writeFloat(_params + 0x0, current)
 writeFloat(_params + 0x4, target)
 writeQword(_params + 0x8, SpringState)
 writeFloat(_params + 0x14, Stiffness)
 writeFloat(_params + 0x18, CriticalDampingFactor)
 writeFloat(_params + 0x1C, DeltaTime)
 writeFloat(_params + 0x20, Mass)
 writeFloat(_params + 0x24, TargetVelocityAmount)
 writeByte(_params + 0x28, bClamp)
 writeFloat(_params + 0x2C, MinValue)
 writeFloat(_params + 0x30, MaxValue)
 writeByte(_params + 0x34, bInitializeFromTarget)
 UE.CallProcessEventEx(OwnerAddress, "FloatSpringInterp", _params);
 local RET=readFloat(_params + 0x38);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FloatSpringInterp");

BL4.FMax = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FMax: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "FMax", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FMax");

BL4.FMin = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FMin: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "FMin", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FMin");

BL4.FMod = function(OwnerAddress, Dividend, Divisor, Remainder)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FMod: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Dividend at +0x0, Divisor at +0x8, Remainder at +0x10
 writeQword(_params + 0x0, Dividend)
 writeQword(_params + 0x8, Divisor)
 writeQword(_params + 0x10, Remainder)
 UE.CallProcessEventEx(OwnerAddress, "FMod", _params);
 local RET=readInteger(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FMod");

BL4.FMod64 = function(OwnerAddress, Dividend, Divisor, Remainder)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FMod64: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Dividend at +0x0, Divisor at +0x8, Remainder at +0x10
 writeQword(_params + 0x0, Dividend)
 writeQword(_params + 0x8, Divisor)
 writeQword(_params + 0x10, Remainder)
 UE.CallProcessEventEx(OwnerAddress, "FMod64", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FMod64");

BL4.Fraction = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Fraction: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "Fraction", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Fraction");

BL4.FromDays = function(OwnerAddress, Days)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FromDays: Failed To Allocate The Params");return;end;
 Days = Days or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Days at +0x0
 writeFloat(_params + 0x0, Days)
 UE.CallProcessEventEx(OwnerAddress, "FromDays", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FromDays");

BL4.FromHours = function(OwnerAddress, Hours)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FromHours: Failed To Allocate The Params");return;end;
 Hours = Hours or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Hours at +0x0
 writeFloat(_params + 0x0, Hours)
 UE.CallProcessEventEx(OwnerAddress, "FromHours", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FromHours");

BL4.FromMilliseconds = function(OwnerAddress, Milliseconds)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FromMilliseconds: Failed To Allocate The Params");return;end;
 Milliseconds = Milliseconds or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Milliseconds at +0x0
 writeFloat(_params + 0x0, Milliseconds)
 UE.CallProcessEventEx(OwnerAddress, "FromMilliseconds", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FromMilliseconds");

BL4.FromMinutes = function(OwnerAddress, Minutes)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FromMinutes: Failed To Allocate The Params");return;end;
 Minutes = Minutes or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Minutes at +0x0
 writeFloat(_params + 0x0, Minutes)
 UE.CallProcessEventEx(OwnerAddress, "FromMinutes", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FromMinutes");

BL4.FromSeconds = function(OwnerAddress, Seconds)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FromSeconds: Failed To Allocate The Params");return;end;
 Seconds = Seconds or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Seconds at +0x0
 writeFloat(_params + 0x0, Seconds)
 UE.CallProcessEventEx(OwnerAddress, "FromSeconds", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FromSeconds");

BL4.FromUnixTimestamp = function(OwnerAddress, UnixTime)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FromUnixTimestamp: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: UnixTime at +0x0
 writeQword(_params + 0x0, UnixTime)
 UE.CallProcessEventEx(OwnerAddress, "FromUnixTimestamp", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FromUnixTimestamp");

BL4.FTrunc = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FTrunc: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "FTrunc", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FTrunc");

BL4.FTrunc64 = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FTrunc64: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "FTrunc64", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FTrunc64");

BL4.FTruncVector = function(OwnerAddress, InVector)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FTruncVector: Failed To Allocate The Params");return;end;
 InVector = InVector or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVector at +0x0
 writeDouble(_params + 0x0, (InVector and InVector.X) or 0)
 writeDouble(_params + 0x8, (InVector and InVector.Y) or 0)
 writeDouble(_params + 0x10, (InVector and InVector.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "FTruncVector", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FTruncVector");

BL4.FWrap = function(OwnerAddress, Value, min, MAX)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FWrap: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0, min at +0x8, MAX at +0x10
 writeQword(_params + 0x0, Value)
 writeQword(_params + 0x8, min)
 writeQword(_params + 0x10, MAX)
 UE.CallProcessEventEx(OwnerAddress, "FWrap", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FWrap");

BL4.GetAbs2D = function(OwnerAddress, A)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAbs2D: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetAbs2D", _params);
 local RET={X=readFloat(_params+0x10),Y=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAbs2D");

BL4.GetAbsMax2D = function(OwnerAddress, A)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAbsMax2D: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetAbsMax2D", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAbsMax2D");

BL4.GetAxes = function(OwnerAddress, A, X, Y, Z)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAxes: Failed To Allocate The Params");return;end;
 A = A or {Pitch=0,Yaw=0,Roll=0}
 X = X or {X=0,Y=0,Z=0}
 Y = Y or {X=0,Y=0,Z=0}
 Z = Z or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, X at +0x18, Y at +0x30, Z at +0x48
 writeDouble(_params + 0x0, (A and A.Pitch) or 0)
 writeDouble(_params + 0x8, (A and A.Yaw) or 0)
 writeDouble(_params + 0x10, (A and A.Roll) or 0)
 writeDouble(_params + 0x18, (X and X.X) or 0)
 writeDouble(_params + 0x20, (X and X.Y) or 0)
 writeDouble(_params + 0x28, (X and X.Z) or 0)
 writeDouble(_params + 0x30, (Y and Y.X) or 0)
 writeDouble(_params + 0x38, (Y and Y.Y) or 0)
 writeDouble(_params + 0x40, (Y and Y.Z) or 0)
 writeDouble(_params + 0x48, (Z and Z.X) or 0)
 writeDouble(_params + 0x50, (Z and Z.Y) or 0)
 writeDouble(_params + 0x58, (Z and Z.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetAxes", _params);
 deAlloc(_params);
end
FNR("BL4.GetAxes");

BL4.GetAzimuthAndElevation = function(OwnerAddress, InDirection, ReferenceFrame, Azimuth, Elevation)
 local _paramsSize = 0x88
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAzimuthAndElevation: Failed To Allocate The Params");return;end;
 InDirection = InDirection or {X=0,Y=0,Z=0}
 Azimuth = Azimuth or 0
 Elevation = Elevation or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InDirection at +0x0, ReferenceFrame at +0x20, Azimuth at +0x80, Elevation at +0x84
 writeDouble(_params + 0x0, (InDirection and InDirection.X) or 0)
 writeDouble(_params + 0x8, (InDirection and InDirection.Y) or 0)
 writeDouble(_params + 0x10, (InDirection and InDirection.Z) or 0)
 writeQword(_params + 0x20, ReferenceFrame)
 writeFloat(_params + 0x80, Azimuth)
 writeFloat(_params + 0x84, Elevation)
 UE.CallProcessEventEx(OwnerAddress, "GetAzimuthAndElevation", _params);
 deAlloc(_params);
end
FNR("BL4.GetAzimuthAndElevation");

BL4.GetBoxCenter = function(OwnerAddress, InBox)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBoxCenter: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InBox at +0x0
 writeQword(_params + 0x0, InBox)
 UE.CallProcessEventEx(OwnerAddress, "GetBoxCenter", _params);
 local RET={X=readFloat(_params+0x38),Y=readFloat(_params+0x40),Z=readFloat(_params+0x48)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBoxCenter");

BL4.GetBoxSize = function(OwnerAddress, InBox)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBoxSize: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InBox at +0x0
 writeQword(_params + 0x0, InBox)
 UE.CallProcessEventEx(OwnerAddress, "GetBoxSize", _params);
 local RET={X=readFloat(_params+0x38),Y=readFloat(_params+0x40),Z=readFloat(_params+0x48)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBoxSize");

BL4.GetBoxVolume = function(OwnerAddress, InBox)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBoxVolume: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InBox at +0x0
 writeQword(_params + 0x0, InBox)
 UE.CallProcessEventEx(OwnerAddress, "GetBoxVolume", _params);
 local RET=readQword(_params + 0x38);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBoxVolume");

BL4.GetDate = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDate: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "GetDate", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDate");

BL4.GetDay = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDay: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "GetDay", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDay");

BL4.GetDayOfYear = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDayOfYear: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "GetDayOfYear", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDayOfYear");

BL4.GetDays = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDays: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "GetDays", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDays");

BL4.GetDirectionUnitVector = function(OwnerAddress, From, To)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDirectionUnitVector: Failed To Allocate The Params");return;end;
 From = From or {X=0,Y=0,Z=0}
 To = To or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: From at +0x0, To at +0x18
 writeDouble(_params + 0x0, (From and From.X) or 0)
 writeDouble(_params + 0x8, (From and From.Y) or 0)
 writeDouble(_params + 0x10, (From and From.Z) or 0)
 writeDouble(_params + 0x18, (To and To.X) or 0)
 writeDouble(_params + 0x20, (To and To.Y) or 0)
 writeDouble(_params + 0x28, (To and To.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetDirectionUnitVector", _params);
 local RET={X=readFloat(_params+0x30),Y=readFloat(_params+0x38),Z=readFloat(_params+0x40)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDirectionUnitVector");

BL4.GetDuration = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDuration: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "GetDuration", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDuration");

BL4.GetForwardVector = function(OwnerAddress, InRot)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetForwardVector: Failed To Allocate The Params");return;end;
 InRot = InRot or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InRot at +0x0
 writeDouble(_params + 0x0, (InRot and InRot.Pitch) or 0)
 writeDouble(_params + 0x8, (InRot and InRot.Yaw) or 0)
 writeDouble(_params + 0x10, (InRot and InRot.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetForwardVector", _params);
 local RET={X=readFloat(_params+0x18),Y=readFloat(_params+0x20),Z=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetForwardVector");

BL4.GetHour = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHour: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "GetHour", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHour");

BL4.GetHour12 = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHour12: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "GetHour12", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHour12");

BL4.GetHours = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHours: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "GetHours", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHours");

BL4.GetMax2D = function(OwnerAddress, A)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMax2D: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetMax2D", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMax2D");

BL4.GetMaxElement = function(OwnerAddress, A)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMaxElement: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetMaxElement", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMaxElement");

BL4.GetMillisecond = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMillisecond: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "GetMillisecond", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMillisecond");

BL4.GetMilliseconds = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMilliseconds: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "GetMilliseconds", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMilliseconds");

BL4.GetMin2D = function(OwnerAddress, A)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMin2D: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetMin2D", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMin2D");

BL4.GetMinElement = function(OwnerAddress, A)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMinElement: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetMinElement", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMinElement");

BL4.GetMinute = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMinute: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "GetMinute", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMinute");

BL4.GetMinutes = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMinutes: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "GetMinutes", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMinutes");

BL4.GetMonth = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMonth: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "GetMonth", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMonth");

BL4.GetPI = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPI: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetPI", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPI");

BL4.GetPointDistanceToLine = function(OwnerAddress, Point, LineOrigin, LineDirection)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPointDistanceToLine: Failed To Allocate The Params");return;end;
 Point = Point or {X=0,Y=0,Z=0}
 LineOrigin = LineOrigin or {X=0,Y=0,Z=0}
 LineDirection = LineDirection or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Point at +0x0, LineOrigin at +0x18, LineDirection at +0x30
 writeDouble(_params + 0x0, (Point and Point.X) or 0)
 writeDouble(_params + 0x8, (Point and Point.Y) or 0)
 writeDouble(_params + 0x10, (Point and Point.Z) or 0)
 writeDouble(_params + 0x18, (LineOrigin and LineOrigin.X) or 0)
 writeDouble(_params + 0x20, (LineOrigin and LineOrigin.Y) or 0)
 writeDouble(_params + 0x28, (LineOrigin and LineOrigin.Z) or 0)
 writeDouble(_params + 0x30, (LineDirection and LineDirection.X) or 0)
 writeDouble(_params + 0x38, (LineDirection and LineDirection.Y) or 0)
 writeDouble(_params + 0x40, (LineDirection and LineDirection.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetPointDistanceToLine", _params);
 local RET=readFloat(_params + 0x48);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPointDistanceToLine");

BL4.GetPointDistanceToSegment = function(OwnerAddress, Point, SegmentStart, SegmentEnd)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPointDistanceToSegment: Failed To Allocate The Params");return;end;
 Point = Point or {X=0,Y=0,Z=0}
 SegmentStart = SegmentStart or {X=0,Y=0,Z=0}
 SegmentEnd = SegmentEnd or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Point at +0x0, SegmentStart at +0x18, SegmentEnd at +0x30
 writeDouble(_params + 0x0, (Point and Point.X) or 0)
 writeDouble(_params + 0x8, (Point and Point.Y) or 0)
 writeDouble(_params + 0x10, (Point and Point.Z) or 0)
 writeDouble(_params + 0x18, (SegmentStart and SegmentStart.X) or 0)
 writeDouble(_params + 0x20, (SegmentStart and SegmentStart.Y) or 0)
 writeDouble(_params + 0x28, (SegmentStart and SegmentStart.Z) or 0)
 writeDouble(_params + 0x30, (SegmentEnd and SegmentEnd.X) or 0)
 writeDouble(_params + 0x38, (SegmentEnd and SegmentEnd.Y) or 0)
 writeDouble(_params + 0x40, (SegmentEnd and SegmentEnd.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetPointDistanceToSegment", _params);
 local RET=readFloat(_params + 0x48);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPointDistanceToSegment");

BL4.GetReflectionVector = function(OwnerAddress, Direction, SurfaceNormal)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetReflectionVector: Failed To Allocate The Params");return;end;
 Direction = Direction or {X=0,Y=0,Z=0}
 SurfaceNormal = SurfaceNormal or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Direction at +0x0, SurfaceNormal at +0x18
 writeDouble(_params + 0x0, (Direction and Direction.X) or 0)
 writeDouble(_params + 0x8, (Direction and Direction.Y) or 0)
 writeDouble(_params + 0x10, (Direction and Direction.Z) or 0)
 writeDouble(_params + 0x18, (SurfaceNormal and SurfaceNormal.X) or 0)
 writeDouble(_params + 0x20, (SurfaceNormal and SurfaceNormal.Y) or 0)
 writeDouble(_params + 0x28, (SurfaceNormal and SurfaceNormal.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetReflectionVector", _params);
 local RET={X=readFloat(_params+0x30),Y=readFloat(_params+0x38),Z=readFloat(_params+0x40)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetReflectionVector");

BL4.GetRightVector = function(OwnerAddress, InRot)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRightVector: Failed To Allocate The Params");return;end;
 InRot = InRot or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InRot at +0x0
 writeDouble(_params + 0x0, (InRot and InRot.Pitch) or 0)
 writeDouble(_params + 0x8, (InRot and InRot.Yaw) or 0)
 writeDouble(_params + 0x10, (InRot and InRot.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetRightVector", _params);
 local RET={X=readFloat(_params+0x18),Y=readFloat(_params+0x20),Z=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRightVector");

BL4.GetRotated2D = function(OwnerAddress, A, AngleDeg)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRotated2D: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 AngleDeg = AngleDeg or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, AngleDeg at +0x10
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeFloat(_params + 0x10, AngleDeg)
 UE.CallProcessEventEx(OwnerAddress, "GetRotated2D", _params);
 local RET={X=readFloat(_params+0x18),Y=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRotated2D");

BL4.GetRuntimeFloatCurveValue = function(OwnerAddress, curve, InTime, InDefaultValue)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRuntimeFloatCurveValue: Failed To Allocate The Params");return;end;
 InTime = InTime or 0
 InDefaultValue = InDefaultValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: curve at +0x0, InTime at +0x88, InDefaultValue at +0x8C
 writeQword(_params + 0x0, curve)
 writeFloat(_params + 0x88, InTime)
 writeFloat(_params + 0x8C, InDefaultValue)
 UE.CallProcessEventEx(OwnerAddress, "GetRuntimeFloatCurveValue", _params);
 local RET=readFloat(_params + 0x90);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRuntimeFloatCurveValue");

BL4.GetSecond = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSecond: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "GetSecond", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSecond");

BL4.GetSeconds = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSeconds: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "GetSeconds", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSeconds");

BL4.GetSlopeDegreeAngles = function(OwnerAddress, MyRightYAxis, FloorNormal, UpVector, OutSlopePitchDegreeAngle, OutSlopeRollDegreeAngle)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSlopeDegreeAngles: Failed To Allocate The Params");return;end;
 MyRightYAxis = MyRightYAxis or {X=0,Y=0,Z=0}
 FloorNormal = FloorNormal or {X=0,Y=0,Z=0}
 UpVector = UpVector or {X=0,Y=0,Z=0}
 OutSlopePitchDegreeAngle = OutSlopePitchDegreeAngle or 0
 OutSlopeRollDegreeAngle = OutSlopeRollDegreeAngle or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MyRightYAxis at +0x0, FloorNormal at +0x18, UpVector at +0x30, OutSlopePitchDegreeAngle at +0x48, OutSlopeRollDegreeAngle at +0x4C
 writeDouble(_params + 0x0, (MyRightYAxis and MyRightYAxis.X) or 0)
 writeDouble(_params + 0x8, (MyRightYAxis and MyRightYAxis.Y) or 0)
 writeDouble(_params + 0x10, (MyRightYAxis and MyRightYAxis.Z) or 0)
 writeDouble(_params + 0x18, (FloorNormal and FloorNormal.X) or 0)
 writeDouble(_params + 0x20, (FloorNormal and FloorNormal.Y) or 0)
 writeDouble(_params + 0x28, (FloorNormal and FloorNormal.Z) or 0)
 writeDouble(_params + 0x30, (UpVector and UpVector.X) or 0)
 writeDouble(_params + 0x38, (UpVector and UpVector.Y) or 0)
 writeDouble(_params + 0x40, (UpVector and UpVector.Z) or 0)
 writeFloat(_params + 0x48, OutSlopePitchDegreeAngle)
 writeFloat(_params + 0x4C, OutSlopeRollDegreeAngle)
 UE.CallProcessEventEx(OwnerAddress, "GetSlopeDegreeAngles", _params);
 deAlloc(_params);
end
FNR("BL4.GetSlopeDegreeAngles");

BL4.GetTAU = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTAU: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetTAU", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTAU");

BL4.GetTimeOfDay = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTimeOfDay: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "GetTimeOfDay", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTimeOfDay");

BL4.GetTotalDays = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTotalDays: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "GetTotalDays", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTotalDays");

BL4.GetTotalHours = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTotalHours: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "GetTotalHours", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTotalHours");

BL4.GetTotalMilliseconds = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTotalMilliseconds: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "GetTotalMilliseconds", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTotalMilliseconds");

BL4.GetTotalMinutes = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTotalMinutes: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "GetTotalMinutes", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTotalMinutes");

BL4.GetTotalSeconds = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTotalSeconds: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "GetTotalSeconds", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTotalSeconds");

BL4.GetUpVector = function(OwnerAddress, InRot)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetUpVector: Failed To Allocate The Params");return;end;
 InRot = InRot or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InRot at +0x0
 writeDouble(_params + 0x0, (InRot and InRot.Pitch) or 0)
 writeDouble(_params + 0x8, (InRot and InRot.Yaw) or 0)
 writeDouble(_params + 0x10, (InRot and InRot.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetUpVector", _params);
 local RET={X=readFloat(_params+0x18),Y=readFloat(_params+0x20),Z=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetUpVector");

BL4.GetVectorArrayAverage = function(OwnerAddress, Vectors)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVectorArrayAverage: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Vectors at +0x0
 writeQword(_params + 0x0, Vectors)
 UE.CallProcessEventEx(OwnerAddress, "GetVectorArrayAverage", _params);
 local RET={X=readFloat(_params+0x10),Y=readFloat(_params+0x18),Z=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVectorArrayAverage");

BL4.GetYawPitchFromVector = function(OwnerAddress, InVec, yaw, pitch)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetYawPitchFromVector: Failed To Allocate The Params");return;end;
 InVec = InVec or {X=0,Y=0,Z=0}
 yaw = yaw or 0
 pitch = pitch or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVec at +0x0, yaw at +0x18, pitch at +0x1C
 writeDouble(_params + 0x0, (InVec and InVec.X) or 0)
 writeDouble(_params + 0x8, (InVec and InVec.Y) or 0)
 writeDouble(_params + 0x10, (InVec and InVec.Z) or 0)
 writeFloat(_params + 0x18, yaw)
 writeFloat(_params + 0x1C, pitch)
 UE.CallProcessEventEx(OwnerAddress, "GetYawPitchFromVector", _params);
 deAlloc(_params);
end
FNR("BL4.GetYawPitchFromVector");

BL4.GetYear = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetYear: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "GetYear", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetYear");

BL4.Greater_ByteByte = function(OwnerAddress, A, B)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Greater_ByteByte: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x1
 writeByte(_params + 0x0, A)
 writeByte(_params + 0x1, B)
 UE.CallProcessEventEx(OwnerAddress, "Greater_ByteByte", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Greater_ByteByte");

BL4.Greater_DateTimeDateTime = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Greater_DateTimeDateTime: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Greater_DateTimeDateTime", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Greater_DateTimeDateTime");

BL4.Greater_DoubleDouble = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Greater_DoubleDouble: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Greater_DoubleDouble", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Greater_DoubleDouble");

BL4.Greater_Int64Int64 = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Greater_Int64Int64: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Greater_Int64Int64", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Greater_Int64Int64");

BL4.Greater_IntInt = function(OwnerAddress, A, B)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Greater_IntInt: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 UE.CallProcessEventEx(OwnerAddress, "Greater_IntInt", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Greater_IntInt");

BL4.Greater_TimespanTimespan = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Greater_TimespanTimespan: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Greater_TimespanTimespan", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Greater_TimespanTimespan");

BL4.GreaterEqual_ByteByte = function(OwnerAddress, A, B)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GreaterEqual_ByteByte: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x1
 writeByte(_params + 0x0, A)
 writeByte(_params + 0x1, B)
 UE.CallProcessEventEx(OwnerAddress, "GreaterEqual_ByteByte", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GreaterEqual_ByteByte");

BL4.GreaterEqual_DateTimeDateTime = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GreaterEqual_DateTimeDateTime: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "GreaterEqual_DateTimeDateTime", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GreaterEqual_DateTimeDateTime");

BL4.GreaterEqual_DoubleDouble = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GreaterEqual_DoubleDouble: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "GreaterEqual_DoubleDouble", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GreaterEqual_DoubleDouble");

BL4.GreaterEqual_Int64Int64 = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GreaterEqual_Int64Int64: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "GreaterEqual_Int64Int64", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GreaterEqual_Int64Int64");

BL4.GreaterEqual_IntInt = function(OwnerAddress, A, B)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GreaterEqual_IntInt: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 UE.CallProcessEventEx(OwnerAddress, "GreaterEqual_IntInt", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GreaterEqual_IntInt");

BL4.GreaterEqual_TimespanTimespan = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GreaterEqual_TimespanTimespan: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "GreaterEqual_TimespanTimespan", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GreaterEqual_TimespanTimespan");

BL4.GreaterGreater_VectorRotator = function(OwnerAddress, A, B)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GreaterGreater_VectorRotator: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 B = B or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeDouble(_params + 0x18, (B and B.Pitch) or 0)
 writeDouble(_params + 0x20, (B and B.Yaw) or 0)
 writeDouble(_params + 0x28, (B and B.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GreaterGreater_VectorRotator", _params);
 local RET={X=readFloat(_params+0x30),Y=readFloat(_params+0x38),Z=readFloat(_params+0x40)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GreaterGreater_VectorRotator");

BL4.GridSnap_Float = function(OwnerAddress, Location, GridSize)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GridSnap_Float: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Location at +0x0, GridSize at +0x8
 writeQword(_params + 0x0, Location)
 writeQword(_params + 0x8, GridSize)
 UE.CallProcessEventEx(OwnerAddress, "GridSnap_Float", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GridSnap_Float");

BL4.HSVToRGB = function(OwnerAddress, H, S, V, A)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.HSVToRGB: Failed To Allocate The Params");return;end;
 H = H or 0
 S = S or 0
 V = V or 0
 A = A or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: H at +0x0, S at +0x4, V at +0x8, A at +0xC
 writeFloat(_params + 0x0, H)
 writeFloat(_params + 0x4, S)
 writeFloat(_params + 0x8, V)
 writeFloat(_params + 0xC, A)
 UE.CallProcessEventEx(OwnerAddress, "HSVToRGB", _params);
 local RET={R=readFloat(_params+0x10),G=readFloat(_params+0x14),B=readFloat(_params+0x18),A=readFloat(_params+0x1C)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.HSVToRGB");

BL4.HSVToRGB_Vector = function(OwnerAddress, HSV, RGB)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.HSVToRGB_Vector: Failed To Allocate The Params");return;end;
 HSV = HSV or {R=0,G=0,B=0,A=0}
 RGB = RGB or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: HSV at +0x0, RGB at +0x10
 writeFloat(_params + 0x0, (HSV and HSV.R) or 0)
 writeFloat(_params + 0x4, (HSV and HSV.G) or 0)
 writeFloat(_params + 0x8, (HSV and HSV.B) or 0)
 writeFloat(_params + 0xC, (HSV and HSV.A) or 0)
 writeFloat(_params + 0x10, (RGB and RGB.R) or 0)
 writeFloat(_params + 0x14, (RGB and RGB.G) or 0)
 writeFloat(_params + 0x18, (RGB and RGB.B) or 0)
 writeFloat(_params + 0x1C, (RGB and RGB.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "HSVToRGB_Vector", _params);
 deAlloc(_params);
end
FNR("BL4.HSVToRGB_Vector");

BL4.HSVToRGBLinear = function(OwnerAddress, HSV)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.HSVToRGBLinear: Failed To Allocate The Params");return;end;
 HSV = HSV or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: HSV at +0x0
 writeFloat(_params + 0x0, (HSV and HSV.R) or 0)
 writeFloat(_params + 0x4, (HSV and HSV.G) or 0)
 writeFloat(_params + 0x8, (HSV and HSV.B) or 0)
 writeFloat(_params + 0xC, (HSV and HSV.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "HSVToRGBLinear", _params);
 local RET={R=readFloat(_params+0x10),G=readFloat(_params+0x14),B=readFloat(_params+0x18),A=readFloat(_params+0x1C)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.HSVToRGBLinear");

BL4.Hypotenuse = function(OwnerAddress, Width, Height)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Hypotenuse: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Width at +0x0, Height at +0x8
 writeQword(_params + 0x0, Width)
 writeQword(_params + 0x8, Height)
 UE.CallProcessEventEx(OwnerAddress, "Hypotenuse", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Hypotenuse");

BL4.InRange_FloatFloat = function(OwnerAddress, Value, min, MAX, InclusiveMin, InclusiveMax)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InRange_FloatFloat: Failed To Allocate The Params");return;end;
 InclusiveMin = InclusiveMin or false
 InclusiveMax = InclusiveMax or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0, min at +0x8, MAX at +0x10, InclusiveMin at +0x18, InclusiveMax at +0x19
 writeQword(_params + 0x0, Value)
 writeQword(_params + 0x8, min)
 writeQword(_params + 0x10, MAX)
 writeByte(_params + 0x18, InclusiveMin)
 writeByte(_params + 0x19, InclusiveMax)
 UE.CallProcessEventEx(OwnerAddress, "InRange_FloatFloat", _params);
 local RET=readByte(_params + 0x1A);
 deAlloc(_params);
 return RET;
end
FNR("BL4.InRange_FloatFloat");

BL4.InRange_Int64Int64 = function(OwnerAddress, Value, min, MAX, InclusiveMin, InclusiveMax)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InRange_Int64Int64: Failed To Allocate The Params");return;end;
 InclusiveMin = InclusiveMin or false
 InclusiveMax = InclusiveMax or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0, min at +0x8, MAX at +0x10, InclusiveMin at +0x18, InclusiveMax at +0x19
 writeQword(_params + 0x0, Value)
 writeQword(_params + 0x8, min)
 writeQword(_params + 0x10, MAX)
 writeByte(_params + 0x18, InclusiveMin)
 writeByte(_params + 0x19, InclusiveMax)
 UE.CallProcessEventEx(OwnerAddress, "InRange_Int64Int64", _params);
 local RET=readByte(_params + 0x1A);
 deAlloc(_params);
 return RET;
end
FNR("BL4.InRange_Int64Int64");

BL4.InRange_IntInt = function(OwnerAddress, Value, min, MAX, InclusiveMin, InclusiveMax)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InRange_IntInt: Failed To Allocate The Params");return;end;
 Value = Value or 0
 min = min or 0
 MAX = MAX or 0
 InclusiveMin = InclusiveMin or false
 InclusiveMax = InclusiveMax or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0, min at +0x4, MAX at +0x8, InclusiveMin at +0xC, InclusiveMax at +0xD
 writeInteger(_params + 0x0, Value)
 writeInteger(_params + 0x4, min)
 writeInteger(_params + 0x8, MAX)
 writeByte(_params + 0xC, InclusiveMin)
 writeByte(_params + 0xD, InclusiveMax)
 UE.CallProcessEventEx(OwnerAddress, "InRange_IntInt", _params);
 local RET=readByte(_params + 0xE);
 deAlloc(_params);
 return RET;
end
FNR("BL4.InRange_IntInt");

BL4.IntPoint_Down = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IntPoint_Down: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IntPoint_Down", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IntPoint_Down");

BL4.IntPoint_Left = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IntPoint_Left: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IntPoint_Left", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IntPoint_Left");

BL4.IntPoint_One = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IntPoint_One: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IntPoint_One", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IntPoint_One");

BL4.IntPoint_Right = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IntPoint_Right: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IntPoint_Right", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IntPoint_Right");

BL4.IntPoint_Up = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IntPoint_Up: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IntPoint_Up", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IntPoint_Up");

BL4.IntPoint_Zero = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IntPoint_Zero: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IntPoint_Zero", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IntPoint_Zero");

BL4.InverseTransformDirection = function(OwnerAddress, T, Direction)
 local _paramsSize = 0x90
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InverseTransformDirection: Failed To Allocate The Params");return;end;
 Direction = Direction or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: T at +0x0, Direction at +0x60
 writeQword(_params + 0x0, T)
 writeDouble(_params + 0x60, (Direction and Direction.X) or 0)
 writeDouble(_params + 0x68, (Direction and Direction.Y) or 0)
 writeDouble(_params + 0x70, (Direction and Direction.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "InverseTransformDirection", _params);
 local RET={X=readFloat(_params+0x78),Y=readFloat(_params+0x80),Z=readFloat(_params+0x88)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.InverseTransformDirection");

BL4.InverseTransformLocation = function(OwnerAddress, T, Location)
 local _paramsSize = 0x90
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InverseTransformLocation: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: T at +0x0, Location at +0x60
 writeQword(_params + 0x0, T)
 writeDouble(_params + 0x60, (Location and Location.X) or 0)
 writeDouble(_params + 0x68, (Location and Location.Y) or 0)
 writeDouble(_params + 0x70, (Location and Location.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "InverseTransformLocation", _params);
 local RET={X=readFloat(_params+0x78),Y=readFloat(_params+0x80),Z=readFloat(_params+0x88)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.InverseTransformLocation");

BL4.InverseTransformRotation = function(OwnerAddress, T, Rotation)
 local _paramsSize = 0x90
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InverseTransformRotation: Failed To Allocate The Params");return;end;
 Rotation = Rotation or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: T at +0x0, Rotation at +0x60
 writeQword(_params + 0x0, T)
 writeDouble(_params + 0x60, (Rotation and Rotation.Pitch) or 0)
 writeDouble(_params + 0x68, (Rotation and Rotation.Yaw) or 0)
 writeDouble(_params + 0x70, (Rotation and Rotation.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "InverseTransformRotation", _params);
 local RET={Pitch=readFloat(_params+0x78),Yaw=readFloat(_params+0x80),Roll=readFloat(_params+0x88)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.InverseTransformRotation");

BL4.InvertTransform = function(OwnerAddress, T)
 local _paramsSize = 0xC0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InvertTransform: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: T at +0x0
 writeQword(_params + 0x0, T)
 UE.CallProcessEventEx(OwnerAddress, "InvertTransform", _params);
 local RET=readQword(_params + 0x60);
 deAlloc(_params);
 return RET;
end
FNR("BL4.InvertTransform");

BL4.IsAfternoon = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsAfternoon: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "IsAfternoon", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsAfternoon");

BL4.IsLeapYear = function(OwnerAddress, Year)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsLeapYear: Failed To Allocate The Params");return;end;
 Year = Year or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Year at +0x0
 writeInteger(_params + 0x0, Year)
 UE.CallProcessEventEx(OwnerAddress, "IsLeapYear", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsLeapYear");

BL4.IsMorning = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsMorning: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "IsMorning", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsMorning");

BL4.IsNearlyZero2D = function(OwnerAddress, A, Tolerance)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsNearlyZero2D: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 Tolerance = Tolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, Tolerance at +0x10
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeFloat(_params + 0x10, Tolerance)
 UE.CallProcessEventEx(OwnerAddress, "IsNearlyZero2D", _params);
 local RET=readByte(_params + 0x14);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsNearlyZero2D");

BL4.IsPointInBox = function(OwnerAddress, Point, BoxOrigin, BoxExtent)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsPointInBox: Failed To Allocate The Params");return;end;
 Point = Point or {X=0,Y=0,Z=0}
 BoxOrigin = BoxOrigin or {X=0,Y=0,Z=0}
 BoxExtent = BoxExtent or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Point at +0x0, BoxOrigin at +0x18, BoxExtent at +0x30
 writeDouble(_params + 0x0, (Point and Point.X) or 0)
 writeDouble(_params + 0x8, (Point and Point.Y) or 0)
 writeDouble(_params + 0x10, (Point and Point.Z) or 0)
 writeDouble(_params + 0x18, (BoxOrigin and BoxOrigin.X) or 0)
 writeDouble(_params + 0x20, (BoxOrigin and BoxOrigin.Y) or 0)
 writeDouble(_params + 0x28, (BoxOrigin and BoxOrigin.Z) or 0)
 writeDouble(_params + 0x30, (BoxExtent and BoxExtent.X) or 0)
 writeDouble(_params + 0x38, (BoxExtent and BoxExtent.Y) or 0)
 writeDouble(_params + 0x40, (BoxExtent and BoxExtent.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "IsPointInBox", _params);
 local RET=readByte(_params + 0x48);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsPointInBox");

BL4.IsPointInBox_Box = function(OwnerAddress, Point, Box)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsPointInBox_Box: Failed To Allocate The Params");return;end;
 Point = Point or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Point at +0x0, Box at +0x18
 writeDouble(_params + 0x0, (Point and Point.X) or 0)
 writeDouble(_params + 0x8, (Point and Point.Y) or 0)
 writeDouble(_params + 0x10, (Point and Point.Z) or 0)
 writeQword(_params + 0x18, Box)
 UE.CallProcessEventEx(OwnerAddress, "IsPointInBox_Box", _params);
 local RET=readByte(_params + 0x50);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsPointInBox_Box");

BL4.IsPointInBoxWithTransform = function(OwnerAddress, Point, BoxWorldTransform, BoxExtent)
 local _paramsSize = 0xA0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsPointInBoxWithTransform: Failed To Allocate The Params");return;end;
 Point = Point or {X=0,Y=0,Z=0}
 BoxExtent = BoxExtent or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Point at +0x0, BoxWorldTransform at +0x20, BoxExtent at +0x80
 writeDouble(_params + 0x0, (Point and Point.X) or 0)
 writeDouble(_params + 0x8, (Point and Point.Y) or 0)
 writeDouble(_params + 0x10, (Point and Point.Z) or 0)
 writeQword(_params + 0x20, BoxWorldTransform)
 writeDouble(_params + 0x80, (BoxExtent and BoxExtent.X) or 0)
 writeDouble(_params + 0x88, (BoxExtent and BoxExtent.Y) or 0)
 writeDouble(_params + 0x90, (BoxExtent and BoxExtent.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "IsPointInBoxWithTransform", _params);
 local RET=readByte(_params + 0x98);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsPointInBoxWithTransform");

BL4.IsPointInBoxWithTransform_Box = function(OwnerAddress, Point, BoxWorldTransform, BoxExtent)
 local _paramsSize = 0xC0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsPointInBoxWithTransform_Box: Failed To Allocate The Params");return;end;
 Point = Point or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Point at +0x0, BoxWorldTransform at +0x20, BoxExtent at +0x80
 writeDouble(_params + 0x0, (Point and Point.X) or 0)
 writeDouble(_params + 0x8, (Point and Point.Y) or 0)
 writeDouble(_params + 0x10, (Point and Point.Z) or 0)
 writeQword(_params + 0x20, BoxWorldTransform)
 writeQword(_params + 0x80, BoxExtent)
 UE.CallProcessEventEx(OwnerAddress, "IsPointInBoxWithTransform_Box", _params);
 local RET=readByte(_params + 0xB8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsPointInBoxWithTransform_Box");

BL4.IsZero2D = function(OwnerAddress, A)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsZero2D: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "IsZero2D", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsZero2D");

BL4.Lerp = function(OwnerAddress, A, B, ALPHA)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Lerp: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8, ALPHA at +0x10
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 writeQword(_params + 0x10, ALPHA)
 UE.CallProcessEventEx(OwnerAddress, "Lerp", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Lerp");

BL4.Less_ByteByte = function(OwnerAddress, A, B)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Less_ByteByte: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x1
 writeByte(_params + 0x0, A)
 writeByte(_params + 0x1, B)
 UE.CallProcessEventEx(OwnerAddress, "Less_ByteByte", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Less_ByteByte");

BL4.Less_DateTimeDateTime = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Less_DateTimeDateTime: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Less_DateTimeDateTime", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Less_DateTimeDateTime");

BL4.Less_DoubleDouble = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Less_DoubleDouble: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Less_DoubleDouble", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Less_DoubleDouble");

BL4.Less_Int64Int64 = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Less_Int64Int64: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Less_Int64Int64", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Less_Int64Int64");

BL4.Less_IntInt = function(OwnerAddress, A, B)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Less_IntInt: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 UE.CallProcessEventEx(OwnerAddress, "Less_IntInt", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Less_IntInt");

BL4.Less_TimespanTimespan = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Less_TimespanTimespan: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Less_TimespanTimespan", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Less_TimespanTimespan");

BL4.LessEqual_ByteByte = function(OwnerAddress, A, B)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LessEqual_ByteByte: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x1
 writeByte(_params + 0x0, A)
 writeByte(_params + 0x1, B)
 UE.CallProcessEventEx(OwnerAddress, "LessEqual_ByteByte", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.LessEqual_ByteByte");

BL4.LessEqual_DateTimeDateTime = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LessEqual_DateTimeDateTime: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "LessEqual_DateTimeDateTime", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.LessEqual_DateTimeDateTime");

BL4.LessEqual_DoubleDouble = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LessEqual_DoubleDouble: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "LessEqual_DoubleDouble", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.LessEqual_DoubleDouble");

BL4.LessEqual_Int64Int64 = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LessEqual_Int64Int64: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "LessEqual_Int64Int64", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.LessEqual_Int64Int64");

BL4.LessEqual_IntInt = function(OwnerAddress, A, B)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LessEqual_IntInt: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 UE.CallProcessEventEx(OwnerAddress, "LessEqual_IntInt", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.LessEqual_IntInt");

BL4.LessEqual_TimespanTimespan = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LessEqual_TimespanTimespan: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "LessEqual_TimespanTimespan", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.LessEqual_TimespanTimespan");

BL4.LessLess_VectorRotator = function(OwnerAddress, A, B)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LessLess_VectorRotator: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 B = B or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeDouble(_params + 0x18, (B and B.Pitch) or 0)
 writeDouble(_params + 0x20, (B and B.Yaw) or 0)
 writeDouble(_params + 0x28, (B and B.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "LessLess_VectorRotator", _params);
 local RET={X=readFloat(_params+0x30),Y=readFloat(_params+0x38),Z=readFloat(_params+0x40)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.LessLess_VectorRotator");

BL4.LinearColor_Black = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinearColor_Black: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "LinearColor_Black", _params);
 local RET={R=readFloat(_params+0x0),G=readFloat(_params+0x4),B=readFloat(_params+0x8),A=readFloat(_params+0xC)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.LinearColor_Black");

BL4.LinearColor_Blue = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinearColor_Blue: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "LinearColor_Blue", _params);
 local RET={R=readFloat(_params+0x0),G=readFloat(_params+0x4),B=readFloat(_params+0x8),A=readFloat(_params+0xC)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.LinearColor_Blue");

BL4.LinearColor_Desaturated = function(OwnerAddress, InColor, InDesaturation)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinearColor_Desaturated: Failed To Allocate The Params");return;end;
 InColor = InColor or {R=0,G=0,B=0,A=0}
 InDesaturation = InDesaturation or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InColor at +0x0, InDesaturation at +0x10
 writeFloat(_params + 0x0, (InColor and InColor.R) or 0)
 writeFloat(_params + 0x4, (InColor and InColor.G) or 0)
 writeFloat(_params + 0x8, (InColor and InColor.B) or 0)
 writeFloat(_params + 0xC, (InColor and InColor.A) or 0)
 writeFloat(_params + 0x10, InDesaturation)
 UE.CallProcessEventEx(OwnerAddress, "LinearColor_Desaturated", _params);
 local RET={R=readFloat(_params+0x14),G=readFloat(_params+0x18),B=readFloat(_params+0x1C),A=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.LinearColor_Desaturated");

BL4.LinearColor_Distance = function(OwnerAddress, C1, C2)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinearColor_Distance: Failed To Allocate The Params");return;end;
 C1 = C1 or {R=0,G=0,B=0,A=0}
 C2 = C2 or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: C1 at +0x0, C2 at +0x10
 writeFloat(_params + 0x0, (C1 and C1.R) or 0)
 writeFloat(_params + 0x4, (C1 and C1.G) or 0)
 writeFloat(_params + 0x8, (C1 and C1.B) or 0)
 writeFloat(_params + 0xC, (C1 and C1.A) or 0)
 writeFloat(_params + 0x10, (C2 and C2.R) or 0)
 writeFloat(_params + 0x14, (C2 and C2.G) or 0)
 writeFloat(_params + 0x18, (C2 and C2.B) or 0)
 writeFloat(_params + 0x1C, (C2 and C2.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "LinearColor_Distance", _params);
 local RET=readFloat(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.LinearColor_Distance");

BL4.LinearColor_GetLuminance = function(OwnerAddress, InColor)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinearColor_GetLuminance: Failed To Allocate The Params");return;end;
 InColor = InColor or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InColor at +0x0
 writeFloat(_params + 0x0, (InColor and InColor.R) or 0)
 writeFloat(_params + 0x4, (InColor and InColor.G) or 0)
 writeFloat(_params + 0x8, (InColor and InColor.B) or 0)
 writeFloat(_params + 0xC, (InColor and InColor.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "LinearColor_GetLuminance", _params);
 local RET=readFloat(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.LinearColor_GetLuminance");

BL4.LinearColor_GetMax = function(OwnerAddress, InColor)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinearColor_GetMax: Failed To Allocate The Params");return;end;
 InColor = InColor or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InColor at +0x0
 writeFloat(_params + 0x0, (InColor and InColor.R) or 0)
 writeFloat(_params + 0x4, (InColor and InColor.G) or 0)
 writeFloat(_params + 0x8, (InColor and InColor.B) or 0)
 writeFloat(_params + 0xC, (InColor and InColor.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "LinearColor_GetMax", _params);
 local RET=readFloat(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.LinearColor_GetMax");

BL4.LinearColor_GetMin = function(OwnerAddress, InColor)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinearColor_GetMin: Failed To Allocate The Params");return;end;
 InColor = InColor or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InColor at +0x0
 writeFloat(_params + 0x0, (InColor and InColor.R) or 0)
 writeFloat(_params + 0x4, (InColor and InColor.G) or 0)
 writeFloat(_params + 0x8, (InColor and InColor.B) or 0)
 writeFloat(_params + 0xC, (InColor and InColor.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "LinearColor_GetMin", _params);
 local RET=readFloat(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.LinearColor_GetMin");

BL4.LinearColor_Gray = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinearColor_Gray: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "LinearColor_Gray", _params);
 local RET={R=readFloat(_params+0x0),G=readFloat(_params+0x4),B=readFloat(_params+0x8),A=readFloat(_params+0xC)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.LinearColor_Gray");

BL4.LinearColor_Green = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinearColor_Green: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "LinearColor_Green", _params);
 local RET={R=readFloat(_params+0x0),G=readFloat(_params+0x4),B=readFloat(_params+0x8),A=readFloat(_params+0xC)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.LinearColor_Green");

BL4.LinearColor_IsNearEqual = function(OwnerAddress, A, B, Tolerance)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinearColor_IsNearEqual: Failed To Allocate The Params");return;end;
 A = A or {R=0,G=0,B=0,A=0}
 B = B or {R=0,G=0,B=0,A=0}
 Tolerance = Tolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10, Tolerance at +0x20
 writeFloat(_params + 0x0, (A and A.R) or 0)
 writeFloat(_params + 0x4, (A and A.G) or 0)
 writeFloat(_params + 0x8, (A and A.B) or 0)
 writeFloat(_params + 0xC, (A and A.A) or 0)
 writeFloat(_params + 0x10, (B and B.R) or 0)
 writeFloat(_params + 0x14, (B and B.G) or 0)
 writeFloat(_params + 0x18, (B and B.B) or 0)
 writeFloat(_params + 0x1C, (B and B.A) or 0)
 writeFloat(_params + 0x20, Tolerance)
 UE.CallProcessEventEx(OwnerAddress, "LinearColor_IsNearEqual", _params);
 local RET=readByte(_params + 0x24);
 deAlloc(_params);
 return RET;
end
FNR("BL4.LinearColor_IsNearEqual");

BL4.LinearColor_Quantize = function(OwnerAddress, InColor)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinearColor_Quantize: Failed To Allocate The Params");return;end;
 InColor = InColor or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InColor at +0x0
 writeFloat(_params + 0x0, (InColor and InColor.R) or 0)
 writeFloat(_params + 0x4, (InColor and InColor.G) or 0)
 writeFloat(_params + 0x8, (InColor and InColor.B) or 0)
 writeFloat(_params + 0xC, (InColor and InColor.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "LinearColor_Quantize", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.LinearColor_Quantize");

BL4.LinearColor_QuantizeRound = function(OwnerAddress, InColor)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinearColor_QuantizeRound: Failed To Allocate The Params");return;end;
 InColor = InColor or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InColor at +0x0
 writeFloat(_params + 0x0, (InColor and InColor.R) or 0)
 writeFloat(_params + 0x4, (InColor and InColor.G) or 0)
 writeFloat(_params + 0x8, (InColor and InColor.B) or 0)
 writeFloat(_params + 0xC, (InColor and InColor.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "LinearColor_QuantizeRound", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.LinearColor_QuantizeRound");

BL4.LinearColor_Red = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinearColor_Red: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "LinearColor_Red", _params);
 local RET={R=readFloat(_params+0x0),G=readFloat(_params+0x4),B=readFloat(_params+0x8),A=readFloat(_params+0xC)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.LinearColor_Red");

BL4.LinearColor_Set = function(OwnerAddress, InOutColor, InColor)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinearColor_Set: Failed To Allocate The Params");return;end;
 InOutColor = InOutColor or {R=0,G=0,B=0,A=0}
 InColor = InColor or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InOutColor at +0x0, InColor at +0x10
 writeFloat(_params + 0x0, (InOutColor and InOutColor.R) or 0)
 writeFloat(_params + 0x4, (InOutColor and InOutColor.G) or 0)
 writeFloat(_params + 0x8, (InOutColor and InOutColor.B) or 0)
 writeFloat(_params + 0xC, (InOutColor and InOutColor.A) or 0)
 writeFloat(_params + 0x10, (InColor and InColor.R) or 0)
 writeFloat(_params + 0x14, (InColor and InColor.G) or 0)
 writeFloat(_params + 0x18, (InColor and InColor.B) or 0)
 writeFloat(_params + 0x1C, (InColor and InColor.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "LinearColor_Set", _params);
 deAlloc(_params);
end
FNR("BL4.LinearColor_Set");

BL4.LinearColor_SetFromHSV = function(OwnerAddress, InOutColor, H, S, V, A)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinearColor_SetFromHSV: Failed To Allocate The Params");return;end;
 InOutColor = InOutColor or {R=0,G=0,B=0,A=0}
 H = H or 0
 S = S or 0
 V = V or 0
 A = A or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InOutColor at +0x0, H at +0x10, S at +0x14, V at +0x18, A at +0x1C
 writeFloat(_params + 0x0, (InOutColor and InOutColor.R) or 0)
 writeFloat(_params + 0x4, (InOutColor and InOutColor.G) or 0)
 writeFloat(_params + 0x8, (InOutColor and InOutColor.B) or 0)
 writeFloat(_params + 0xC, (InOutColor and InOutColor.A) or 0)
 writeFloat(_params + 0x10, H)
 writeFloat(_params + 0x14, S)
 writeFloat(_params + 0x18, V)
 writeFloat(_params + 0x1C, A)
 UE.CallProcessEventEx(OwnerAddress, "LinearColor_SetFromHSV", _params);
 deAlloc(_params);
end
FNR("BL4.LinearColor_SetFromHSV");

BL4.LinearColor_SetFromPow22 = function(OwnerAddress, InOutColor, InColor)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinearColor_SetFromPow22: Failed To Allocate The Params");return;end;
 InOutColor = InOutColor or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InOutColor at +0x0, InColor at +0x10
 writeFloat(_params + 0x0, (InOutColor and InOutColor.R) or 0)
 writeFloat(_params + 0x4, (InOutColor and InOutColor.G) or 0)
 writeFloat(_params + 0x8, (InOutColor and InOutColor.B) or 0)
 writeFloat(_params + 0xC, (InOutColor and InOutColor.A) or 0)
 writeQword(_params + 0x10, InColor)
 UE.CallProcessEventEx(OwnerAddress, "LinearColor_SetFromPow22", _params);
 deAlloc(_params);
end
FNR("BL4.LinearColor_SetFromPow22");

BL4.LinearColor_SetFromSRGB = function(OwnerAddress, InOutColor, InSRGB)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinearColor_SetFromSRGB: Failed To Allocate The Params");return;end;
 InOutColor = InOutColor or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InOutColor at +0x0, InSRGB at +0x10
 writeFloat(_params + 0x0, (InOutColor and InOutColor.R) or 0)
 writeFloat(_params + 0x4, (InOutColor and InOutColor.G) or 0)
 writeFloat(_params + 0x8, (InOutColor and InOutColor.B) or 0)
 writeFloat(_params + 0xC, (InOutColor and InOutColor.A) or 0)
 writeQword(_params + 0x10, InSRGB)
 UE.CallProcessEventEx(OwnerAddress, "LinearColor_SetFromSRGB", _params);
 deAlloc(_params);
end
FNR("BL4.LinearColor_SetFromSRGB");

BL4.LinearColor_SetRandomHue = function(OwnerAddress, InOutColor)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinearColor_SetRandomHue: Failed To Allocate The Params");return;end;
 InOutColor = InOutColor or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InOutColor at +0x0
 writeFloat(_params + 0x0, (InOutColor and InOutColor.R) or 0)
 writeFloat(_params + 0x4, (InOutColor and InOutColor.G) or 0)
 writeFloat(_params + 0x8, (InOutColor and InOutColor.B) or 0)
 writeFloat(_params + 0xC, (InOutColor and InOutColor.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "LinearColor_SetRandomHue", _params);
 deAlloc(_params);
end
FNR("BL4.LinearColor_SetRandomHue");

BL4.LinearColor_SetRGBA = function(OwnerAddress, InOutColor, R, G, B, A)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinearColor_SetRGBA: Failed To Allocate The Params");return;end;
 InOutColor = InOutColor or {R=0,G=0,B=0,A=0}
 R = R or 0
 G = G or 0
 B = B or 0
 A = A or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InOutColor at +0x0, R at +0x10, G at +0x14, B at +0x18, A at +0x1C
 writeFloat(_params + 0x0, (InOutColor and InOutColor.R) or 0)
 writeFloat(_params + 0x4, (InOutColor and InOutColor.G) or 0)
 writeFloat(_params + 0x8, (InOutColor and InOutColor.B) or 0)
 writeFloat(_params + 0xC, (InOutColor and InOutColor.A) or 0)
 writeFloat(_params + 0x10, R)
 writeFloat(_params + 0x14, G)
 writeFloat(_params + 0x18, B)
 writeFloat(_params + 0x1C, A)
 UE.CallProcessEventEx(OwnerAddress, "LinearColor_SetRGBA", _params);
 deAlloc(_params);
end
FNR("BL4.LinearColor_SetRGBA");

BL4.LinearColor_SetTemperature = function(OwnerAddress, InOutColor, InTemperature)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinearColor_SetTemperature: Failed To Allocate The Params");return;end;
 InOutColor = InOutColor or {R=0,G=0,B=0,A=0}
 InTemperature = InTemperature or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InOutColor at +0x0, InTemperature at +0x10
 writeFloat(_params + 0x0, (InOutColor and InOutColor.R) or 0)
 writeFloat(_params + 0x4, (InOutColor and InOutColor.G) or 0)
 writeFloat(_params + 0x8, (InOutColor and InOutColor.B) or 0)
 writeFloat(_params + 0xC, (InOutColor and InOutColor.A) or 0)
 writeFloat(_params + 0x10, InTemperature)
 UE.CallProcessEventEx(OwnerAddress, "LinearColor_SetTemperature", _params);
 deAlloc(_params);
end
FNR("BL4.LinearColor_SetTemperature");

BL4.LinearColor_ToNewOpacity = function(OwnerAddress, InColor, InOpacity)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinearColor_ToNewOpacity: Failed To Allocate The Params");return;end;
 InColor = InColor or {R=0,G=0,B=0,A=0}
 InOpacity = InOpacity or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InColor at +0x0, InOpacity at +0x10
 writeFloat(_params + 0x0, (InColor and InColor.R) or 0)
 writeFloat(_params + 0x4, (InColor and InColor.G) or 0)
 writeFloat(_params + 0x8, (InColor and InColor.B) or 0)
 writeFloat(_params + 0xC, (InColor and InColor.A) or 0)
 writeFloat(_params + 0x10, InOpacity)
 UE.CallProcessEventEx(OwnerAddress, "LinearColor_ToNewOpacity", _params);
 local RET={R=readFloat(_params+0x14),G=readFloat(_params+0x18),B=readFloat(_params+0x1C),A=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.LinearColor_ToNewOpacity");

BL4.LinearColor_ToRGBE = function(OwnerAddress, InLinearColor)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinearColor_ToRGBE: Failed To Allocate The Params");return;end;
 InLinearColor = InLinearColor or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InLinearColor at +0x0
 writeFloat(_params + 0x0, (InLinearColor and InLinearColor.R) or 0)
 writeFloat(_params + 0x4, (InLinearColor and InLinearColor.G) or 0)
 writeFloat(_params + 0x8, (InLinearColor and InLinearColor.B) or 0)
 writeFloat(_params + 0xC, (InLinearColor and InLinearColor.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "LinearColor_ToRGBE", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.LinearColor_ToRGBE");

BL4.LinearColor_Transparent = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinearColor_Transparent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "LinearColor_Transparent", _params);
 local RET={R=readFloat(_params+0x0),G=readFloat(_params+0x4),B=readFloat(_params+0x8),A=readFloat(_params+0xC)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.LinearColor_Transparent");

BL4.LinearColor_White = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinearColor_White: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "LinearColor_White", _params);
 local RET={R=readFloat(_params+0x0),G=readFloat(_params+0x4),B=readFloat(_params+0x8),A=readFloat(_params+0xC)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.LinearColor_White");

BL4.LinearColor_Yellow = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinearColor_Yellow: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "LinearColor_Yellow", _params);
 local RET={R=readFloat(_params+0x0),G=readFloat(_params+0x4),B=readFloat(_params+0x8),A=readFloat(_params+0xC)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.LinearColor_Yellow");

BL4.LinearColorLerp = function(OwnerAddress, A, B, ALPHA)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinearColorLerp: Failed To Allocate The Params");return;end;
 A = A or {R=0,G=0,B=0,A=0}
 B = B or {R=0,G=0,B=0,A=0}
 ALPHA = ALPHA or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10, ALPHA at +0x20
 writeFloat(_params + 0x0, (A and A.R) or 0)
 writeFloat(_params + 0x4, (A and A.G) or 0)
 writeFloat(_params + 0x8, (A and A.B) or 0)
 writeFloat(_params + 0xC, (A and A.A) or 0)
 writeFloat(_params + 0x10, (B and B.R) or 0)
 writeFloat(_params + 0x14, (B and B.G) or 0)
 writeFloat(_params + 0x18, (B and B.B) or 0)
 writeFloat(_params + 0x1C, (B and B.A) or 0)
 writeFloat(_params + 0x20, ALPHA)
 UE.CallProcessEventEx(OwnerAddress, "LinearColorLerp", _params);
 local RET={R=readFloat(_params+0x24),G=readFloat(_params+0x28),B=readFloat(_params+0x2C),A=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.LinearColorLerp");

BL4.LinearColorLerpUsingHSV = function(OwnerAddress, A, B, ALPHA)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinearColorLerpUsingHSV: Failed To Allocate The Params");return;end;
 A = A or {R=0,G=0,B=0,A=0}
 B = B or {R=0,G=0,B=0,A=0}
 ALPHA = ALPHA or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10, ALPHA at +0x20
 writeFloat(_params + 0x0, (A and A.R) or 0)
 writeFloat(_params + 0x4, (A and A.G) or 0)
 writeFloat(_params + 0x8, (A and A.B) or 0)
 writeFloat(_params + 0xC, (A and A.A) or 0)
 writeFloat(_params + 0x10, (B and B.R) or 0)
 writeFloat(_params + 0x14, (B and B.G) or 0)
 writeFloat(_params + 0x18, (B and B.B) or 0)
 writeFloat(_params + 0x1C, (B and B.A) or 0)
 writeFloat(_params + 0x20, ALPHA)
 UE.CallProcessEventEx(OwnerAddress, "LinearColorLerpUsingHSV", _params);
 local RET={R=readFloat(_params+0x24),G=readFloat(_params+0x28),B=readFloat(_params+0x2C),A=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.LinearColorLerpUsingHSV");

BL4.LinePlaneIntersection = function(OwnerAddress, LineStart, LineEnd, APlane, T, Intersection)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinePlaneIntersection: Failed To Allocate The Params");return;end;
 LineStart = LineStart or {X=0,Y=0,Z=0}
 LineEnd = LineEnd or {X=0,Y=0,Z=0}
 T = T or 0
 Intersection = Intersection or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: LineStart at +0x0, LineEnd at +0x18, APlane at +0x30, T at +0x50, Intersection at +0x58
 writeDouble(_params + 0x0, (LineStart and LineStart.X) or 0)
 writeDouble(_params + 0x8, (LineStart and LineStart.Y) or 0)
 writeDouble(_params + 0x10, (LineStart and LineStart.Z) or 0)
 writeDouble(_params + 0x18, (LineEnd and LineEnd.X) or 0)
 writeDouble(_params + 0x20, (LineEnd and LineEnd.Y) or 0)
 writeDouble(_params + 0x28, (LineEnd and LineEnd.Z) or 0)
 writeQword(_params + 0x30, APlane)
 writeFloat(_params + 0x50, T)
 writeDouble(_params + 0x58, (Intersection and Intersection.X) or 0)
 writeDouble(_params + 0x60, (Intersection and Intersection.Y) or 0)
 writeDouble(_params + 0x68, (Intersection and Intersection.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "LinePlaneIntersection", _params);
 local RET=readByte(_params + 0x70);
 deAlloc(_params);
 return RET;
end
FNR("BL4.LinePlaneIntersection");

BL4.LinePlaneIntersection_OriginNormal = function(OwnerAddress, LineStart, LineEnd, PlaneOrigin, PlaneNormal, T, Intersection)
 local _paramsSize = 0x88
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinePlaneIntersection_OriginNormal: Failed To Allocate The Params");return;end;
 LineStart = LineStart or {X=0,Y=0,Z=0}
 LineEnd = LineEnd or {X=0,Y=0,Z=0}
 PlaneOrigin = PlaneOrigin or {X=0,Y=0,Z=0}
 PlaneNormal = PlaneNormal or {X=0,Y=0,Z=0}
 T = T or 0
 Intersection = Intersection or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: LineStart at +0x0, LineEnd at +0x18, PlaneOrigin at +0x30, PlaneNormal at +0x48, T at +0x60, Intersection at +0x68
 writeDouble(_params + 0x0, (LineStart and LineStart.X) or 0)
 writeDouble(_params + 0x8, (LineStart and LineStart.Y) or 0)
 writeDouble(_params + 0x10, (LineStart and LineStart.Z) or 0)
 writeDouble(_params + 0x18, (LineEnd and LineEnd.X) or 0)
 writeDouble(_params + 0x20, (LineEnd and LineEnd.Y) or 0)
 writeDouble(_params + 0x28, (LineEnd and LineEnd.Z) or 0)
 writeDouble(_params + 0x30, (PlaneOrigin and PlaneOrigin.X) or 0)
 writeDouble(_params + 0x38, (PlaneOrigin and PlaneOrigin.Y) or 0)
 writeDouble(_params + 0x40, (PlaneOrigin and PlaneOrigin.Z) or 0)
 writeDouble(_params + 0x48, (PlaneNormal and PlaneNormal.X) or 0)
 writeDouble(_params + 0x50, (PlaneNormal and PlaneNormal.Y) or 0)
 writeDouble(_params + 0x58, (PlaneNormal and PlaneNormal.Z) or 0)
 writeFloat(_params + 0x60, T)
 writeDouble(_params + 0x68, (Intersection and Intersection.X) or 0)
 writeDouble(_params + 0x70, (Intersection and Intersection.Y) or 0)
 writeDouble(_params + 0x78, (Intersection and Intersection.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "LinePlaneIntersection_OriginNormal", _params);
 local RET=readByte(_params + 0x80);
 deAlloc(_params);
 return RET;
end
FNR("BL4.LinePlaneIntersection_OriginNormal");

BL4.log = function(OwnerAddress, A, base)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.log: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, base at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, base)
 UE.CallProcessEventEx(OwnerAddress, "log", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.log");

BL4.Loge = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Loge: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "Loge", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Loge");

BL4.MakeBox = function(OwnerAddress, min, MAX)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeBox: Failed To Allocate The Params");return;end;
 min = min or {X=0,Y=0,Z=0}
 MAX = MAX or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: min at +0x0, MAX at +0x18
 writeDouble(_params + 0x0, (min and min.X) or 0)
 writeDouble(_params + 0x8, (min and min.Y) or 0)
 writeDouble(_params + 0x10, (min and min.Z) or 0)
 writeDouble(_params + 0x18, (MAX and MAX.X) or 0)
 writeDouble(_params + 0x20, (MAX and MAX.Y) or 0)
 writeDouble(_params + 0x28, (MAX and MAX.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "MakeBox", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeBox");

BL4.MakeBox2D = function(OwnerAddress, min, MAX)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeBox2D: Failed To Allocate The Params");return;end;
 min = min or {X=0,Y=0}
 MAX = MAX or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: min at +0x0, MAX at +0x10
 writeDouble(_params + 0x0, (min and min.X) or 0)
 writeDouble(_params + 0x8, (min and min.Y) or 0)
 writeDouble(_params + 0x10, (MAX and MAX.X) or 0)
 writeDouble(_params + 0x18, (MAX and MAX.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "MakeBox2D", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeBox2D");

BL4.MakeBoxSphereBounds = function(OwnerAddress, Origin, BoxExtent, SphereRadius)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeBoxSphereBounds: Failed To Allocate The Params");return;end;
 Origin = Origin or {X=0,Y=0,Z=0}
 BoxExtent = BoxExtent or {X=0,Y=0,Z=0}
 SphereRadius = SphereRadius or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Origin at +0x0, BoxExtent at +0x18, SphereRadius at +0x30
 writeDouble(_params + 0x0, (Origin and Origin.X) or 0)
 writeDouble(_params + 0x8, (Origin and Origin.Y) or 0)
 writeDouble(_params + 0x10, (Origin and Origin.Z) or 0)
 writeDouble(_params + 0x18, (BoxExtent and BoxExtent.X) or 0)
 writeDouble(_params + 0x20, (BoxExtent and BoxExtent.Y) or 0)
 writeDouble(_params + 0x28, (BoxExtent and BoxExtent.Z) or 0)
 writeFloat(_params + 0x30, SphereRadius)
 UE.CallProcessEventEx(OwnerAddress, "MakeBoxSphereBounds", _params);
 local RET=readQword(_params + 0x38);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeBoxSphereBounds");

BL4.MakeBoxWithOrigin = function(OwnerAddress, Origin, Extent)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeBoxWithOrigin: Failed To Allocate The Params");return;end;
 Origin = Origin or {X=0,Y=0,Z=0}
 Extent = Extent or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Origin at +0x0, Extent at +0x18
 writeDouble(_params + 0x0, (Origin and Origin.X) or 0)
 writeDouble(_params + 0x8, (Origin and Origin.Y) or 0)
 writeDouble(_params + 0x10, (Origin and Origin.Z) or 0)
 writeDouble(_params + 0x18, (Extent and Extent.X) or 0)
 writeDouble(_params + 0x20, (Extent and Extent.Y) or 0)
 writeDouble(_params + 0x28, (Extent and Extent.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "MakeBoxWithOrigin", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeBoxWithOrigin");

BL4.MakeColor = function(OwnerAddress, R, G, B, A)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeColor: Failed To Allocate The Params");return;end;
 R = R or 0
 G = G or 0
 B = B or 0
 A = A or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: R at +0x0, G at +0x4, B at +0x8, A at +0xC
 writeFloat(_params + 0x0, R)
 writeFloat(_params + 0x4, G)
 writeFloat(_params + 0x8, B)
 writeFloat(_params + 0xC, A)
 UE.CallProcessEventEx(OwnerAddress, "MakeColor", _params);
 local RET={R=readFloat(_params+0x10),G=readFloat(_params+0x14),B=readFloat(_params+0x18),A=readFloat(_params+0x1C)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeColor");

BL4.MakeDateTime = function(OwnerAddress, Year, Month, Day, Hour, Minute, Second, Millisecond)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeDateTime: Failed To Allocate The Params");return;end;
 Year = Year or 0
 Month = Month or 0
 Day = Day or 0
 Hour = Hour or 0
 Minute = Minute or 0
 Second = Second or 0
 Millisecond = Millisecond or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Year at +0x0, Month at +0x4, Day at +0x8, Hour at +0xC, Minute at +0x10, Second at +0x14, Millisecond at +0x18
 writeInteger(_params + 0x0, Year)
 writeInteger(_params + 0x4, Month)
 writeInteger(_params + 0x8, Day)
 writeInteger(_params + 0xC, Hour)
 writeInteger(_params + 0x10, Minute)
 writeInteger(_params + 0x14, Second)
 writeInteger(_params + 0x18, Millisecond)
 UE.CallProcessEventEx(OwnerAddress, "MakeDateTime", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeDateTime");

BL4.MakeFrameRate = function(OwnerAddress, Numerator, Denominator)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeFrameRate: Failed To Allocate The Params");return;end;
 Numerator = Numerator or 0
 Denominator = Denominator or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Numerator at +0x0, Denominator at +0x4
 writeInteger(_params + 0x0, Numerator)
 writeInteger(_params + 0x4, Denominator)
 UE.CallProcessEventEx(OwnerAddress, "MakeFrameRate", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeFrameRate");

BL4.MakePlaneFromPointAndNormal = function(OwnerAddress, Point, Normal)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakePlaneFromPointAndNormal: Failed To Allocate The Params");return;end;
 Point = Point or {X=0,Y=0,Z=0}
 Normal = Normal or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Point at +0x0, Normal at +0x18
 writeDouble(_params + 0x0, (Point and Point.X) or 0)
 writeDouble(_params + 0x8, (Point and Point.Y) or 0)
 writeDouble(_params + 0x10, (Point and Point.Z) or 0)
 writeDouble(_params + 0x18, (Normal and Normal.X) or 0)
 writeDouble(_params + 0x20, (Normal and Normal.Y) or 0)
 writeDouble(_params + 0x28, (Normal and Normal.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "MakePlaneFromPointAndNormal", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakePlaneFromPointAndNormal");

BL4.MakePulsatingValue = function(OwnerAddress, InCurrentTime, InPulsesPerSecond, InPhase)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakePulsatingValue: Failed To Allocate The Params");return;end;
 InCurrentTime = InCurrentTime or 0
 InPulsesPerSecond = InPulsesPerSecond or 0
 InPhase = InPhase or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InCurrentTime at +0x0, InPulsesPerSecond at +0x4, InPhase at +0x8
 writeFloat(_params + 0x0, InCurrentTime)
 writeFloat(_params + 0x4, InPulsesPerSecond)
 writeFloat(_params + 0x8, InPhase)
 UE.CallProcessEventEx(OwnerAddress, "MakePulsatingValue", _params);
 local RET=readFloat(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakePulsatingValue");

BL4.MakeQualifiedFrameTime = function(OwnerAddress, frame, FrameRate, SubFrame)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeQualifiedFrameTime: Failed To Allocate The Params");return;end;
 SubFrame = SubFrame or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: frame at +0x0, FrameRate at +0x4, SubFrame at +0xC
 writeQword(_params + 0x0, frame)
 writeQword(_params + 0x4, FrameRate)
 writeFloat(_params + 0xC, SubFrame)
 UE.CallProcessEventEx(OwnerAddress, "MakeQualifiedFrameTime", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeQualifiedFrameTime");

BL4.MakeQuat = function(OwnerAddress, X, Y, Z, W)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeQuat: Failed To Allocate The Params");return;end;
 X = X or 0
 Y = Y or 0
 Z = Z or 0
 W = W or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: X at +0x0, Y at +0x4, Z at +0x8, W at +0xC
 writeFloat(_params + 0x0, X)
 writeFloat(_params + 0x4, Y)
 writeFloat(_params + 0x8, Z)
 writeFloat(_params + 0xC, W)
 UE.CallProcessEventEx(OwnerAddress, "MakeQuat", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeQuat");

BL4.MakeRandomStream = function(OwnerAddress, InitialSeed)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeRandomStream: Failed To Allocate The Params");return;end;
 InitialSeed = InitialSeed or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InitialSeed at +0x0
 writeInteger(_params + 0x0, InitialSeed)
 UE.CallProcessEventEx(OwnerAddress, "MakeRandomStream", _params);
 local RET=readQword(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeRandomStream");

BL4.MakeRelativeTransform = function(OwnerAddress, A, RelativeTo)
 local _paramsSize = 0x120
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeRelativeTransform: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, RelativeTo at +0x60
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x60, RelativeTo)
 UE.CallProcessEventEx(OwnerAddress, "MakeRelativeTransform", _params);
 local RET=readQword(_params + 0xC0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeRelativeTransform");

BL4.MakeRotationFromAxes = function(OwnerAddress, Forward, Right, Up)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeRotationFromAxes: Failed To Allocate The Params");return;end;
 Forward = Forward or {X=0,Y=0,Z=0}
 Right = Right or {X=0,Y=0,Z=0}
 Up = Up or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Forward at +0x0, Right at +0x18, Up at +0x30
 writeDouble(_params + 0x0, (Forward and Forward.X) or 0)
 writeDouble(_params + 0x8, (Forward and Forward.Y) or 0)
 writeDouble(_params + 0x10, (Forward and Forward.Z) or 0)
 writeDouble(_params + 0x18, (Right and Right.X) or 0)
 writeDouble(_params + 0x20, (Right and Right.Y) or 0)
 writeDouble(_params + 0x28, (Right and Right.Z) or 0)
 writeDouble(_params + 0x30, (Up and Up.X) or 0)
 writeDouble(_params + 0x38, (Up and Up.Y) or 0)
 writeDouble(_params + 0x40, (Up and Up.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "MakeRotationFromAxes", _params);
 local RET={Pitch=readFloat(_params+0x48),Yaw=readFloat(_params+0x50),Roll=readFloat(_params+0x58)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeRotationFromAxes");

BL4.MakeRotator = function(OwnerAddress, roll, pitch, yaw)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeRotator: Failed To Allocate The Params");return;end;
 roll = roll or 0
 pitch = pitch or 0
 yaw = yaw or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: roll at +0x0, pitch at +0x4, yaw at +0x8
 writeFloat(_params + 0x0, roll)
 writeFloat(_params + 0x4, pitch)
 writeFloat(_params + 0x8, yaw)
 UE.CallProcessEventEx(OwnerAddress, "MakeRotator", _params);
 local RET={Pitch=readFloat(_params+0x10),Yaw=readFloat(_params+0x18),Roll=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeRotator");

BL4.MakeRotFromX = function(OwnerAddress, X)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeRotFromX: Failed To Allocate The Params");return;end;
 X = X or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: X at +0x0
 writeDouble(_params + 0x0, (X and X.X) or 0)
 writeDouble(_params + 0x8, (X and X.Y) or 0)
 writeDouble(_params + 0x10, (X and X.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "MakeRotFromX", _params);
 local RET={Pitch=readFloat(_params+0x18),Yaw=readFloat(_params+0x20),Roll=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeRotFromX");

BL4.MakeRotFromXY = function(OwnerAddress, X, Y)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeRotFromXY: Failed To Allocate The Params");return;end;
 X = X or {X=0,Y=0,Z=0}
 Y = Y or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: X at +0x0, Y at +0x18
 writeDouble(_params + 0x0, (X and X.X) or 0)
 writeDouble(_params + 0x8, (X and X.Y) or 0)
 writeDouble(_params + 0x10, (X and X.Z) or 0)
 writeDouble(_params + 0x18, (Y and Y.X) or 0)
 writeDouble(_params + 0x20, (Y and Y.Y) or 0)
 writeDouble(_params + 0x28, (Y and Y.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "MakeRotFromXY", _params);
 local RET={Pitch=readFloat(_params+0x30),Yaw=readFloat(_params+0x38),Roll=readFloat(_params+0x40)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeRotFromXY");

BL4.MakeRotFromXZ = function(OwnerAddress, X, Z)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeRotFromXZ: Failed To Allocate The Params");return;end;
 X = X or {X=0,Y=0,Z=0}
 Z = Z or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: X at +0x0, Z at +0x18
 writeDouble(_params + 0x0, (X and X.X) or 0)
 writeDouble(_params + 0x8, (X and X.Y) or 0)
 writeDouble(_params + 0x10, (X and X.Z) or 0)
 writeDouble(_params + 0x18, (Z and Z.X) or 0)
 writeDouble(_params + 0x20, (Z and Z.Y) or 0)
 writeDouble(_params + 0x28, (Z and Z.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "MakeRotFromXZ", _params);
 local RET={Pitch=readFloat(_params+0x30),Yaw=readFloat(_params+0x38),Roll=readFloat(_params+0x40)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeRotFromXZ");

BL4.MakeRotFromY = function(OwnerAddress, Y)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeRotFromY: Failed To Allocate The Params");return;end;
 Y = Y or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Y at +0x0
 writeDouble(_params + 0x0, (Y and Y.X) or 0)
 writeDouble(_params + 0x8, (Y and Y.Y) or 0)
 writeDouble(_params + 0x10, (Y and Y.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "MakeRotFromY", _params);
 local RET={Pitch=readFloat(_params+0x18),Yaw=readFloat(_params+0x20),Roll=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeRotFromY");

BL4.MakeRotFromYX = function(OwnerAddress, Y, X)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeRotFromYX: Failed To Allocate The Params");return;end;
 Y = Y or {X=0,Y=0,Z=0}
 X = X or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Y at +0x0, X at +0x18
 writeDouble(_params + 0x0, (Y and Y.X) or 0)
 writeDouble(_params + 0x8, (Y and Y.Y) or 0)
 writeDouble(_params + 0x10, (Y and Y.Z) or 0)
 writeDouble(_params + 0x18, (X and X.X) or 0)
 writeDouble(_params + 0x20, (X and X.Y) or 0)
 writeDouble(_params + 0x28, (X and X.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "MakeRotFromYX", _params);
 local RET={Pitch=readFloat(_params+0x30),Yaw=readFloat(_params+0x38),Roll=readFloat(_params+0x40)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeRotFromYX");

BL4.MakeRotFromYZ = function(OwnerAddress, Y, Z)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeRotFromYZ: Failed To Allocate The Params");return;end;
 Y = Y or {X=0,Y=0,Z=0}
 Z = Z or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Y at +0x0, Z at +0x18
 writeDouble(_params + 0x0, (Y and Y.X) or 0)
 writeDouble(_params + 0x8, (Y and Y.Y) or 0)
 writeDouble(_params + 0x10, (Y and Y.Z) or 0)
 writeDouble(_params + 0x18, (Z and Z.X) or 0)
 writeDouble(_params + 0x20, (Z and Z.Y) or 0)
 writeDouble(_params + 0x28, (Z and Z.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "MakeRotFromYZ", _params);
 local RET={Pitch=readFloat(_params+0x30),Yaw=readFloat(_params+0x38),Roll=readFloat(_params+0x40)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeRotFromYZ");

BL4.MakeRotFromZ = function(OwnerAddress, Z)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeRotFromZ: Failed To Allocate The Params");return;end;
 Z = Z or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Z at +0x0
 writeDouble(_params + 0x0, (Z and Z.X) or 0)
 writeDouble(_params + 0x8, (Z and Z.Y) or 0)
 writeDouble(_params + 0x10, (Z and Z.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "MakeRotFromZ", _params);
 local RET={Pitch=readFloat(_params+0x18),Yaw=readFloat(_params+0x20),Roll=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeRotFromZ");

BL4.MakeRotFromZX = function(OwnerAddress, Z, X)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeRotFromZX: Failed To Allocate The Params");return;end;
 Z = Z or {X=0,Y=0,Z=0}
 X = X or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Z at +0x0, X at +0x18
 writeDouble(_params + 0x0, (Z and Z.X) or 0)
 writeDouble(_params + 0x8, (Z and Z.Y) or 0)
 writeDouble(_params + 0x10, (Z and Z.Z) or 0)
 writeDouble(_params + 0x18, (X and X.X) or 0)
 writeDouble(_params + 0x20, (X and X.Y) or 0)
 writeDouble(_params + 0x28, (X and X.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "MakeRotFromZX", _params);
 local RET={Pitch=readFloat(_params+0x30),Yaw=readFloat(_params+0x38),Roll=readFloat(_params+0x40)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeRotFromZX");

BL4.MakeRotFromZY = function(OwnerAddress, Z, Y)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeRotFromZY: Failed To Allocate The Params");return;end;
 Z = Z or {X=0,Y=0,Z=0}
 Y = Y or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Z at +0x0, Y at +0x18
 writeDouble(_params + 0x0, (Z and Z.X) or 0)
 writeDouble(_params + 0x8, (Z and Z.Y) or 0)
 writeDouble(_params + 0x10, (Z and Z.Z) or 0)
 writeDouble(_params + 0x18, (Y and Y.X) or 0)
 writeDouble(_params + 0x20, (Y and Y.Y) or 0)
 writeDouble(_params + 0x28, (Y and Y.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "MakeRotFromZY", _params);
 local RET={Pitch=readFloat(_params+0x30),Yaw=readFloat(_params+0x38),Roll=readFloat(_params+0x40)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeRotFromZY");

BL4.MakeTimespan = function(OwnerAddress, Days, Hours, Minutes, Seconds, Milliseconds)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeTimespan: Failed To Allocate The Params");return;end;
 Days = Days or 0
 Hours = Hours or 0
 Minutes = Minutes or 0
 Seconds = Seconds or 0
 Milliseconds = Milliseconds or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Days at +0x0, Hours at +0x4, Minutes at +0x8, Seconds at +0xC, Milliseconds at +0x10
 writeInteger(_params + 0x0, Days)
 writeInteger(_params + 0x4, Hours)
 writeInteger(_params + 0x8, Minutes)
 writeInteger(_params + 0xC, Seconds)
 writeInteger(_params + 0x10, Milliseconds)
 UE.CallProcessEventEx(OwnerAddress, "MakeTimespan", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeTimespan");

BL4.MakeTimespan2 = function(OwnerAddress, Days, Hours, Minutes, Seconds, FractionNano)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeTimespan2: Failed To Allocate The Params");return;end;
 Days = Days or 0
 Hours = Hours or 0
 Minutes = Minutes or 0
 Seconds = Seconds or 0
 FractionNano = FractionNano or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Days at +0x0, Hours at +0x4, Minutes at +0x8, Seconds at +0xC, FractionNano at +0x10
 writeInteger(_params + 0x0, Days)
 writeInteger(_params + 0x4, Hours)
 writeInteger(_params + 0x8, Minutes)
 writeInteger(_params + 0xC, Seconds)
 writeInteger(_params + 0x10, FractionNano)
 UE.CallProcessEventEx(OwnerAddress, "MakeTimespan2", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeTimespan2");

BL4.MakeTransform = function(OwnerAddress, Location, Rotation, scale)
 local _paramsSize = 0xB0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeTransform: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 Rotation = Rotation or {Pitch=0,Yaw=0,Roll=0}
 scale = scale or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Location at +0x0, Rotation at +0x18, scale at +0x30
 writeDouble(_params + 0x0, (Location and Location.X) or 0)
 writeDouble(_params + 0x8, (Location and Location.Y) or 0)
 writeDouble(_params + 0x10, (Location and Location.Z) or 0)
 writeDouble(_params + 0x18, (Rotation and Rotation.Pitch) or 0)
 writeDouble(_params + 0x20, (Rotation and Rotation.Yaw) or 0)
 writeDouble(_params + 0x28, (Rotation and Rotation.Roll) or 0)
 writeDouble(_params + 0x30, (scale and scale.X) or 0)
 writeDouble(_params + 0x38, (scale and scale.Y) or 0)
 writeDouble(_params + 0x40, (scale and scale.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "MakeTransform", _params);
 local RET=readQword(_params + 0x50);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeTransform");

BL4.MakeVector = function(OwnerAddress, X, Y, Z)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeVector: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: X at +0x0, Y at +0x8, Z at +0x10
 writeQword(_params + 0x0, X)
 writeQword(_params + 0x8, Y)
 writeQword(_params + 0x10, Z)
 UE.CallProcessEventEx(OwnerAddress, "MakeVector", _params);
 local RET={X=readFloat(_params+0x18),Y=readFloat(_params+0x20),Z=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeVector");

BL4.MakeVector2D = function(OwnerAddress, X, Y)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeVector2D: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: X at +0x0, Y at +0x8
 writeQword(_params + 0x0, X)
 writeQword(_params + 0x8, Y)
 UE.CallProcessEventEx(OwnerAddress, "MakeVector2D", _params);
 local RET={X=readFloat(_params+0x10),Y=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeVector2D");

BL4.MakeVector4 = function(OwnerAddress, X, Y, Z, W)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeVector4: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: X at +0x0, Y at +0x8, Z at +0x10, W at +0x18
 writeQword(_params + 0x0, X)
 writeQword(_params + 0x8, Y)
 writeQword(_params + 0x10, Z)
 writeQword(_params + 0x18, W)
 UE.CallProcessEventEx(OwnerAddress, "MakeVector4", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeVector4");

BL4.MakeVector_NetQuantize = function(OwnerAddress, X, Y, Z)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeVector_NetQuantize: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: X at +0x0, Y at +0x8, Z at +0x10
 writeQword(_params + 0x0, X)
 writeQword(_params + 0x8, Y)
 writeQword(_params + 0x10, Z)
 UE.CallProcessEventEx(OwnerAddress, "MakeVector_NetQuantize", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeVector_NetQuantize");

BL4.MakeVector_NetQuantize10 = function(OwnerAddress, X, Y, Z)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeVector_NetQuantize10: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: X at +0x0, Y at +0x8, Z at +0x10
 writeQword(_params + 0x0, X)
 writeQword(_params + 0x8, Y)
 writeQword(_params + 0x10, Z)
 UE.CallProcessEventEx(OwnerAddress, "MakeVector_NetQuantize10", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeVector_NetQuantize10");

BL4.MakeVector_NetQuantize100 = function(OwnerAddress, X, Y, Z)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeVector_NetQuantize100: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: X at +0x0, Y at +0x8, Z at +0x10
 writeQword(_params + 0x0, X)
 writeQword(_params + 0x8, Y)
 writeQword(_params + 0x10, Z)
 UE.CallProcessEventEx(OwnerAddress, "MakeVector_NetQuantize100", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeVector_NetQuantize100");

BL4.MakeVector_NetQuantizeNormal = function(OwnerAddress, X, Y, Z)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeVector_NetQuantizeNormal: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: X at +0x0, Y at +0x8, Z at +0x10
 writeQword(_params + 0x0, X)
 writeQword(_params + 0x8, Y)
 writeQword(_params + 0x10, Z)
 UE.CallProcessEventEx(OwnerAddress, "MakeVector_NetQuantizeNormal", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeVector_NetQuantizeNormal");

BL4.MapRangeClamped = function(OwnerAddress, Value, InRangeA, InRangeB, OutRangeA, OutRangeB)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MapRangeClamped: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0, InRangeA at +0x8, InRangeB at +0x10, OutRangeA at +0x18, OutRangeB at +0x20
 writeQword(_params + 0x0, Value)
 writeQword(_params + 0x8, InRangeA)
 writeQword(_params + 0x10, InRangeB)
 writeQword(_params + 0x18, OutRangeA)
 writeQword(_params + 0x20, OutRangeB)
 UE.CallProcessEventEx(OwnerAddress, "MapRangeClamped", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MapRangeClamped");

BL4.MapRangeUnclamped = function(OwnerAddress, Value, InRangeA, InRangeB, OutRangeA, OutRangeB)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MapRangeUnclamped: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0, InRangeA at +0x8, InRangeB at +0x10, OutRangeA at +0x18, OutRangeB at +0x20
 writeQword(_params + 0x0, Value)
 writeQword(_params + 0x8, InRangeA)
 writeQword(_params + 0x10, InRangeB)
 writeQword(_params + 0x18, OutRangeA)
 writeQword(_params + 0x20, OutRangeB)
 UE.CallProcessEventEx(OwnerAddress, "MapRangeUnclamped", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MapRangeUnclamped");

BL4.Matrix_ApplyScale = function(OwnerAddress, M, scale)
 local _paramsSize = 0x110
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_ApplyScale: Failed To Allocate The Params");return;end;
 scale = scale or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0, scale at +0x80
 writeQword(_params + 0x0, M)
 writeFloat(_params + 0x80, scale)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_ApplyScale", _params);
 local RET=readQword(_params + 0x90);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_ApplyScale");

BL4.Matrix_ConcatenateTranslation = function(OwnerAddress, M, Translation)
 local _paramsSize = 0x120
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_ConcatenateTranslation: Failed To Allocate The Params");return;end;
 Translation = Translation or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0, Translation at +0x80
 writeQword(_params + 0x0, M)
 writeDouble(_params + 0x80, (Translation and Translation.X) or 0)
 writeDouble(_params + 0x88, (Translation and Translation.Y) or 0)
 writeDouble(_params + 0x90, (Translation and Translation.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_ConcatenateTranslation", _params);
 local RET=readQword(_params + 0xA0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_ConcatenateTranslation");

BL4.Matrix_ContainsNaN = function(OwnerAddress, M)
 local _paramsSize = 0x88
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_ContainsNaN: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0
 writeQword(_params + 0x0, M)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_ContainsNaN", _params);
 local RET=readByte(_params + 0x80);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_ContainsNaN");

BL4.Matrix_GetColumn = function(OwnerAddress, M, Column)
 local _paramsSize = 0xA0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_GetColumn: Failed To Allocate The Params");return;end;
 Column = Column or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0, Column at +0x80
 writeQword(_params + 0x0, M)
 writeByte(_params + 0x80, Column)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_GetColumn", _params);
 local RET={X=readFloat(_params+0x88),Y=readFloat(_params+0x90),Z=readFloat(_params+0x98)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_GetColumn");

BL4.Matrix_GetDeterminant = function(OwnerAddress, M)
 local _paramsSize = 0x88
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_GetDeterminant: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0
 writeQword(_params + 0x0, M)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_GetDeterminant", _params);
 local RET=readFloat(_params + 0x80);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_GetDeterminant");

BL4.Matrix_GetFrustumBottomPlane = function(OwnerAddress, M, OutPlane)
 local _paramsSize = 0xA8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_GetFrustumBottomPlane: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0, OutPlane at +0x80
 writeQword(_params + 0x0, M)
 writeQword(_params + 0x80, OutPlane)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_GetFrustumBottomPlane", _params);
 local RET=readByte(_params + 0xA0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_GetFrustumBottomPlane");

BL4.Matrix_GetFrustumFarPlane = function(OwnerAddress, M, OutPlane)
 local _paramsSize = 0xA8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_GetFrustumFarPlane: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0, OutPlane at +0x80
 writeQword(_params + 0x0, M)
 writeQword(_params + 0x80, OutPlane)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_GetFrustumFarPlane", _params);
 local RET=readByte(_params + 0xA0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_GetFrustumFarPlane");

BL4.Matrix_GetFrustumLeftPlane = function(OwnerAddress, M, OutPlane)
 local _paramsSize = 0xA8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_GetFrustumLeftPlane: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0, OutPlane at +0x80
 writeQword(_params + 0x0, M)
 writeQword(_params + 0x80, OutPlane)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_GetFrustumLeftPlane", _params);
 local RET=readByte(_params + 0xA0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_GetFrustumLeftPlane");

BL4.Matrix_GetFrustumNearPlane = function(OwnerAddress, M, OutPlane)
 local _paramsSize = 0xA8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_GetFrustumNearPlane: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0, OutPlane at +0x80
 writeQword(_params + 0x0, M)
 writeQword(_params + 0x80, OutPlane)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_GetFrustumNearPlane", _params);
 local RET=readByte(_params + 0xA0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_GetFrustumNearPlane");

BL4.Matrix_GetFrustumRightPlane = function(OwnerAddress, M, OutPlane)
 local _paramsSize = 0xA8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_GetFrustumRightPlane: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0, OutPlane at +0x80
 writeQword(_params + 0x0, M)
 writeQword(_params + 0x80, OutPlane)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_GetFrustumRightPlane", _params);
 local RET=readByte(_params + 0xA0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_GetFrustumRightPlane");

BL4.Matrix_GetFrustumTopPlane = function(OwnerAddress, M, OutPlane)
 local _paramsSize = 0xA8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_GetFrustumTopPlane: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0, OutPlane at +0x80
 writeQword(_params + 0x0, M)
 writeQword(_params + 0x80, OutPlane)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_GetFrustumTopPlane", _params);
 local RET=readByte(_params + 0xA0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_GetFrustumTopPlane");

BL4.Matrix_GetInverse = function(OwnerAddress, M)
 local _paramsSize = 0x100
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_GetInverse: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0
 writeQword(_params + 0x0, M)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_GetInverse", _params);
 local RET=readQword(_params + 0x80);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_GetInverse");

BL4.Matrix_GetMatrixWithoutScale = function(OwnerAddress, M, Tolerance)
 local _paramsSize = 0x110
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_GetMatrixWithoutScale: Failed To Allocate The Params");return;end;
 Tolerance = Tolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0, Tolerance at +0x80
 writeQword(_params + 0x0, M)
 writeFloat(_params + 0x80, Tolerance)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_GetMatrixWithoutScale", _params);
 local RET=readQword(_params + 0x90);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_GetMatrixWithoutScale");

BL4.Matrix_GetMaximumAxisScale = function(OwnerAddress, M)
 local _paramsSize = 0x88
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_GetMaximumAxisScale: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0
 writeQword(_params + 0x0, M)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_GetMaximumAxisScale", _params);
 local RET=readFloat(_params + 0x80);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_GetMaximumAxisScale");

BL4.Matrix_GetOrigin = function(OwnerAddress, InMatrix)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_GetOrigin: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InMatrix at +0x0
 writeQword(_params + 0x0, InMatrix)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_GetOrigin", _params);
 local RET={X=readFloat(_params+0x80),Y=readFloat(_params+0x88),Z=readFloat(_params+0x90)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_GetOrigin");

BL4.Matrix_GetRotator = function(OwnerAddress, M)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_GetRotator: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0
 writeQword(_params + 0x0, M)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_GetRotator", _params);
 local RET={Pitch=readFloat(_params+0x80),Yaw=readFloat(_params+0x88),Roll=readFloat(_params+0x90)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_GetRotator");

BL4.Matrix_GetRotDeterminant = function(OwnerAddress, M)
 local _paramsSize = 0x88
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_GetRotDeterminant: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0
 writeQword(_params + 0x0, M)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_GetRotDeterminant", _params);
 local RET=readFloat(_params + 0x80);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_GetRotDeterminant");

BL4.Matrix_GetScaledAxes = function(OwnerAddress, M, X, Y, Z)
 local _paramsSize = 0xC8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_GetScaledAxes: Failed To Allocate The Params");return;end;
 X = X or {X=0,Y=0,Z=0}
 Y = Y or {X=0,Y=0,Z=0}
 Z = Z or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0, X at +0x80, Y at +0x98, Z at +0xB0
 writeQword(_params + 0x0, M)
 writeDouble(_params + 0x80, (X and X.X) or 0)
 writeDouble(_params + 0x88, (X and X.Y) or 0)
 writeDouble(_params + 0x90, (X and X.Z) or 0)
 writeDouble(_params + 0x98, (Y and Y.X) or 0)
 writeDouble(_params + 0xA0, (Y and Y.Y) or 0)
 writeDouble(_params + 0xA8, (Y and Y.Z) or 0)
 writeDouble(_params + 0xB0, (Z and Z.X) or 0)
 writeDouble(_params + 0xB8, (Z and Z.Y) or 0)
 writeDouble(_params + 0xC0, (Z and Z.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_GetScaledAxes", _params);
 deAlloc(_params);
end
FNR("BL4.Matrix_GetScaledAxes");

BL4.Matrix_GetScaledAxis = function(OwnerAddress, M, Axis)
 local _paramsSize = 0xA0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_GetScaledAxis: Failed To Allocate The Params");return;end;
 Axis = Axis or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0, Axis at +0x80
 writeQword(_params + 0x0, M)
 writeByte(_params + 0x80, Axis)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_GetScaledAxis", _params);
 local RET={X=readFloat(_params+0x88),Y=readFloat(_params+0x90),Z=readFloat(_params+0x98)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_GetScaledAxis");

BL4.Matrix_GetScaleVector = function(OwnerAddress, M, Tolerance)
 local _paramsSize = 0xA0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_GetScaleVector: Failed To Allocate The Params");return;end;
 Tolerance = Tolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0, Tolerance at +0x80
 writeQword(_params + 0x0, M)
 writeFloat(_params + 0x80, Tolerance)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_GetScaleVector", _params);
 local RET={X=readFloat(_params+0x88),Y=readFloat(_params+0x90),Z=readFloat(_params+0x98)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_GetScaleVector");

BL4.Matrix_GetTransposeAdjoint = function(OwnerAddress, M)
 local _paramsSize = 0x100
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_GetTransposeAdjoint: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0
 writeQword(_params + 0x0, M)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_GetTransposeAdjoint", _params);
 local RET=readQword(_params + 0x80);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_GetTransposeAdjoint");

BL4.Matrix_GetTransposed = function(OwnerAddress, M)
 local _paramsSize = 0x100
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_GetTransposed: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0
 writeQword(_params + 0x0, M)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_GetTransposed", _params);
 local RET=readQword(_params + 0x80);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_GetTransposed");

BL4.Matrix_GetUnitAxes = function(OwnerAddress, M, X, Y, Z)
 local _paramsSize = 0xC8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_GetUnitAxes: Failed To Allocate The Params");return;end;
 X = X or {X=0,Y=0,Z=0}
 Y = Y or {X=0,Y=0,Z=0}
 Z = Z or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0, X at +0x80, Y at +0x98, Z at +0xB0
 writeQword(_params + 0x0, M)
 writeDouble(_params + 0x80, (X and X.X) or 0)
 writeDouble(_params + 0x88, (X and X.Y) or 0)
 writeDouble(_params + 0x90, (X and X.Z) or 0)
 writeDouble(_params + 0x98, (Y and Y.X) or 0)
 writeDouble(_params + 0xA0, (Y and Y.Y) or 0)
 writeDouble(_params + 0xA8, (Y and Y.Z) or 0)
 writeDouble(_params + 0xB0, (Z and Z.X) or 0)
 writeDouble(_params + 0xB8, (Z and Z.Y) or 0)
 writeDouble(_params + 0xC0, (Z and Z.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_GetUnitAxes", _params);
 deAlloc(_params);
end
FNR("BL4.Matrix_GetUnitAxes");

BL4.Matrix_GetUnitAxis = function(OwnerAddress, M, Axis)
 local _paramsSize = 0xA0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_GetUnitAxis: Failed To Allocate The Params");return;end;
 Axis = Axis or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0, Axis at +0x80
 writeQword(_params + 0x0, M)
 writeByte(_params + 0x80, Axis)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_GetUnitAxis", _params);
 local RET={X=readFloat(_params+0x88),Y=readFloat(_params+0x90),Z=readFloat(_params+0x98)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_GetUnitAxis");

BL4.Matrix_Identity = function(OwnerAddress)
 local _paramsSize = 0x80
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_Identity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "Matrix_Identity", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_Identity");

BL4.Matrix_InverseTransformPosition = function(OwnerAddress, M, V)
 local _paramsSize = 0xB0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_InverseTransformPosition: Failed To Allocate The Params");return;end;
 V = V or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0, V at +0x80
 writeQword(_params + 0x0, M)
 writeDouble(_params + 0x80, (V and V.X) or 0)
 writeDouble(_params + 0x88, (V and V.Y) or 0)
 writeDouble(_params + 0x90, (V and V.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_InverseTransformPosition", _params);
 local RET={X=readFloat(_params+0x98),Y=readFloat(_params+0xA0),Z=readFloat(_params+0xA8)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_InverseTransformPosition");

BL4.Matrix_InverseTransformVector = function(OwnerAddress, M, V)
 local _paramsSize = 0xB0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_InverseTransformVector: Failed To Allocate The Params");return;end;
 V = V or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0, V at +0x80
 writeQword(_params + 0x0, M)
 writeDouble(_params + 0x80, (V and V.X) or 0)
 writeDouble(_params + 0x88, (V and V.Y) or 0)
 writeDouble(_params + 0x90, (V and V.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_InverseTransformVector", _params);
 local RET={X=readFloat(_params+0x98),Y=readFloat(_params+0xA0),Z=readFloat(_params+0xA8)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_InverseTransformVector");

BL4.Matrix_Mirror = function(OwnerAddress, M, MirrorAxis, FlipAxis)
 local _paramsSize = 0x110
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_Mirror: Failed To Allocate The Params");return;end;
 MirrorAxis = MirrorAxis or 0
 FlipAxis = FlipAxis or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0, MirrorAxis at +0x80, FlipAxis at +0x81
 writeQword(_params + 0x0, M)
 writeByte(_params + 0x80, MirrorAxis)
 writeByte(_params + 0x81, FlipAxis)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_Mirror", _params);
 local RET=readQword(_params + 0x90);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_Mirror");

BL4.Matrix_RemoveScaling = function(OwnerAddress, M, Tolerance)
 local _paramsSize = 0x88
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_RemoveScaling: Failed To Allocate The Params");return;end;
 Tolerance = Tolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0, Tolerance at +0x80
 writeQword(_params + 0x0, M)
 writeFloat(_params + 0x80, Tolerance)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_RemoveScaling", _params);
 deAlloc(_params);
end
FNR("BL4.Matrix_RemoveScaling");

BL4.Matrix_RemoveTranslation = function(OwnerAddress, M)
 local _paramsSize = 0x100
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_RemoveTranslation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0
 writeQword(_params + 0x0, M)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_RemoveTranslation", _params);
 local RET=readQword(_params + 0x80);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_RemoveTranslation");

BL4.Matrix_ScaleTranslation = function(OwnerAddress, M, Scale3D)
 local _paramsSize = 0x120
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_ScaleTranslation: Failed To Allocate The Params");return;end;
 Scale3D = Scale3D or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0, Scale3D at +0x80
 writeQword(_params + 0x0, M)
 writeDouble(_params + 0x80, (Scale3D and Scale3D.X) or 0)
 writeDouble(_params + 0x88, (Scale3D and Scale3D.Y) or 0)
 writeDouble(_params + 0x90, (Scale3D and Scale3D.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_ScaleTranslation", _params);
 local RET=readQword(_params + 0xA0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_ScaleTranslation");

BL4.Matrix_SetAxis = function(OwnerAddress, M, Axis, AxisVector)
 local _paramsSize = 0xA0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_SetAxis: Failed To Allocate The Params");return;end;
 Axis = Axis or 0
 AxisVector = AxisVector or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0, Axis at +0x80, AxisVector at +0x88
 writeQword(_params + 0x0, M)
 writeByte(_params + 0x80, Axis)
 writeDouble(_params + 0x88, (AxisVector and AxisVector.X) or 0)
 writeDouble(_params + 0x90, (AxisVector and AxisVector.Y) or 0)
 writeDouble(_params + 0x98, (AxisVector and AxisVector.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_SetAxis", _params);
 deAlloc(_params);
end
FNR("BL4.Matrix_SetAxis");

BL4.Matrix_SetColumn = function(OwnerAddress, M, Column, Value)
 local _paramsSize = 0xA0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_SetColumn: Failed To Allocate The Params");return;end;
 Column = Column or 0
 Value = Value or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0, Column at +0x80, Value at +0x88
 writeQword(_params + 0x0, M)
 writeByte(_params + 0x80, Column)
 writeDouble(_params + 0x88, (Value and Value.X) or 0)
 writeDouble(_params + 0x90, (Value and Value.Y) or 0)
 writeDouble(_params + 0x98, (Value and Value.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_SetColumn", _params);
 deAlloc(_params);
end
FNR("BL4.Matrix_SetColumn");

BL4.Matrix_SetOrigin = function(OwnerAddress, M, NewOrigin)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_SetOrigin: Failed To Allocate The Params");return;end;
 NewOrigin = NewOrigin or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0, NewOrigin at +0x80
 writeQword(_params + 0x0, M)
 writeDouble(_params + 0x80, (NewOrigin and NewOrigin.X) or 0)
 writeDouble(_params + 0x88, (NewOrigin and NewOrigin.Y) or 0)
 writeDouble(_params + 0x90, (NewOrigin and NewOrigin.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_SetOrigin", _params);
 deAlloc(_params);
end
FNR("BL4.Matrix_SetOrigin");

BL4.Matrix_ToQuat = function(OwnerAddress, M)
 local _paramsSize = 0xA0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_ToQuat: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0
 writeQword(_params + 0x0, M)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_ToQuat", _params);
 local RET=readQword(_params + 0x80);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_ToQuat");

BL4.Matrix_TransformPosition = function(OwnerAddress, M, V)
 local _paramsSize = 0xC0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_TransformPosition: Failed To Allocate The Params");return;end;
 V = V or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0, V at +0x80
 writeQword(_params + 0x0, M)
 writeDouble(_params + 0x80, (V and V.X) or 0)
 writeDouble(_params + 0x88, (V and V.Y) or 0)
 writeDouble(_params + 0x90, (V and V.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_TransformPosition", _params);
 local RET=readQword(_params + 0xA0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_TransformPosition");

BL4.Matrix_TransformVector = function(OwnerAddress, M, V)
 local _paramsSize = 0xC0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_TransformVector: Failed To Allocate The Params");return;end;
 V = V or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0, V at +0x80
 writeQword(_params + 0x0, M)
 writeDouble(_params + 0x80, (V and V.X) or 0)
 writeDouble(_params + 0x88, (V and V.Y) or 0)
 writeDouble(_params + 0x90, (V and V.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_TransformVector", _params);
 local RET=readQword(_params + 0xA0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_TransformVector");

BL4.Matrix_TransformVector4 = function(OwnerAddress, M, V)
 local _paramsSize = 0xC0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Matrix_TransformVector4: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: M at +0x0, V at +0x80
 writeQword(_params + 0x0, M)
 writeQword(_params + 0x80, V)
 UE.CallProcessEventEx(OwnerAddress, "Matrix_TransformVector4", _params);
 local RET=readQword(_params + 0xA0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Matrix_TransformVector4");

BL4.MAX = function(OwnerAddress, A, B)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MAX: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 UE.CallProcessEventEx(OwnerAddress, "MAX", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MAX");

BL4.MaxInt64 = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MaxInt64: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "MaxInt64", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MaxInt64");

BL4.MaxOfByteArray = function(OwnerAddress, ByteArray, IndexOfMaxValue, MaxValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MaxOfByteArray: Failed To Allocate The Params");return;end;
 IndexOfMaxValue = IndexOfMaxValue or 0
 MaxValue = MaxValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ByteArray at +0x0, IndexOfMaxValue at +0x10, MaxValue at +0x14
 writeQword(_params + 0x0, ByteArray)
 writeInteger(_params + 0x10, IndexOfMaxValue)
 writeByte(_params + 0x14, MaxValue)
 UE.CallProcessEventEx(OwnerAddress, "MaxOfByteArray", _params);
 deAlloc(_params);
end
FNR("BL4.MaxOfByteArray");

BL4.MaxOfFloatArray = function(OwnerAddress, FloatArray, IndexOfMaxValue, MaxValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MaxOfFloatArray: Failed To Allocate The Params");return;end;
 IndexOfMaxValue = IndexOfMaxValue or 0
 MaxValue = MaxValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: FloatArray at +0x0, IndexOfMaxValue at +0x10, MaxValue at +0x14
 writeQword(_params + 0x0, FloatArray)
 writeInteger(_params + 0x10, IndexOfMaxValue)
 writeFloat(_params + 0x14, MaxValue)
 UE.CallProcessEventEx(OwnerAddress, "MaxOfFloatArray", _params);
 deAlloc(_params);
end
FNR("BL4.MaxOfFloatArray");

BL4.MaxOfIntArray = function(OwnerAddress, IntArray, IndexOfMaxValue, MaxValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MaxOfIntArray: Failed To Allocate The Params");return;end;
 IndexOfMaxValue = IndexOfMaxValue or 0
 MaxValue = MaxValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: IntArray at +0x0, IndexOfMaxValue at +0x10, MaxValue at +0x14
 writeQword(_params + 0x0, IntArray)
 writeInteger(_params + 0x10, IndexOfMaxValue)
 writeInteger(_params + 0x14, MaxValue)
 UE.CallProcessEventEx(OwnerAddress, "MaxOfIntArray", _params);
 deAlloc(_params);
end
FNR("BL4.MaxOfIntArray");

BL4.MedianOfIntArray = function(OwnerAddress, IntArray, MedianValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MedianOfIntArray: Failed To Allocate The Params");return;end;
 MedianValue = MedianValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: IntArray at +0x0, MedianValue at +0x10
 writeQword(_params + 0x0, IntArray)
 writeFloat(_params + 0x10, MedianValue)
 UE.CallProcessEventEx(OwnerAddress, "MedianOfIntArray", _params);
 deAlloc(_params);
end
FNR("BL4.MedianOfIntArray");

BL4.min = function(OwnerAddress, A, B)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.min: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 UE.CallProcessEventEx(OwnerAddress, "min", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.min");

BL4.MinAreaRectangle = function(WorldContextObject_Object, InPoints, SampleSurfaceNormal, OutRectCenter, OutRectRotation, OutRectLengthX, OutRectLengthY, bDebugDraw)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MinAreaRectangle: Failed To Allocate The Params");return;end;
 SampleSurfaceNormal = SampleSurfaceNormal or {X=0,Y=0,Z=0}
 OutRectCenter = OutRectCenter or {X=0,Y=0,Z=0}
 OutRectRotation = OutRectRotation or {Pitch=0,Yaw=0,Roll=0}
 OutRectLengthX = OutRectLengthX or 0
 OutRectLengthY = OutRectLengthY or 0
 bDebugDraw = bDebugDraw or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, InPoints at +0x8, SampleSurfaceNormal at +0x18, OutRectCenter at +0x30, OutRectRotation at +0x48, OutRectLengthX at +0x60, OutRectLengthY at +0x64, bDebugDraw at +0x68
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, InPoints)
 writeDouble(_params + 0x18, (SampleSurfaceNormal and SampleSurfaceNormal.X) or 0)
 writeDouble(_params + 0x20, (SampleSurfaceNormal and SampleSurfaceNormal.Y) or 0)
 writeDouble(_params + 0x28, (SampleSurfaceNormal and SampleSurfaceNormal.Z) or 0)
 writeDouble(_params + 0x30, (OutRectCenter and OutRectCenter.X) or 0)
 writeDouble(_params + 0x38, (OutRectCenter and OutRectCenter.Y) or 0)
 writeDouble(_params + 0x40, (OutRectCenter and OutRectCenter.Z) or 0)
 writeDouble(_params + 0x48, (OutRectRotation and OutRectRotation.Pitch) or 0)
 writeDouble(_params + 0x50, (OutRectRotation and OutRectRotation.Yaw) or 0)
 writeDouble(_params + 0x58, (OutRectRotation and OutRectRotation.Roll) or 0)
 writeFloat(_params + 0x60, OutRectLengthX)
 writeFloat(_params + 0x64, OutRectLengthY)
 writeByte(_params + 0x68, bDebugDraw)
 UE.CallProcessEventEx(WorldContextObject_Object, "MinAreaRectangle", _params);
 deAlloc(_params);
end
FNR("BL4.MinAreaRectangle");

BL4.MinInt64 = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MinInt64: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "MinInt64", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MinInt64");

BL4.MinOfByteArray = function(OwnerAddress, ByteArray, IndexOfMinValue, MinValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MinOfByteArray: Failed To Allocate The Params");return;end;
 IndexOfMinValue = IndexOfMinValue or 0
 MinValue = MinValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ByteArray at +0x0, IndexOfMinValue at +0x10, MinValue at +0x14
 writeQword(_params + 0x0, ByteArray)
 writeInteger(_params + 0x10, IndexOfMinValue)
 writeByte(_params + 0x14, MinValue)
 UE.CallProcessEventEx(OwnerAddress, "MinOfByteArray", _params);
 deAlloc(_params);
end
FNR("BL4.MinOfByteArray");

BL4.MinOfFloatArray = function(OwnerAddress, FloatArray, IndexOfMinValue, MinValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MinOfFloatArray: Failed To Allocate The Params");return;end;
 IndexOfMinValue = IndexOfMinValue or 0
 MinValue = MinValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: FloatArray at +0x0, IndexOfMinValue at +0x10, MinValue at +0x14
 writeQword(_params + 0x0, FloatArray)
 writeInteger(_params + 0x10, IndexOfMinValue)
 writeFloat(_params + 0x14, MinValue)
 UE.CallProcessEventEx(OwnerAddress, "MinOfFloatArray", _params);
 deAlloc(_params);
end
FNR("BL4.MinOfFloatArray");

BL4.MinOfIntArray = function(OwnerAddress, IntArray, IndexOfMinValue, MinValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MinOfIntArray: Failed To Allocate The Params");return;end;
 IndexOfMinValue = IndexOfMinValue or 0
 MinValue = MinValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: IntArray at +0x0, IndexOfMinValue at +0x10, MinValue at +0x14
 writeQword(_params + 0x0, IntArray)
 writeInteger(_params + 0x10, IndexOfMinValue)
 writeInteger(_params + 0x14, MinValue)
 UE.CallProcessEventEx(OwnerAddress, "MinOfIntArray", _params);
 deAlloc(_params);
end
FNR("BL4.MinOfIntArray");

BL4.MirrorVectorByNormal = function(OwnerAddress, InVect, InNormal)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MirrorVectorByNormal: Failed To Allocate The Params");return;end;
 InVect = InVect or {X=0,Y=0,Z=0}
 InNormal = InNormal or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVect at +0x0, InNormal at +0x18
 writeDouble(_params + 0x0, (InVect and InVect.X) or 0)
 writeDouble(_params + 0x8, (InVect and InVect.Y) or 0)
 writeDouble(_params + 0x10, (InVect and InVect.Z) or 0)
 writeDouble(_params + 0x18, (InNormal and InNormal.X) or 0)
 writeDouble(_params + 0x20, (InNormal and InNormal.Y) or 0)
 writeDouble(_params + 0x28, (InNormal and InNormal.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "MirrorVectorByNormal", _params);
 local RET={X=readFloat(_params+0x30),Y=readFloat(_params+0x38),Z=readFloat(_params+0x40)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.MirrorVectorByNormal");

BL4.Multiply_ByteByte = function(OwnerAddress, A, B)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Multiply_ByteByte: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x1
 writeByte(_params + 0x0, A)
 writeByte(_params + 0x1, B)
 UE.CallProcessEventEx(OwnerAddress, "Multiply_ByteByte", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Multiply_ByteByte");

BL4.Multiply_DoubleDouble = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Multiply_DoubleDouble: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Multiply_DoubleDouble", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Multiply_DoubleDouble");

BL4.Multiply_Int64Int64 = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Multiply_Int64Int64: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Multiply_Int64Int64", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Multiply_Int64Int64");

BL4.Multiply_IntFloat = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Multiply_IntFloat: Failed To Allocate The Params");return;end;
 A = A or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeInteger(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Multiply_IntFloat", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Multiply_IntFloat");

BL4.Multiply_IntInt = function(OwnerAddress, A, B)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Multiply_IntInt: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 UE.CallProcessEventEx(OwnerAddress, "Multiply_IntInt", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Multiply_IntInt");

BL4.Multiply_IntPointInt = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Multiply_IntPointInt: Failed To Allocate The Params");return;end;
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeInteger(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Multiply_IntPointInt", _params);
 local RET=readQword(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Multiply_IntPointInt");

BL4.Multiply_IntPointIntPoint = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Multiply_IntPointIntPoint: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Multiply_IntPointIntPoint", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Multiply_IntPointIntPoint");

BL4.Multiply_LinearColorFloat = function(OwnerAddress, A, B)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Multiply_LinearColorFloat: Failed To Allocate The Params");return;end;
 A = A or {R=0,G=0,B=0,A=0}
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10
 writeFloat(_params + 0x0, (A and A.R) or 0)
 writeFloat(_params + 0x4, (A and A.G) or 0)
 writeFloat(_params + 0x8, (A and A.B) or 0)
 writeFloat(_params + 0xC, (A and A.A) or 0)
 writeFloat(_params + 0x10, B)
 UE.CallProcessEventEx(OwnerAddress, "Multiply_LinearColorFloat", _params);
 local RET={R=readFloat(_params+0x14),G=readFloat(_params+0x18),B=readFloat(_params+0x1C),A=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Multiply_LinearColorFloat");

BL4.Multiply_LinearColorLinearColor = function(OwnerAddress, A, B)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Multiply_LinearColorLinearColor: Failed To Allocate The Params");return;end;
 A = A or {R=0,G=0,B=0,A=0}
 B = B or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10
 writeFloat(_params + 0x0, (A and A.R) or 0)
 writeFloat(_params + 0x4, (A and A.G) or 0)
 writeFloat(_params + 0x8, (A and A.B) or 0)
 writeFloat(_params + 0xC, (A and A.A) or 0)
 writeFloat(_params + 0x10, (B and B.R) or 0)
 writeFloat(_params + 0x14, (B and B.G) or 0)
 writeFloat(_params + 0x18, (B and B.B) or 0)
 writeFloat(_params + 0x1C, (B and B.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Multiply_LinearColorLinearColor", _params);
 local RET={R=readFloat(_params+0x20),G=readFloat(_params+0x24),B=readFloat(_params+0x28),A=readFloat(_params+0x2C)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Multiply_LinearColorLinearColor");

BL4.Multiply_MatrixFloat = function(OwnerAddress, A, B)
 local _paramsSize = 0x110
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Multiply_MatrixFloat: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x80
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x80, B)
 UE.CallProcessEventEx(OwnerAddress, "Multiply_MatrixFloat", _params);
 local RET=readQword(_params + 0x90);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Multiply_MatrixFloat");

BL4.Multiply_MatrixMatrix = function(OwnerAddress, A, B)
 local _paramsSize = 0x180
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Multiply_MatrixMatrix: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x80
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x80, B)
 UE.CallProcessEventEx(OwnerAddress, "Multiply_MatrixMatrix", _params);
 local RET=readQword(_params + 0x100);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Multiply_MatrixMatrix");

BL4.Multiply_QuatQuat = function(OwnerAddress, A, B)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Multiply_QuatQuat: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x20
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x20, B)
 UE.CallProcessEventEx(OwnerAddress, "Multiply_QuatQuat", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Multiply_QuatQuat");

BL4.Multiply_RotatorFloat = function(OwnerAddress, A, B)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Multiply_RotatorFloat: Failed To Allocate The Params");return;end;
 A = A or {Pitch=0,Yaw=0,Roll=0}
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18
 writeDouble(_params + 0x0, (A and A.Pitch) or 0)
 writeDouble(_params + 0x8, (A and A.Yaw) or 0)
 writeDouble(_params + 0x10, (A and A.Roll) or 0)
 writeFloat(_params + 0x18, B)
 UE.CallProcessEventEx(OwnerAddress, "Multiply_RotatorFloat", _params);
 local RET={Pitch=readFloat(_params+0x20),Yaw=readFloat(_params+0x28),Roll=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Multiply_RotatorFloat");

BL4.Multiply_RotatorInt = function(OwnerAddress, A, B)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Multiply_RotatorInt: Failed To Allocate The Params");return;end;
 A = A or {Pitch=0,Yaw=0,Roll=0}
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18
 writeDouble(_params + 0x0, (A and A.Pitch) or 0)
 writeDouble(_params + 0x8, (A and A.Yaw) or 0)
 writeDouble(_params + 0x10, (A and A.Roll) or 0)
 writeInteger(_params + 0x18, B)
 UE.CallProcessEventEx(OwnerAddress, "Multiply_RotatorInt", _params);
 local RET={Pitch=readFloat(_params+0x20),Yaw=readFloat(_params+0x28),Roll=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Multiply_RotatorInt");

BL4.Multiply_TimespanFloat = function(OwnerAddress, A, Scalar)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Multiply_TimespanFloat: Failed To Allocate The Params");return;end;
 Scalar = Scalar or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, Scalar at +0x8
 writeQword(_params + 0x0, A)
 writeFloat(_params + 0x8, Scalar)
 UE.CallProcessEventEx(OwnerAddress, "Multiply_TimespanFloat", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Multiply_TimespanFloat");

BL4.Multiply_Vector2DFloat = function(OwnerAddress, A, B)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Multiply_Vector2DFloat: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeQword(_params + 0x10, B)
 UE.CallProcessEventEx(OwnerAddress, "Multiply_Vector2DFloat", _params);
 local RET={X=readFloat(_params+0x18),Y=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Multiply_Vector2DFloat");

BL4.Multiply_Vector2DVector2D = function(OwnerAddress, A, B)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Multiply_Vector2DVector2D: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 B = B or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (B and B.X) or 0)
 writeDouble(_params + 0x18, (B and B.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Multiply_Vector2DVector2D", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Multiply_Vector2DVector2D");

BL4.Multiply_Vector4Vector4 = function(OwnerAddress, A, B)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Multiply_Vector4Vector4: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x20
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x20, B)
 UE.CallProcessEventEx(OwnerAddress, "Multiply_Vector4Vector4", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Multiply_Vector4Vector4");

BL4.Multiply_VectorFloat = function(OwnerAddress, A, B)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Multiply_VectorFloat: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeQword(_params + 0x18, B)
 UE.CallProcessEventEx(OwnerAddress, "Multiply_VectorFloat", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Multiply_VectorFloat");

BL4.Multiply_VectorInt = function(OwnerAddress, A, B)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Multiply_VectorInt: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeInteger(_params + 0x18, B)
 UE.CallProcessEventEx(OwnerAddress, "Multiply_VectorInt", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Multiply_VectorInt");

BL4.Multiply_VectorVector = function(OwnerAddress, A, B)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Multiply_VectorVector: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 B = B or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeDouble(_params + 0x18, (B and B.X) or 0)
 writeDouble(_params + 0x20, (B and B.Y) or 0)
 writeDouble(_params + 0x28, (B and B.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Multiply_VectorVector", _params);
 local RET={X=readFloat(_params+0x30),Y=readFloat(_params+0x38),Z=readFloat(_params+0x40)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Multiply_VectorVector");

BL4.MultiplyByPi = function(OwnerAddress, Value)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MultiplyByPi: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeQword(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "MultiplyByPi", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MultiplyByPi");

BL4.MultiplyMultiply_FloatFloat = function(OwnerAddress, base, exp)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MultiplyMultiply_FloatFloat: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: base at +0x0, exp at +0x8
 writeQword(_params + 0x0, base)
 writeQword(_params + 0x8, exp)
 UE.CallProcessEventEx(OwnerAddress, "MultiplyMultiply_FloatFloat", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MultiplyMultiply_FloatFloat");

BL4.NearlyEqual_FloatFloat = function(OwnerAddress, A, B, ErrorTolerance)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NearlyEqual_FloatFloat: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8, ErrorTolerance at +0x10
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 writeQword(_params + 0x10, ErrorTolerance)
 UE.CallProcessEventEx(OwnerAddress, "NearlyEqual_FloatFloat", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NearlyEqual_FloatFloat");

BL4.NearlyEqual_TransformTransform = function(OwnerAddress, A, B, LocationTolerance, RotationTolerance, Scale3DTolerance)
 local _paramsSize = 0xD0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NearlyEqual_TransformTransform: Failed To Allocate The Params");return;end;
 LocationTolerance = LocationTolerance or 0
 RotationTolerance = RotationTolerance or 0
 Scale3DTolerance = Scale3DTolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x60, LocationTolerance at +0xC0, RotationTolerance at +0xC4, Scale3DTolerance at +0xC8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x60, B)
 writeFloat(_params + 0xC0, LocationTolerance)
 writeFloat(_params + 0xC4, RotationTolerance)
 writeFloat(_params + 0xC8, Scale3DTolerance)
 UE.CallProcessEventEx(OwnerAddress, "NearlyEqual_TransformTransform", _params);
 local RET=readByte(_params + 0xCC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NearlyEqual_TransformTransform");

BL4.Negated2D = function(OwnerAddress, A)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Negated2D: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Negated2D", _params);
 local RET={X=readFloat(_params+0x10),Y=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Negated2D");

BL4.NegateRotator = function(OwnerAddress, A)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NegateRotator: Failed To Allocate The Params");return;end;
 A = A or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.Pitch) or 0)
 writeDouble(_params + 0x8, (A and A.Yaw) or 0)
 writeDouble(_params + 0x10, (A and A.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "NegateRotator", _params);
 local RET={Pitch=readFloat(_params+0x18),Yaw=readFloat(_params+0x20),Roll=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.NegateRotator");

BL4.NegateVector = function(OwnerAddress, A)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NegateVector: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "NegateVector", _params);
 local RET={X=readFloat(_params+0x18),Y=readFloat(_params+0x20),Z=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.NegateVector");

BL4.Normal = function(OwnerAddress, A, Tolerance)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Normal: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 Tolerance = Tolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, Tolerance at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeFloat(_params + 0x18, Tolerance)
 UE.CallProcessEventEx(OwnerAddress, "Normal", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Normal");

BL4.Normal2D = function(OwnerAddress, A)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Normal2D: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Normal2D", _params);
 local RET={X=readFloat(_params+0x10),Y=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Normal2D");

BL4.Normalize2D = function(OwnerAddress, A, Tolerance)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Normalize2D: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 Tolerance = Tolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, Tolerance at +0x10
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeFloat(_params + 0x10, Tolerance)
 UE.CallProcessEventEx(OwnerAddress, "Normalize2D", _params);
 deAlloc(_params);
end
FNR("BL4.Normalize2D");

BL4.NormalizeAxis = function(OwnerAddress, Angle)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NormalizeAxis: Failed To Allocate The Params");return;end;
 Angle = Angle or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Angle at +0x0
 writeFloat(_params + 0x0, Angle)
 UE.CallProcessEventEx(OwnerAddress, "NormalizeAxis", _params);
 local RET=readFloat(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NormalizeAxis");

BL4.NormalizedDeltaRotator = function(OwnerAddress, A, B)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NormalizedDeltaRotator: Failed To Allocate The Params");return;end;
 A = A or {Pitch=0,Yaw=0,Roll=0}
 B = B or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18
 writeDouble(_params + 0x0, (A and A.Pitch) or 0)
 writeDouble(_params + 0x8, (A and A.Yaw) or 0)
 writeDouble(_params + 0x10, (A and A.Roll) or 0)
 writeDouble(_params + 0x18, (B and B.Pitch) or 0)
 writeDouble(_params + 0x20, (B and B.Yaw) or 0)
 writeDouble(_params + 0x28, (B and B.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "NormalizedDeltaRotator", _params);
 local RET={Pitch=readFloat(_params+0x30),Yaw=readFloat(_params+0x38),Roll=readFloat(_params+0x40)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.NormalizedDeltaRotator");

BL4.NormalizeToRange = function(OwnerAddress, Value, RangeMin, RangeMax)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NormalizeToRange: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0, RangeMin at +0x8, RangeMax at +0x10
 writeQword(_params + 0x0, Value)
 writeQword(_params + 0x8, RangeMin)
 writeQword(_params + 0x10, RangeMax)
 UE.CallProcessEventEx(OwnerAddress, "NormalizeToRange", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NormalizeToRange");

BL4.NormalSafe2D = function(OwnerAddress, A, Tolerance)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NormalSafe2D: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 Tolerance = Tolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, Tolerance at +0x10
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeFloat(_params + 0x10, Tolerance)
 UE.CallProcessEventEx(OwnerAddress, "NormalSafe2D", _params);
 local RET={X=readFloat(_params+0x18),Y=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.NormalSafe2D");

BL4.Not_Int = function(OwnerAddress, A)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Not_Int: Failed To Allocate The Params");return;end;
 A = A or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeInteger(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "Not_Int", _params);
 local RET=readInteger(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Not_Int");

BL4.Not_Int64 = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Not_Int64: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "Not_Int64", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Not_Int64");

BL4.Not_PreBool = function(OwnerAddress, A)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Not_PreBool: Failed To Allocate The Params");return;end;
 A = A or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeByte(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "Not_PreBool", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Not_PreBool");

BL4.NotEqual_BoolBool = function(OwnerAddress, A, B)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_BoolBool: Failed To Allocate The Params");return;end;
 A = A or false
 B = B or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x1
 writeByte(_params + 0x0, A)
 writeByte(_params + 0x1, B)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_BoolBool", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_BoolBool");

BL4.NotEqual_ByteByte = function(OwnerAddress, A, B)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_ByteByte: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x1
 writeByte(_params + 0x0, A)
 writeByte(_params + 0x1, B)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_ByteByte", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_ByteByte");

BL4.NotEqual_ClassClass = function(A_Class, B_Class)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_ClassClass: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A_Class)
 writeQword(_params + 0x8, B_Class)
 UE.CallProcessEventEx(A_Class, "NotEqual_ClassClass", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_ClassClass");

BL4.NotEqual_DateTimeDateTime = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_DateTimeDateTime: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_DateTimeDateTime", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_DateTimeDateTime");

BL4.NotEqual_DoubleDouble = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_DoubleDouble: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_DoubleDouble", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_DoubleDouble");

BL4.NotEqual_Int64Int64 = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_Int64Int64: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_Int64Int64", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_Int64Int64");

BL4.NotEqual_IntInt = function(OwnerAddress, A, B)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_IntInt: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_IntInt", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_IntInt");

BL4.NotEqual_IntPointIntPoint = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_IntPointIntPoint: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_IntPointIntPoint", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_IntPointIntPoint");

BL4.NotEqual_LinearColorLinearColor = function(OwnerAddress, A, B)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_LinearColorLinearColor: Failed To Allocate The Params");return;end;
 A = A or {R=0,G=0,B=0,A=0}
 B = B or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10
 writeFloat(_params + 0x0, (A and A.R) or 0)
 writeFloat(_params + 0x4, (A and A.G) or 0)
 writeFloat(_params + 0x8, (A and A.B) or 0)
 writeFloat(_params + 0xC, (A and A.A) or 0)
 writeFloat(_params + 0x10, (B and B.R) or 0)
 writeFloat(_params + 0x14, (B and B.G) or 0)
 writeFloat(_params + 0x18, (B and B.B) or 0)
 writeFloat(_params + 0x1C, (B and B.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_LinearColorLinearColor", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_LinearColorLinearColor");

BL4.NotEqual_MatrixMatrix = function(OwnerAddress, A, B, Tolerance)
 local _paramsSize = 0x108
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_MatrixMatrix: Failed To Allocate The Params");return;end;
 Tolerance = Tolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x80, Tolerance at +0x100
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x80, B)
 writeFloat(_params + 0x100, Tolerance)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_MatrixMatrix", _params);
 local RET=readByte(_params + 0x104);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_MatrixMatrix");

BL4.NotEqual_NameName = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_NameName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_NameName", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_NameName");

BL4.NotEqual_ObjectObject = function(A_Object, B_Object)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_ObjectObject: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A_Object)
 writeQword(_params + 0x8, B_Object)
 UE.CallProcessEventEx(A_Object, "NotEqual_ObjectObject", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_ObjectObject");

BL4.NotEqual_QuatQuat = function(OwnerAddress, A, B, ErrorTolerance)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_QuatQuat: Failed To Allocate The Params");return;end;
 ErrorTolerance = ErrorTolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x20, ErrorTolerance at +0x40
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x20, B)
 writeFloat(_params + 0x40, ErrorTolerance)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_QuatQuat", _params);
 local RET=readByte(_params + 0x44);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_QuatQuat");

BL4.NotEqual_RotatorRotator = function(OwnerAddress, A, B, ErrorTolerance)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_RotatorRotator: Failed To Allocate The Params");return;end;
 A = A or {Pitch=0,Yaw=0,Roll=0}
 B = B or {Pitch=0,Yaw=0,Roll=0}
 ErrorTolerance = ErrorTolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18, ErrorTolerance at +0x30
 writeDouble(_params + 0x0, (A and A.Pitch) or 0)
 writeDouble(_params + 0x8, (A and A.Yaw) or 0)
 writeDouble(_params + 0x10, (A and A.Roll) or 0)
 writeDouble(_params + 0x18, (B and B.Pitch) or 0)
 writeDouble(_params + 0x20, (B and B.Yaw) or 0)
 writeDouble(_params + 0x28, (B and B.Roll) or 0)
 writeFloat(_params + 0x30, ErrorTolerance)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_RotatorRotator", _params);
 local RET=readByte(_params + 0x34);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_RotatorRotator");

BL4.NotEqual_TimespanTimespan = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_TimespanTimespan: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_TimespanTimespan", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_TimespanTimespan");

BL4.NotEqual_Vector2DVector2D = function(OwnerAddress, A, B, ErrorTolerance)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_Vector2DVector2D: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 B = B or {X=0,Y=0}
 ErrorTolerance = ErrorTolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10, ErrorTolerance at +0x20
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (B and B.X) or 0)
 writeDouble(_params + 0x18, (B and B.Y) or 0)
 writeFloat(_params + 0x20, ErrorTolerance)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_Vector2DVector2D", _params);
 local RET=readByte(_params + 0x24);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_Vector2DVector2D");

BL4.NotEqual_Vector4Vector4 = function(OwnerAddress, A, B, ErrorTolerance)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_Vector4Vector4: Failed To Allocate The Params");return;end;
 ErrorTolerance = ErrorTolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x20, ErrorTolerance at +0x40
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x20, B)
 writeFloat(_params + 0x40, ErrorTolerance)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_Vector4Vector4", _params);
 local RET=readByte(_params + 0x44);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_Vector4Vector4");

BL4.NotEqual_VectorVector = function(OwnerAddress, A, B, ErrorTolerance)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_VectorVector: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 B = B or {X=0,Y=0,Z=0}
 ErrorTolerance = ErrorTolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18, ErrorTolerance at +0x30
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeDouble(_params + 0x18, (B and B.X) or 0)
 writeDouble(_params + 0x20, (B and B.Y) or 0)
 writeDouble(_params + 0x28, (B and B.Z) or 0)
 writeFloat(_params + 0x30, ErrorTolerance)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_VectorVector", _params);
 local RET=readByte(_params + 0x34);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_VectorVector");

BL4.NotEqualExactly_Vector2DVector2D = function(OwnerAddress, A, B)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqualExactly_Vector2DVector2D: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 B = B or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (B and B.X) or 0)
 writeDouble(_params + 0x18, (B and B.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "NotEqualExactly_Vector2DVector2D", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqualExactly_Vector2DVector2D");

BL4.NotEqualExactly_Vector4Vector4 = function(OwnerAddress, A, B)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqualExactly_Vector4Vector4: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x20
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x20, B)
 UE.CallProcessEventEx(OwnerAddress, "NotEqualExactly_Vector4Vector4", _params);
 local RET=readByte(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqualExactly_Vector4Vector4");

BL4.NotEqualExactly_VectorVector = function(OwnerAddress, A, B)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqualExactly_VectorVector: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 B = B or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeDouble(_params + 0x18, (B and B.X) or 0)
 writeDouble(_params + 0x20, (B and B.Y) or 0)
 writeDouble(_params + 0x28, (B and B.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "NotEqualExactly_VectorVector", _params);
 local RET=readByte(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqualExactly_VectorVector");

BL4.Now = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Now: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "Now", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Now");

BL4.Or_Int64Int64 = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Or_Int64Int64: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Or_Int64Int64", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Or_Int64Int64");

BL4.Or_IntInt = function(OwnerAddress, A, B)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Or_IntInt: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 UE.CallProcessEventEx(OwnerAddress, "Or_IntInt", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Or_IntInt");

BL4.Percent_ByteByte = function(OwnerAddress, A, B)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Percent_ByteByte: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x1
 writeByte(_params + 0x0, A)
 writeByte(_params + 0x1, B)
 UE.CallProcessEventEx(OwnerAddress, "Percent_ByteByte", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Percent_ByteByte");

BL4.Percent_FloatFloat = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Percent_FloatFloat: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Percent_FloatFloat", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Percent_FloatFloat");

BL4.Percent_Int64Int64 = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Percent_Int64Int64: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Percent_Int64Int64", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Percent_Int64Int64");

BL4.Percent_IntInt = function(OwnerAddress, A, B)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Percent_IntInt: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 UE.CallProcessEventEx(OwnerAddress, "Percent_IntInt", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Percent_IntInt");

BL4.PerlinNoise1D = function(OwnerAddress, Value)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PerlinNoise1D: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeFloat(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "PerlinNoise1D", _params);
 local RET=readFloat(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.PerlinNoise1D");

BL4.PointsAreCoplanar = function(OwnerAddress, points, Tolerance)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PointsAreCoplanar: Failed To Allocate The Params");return;end;
 Tolerance = Tolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: points at +0x0, Tolerance at +0x10
 writeQword(_params + 0x0, points)
 writeFloat(_params + 0x10, Tolerance)
 UE.CallProcessEventEx(OwnerAddress, "PointsAreCoplanar", _params);
 local RET=readByte(_params + 0x14);
 deAlloc(_params);
 return RET;
end
FNR("BL4.PointsAreCoplanar");

BL4.ProjectPointOnToPlane = function(OwnerAddress, Point, PlaneBase, PlaneNormal)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ProjectPointOnToPlane: Failed To Allocate The Params");return;end;
 Point = Point or {X=0,Y=0,Z=0}
 PlaneBase = PlaneBase or {X=0,Y=0,Z=0}
 PlaneNormal = PlaneNormal or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Point at +0x0, PlaneBase at +0x18, PlaneNormal at +0x30
 writeDouble(_params + 0x0, (Point and Point.X) or 0)
 writeDouble(_params + 0x8, (Point and Point.Y) or 0)
 writeDouble(_params + 0x10, (Point and Point.Z) or 0)
 writeDouble(_params + 0x18, (PlaneBase and PlaneBase.X) or 0)
 writeDouble(_params + 0x20, (PlaneBase and PlaneBase.Y) or 0)
 writeDouble(_params + 0x28, (PlaneBase and PlaneBase.Z) or 0)
 writeDouble(_params + 0x30, (PlaneNormal and PlaneNormal.X) or 0)
 writeDouble(_params + 0x38, (PlaneNormal and PlaneNormal.Y) or 0)
 writeDouble(_params + 0x40, (PlaneNormal and PlaneNormal.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "ProjectPointOnToPlane", _params);
 local RET={X=readFloat(_params+0x48),Y=readFloat(_params+0x50),Z=readFloat(_params+0x58)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.ProjectPointOnToPlane");

BL4.ProjectVectorOnToPlane = function(OwnerAddress, V, PlaneNormal)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ProjectVectorOnToPlane: Failed To Allocate The Params");return;end;
 V = V or {X=0,Y=0,Z=0}
 PlaneNormal = PlaneNormal or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: V at +0x0, PlaneNormal at +0x18
 writeDouble(_params + 0x0, (V and V.X) or 0)
 writeDouble(_params + 0x8, (V and V.Y) or 0)
 writeDouble(_params + 0x10, (V and V.Z) or 0)
 writeDouble(_params + 0x18, (PlaneNormal and PlaneNormal.X) or 0)
 writeDouble(_params + 0x20, (PlaneNormal and PlaneNormal.Y) or 0)
 writeDouble(_params + 0x28, (PlaneNormal and PlaneNormal.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "ProjectVectorOnToPlane", _params);
 local RET={X=readFloat(_params+0x30),Y=readFloat(_params+0x38),Z=readFloat(_params+0x40)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.ProjectVectorOnToPlane");

BL4.ProjectVectorOnToVector = function(OwnerAddress, V, target)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ProjectVectorOnToVector: Failed To Allocate The Params");return;end;
 V = V or {X=0,Y=0,Z=0}
 target = target or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: V at +0x0, target at +0x18
 writeDouble(_params + 0x0, (V and V.X) or 0)
 writeDouble(_params + 0x8, (V and V.Y) or 0)
 writeDouble(_params + 0x10, (V and V.Z) or 0)
 writeDouble(_params + 0x18, (target and target.X) or 0)
 writeDouble(_params + 0x20, (target and target.Y) or 0)
 writeDouble(_params + 0x28, (target and target.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "ProjectVectorOnToVector", _params);
 local RET={X=readFloat(_params+0x30),Y=readFloat(_params+0x38),Z=readFloat(_params+0x40)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.ProjectVectorOnToVector");

BL4.Quat_AngularDistance = function(OwnerAddress, A, B)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_AngularDistance: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x20
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x20, B)
 UE.CallProcessEventEx(OwnerAddress, "Quat_AngularDistance", _params);
 local RET=readFloat(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Quat_AngularDistance");

BL4.Quat_EnforceShortestArcWith = function(OwnerAddress, A, B)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_EnforceShortestArcWith: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x20
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x20, B)
 UE.CallProcessEventEx(OwnerAddress, "Quat_EnforceShortestArcWith", _params);
 deAlloc(_params);
end
FNR("BL4.Quat_EnforceShortestArcWith");

BL4.Quat_Euler = function(OwnerAddress, Q)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_Euler: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Q at +0x0
 writeQword(_params + 0x0, Q)
 UE.CallProcessEventEx(OwnerAddress, "Quat_Euler", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Quat_Euler");

BL4.Quat_Exp = function(OwnerAddress, Q)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_Exp: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Q at +0x0
 writeQword(_params + 0x0, Q)
 UE.CallProcessEventEx(OwnerAddress, "Quat_Exp", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Quat_Exp");

BL4.Quat_FindBetweenNormals = function(OwnerAddress, StartNormal, EndNormal)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_FindBetweenNormals: Failed To Allocate The Params");return;end;
 StartNormal = StartNormal or {X=0,Y=0,Z=0}
 EndNormal = EndNormal or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: StartNormal at +0x0, EndNormal at +0x18
 writeDouble(_params + 0x0, (StartNormal and StartNormal.X) or 0)
 writeDouble(_params + 0x8, (StartNormal and StartNormal.Y) or 0)
 writeDouble(_params + 0x10, (StartNormal and StartNormal.Z) or 0)
 writeDouble(_params + 0x18, (EndNormal and EndNormal.X) or 0)
 writeDouble(_params + 0x20, (EndNormal and EndNormal.Y) or 0)
 writeDouble(_params + 0x28, (EndNormal and EndNormal.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Quat_FindBetweenNormals", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Quat_FindBetweenNormals");

BL4.Quat_FindBetweenVectors = function(OwnerAddress, Start, End)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_FindBetweenVectors: Failed To Allocate The Params");return;end;
 Start = Start or {X=0,Y=0,Z=0}
 End = End or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Start at +0x0, End at +0x18
 writeDouble(_params + 0x0, (Start and Start.X) or 0)
 writeDouble(_params + 0x8, (Start and Start.Y) or 0)
 writeDouble(_params + 0x10, (Start and Start.Z) or 0)
 writeDouble(_params + 0x18, (End and End.X) or 0)
 writeDouble(_params + 0x20, (End and End.Y) or 0)
 writeDouble(_params + 0x28, (End and End.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Quat_FindBetweenVectors", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Quat_FindBetweenVectors");

BL4.Quat_GetAngle = function(OwnerAddress, Q)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_GetAngle: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Q at +0x0
 writeQword(_params + 0x0, Q)
 UE.CallProcessEventEx(OwnerAddress, "Quat_GetAngle", _params);
 local RET=readFloat(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Quat_GetAngle");

BL4.Quat_GetAxisX = function(OwnerAddress, Q)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_GetAxisX: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Q at +0x0
 writeQword(_params + 0x0, Q)
 UE.CallProcessEventEx(OwnerAddress, "Quat_GetAxisX", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Quat_GetAxisX");

BL4.Quat_GetAxisY = function(OwnerAddress, Q)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_GetAxisY: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Q at +0x0
 writeQword(_params + 0x0, Q)
 UE.CallProcessEventEx(OwnerAddress, "Quat_GetAxisY", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Quat_GetAxisY");

BL4.Quat_GetAxisZ = function(OwnerAddress, Q)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_GetAxisZ: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Q at +0x0
 writeQword(_params + 0x0, Q)
 UE.CallProcessEventEx(OwnerAddress, "Quat_GetAxisZ", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Quat_GetAxisZ");

BL4.Quat_GetRotationAxis = function(OwnerAddress, Q)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_GetRotationAxis: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Q at +0x0
 writeQword(_params + 0x0, Q)
 UE.CallProcessEventEx(OwnerAddress, "Quat_GetRotationAxis", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Quat_GetRotationAxis");

BL4.Quat_Identity = function(OwnerAddress)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_Identity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "Quat_Identity", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Quat_Identity");

BL4.Quat_Inversed = function(OwnerAddress, Q)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_Inversed: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Q at +0x0
 writeQword(_params + 0x0, Q)
 UE.CallProcessEventEx(OwnerAddress, "Quat_Inversed", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Quat_Inversed");

BL4.Quat_IsFinite = function(OwnerAddress, Q)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_IsFinite: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Q at +0x0
 writeQword(_params + 0x0, Q)
 UE.CallProcessEventEx(OwnerAddress, "Quat_IsFinite", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Quat_IsFinite");

BL4.Quat_IsIdentity = function(OwnerAddress, Q, Tolerance)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_IsIdentity: Failed To Allocate The Params");return;end;
 Tolerance = Tolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Q at +0x0, Tolerance at +0x20
 writeQword(_params + 0x0, Q)
 writeFloat(_params + 0x20, Tolerance)
 UE.CallProcessEventEx(OwnerAddress, "Quat_IsIdentity", _params);
 local RET=readByte(_params + 0x24);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Quat_IsIdentity");

BL4.Quat_IsNonFinite = function(OwnerAddress, Q)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_IsNonFinite: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Q at +0x0
 writeQword(_params + 0x0, Q)
 UE.CallProcessEventEx(OwnerAddress, "Quat_IsNonFinite", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Quat_IsNonFinite");

BL4.Quat_IsNormalized = function(OwnerAddress, Q)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_IsNormalized: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Q at +0x0
 writeQword(_params + 0x0, Q)
 UE.CallProcessEventEx(OwnerAddress, "Quat_IsNormalized", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Quat_IsNormalized");

BL4.Quat_Log = function(OwnerAddress, Q)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_Log: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Q at +0x0
 writeQword(_params + 0x0, Q)
 UE.CallProcessEventEx(OwnerAddress, "Quat_Log", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Quat_Log");

BL4.Quat_MakeFromEuler = function(OwnerAddress, Euler)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_MakeFromEuler: Failed To Allocate The Params");return;end;
 Euler = Euler or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Euler at +0x0
 writeDouble(_params + 0x0, (Euler and Euler.X) or 0)
 writeDouble(_params + 0x8, (Euler and Euler.Y) or 0)
 writeDouble(_params + 0x10, (Euler and Euler.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Quat_MakeFromEuler", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Quat_MakeFromEuler");

BL4.Quat_Normalize = function(OwnerAddress, Q, Tolerance)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_Normalize: Failed To Allocate The Params");return;end;
 Tolerance = Tolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Q at +0x0, Tolerance at +0x20
 writeQword(_params + 0x0, Q)
 writeFloat(_params + 0x20, Tolerance)
 UE.CallProcessEventEx(OwnerAddress, "Quat_Normalize", _params);
 deAlloc(_params);
end
FNR("BL4.Quat_Normalize");

BL4.Quat_Normalized = function(OwnerAddress, Q, Tolerance)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_Normalized: Failed To Allocate The Params");return;end;
 Tolerance = Tolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Q at +0x0, Tolerance at +0x20
 writeQword(_params + 0x0, Q)
 writeFloat(_params + 0x20, Tolerance)
 UE.CallProcessEventEx(OwnerAddress, "Quat_Normalized", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Quat_Normalized");

BL4.Quat_RotateVector = function(OwnerAddress, Q, V)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_RotateVector: Failed To Allocate The Params");return;end;
 V = V or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Q at +0x0, V at +0x20
 writeQword(_params + 0x0, Q)
 writeDouble(_params + 0x20, (V and V.X) or 0)
 writeDouble(_params + 0x28, (V and V.Y) or 0)
 writeDouble(_params + 0x30, (V and V.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Quat_RotateVector", _params);
 local RET={X=readFloat(_params+0x38),Y=readFloat(_params+0x40),Z=readFloat(_params+0x48)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Quat_RotateVector");

BL4.Quat_Rotator = function(OwnerAddress, Q)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_Rotator: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Q at +0x0
 writeQword(_params + 0x0, Q)
 UE.CallProcessEventEx(OwnerAddress, "Quat_Rotator", _params);
 local RET={Pitch=readFloat(_params+0x20),Yaw=readFloat(_params+0x28),Roll=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Quat_Rotator");

BL4.Quat_SetComponents = function(OwnerAddress, Q, X, Y, Z, W)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_SetComponents: Failed To Allocate The Params");return;end;
 X = X or 0
 Y = Y or 0
 Z = Z or 0
 W = W or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Q at +0x0, X at +0x20, Y at +0x24, Z at +0x28, W at +0x2C
 writeQword(_params + 0x0, Q)
 writeFloat(_params + 0x20, X)
 writeFloat(_params + 0x24, Y)
 writeFloat(_params + 0x28, Z)
 writeFloat(_params + 0x2C, W)
 UE.CallProcessEventEx(OwnerAddress, "Quat_SetComponents", _params);
 deAlloc(_params);
end
FNR("BL4.Quat_SetComponents");

BL4.Quat_SetFromEuler = function(OwnerAddress, Q, Euler)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_SetFromEuler: Failed To Allocate The Params");return;end;
 Euler = Euler or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Q at +0x0, Euler at +0x20
 writeQword(_params + 0x0, Q)
 writeDouble(_params + 0x20, (Euler and Euler.X) or 0)
 writeDouble(_params + 0x28, (Euler and Euler.Y) or 0)
 writeDouble(_params + 0x30, (Euler and Euler.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Quat_SetFromEuler", _params);
 deAlloc(_params);
end
FNR("BL4.Quat_SetFromEuler");

BL4.Quat_Size = function(OwnerAddress, Q)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_Size: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Q at +0x0
 writeQword(_params + 0x0, Q)
 UE.CallProcessEventEx(OwnerAddress, "Quat_Size", _params);
 local RET=readFloat(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Quat_Size");

BL4.Quat_SizeSquared = function(OwnerAddress, Q)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_SizeSquared: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Q at +0x0
 writeQword(_params + 0x0, Q)
 UE.CallProcessEventEx(OwnerAddress, "Quat_SizeSquared", _params);
 local RET=readFloat(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Quat_SizeSquared");

BL4.Quat_Slerp = function(OwnerAddress, A, B, ALPHA)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_Slerp: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x20, ALPHA at +0x40
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x20, B)
 writeQword(_params + 0x40, ALPHA)
 UE.CallProcessEventEx(OwnerAddress, "Quat_Slerp", _params);
 local RET=readQword(_params + 0x50);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Quat_Slerp");

BL4.Quat_UnrotateVector = function(OwnerAddress, Q, V)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_UnrotateVector: Failed To Allocate The Params");return;end;
 V = V or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Q at +0x0, V at +0x20
 writeQword(_params + 0x0, Q)
 writeDouble(_params + 0x20, (V and V.X) or 0)
 writeDouble(_params + 0x28, (V and V.Y) or 0)
 writeDouble(_params + 0x30, (V and V.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Quat_UnrotateVector", _params);
 local RET={X=readFloat(_params+0x38),Y=readFloat(_params+0x40),Z=readFloat(_params+0x48)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Quat_UnrotateVector");

BL4.Quat_VectorForward = function(OwnerAddress, Q)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_VectorForward: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Q at +0x0
 writeQword(_params + 0x0, Q)
 UE.CallProcessEventEx(OwnerAddress, "Quat_VectorForward", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Quat_VectorForward");

BL4.Quat_VectorRight = function(OwnerAddress, Q)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_VectorRight: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Q at +0x0
 writeQword(_params + 0x0, Q)
 UE.CallProcessEventEx(OwnerAddress, "Quat_VectorRight", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Quat_VectorRight");

BL4.Quat_VectorUp = function(OwnerAddress, Q)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Quat_VectorUp: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Q at +0x0
 writeQword(_params + 0x0, Q)
 UE.CallProcessEventEx(OwnerAddress, "Quat_VectorUp", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Quat_VectorUp");

BL4.QuaternionSpringInterp = function(OwnerAddress, current, target, SpringState, Stiffness, CriticalDampingFactor, DeltaTime, Mass, TargetVelocityAmount, bInitializeFromTarget)
 local _paramsSize = 0xC0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.QuaternionSpringInterp: Failed To Allocate The Params");return;end;
 Stiffness = Stiffness or 0
 CriticalDampingFactor = CriticalDampingFactor or 0
 DeltaTime = DeltaTime or 0
 Mass = Mass or 0
 TargetVelocityAmount = TargetVelocityAmount or 0
 bInitializeFromTarget = bInitializeFromTarget or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: current at +0x0, target at +0x20, SpringState at +0x40, Stiffness at +0x80, CriticalDampingFactor at +0x84, DeltaTime at +0x88, Mass at +0x8C, TargetVelocityAmount at +0x90, bInitializeFromTarget at +0x94
 writeQword(_params + 0x0, current)
 writeQword(_params + 0x20, target)
 writeQword(_params + 0x40, SpringState)
 writeFloat(_params + 0x80, Stiffness)
 writeFloat(_params + 0x84, CriticalDampingFactor)
 writeFloat(_params + 0x88, DeltaTime)
 writeFloat(_params + 0x8C, Mass)
 writeFloat(_params + 0x90, TargetVelocityAmount)
 writeByte(_params + 0x94, bInitializeFromTarget)
 UE.CallProcessEventEx(OwnerAddress, "QuaternionSpringInterp", _params);
 local RET=readQword(_params + 0xA0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.QuaternionSpringInterp");

BL4.RadiansToDegrees = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RadiansToDegrees: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "RadiansToDegrees", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RadiansToDegrees");

BL4.RandomBool = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RandomBool: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "RandomBool", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RandomBool");

BL4.RandomBoolFromStream = function(OwnerAddress, Stream)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RandomBoolFromStream: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Stream at +0x0
 writeQword(_params + 0x0, Stream)
 UE.CallProcessEventEx(OwnerAddress, "RandomBoolFromStream", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RandomBoolFromStream");

BL4.RandomBoolWithWeight = function(OwnerAddress, Weight)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RandomBoolWithWeight: Failed To Allocate The Params");return;end;
 Weight = Weight or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Weight at +0x0
 writeFloat(_params + 0x0, Weight)
 UE.CallProcessEventEx(OwnerAddress, "RandomBoolWithWeight", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RandomBoolWithWeight");

BL4.RandomBoolWithWeightFromStream = function(OwnerAddress, RandomStream, Weight)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RandomBoolWithWeightFromStream: Failed To Allocate The Params");return;end;
 Weight = Weight or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: RandomStream at +0x0, Weight at +0x8
 writeQword(_params + 0x0, RandomStream)
 writeFloat(_params + 0x8, Weight)
 UE.CallProcessEventEx(OwnerAddress, "RandomBoolWithWeightFromStream", _params);
 local RET=readByte(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RandomBoolWithWeightFromStream");

BL4.RandomFloat = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RandomFloat: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "RandomFloat", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RandomFloat");

BL4.RandomFloatFromStream = function(OwnerAddress, Stream)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RandomFloatFromStream: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Stream at +0x0
 writeQword(_params + 0x0, Stream)
 UE.CallProcessEventEx(OwnerAddress, "RandomFloatFromStream", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RandomFloatFromStream");

BL4.RandomFloatInRange = function(OwnerAddress, min, MAX)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RandomFloatInRange: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: min at +0x0, MAX at +0x8
 writeQword(_params + 0x0, min)
 writeQword(_params + 0x8, MAX)
 UE.CallProcessEventEx(OwnerAddress, "RandomFloatInRange", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RandomFloatInRange");

BL4.RandomFloatInRangeFromStream = function(OwnerAddress, Stream, min, MAX)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RandomFloatInRangeFromStream: Failed To Allocate The Params");return;end;
 min = min or 0
 MAX = MAX or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Stream at +0x0, min at +0x8, MAX at +0xC
 writeQword(_params + 0x0, Stream)
 writeFloat(_params + 0x8, min)
 writeFloat(_params + 0xC, MAX)
 UE.CallProcessEventEx(OwnerAddress, "RandomFloatInRangeFromStream", _params);
 local RET=readFloat(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RandomFloatInRangeFromStream");

BL4.RandomInteger = function(OwnerAddress, MAX)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RandomInteger: Failed To Allocate The Params");return;end;
 MAX = MAX or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: MAX at +0x0
 writeInteger(_params + 0x0, MAX)
 UE.CallProcessEventEx(OwnerAddress, "RandomInteger", _params);
 local RET=readInteger(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RandomInteger");

BL4.RandomInteger64 = function(OwnerAddress, MAX)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RandomInteger64: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MAX at +0x0
 writeQword(_params + 0x0, MAX)
 UE.CallProcessEventEx(OwnerAddress, "RandomInteger64", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RandomInteger64");

BL4.RandomInteger64InRange = function(OwnerAddress, min, MAX)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RandomInteger64InRange: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: min at +0x0, MAX at +0x8
 writeQword(_params + 0x0, min)
 writeQword(_params + 0x8, MAX)
 UE.CallProcessEventEx(OwnerAddress, "RandomInteger64InRange", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RandomInteger64InRange");

BL4.RandomIntegerFromStream = function(OwnerAddress, Stream, MAX)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RandomIntegerFromStream: Failed To Allocate The Params");return;end;
 MAX = MAX or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Stream at +0x0, MAX at +0x8
 writeQword(_params + 0x0, Stream)
 writeInteger(_params + 0x8, MAX)
 UE.CallProcessEventEx(OwnerAddress, "RandomIntegerFromStream", _params);
 local RET=readInteger(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RandomIntegerFromStream");

BL4.RandomIntegerInRange = function(OwnerAddress, min, MAX)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RandomIntegerInRange: Failed To Allocate The Params");return;end;
 min = min or 0
 MAX = MAX or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: min at +0x0, MAX at +0x4
 writeInteger(_params + 0x0, min)
 writeInteger(_params + 0x4, MAX)
 UE.CallProcessEventEx(OwnerAddress, "RandomIntegerInRange", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RandomIntegerInRange");

BL4.RandomIntegerInRangeFromStream = function(OwnerAddress, Stream, min, MAX)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RandomIntegerInRangeFromStream: Failed To Allocate The Params");return;end;
 min = min or 0
 MAX = MAX or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Stream at +0x0, min at +0x8, MAX at +0xC
 writeQword(_params + 0x0, Stream)
 writeInteger(_params + 0x8, min)
 writeInteger(_params + 0xC, MAX)
 UE.CallProcessEventEx(OwnerAddress, "RandomIntegerInRangeFromStream", _params);
 local RET=readInteger(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RandomIntegerInRangeFromStream");

BL4.RandomPointInBoundingBox = function(OwnerAddress, Center, HalfSize)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RandomPointInBoundingBox: Failed To Allocate The Params");return;end;
 Center = Center or {X=0,Y=0,Z=0}
 HalfSize = HalfSize or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Center at +0x0, HalfSize at +0x18
 writeDouble(_params + 0x0, (Center and Center.X) or 0)
 writeDouble(_params + 0x8, (Center and Center.Y) or 0)
 writeDouble(_params + 0x10, (Center and Center.Z) or 0)
 writeDouble(_params + 0x18, (HalfSize and HalfSize.X) or 0)
 writeDouble(_params + 0x20, (HalfSize and HalfSize.Y) or 0)
 writeDouble(_params + 0x28, (HalfSize and HalfSize.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "RandomPointInBoundingBox", _params);
 local RET={X=readFloat(_params+0x30),Y=readFloat(_params+0x38),Z=readFloat(_params+0x40)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.RandomPointInBoundingBox");

BL4.RandomPointInBoundingBox_Box = function(OwnerAddress, Box)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RandomPointInBoundingBox_Box: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Box at +0x0
 writeQword(_params + 0x0, Box)
 UE.CallProcessEventEx(OwnerAddress, "RandomPointInBoundingBox_Box", _params);
 local RET={X=readFloat(_params+0x38),Y=readFloat(_params+0x40),Z=readFloat(_params+0x48)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.RandomPointInBoundingBox_Box");

BL4.RandomPointInBoundingBoxFromStream = function(OwnerAddress, Stream, Center, HalfSize)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RandomPointInBoundingBoxFromStream: Failed To Allocate The Params");return;end;
 Center = Center or {X=0,Y=0,Z=0}
 HalfSize = HalfSize or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Stream at +0x0, Center at +0x8, HalfSize at +0x20
 writeQword(_params + 0x0, Stream)
 writeDouble(_params + 0x8, (Center and Center.X) or 0)
 writeDouble(_params + 0x10, (Center and Center.Y) or 0)
 writeDouble(_params + 0x18, (Center and Center.Z) or 0)
 writeDouble(_params + 0x20, (HalfSize and HalfSize.X) or 0)
 writeDouble(_params + 0x28, (HalfSize and HalfSize.Y) or 0)
 writeDouble(_params + 0x30, (HalfSize and HalfSize.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "RandomPointInBoundingBoxFromStream", _params);
 local RET={X=readFloat(_params+0x38),Y=readFloat(_params+0x40),Z=readFloat(_params+0x48)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.RandomPointInBoundingBoxFromStream");

BL4.RandomPointInBoundingBoxFromStream_Box = function(OwnerAddress, Stream, Box)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RandomPointInBoundingBoxFromStream_Box: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Stream at +0x0, Box at +0x8
 writeQword(_params + 0x0, Stream)
 writeQword(_params + 0x8, Box)
 UE.CallProcessEventEx(OwnerAddress, "RandomPointInBoundingBoxFromStream_Box", _params);
 local RET={X=readFloat(_params+0x40),Y=readFloat(_params+0x48),Z=readFloat(_params+0x50)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.RandomPointInBoundingBoxFromStream_Box");

BL4.RandomRotator = function(OwnerAddress, bRoll)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RandomRotator: Failed To Allocate The Params");return;end;
 bRoll = bRoll or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bRoll at +0x0
 writeByte(_params + 0x0, bRoll)
 UE.CallProcessEventEx(OwnerAddress, "RandomRotator", _params);
 local RET={Pitch=readFloat(_params+0x8),Yaw=readFloat(_params+0x10),Roll=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.RandomRotator");

BL4.RandomRotatorFromStream = function(OwnerAddress, Stream, bRoll)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RandomRotatorFromStream: Failed To Allocate The Params");return;end;
 bRoll = bRoll or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Stream at +0x0, bRoll at +0x8
 writeQword(_params + 0x0, Stream)
 writeByte(_params + 0x8, bRoll)
 UE.CallProcessEventEx(OwnerAddress, "RandomRotatorFromStream", _params);
 local RET={Pitch=readFloat(_params+0x10),Yaw=readFloat(_params+0x18),Roll=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.RandomRotatorFromStream");

BL4.RandomUnitVector = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RandomUnitVector: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "RandomUnitVector", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8),Z=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.RandomUnitVector");

BL4.RandomUnitVectorFromStream = function(OwnerAddress, Stream)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RandomUnitVectorFromStream: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Stream at +0x0
 writeQword(_params + 0x0, Stream)
 UE.CallProcessEventEx(OwnerAddress, "RandomUnitVectorFromStream", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.RandomUnitVectorFromStream");

BL4.RandomUnitVectorInConeInDegrees = function(OwnerAddress, ConeDir, ConeHalfAngleInDegrees)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RandomUnitVectorInConeInDegrees: Failed To Allocate The Params");return;end;
 ConeDir = ConeDir or {X=0,Y=0,Z=0}
 ConeHalfAngleInDegrees = ConeHalfAngleInDegrees or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ConeDir at +0x0, ConeHalfAngleInDegrees at +0x18
 writeDouble(_params + 0x0, (ConeDir and ConeDir.X) or 0)
 writeDouble(_params + 0x8, (ConeDir and ConeDir.Y) or 0)
 writeDouble(_params + 0x10, (ConeDir and ConeDir.Z) or 0)
 writeFloat(_params + 0x18, ConeHalfAngleInDegrees)
 UE.CallProcessEventEx(OwnerAddress, "RandomUnitVectorInConeInDegrees", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.RandomUnitVectorInConeInDegrees");

BL4.RandomUnitVectorInConeInDegreesFromStream = function(OwnerAddress, Stream, ConeDir, ConeHalfAngleInDegrees)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RandomUnitVectorInConeInDegreesFromStream: Failed To Allocate The Params");return;end;
 ConeDir = ConeDir or {X=0,Y=0,Z=0}
 ConeHalfAngleInDegrees = ConeHalfAngleInDegrees or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Stream at +0x0, ConeDir at +0x8, ConeHalfAngleInDegrees at +0x20
 writeQword(_params + 0x0, Stream)
 writeDouble(_params + 0x8, (ConeDir and ConeDir.X) or 0)
 writeDouble(_params + 0x10, (ConeDir and ConeDir.Y) or 0)
 writeDouble(_params + 0x18, (ConeDir and ConeDir.Z) or 0)
 writeFloat(_params + 0x20, ConeHalfAngleInDegrees)
 UE.CallProcessEventEx(OwnerAddress, "RandomUnitVectorInConeInDegreesFromStream", _params);
 local RET={X=readFloat(_params+0x28),Y=readFloat(_params+0x30),Z=readFloat(_params+0x38)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.RandomUnitVectorInConeInDegreesFromStream");

BL4.RandomUnitVectorInConeInRadians = function(OwnerAddress, ConeDir, ConeHalfAngleInRadians)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RandomUnitVectorInConeInRadians: Failed To Allocate The Params");return;end;
 ConeDir = ConeDir or {X=0,Y=0,Z=0}
 ConeHalfAngleInRadians = ConeHalfAngleInRadians or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ConeDir at +0x0, ConeHalfAngleInRadians at +0x18
 writeDouble(_params + 0x0, (ConeDir and ConeDir.X) or 0)
 writeDouble(_params + 0x8, (ConeDir and ConeDir.Y) or 0)
 writeDouble(_params + 0x10, (ConeDir and ConeDir.Z) or 0)
 writeFloat(_params + 0x18, ConeHalfAngleInRadians)
 UE.CallProcessEventEx(OwnerAddress, "RandomUnitVectorInConeInRadians", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.RandomUnitVectorInConeInRadians");

BL4.RandomUnitVectorInConeInRadiansFromStream = function(OwnerAddress, Stream, ConeDir, ConeHalfAngleInRadians)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RandomUnitVectorInConeInRadiansFromStream: Failed To Allocate The Params");return;end;
 ConeDir = ConeDir or {X=0,Y=0,Z=0}
 ConeHalfAngleInRadians = ConeHalfAngleInRadians or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Stream at +0x0, ConeDir at +0x8, ConeHalfAngleInRadians at +0x20
 writeQword(_params + 0x0, Stream)
 writeDouble(_params + 0x8, (ConeDir and ConeDir.X) or 0)
 writeDouble(_params + 0x10, (ConeDir and ConeDir.Y) or 0)
 writeDouble(_params + 0x18, (ConeDir and ConeDir.Z) or 0)
 writeFloat(_params + 0x20, ConeHalfAngleInRadians)
 UE.CallProcessEventEx(OwnerAddress, "RandomUnitVectorInConeInRadiansFromStream", _params);
 local RET={X=readFloat(_params+0x28),Y=readFloat(_params+0x30),Z=readFloat(_params+0x38)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.RandomUnitVectorInConeInRadiansFromStream");

BL4.RandomUnitVectorInEllipticalConeInDegrees = function(OwnerAddress, ConeDir, MaxYawInDegrees, MaxPitchInDegrees)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RandomUnitVectorInEllipticalConeInDegrees: Failed To Allocate The Params");return;end;
 ConeDir = ConeDir or {X=0,Y=0,Z=0}
 MaxYawInDegrees = MaxYawInDegrees or 0
 MaxPitchInDegrees = MaxPitchInDegrees or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ConeDir at +0x0, MaxYawInDegrees at +0x18, MaxPitchInDegrees at +0x1C
 writeDouble(_params + 0x0, (ConeDir and ConeDir.X) or 0)
 writeDouble(_params + 0x8, (ConeDir and ConeDir.Y) or 0)
 writeDouble(_params + 0x10, (ConeDir and ConeDir.Z) or 0)
 writeFloat(_params + 0x18, MaxYawInDegrees)
 writeFloat(_params + 0x1C, MaxPitchInDegrees)
 UE.CallProcessEventEx(OwnerAddress, "RandomUnitVectorInEllipticalConeInDegrees", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.RandomUnitVectorInEllipticalConeInDegrees");

BL4.RandomUnitVectorInEllipticalConeInDegreesFromStream = function(OwnerAddress, Stream, ConeDir, MaxYawInDegrees, MaxPitchInDegrees)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RandomUnitVectorInEllipticalConeInDegreesFromStream: Failed To Allocate The Params");return;end;
 ConeDir = ConeDir or {X=0,Y=0,Z=0}
 MaxYawInDegrees = MaxYawInDegrees or 0
 MaxPitchInDegrees = MaxPitchInDegrees or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Stream at +0x0, ConeDir at +0x8, MaxYawInDegrees at +0x20, MaxPitchInDegrees at +0x24
 writeQword(_params + 0x0, Stream)
 writeDouble(_params + 0x8, (ConeDir and ConeDir.X) or 0)
 writeDouble(_params + 0x10, (ConeDir and ConeDir.Y) or 0)
 writeDouble(_params + 0x18, (ConeDir and ConeDir.Z) or 0)
 writeFloat(_params + 0x20, MaxYawInDegrees)
 writeFloat(_params + 0x24, MaxPitchInDegrees)
 UE.CallProcessEventEx(OwnerAddress, "RandomUnitVectorInEllipticalConeInDegreesFromStream", _params);
 local RET={X=readFloat(_params+0x28),Y=readFloat(_params+0x30),Z=readFloat(_params+0x38)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.RandomUnitVectorInEllipticalConeInDegreesFromStream");

BL4.RandomUnitVectorInEllipticalConeInRadians = function(OwnerAddress, ConeDir, MaxYawInRadians, MaxPitchInRadians)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RandomUnitVectorInEllipticalConeInRadians: Failed To Allocate The Params");return;end;
 ConeDir = ConeDir or {X=0,Y=0,Z=0}
 MaxYawInRadians = MaxYawInRadians or 0
 MaxPitchInRadians = MaxPitchInRadians or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ConeDir at +0x0, MaxYawInRadians at +0x18, MaxPitchInRadians at +0x1C
 writeDouble(_params + 0x0, (ConeDir and ConeDir.X) or 0)
 writeDouble(_params + 0x8, (ConeDir and ConeDir.Y) or 0)
 writeDouble(_params + 0x10, (ConeDir and ConeDir.Z) or 0)
 writeFloat(_params + 0x18, MaxYawInRadians)
 writeFloat(_params + 0x1C, MaxPitchInRadians)
 UE.CallProcessEventEx(OwnerAddress, "RandomUnitVectorInEllipticalConeInRadians", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.RandomUnitVectorInEllipticalConeInRadians");

BL4.RandomUnitVectorInEllipticalConeInRadiansFromStream = function(OwnerAddress, Stream, ConeDir, MaxYawInRadians, MaxPitchInRadians)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RandomUnitVectorInEllipticalConeInRadiansFromStream: Failed To Allocate The Params");return;end;
 ConeDir = ConeDir or {X=0,Y=0,Z=0}
 MaxYawInRadians = MaxYawInRadians or 0
 MaxPitchInRadians = MaxPitchInRadians or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Stream at +0x0, ConeDir at +0x8, MaxYawInRadians at +0x20, MaxPitchInRadians at +0x24
 writeQword(_params + 0x0, Stream)
 writeDouble(_params + 0x8, (ConeDir and ConeDir.X) or 0)
 writeDouble(_params + 0x10, (ConeDir and ConeDir.Y) or 0)
 writeDouble(_params + 0x18, (ConeDir and ConeDir.Z) or 0)
 writeFloat(_params + 0x20, MaxYawInRadians)
 writeFloat(_params + 0x24, MaxPitchInRadians)
 UE.CallProcessEventEx(OwnerAddress, "RandomUnitVectorInEllipticalConeInRadiansFromStream", _params);
 local RET={X=readFloat(_params+0x28),Y=readFloat(_params+0x30),Z=readFloat(_params+0x38)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.RandomUnitVectorInEllipticalConeInRadiansFromStream");

BL4.REase = function(OwnerAddress, A, B, ALPHA, bShortestPath, EasingFunc, BlendExp, steps)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.REase: Failed To Allocate The Params");return;end;
 A = A or {Pitch=0,Yaw=0,Roll=0}
 B = B or {Pitch=0,Yaw=0,Roll=0}
 ALPHA = ALPHA or 0
 bShortestPath = bShortestPath or false
 EasingFunc = EasingFunc or 0
 BlendExp = BlendExp or 0
 steps = steps or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18, ALPHA at +0x30, bShortestPath at +0x34, EasingFunc at +0x35, BlendExp at +0x38, steps at +0x3C
 writeDouble(_params + 0x0, (A and A.Pitch) or 0)
 writeDouble(_params + 0x8, (A and A.Yaw) or 0)
 writeDouble(_params + 0x10, (A and A.Roll) or 0)
 writeDouble(_params + 0x18, (B and B.Pitch) or 0)
 writeDouble(_params + 0x20, (B and B.Yaw) or 0)
 writeDouble(_params + 0x28, (B and B.Roll) or 0)
 writeFloat(_params + 0x30, ALPHA)
 writeByte(_params + 0x34, bShortestPath)
 writeByte(_params + 0x35, EasingFunc)
 writeFloat(_params + 0x38, BlendExp)
 writeInteger(_params + 0x3C, steps)
 UE.CallProcessEventEx(OwnerAddress, "REase", _params);
 local RET={Pitch=readFloat(_params+0x40),Yaw=readFloat(_params+0x48),Roll=readFloat(_params+0x50)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.REase");

BL4.ResetFloatSpringState = function(OwnerAddress, SpringState)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ResetFloatSpringState: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SpringState at +0x0
 writeQword(_params + 0x0, SpringState)
 UE.CallProcessEventEx(OwnerAddress, "ResetFloatSpringState", _params);
 deAlloc(_params);
end
FNR("BL4.ResetFloatSpringState");

BL4.ResetQuaternionSpringState = function(OwnerAddress, SpringState)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ResetQuaternionSpringState: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SpringState at +0x0
 writeQword(_params + 0x0, SpringState)
 UE.CallProcessEventEx(OwnerAddress, "ResetQuaternionSpringState", _params);
 deAlloc(_params);
end
FNR("BL4.ResetQuaternionSpringState");

BL4.ResetRandomStream = function(OwnerAddress, Stream)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ResetRandomStream: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Stream at +0x0
 writeQword(_params + 0x0, Stream)
 UE.CallProcessEventEx(OwnerAddress, "ResetRandomStream", _params);
 deAlloc(_params);
end
FNR("BL4.ResetRandomStream");

BL4.ResetVectorSpringState = function(OwnerAddress, SpringState)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ResetVectorSpringState: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SpringState at +0x0
 writeQword(_params + 0x0, SpringState)
 UE.CallProcessEventEx(OwnerAddress, "ResetVectorSpringState", _params);
 deAlloc(_params);
end
FNR("BL4.ResetVectorSpringState");

BL4.RGBLinearToHSV = function(OwnerAddress, RGB)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RGBLinearToHSV: Failed To Allocate The Params");return;end;
 RGB = RGB or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: RGB at +0x0
 writeFloat(_params + 0x0, (RGB and RGB.R) or 0)
 writeFloat(_params + 0x4, (RGB and RGB.G) or 0)
 writeFloat(_params + 0x8, (RGB and RGB.B) or 0)
 writeFloat(_params + 0xC, (RGB and RGB.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "RGBLinearToHSV", _params);
 local RET={R=readFloat(_params+0x10),G=readFloat(_params+0x14),B=readFloat(_params+0x18),A=readFloat(_params+0x1C)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.RGBLinearToHSV");

BL4.RGBToHSV = function(OwnerAddress, InColor, H, S, V, A)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RGBToHSV: Failed To Allocate The Params");return;end;
 InColor = InColor or {R=0,G=0,B=0,A=0}
 H = H or 0
 S = S or 0
 V = V or 0
 A = A or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InColor at +0x0, H at +0x10, S at +0x14, V at +0x18, A at +0x1C
 writeFloat(_params + 0x0, (InColor and InColor.R) or 0)
 writeFloat(_params + 0x4, (InColor and InColor.G) or 0)
 writeFloat(_params + 0x8, (InColor and InColor.B) or 0)
 writeFloat(_params + 0xC, (InColor and InColor.A) or 0)
 writeFloat(_params + 0x10, H)
 writeFloat(_params + 0x14, S)
 writeFloat(_params + 0x18, V)
 writeFloat(_params + 0x1C, A)
 UE.CallProcessEventEx(OwnerAddress, "RGBToHSV", _params);
 deAlloc(_params);
end
FNR("BL4.RGBToHSV");

BL4.RGBToHSV_Vector = function(OwnerAddress, RGB, HSV)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RGBToHSV_Vector: Failed To Allocate The Params");return;end;
 RGB = RGB or {R=0,G=0,B=0,A=0}
 HSV = HSV or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: RGB at +0x0, HSV at +0x10
 writeFloat(_params + 0x0, (RGB and RGB.R) or 0)
 writeFloat(_params + 0x4, (RGB and RGB.G) or 0)
 writeFloat(_params + 0x8, (RGB and RGB.B) or 0)
 writeFloat(_params + 0xC, (RGB and RGB.A) or 0)
 writeFloat(_params + 0x10, (HSV and HSV.R) or 0)
 writeFloat(_params + 0x14, (HSV and HSV.G) or 0)
 writeFloat(_params + 0x18, (HSV and HSV.B) or 0)
 writeFloat(_params + 0x1C, (HSV and HSV.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "RGBToHSV_Vector", _params);
 deAlloc(_params);
end
FNR("BL4.RGBToHSV_Vector");

BL4.RInterpTo = function(OwnerAddress, current, target, DeltaTime, InterpSpeed)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RInterpTo: Failed To Allocate The Params");return;end;
 current = current or {Pitch=0,Yaw=0,Roll=0}
 target = target or {Pitch=0,Yaw=0,Roll=0}
 DeltaTime = DeltaTime or 0
 InterpSpeed = InterpSpeed or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: current at +0x0, target at +0x18, DeltaTime at +0x30, InterpSpeed at +0x34
 writeDouble(_params + 0x0, (current and current.Pitch) or 0)
 writeDouble(_params + 0x8, (current and current.Yaw) or 0)
 writeDouble(_params + 0x10, (current and current.Roll) or 0)
 writeDouble(_params + 0x18, (target and target.Pitch) or 0)
 writeDouble(_params + 0x20, (target and target.Yaw) or 0)
 writeDouble(_params + 0x28, (target and target.Roll) or 0)
 writeFloat(_params + 0x30, DeltaTime)
 writeFloat(_params + 0x34, InterpSpeed)
 UE.CallProcessEventEx(OwnerAddress, "RInterpTo", _params);
 local RET={Pitch=readFloat(_params+0x38),Yaw=readFloat(_params+0x40),Roll=readFloat(_params+0x48)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.RInterpTo");

BL4.RInterpTo_Constant = function(OwnerAddress, current, target, DeltaTime, InterpSpeed)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RInterpTo_Constant: Failed To Allocate The Params");return;end;
 current = current or {Pitch=0,Yaw=0,Roll=0}
 target = target or {Pitch=0,Yaw=0,Roll=0}
 DeltaTime = DeltaTime or 0
 InterpSpeed = InterpSpeed or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: current at +0x0, target at +0x18, DeltaTime at +0x30, InterpSpeed at +0x34
 writeDouble(_params + 0x0, (current and current.Pitch) or 0)
 writeDouble(_params + 0x8, (current and current.Yaw) or 0)
 writeDouble(_params + 0x10, (current and current.Roll) or 0)
 writeDouble(_params + 0x18, (target and target.Pitch) or 0)
 writeDouble(_params + 0x20, (target and target.Yaw) or 0)
 writeDouble(_params + 0x28, (target and target.Roll) or 0)
 writeFloat(_params + 0x30, DeltaTime)
 writeFloat(_params + 0x34, InterpSpeed)
 UE.CallProcessEventEx(OwnerAddress, "RInterpTo_Constant", _params);
 local RET={Pitch=readFloat(_params+0x38),Yaw=readFloat(_params+0x40),Roll=readFloat(_params+0x48)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.RInterpTo_Constant");

BL4.RLerp = function(OwnerAddress, A, B, ALPHA, bShortestPath)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RLerp: Failed To Allocate The Params");return;end;
 A = A or {Pitch=0,Yaw=0,Roll=0}
 B = B or {Pitch=0,Yaw=0,Roll=0}
 ALPHA = ALPHA or 0
 bShortestPath = bShortestPath or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18, ALPHA at +0x30, bShortestPath at +0x34
 writeDouble(_params + 0x0, (A and A.Pitch) or 0)
 writeDouble(_params + 0x8, (A and A.Yaw) or 0)
 writeDouble(_params + 0x10, (A and A.Roll) or 0)
 writeDouble(_params + 0x18, (B and B.Pitch) or 0)
 writeDouble(_params + 0x20, (B and B.Yaw) or 0)
 writeDouble(_params + 0x28, (B and B.Roll) or 0)
 writeFloat(_params + 0x30, ALPHA)
 writeByte(_params + 0x34, bShortestPath)
 UE.CallProcessEventEx(OwnerAddress, "RLerp", _params);
 local RET={Pitch=readFloat(_params+0x38),Yaw=readFloat(_params+0x40),Roll=readFloat(_params+0x48)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.RLerp");

BL4.RotateAngleAxis = function(OwnerAddress, InVect, AngleDeg, Axis)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RotateAngleAxis: Failed To Allocate The Params");return;end;
 InVect = InVect or {X=0,Y=0,Z=0}
 AngleDeg = AngleDeg or 0
 Axis = Axis or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVect at +0x0, AngleDeg at +0x18, Axis at +0x20
 writeDouble(_params + 0x0, (InVect and InVect.X) or 0)
 writeDouble(_params + 0x8, (InVect and InVect.Y) or 0)
 writeDouble(_params + 0x10, (InVect and InVect.Z) or 0)
 writeFloat(_params + 0x18, AngleDeg)
 writeDouble(_params + 0x20, (Axis and Axis.X) or 0)
 writeDouble(_params + 0x28, (Axis and Axis.Y) or 0)
 writeDouble(_params + 0x30, (Axis and Axis.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "RotateAngleAxis", _params);
 local RET={X=readFloat(_params+0x38),Y=readFloat(_params+0x40),Z=readFloat(_params+0x48)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.RotateAngleAxis");

BL4.RotatorFromAxisAndAngle = function(OwnerAddress, Axis, Angle)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RotatorFromAxisAndAngle: Failed To Allocate The Params");return;end;
 Axis = Axis or {X=0,Y=0,Z=0}
 Angle = Angle or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Axis at +0x0, Angle at +0x18
 writeDouble(_params + 0x0, (Axis and Axis.X) or 0)
 writeDouble(_params + 0x8, (Axis and Axis.Y) or 0)
 writeDouble(_params + 0x10, (Axis and Axis.Z) or 0)
 writeFloat(_params + 0x18, Angle)
 UE.CallProcessEventEx(OwnerAddress, "RotatorFromAxisAndAngle", _params);
 local RET={Pitch=readFloat(_params+0x20),Yaw=readFloat(_params+0x28),Roll=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.RotatorFromAxisAndAngle");

BL4.round = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.round: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "round", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.round");

BL4.Round64 = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Round64: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "Round64", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Round64");

BL4.SafeDivide = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SafeDivide: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "SafeDivide", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SafeDivide");

BL4.SeedRandomStream = function(OwnerAddress, Stream)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SeedRandomStream: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Stream at +0x0
 writeQword(_params + 0x0, Stream)
 UE.CallProcessEventEx(OwnerAddress, "SeedRandomStream", _params);
 deAlloc(_params);
end
FNR("BL4.SeedRandomStream");

BL4.SelectClass = function(A_Class, B_Class, bSelectA)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SelectClass: Failed To Allocate The Params");return;end;
 bSelectA = bSelectA or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8, bSelectA at +0x10
 writeQword(_params + 0x0, A_Class)
 writeQword(_params + 0x8, B_Class)
 writeByte(_params + 0x10, bSelectA)
 UE.CallProcessEventEx(A_Class, "SelectClass", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SelectClass");

BL4.SelectColor = function(OwnerAddress, A, B, bPickA)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SelectColor: Failed To Allocate The Params");return;end;
 A = A or {R=0,G=0,B=0,A=0}
 B = B or {R=0,G=0,B=0,A=0}
 bPickA = bPickA or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10, bPickA at +0x20
 writeFloat(_params + 0x0, (A and A.R) or 0)
 writeFloat(_params + 0x4, (A and A.G) or 0)
 writeFloat(_params + 0x8, (A and A.B) or 0)
 writeFloat(_params + 0xC, (A and A.A) or 0)
 writeFloat(_params + 0x10, (B and B.R) or 0)
 writeFloat(_params + 0x14, (B and B.G) or 0)
 writeFloat(_params + 0x18, (B and B.B) or 0)
 writeFloat(_params + 0x1C, (B and B.A) or 0)
 writeByte(_params + 0x20, bPickA)
 UE.CallProcessEventEx(OwnerAddress, "SelectColor", _params);
 local RET={R=readFloat(_params+0x24),G=readFloat(_params+0x28),B=readFloat(_params+0x2C),A=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.SelectColor");

BL4.SelectFloat = function(OwnerAddress, A, B, bPickA)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SelectFloat: Failed To Allocate The Params");return;end;
 bPickA = bPickA or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8, bPickA at +0x10
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 writeByte(_params + 0x10, bPickA)
 UE.CallProcessEventEx(OwnerAddress, "SelectFloat", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SelectFloat");

BL4.SelectInt = function(OwnerAddress, A, B, bPickA)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SelectInt: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 bPickA = bPickA or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4, bPickA at +0x8
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 writeByte(_params + 0x8, bPickA)
 UE.CallProcessEventEx(OwnerAddress, "SelectInt", _params);
 local RET=readInteger(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SelectInt");

BL4.SelectName = function(OwnerAddress, A, B, bPickA)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SelectName: Failed To Allocate The Params");return;end;
 bPickA = bPickA or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8, bPickA at +0x10
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 writeByte(_params + 0x10, bPickA)
 UE.CallProcessEventEx(OwnerAddress, "SelectName", _params);
 local RET=readQword(_params + 0x14);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SelectName");

BL4.SelectObject = function(A_Object, B_Object, bSelectA)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SelectObject: Failed To Allocate The Params");return;end;
 bSelectA = bSelectA or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8, bSelectA at +0x10
 writeQword(_params + 0x0, A_Object)
 writeQword(_params + 0x8, B_Object)
 writeByte(_params + 0x10, bSelectA)
 UE.CallProcessEventEx(A_Object, "SelectObject", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SelectObject");

BL4.SelectRotator = function(OwnerAddress, A, B, bPickA)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SelectRotator: Failed To Allocate The Params");return;end;
 A = A or {Pitch=0,Yaw=0,Roll=0}
 B = B or {Pitch=0,Yaw=0,Roll=0}
 bPickA = bPickA or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18, bPickA at +0x30
 writeDouble(_params + 0x0, (A and A.Pitch) or 0)
 writeDouble(_params + 0x8, (A and A.Yaw) or 0)
 writeDouble(_params + 0x10, (A and A.Roll) or 0)
 writeDouble(_params + 0x18, (B and B.Pitch) or 0)
 writeDouble(_params + 0x20, (B and B.Yaw) or 0)
 writeDouble(_params + 0x28, (B and B.Roll) or 0)
 writeByte(_params + 0x30, bPickA)
 UE.CallProcessEventEx(OwnerAddress, "SelectRotator", _params);
 local RET={Pitch=readFloat(_params+0x38),Yaw=readFloat(_params+0x40),Roll=readFloat(_params+0x48)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.SelectRotator");

BL4.SelectString = function(OwnerAddress, A, B, bPickA)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SelectString: Failed To Allocate The Params");return;end;
 bPickA = bPickA or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10, bPickA at +0x20
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x10, B)
 writeByte(_params + 0x20, bPickA)
 UE.CallProcessEventEx(OwnerAddress, "SelectString", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SelectString");

BL4.SelectText = function(OwnerAddress, A, B, bPickA)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SelectText: Failed To Allocate The Params");return;end;
 bPickA = bPickA or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10, bPickA at +0x20
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x10, B)
 writeByte(_params + 0x20, bPickA)
 UE.CallProcessEventEx(OwnerAddress, "SelectText", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SelectText");

BL4.SelectTransform = function(OwnerAddress, A, B, bPickA)
 local _paramsSize = 0x130
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SelectTransform: Failed To Allocate The Params");return;end;
 bPickA = bPickA or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x60, bPickA at +0xC0
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x60, B)
 writeByte(_params + 0xC0, bPickA)
 UE.CallProcessEventEx(OwnerAddress, "SelectTransform", _params);
 local RET=readQword(_params + 0xD0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SelectTransform");

BL4.SelectVector = function(OwnerAddress, A, B, bPickA)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SelectVector: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 B = B or {X=0,Y=0,Z=0}
 bPickA = bPickA or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18, bPickA at +0x30
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeDouble(_params + 0x18, (B and B.X) or 0)
 writeDouble(_params + 0x20, (B and B.Y) or 0)
 writeDouble(_params + 0x28, (B and B.Z) or 0)
 writeByte(_params + 0x30, bPickA)
 UE.CallProcessEventEx(OwnerAddress, "SelectVector", _params);
 local RET={X=readFloat(_params+0x38),Y=readFloat(_params+0x40),Z=readFloat(_params+0x48)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.SelectVector");

BL4.Set2D = function(OwnerAddress, A, X, Y)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Set2D: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, X at +0x10, Y at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeQword(_params + 0x10, X)
 writeQword(_params + 0x18, Y)
 UE.CallProcessEventEx(OwnerAddress, "Set2D", _params);
 deAlloc(_params);
end
FNR("BL4.Set2D");

BL4.SetFloatSpringStateVelocity = function(OwnerAddress, SpringState, Velocity)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetFloatSpringStateVelocity: Failed To Allocate The Params");return;end;
 Velocity = Velocity or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SpringState at +0x0, Velocity at +0xC
 writeQword(_params + 0x0, SpringState)
 writeFloat(_params + 0xC, Velocity)
 UE.CallProcessEventEx(OwnerAddress, "SetFloatSpringStateVelocity", _params);
 deAlloc(_params);
end
FNR("BL4.SetFloatSpringStateVelocity");

BL4.SetQuaternionSpringStateAngularVelocity = function(OwnerAddress, SpringState, AngularVelocity)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetQuaternionSpringStateAngularVelocity: Failed To Allocate The Params");return;end;
 AngularVelocity = AngularVelocity or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SpringState at +0x0, AngularVelocity at +0x40
 writeQword(_params + 0x0, SpringState)
 writeDouble(_params + 0x40, (AngularVelocity and AngularVelocity.X) or 0)
 writeDouble(_params + 0x48, (AngularVelocity and AngularVelocity.Y) or 0)
 writeDouble(_params + 0x50, (AngularVelocity and AngularVelocity.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetQuaternionSpringStateAngularVelocity", _params);
 deAlloc(_params);
end
FNR("BL4.SetQuaternionSpringStateAngularVelocity");

BL4.SetRandomStreamSeed = function(OwnerAddress, Stream, NewSeed)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRandomStreamSeed: Failed To Allocate The Params");return;end;
 NewSeed = NewSeed or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Stream at +0x0, NewSeed at +0x8
 writeQword(_params + 0x0, Stream)
 writeInteger(_params + 0x8, NewSeed)
 UE.CallProcessEventEx(OwnerAddress, "SetRandomStreamSeed", _params);
 deAlloc(_params);
end
FNR("BL4.SetRandomStreamSeed");

BL4.SetVectorSpringStateVelocity = function(OwnerAddress, SpringState, Velocity)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVectorSpringStateVelocity: Failed To Allocate The Params");return;end;
 Velocity = Velocity or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SpringState at +0x0, Velocity at +0x38
 writeQword(_params + 0x0, SpringState)
 writeDouble(_params + 0x38, (Velocity and Velocity.X) or 0)
 writeDouble(_params + 0x40, (Velocity and Velocity.Y) or 0)
 writeDouble(_params + 0x48, (Velocity and Velocity.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetVectorSpringStateVelocity", _params);
 deAlloc(_params);
end
FNR("BL4.SetVectorSpringStateVelocity");

BL4.SignOfFloat = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SignOfFloat: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "SignOfFloat", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SignOfFloat");

BL4.SignOfInteger = function(OwnerAddress, A)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SignOfInteger: Failed To Allocate The Params");return;end;
 A = A or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeInteger(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "SignOfInteger", _params);
 local RET=readInteger(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SignOfInteger");

BL4.SignOfInteger64 = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SignOfInteger64: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "SignOfInteger64", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SignOfInteger64");

BL4.sin = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.sin: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "sin", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.sin");

BL4.SortFloatArray = function(OwnerAddress, Array)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SortFloatArray: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Array at +0x0
 writeQword(_params + 0x0, Array)
 UE.CallProcessEventEx(OwnerAddress, "SortFloatArray", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SortFloatArray");

BL4.SortIntArray = function(OwnerAddress, Array)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SortIntArray: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Array at +0x0
 writeQword(_params + 0x0, Array)
 UE.CallProcessEventEx(OwnerAddress, "SortIntArray", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SortIntArray");

BL4.Spherical2DToUnitCartesian = function(OwnerAddress, A)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Spherical2DToUnitCartesian: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Spherical2DToUnitCartesian", _params);
 local RET={X=readFloat(_params+0x10),Y=readFloat(_params+0x18),Z=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Spherical2DToUnitCartesian");

BL4.sqrt = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.sqrt: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "sqrt", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.sqrt");

BL4.Square = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Square: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "Square", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Square");

BL4.Subtract_ByteByte = function(OwnerAddress, A, B)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Subtract_ByteByte: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x1
 writeByte(_params + 0x0, A)
 writeByte(_params + 0x1, B)
 UE.CallProcessEventEx(OwnerAddress, "Subtract_ByteByte", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Subtract_ByteByte");

BL4.Subtract_DateTimeDateTime = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Subtract_DateTimeDateTime: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Subtract_DateTimeDateTime", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Subtract_DateTimeDateTime");

BL4.Subtract_DateTimeTimespan = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Subtract_DateTimeTimespan: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Subtract_DateTimeTimespan", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Subtract_DateTimeTimespan");

BL4.Subtract_DoubleDouble = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Subtract_DoubleDouble: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Subtract_DoubleDouble", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Subtract_DoubleDouble");

BL4.Subtract_Int64Int64 = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Subtract_Int64Int64: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Subtract_Int64Int64", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Subtract_Int64Int64");

BL4.Subtract_IntInt = function(OwnerAddress, A, B)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Subtract_IntInt: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 UE.CallProcessEventEx(OwnerAddress, "Subtract_IntInt", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Subtract_IntInt");

BL4.Subtract_IntPointInt = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Subtract_IntPointInt: Failed To Allocate The Params");return;end;
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeInteger(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Subtract_IntPointInt", _params);
 local RET=readQword(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Subtract_IntPointInt");

BL4.Subtract_IntPointIntPoint = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Subtract_IntPointIntPoint: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Subtract_IntPointIntPoint", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Subtract_IntPointIntPoint");

BL4.Subtract_LinearColorLinearColor = function(OwnerAddress, A, B)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Subtract_LinearColorLinearColor: Failed To Allocate The Params");return;end;
 A = A or {R=0,G=0,B=0,A=0}
 B = B or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10
 writeFloat(_params + 0x0, (A and A.R) or 0)
 writeFloat(_params + 0x4, (A and A.G) or 0)
 writeFloat(_params + 0x8, (A and A.B) or 0)
 writeFloat(_params + 0xC, (A and A.A) or 0)
 writeFloat(_params + 0x10, (B and B.R) or 0)
 writeFloat(_params + 0x14, (B and B.G) or 0)
 writeFloat(_params + 0x18, (B and B.B) or 0)
 writeFloat(_params + 0x1C, (B and B.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Subtract_LinearColorLinearColor", _params);
 local RET={R=readFloat(_params+0x20),G=readFloat(_params+0x24),B=readFloat(_params+0x28),A=readFloat(_params+0x2C)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Subtract_LinearColorLinearColor");

BL4.Subtract_QuatQuat = function(OwnerAddress, A, B)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Subtract_QuatQuat: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x20
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x20, B)
 UE.CallProcessEventEx(OwnerAddress, "Subtract_QuatQuat", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Subtract_QuatQuat");

BL4.Subtract_TimespanTimespan = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Subtract_TimespanTimespan: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Subtract_TimespanTimespan", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Subtract_TimespanTimespan");

BL4.Subtract_Vector2DFloat = function(OwnerAddress, A, B)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Subtract_Vector2DFloat: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeQword(_params + 0x10, B)
 UE.CallProcessEventEx(OwnerAddress, "Subtract_Vector2DFloat", _params);
 local RET={X=readFloat(_params+0x18),Y=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Subtract_Vector2DFloat");

BL4.Subtract_Vector2DVector2D = function(OwnerAddress, A, B)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Subtract_Vector2DVector2D: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 B = B or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (B and B.X) or 0)
 writeDouble(_params + 0x18, (B and B.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Subtract_Vector2DVector2D", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Subtract_Vector2DVector2D");

BL4.Subtract_Vector4Vector4 = function(OwnerAddress, A, B)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Subtract_Vector4Vector4: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x20
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x20, B)
 UE.CallProcessEventEx(OwnerAddress, "Subtract_Vector4Vector4", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Subtract_Vector4Vector4");

BL4.Subtract_VectorFloat = function(OwnerAddress, A, B)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Subtract_VectorFloat: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeQword(_params + 0x18, B)
 UE.CallProcessEventEx(OwnerAddress, "Subtract_VectorFloat", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Subtract_VectorFloat");

BL4.Subtract_VectorInt = function(OwnerAddress, A, B)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Subtract_VectorInt: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeInteger(_params + 0x18, B)
 UE.CallProcessEventEx(OwnerAddress, "Subtract_VectorInt", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Subtract_VectorInt");

BL4.Subtract_VectorVector = function(OwnerAddress, A, B)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Subtract_VectorVector: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 B = B or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeDouble(_params + 0x18, (B and B.X) or 0)
 writeDouble(_params + 0x20, (B and B.Y) or 0)
 writeDouble(_params + 0x28, (B and B.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Subtract_VectorVector", _params);
 local RET={X=readFloat(_params+0x30),Y=readFloat(_params+0x38),Z=readFloat(_params+0x40)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Subtract_VectorVector");

BL4.tan = function(OwnerAddress, A)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.tan: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "tan", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.tan");

BL4.TEase = function(OwnerAddress, A, B, ALPHA, EasingFunc, BlendExp, steps)
 local _paramsSize = 0x130
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TEase: Failed To Allocate The Params");return;end;
 ALPHA = ALPHA or 0
 EasingFunc = EasingFunc or 0
 BlendExp = BlendExp or 0
 steps = steps or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x60, ALPHA at +0xC0, EasingFunc at +0xC4, BlendExp at +0xC8, steps at +0xCC
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x60, B)
 writeFloat(_params + 0xC0, ALPHA)
 writeByte(_params + 0xC4, EasingFunc)
 writeFloat(_params + 0xC8, BlendExp)
 writeInteger(_params + 0xCC, steps)
 UE.CallProcessEventEx(OwnerAddress, "TEase", _params);
 local RET=readQword(_params + 0xD0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.TEase");

BL4.TimespanFromString = function(OwnerAddress, TimespanString, Result)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TimespanFromString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TimespanString at +0x0, Result at +0x10
 writeQword(_params + 0x0, TimespanString)
 writeQword(_params + 0x10, Result)
 UE.CallProcessEventEx(OwnerAddress, "TimespanFromString", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.TimespanFromString");

BL4.TimespanMaxValue = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TimespanMaxValue: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "TimespanMaxValue", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.TimespanMaxValue");

BL4.TimespanMinValue = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TimespanMinValue: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "TimespanMinValue", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.TimespanMinValue");

BL4.TimespanRatio = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TimespanRatio: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "TimespanRatio", _params);
 local RET=readFloat(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.TimespanRatio");

BL4.TimespanZeroValue = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TimespanZeroValue: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "TimespanZeroValue", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.TimespanZeroValue");

BL4.TInterpTo = function(OwnerAddress, current, target, DeltaTime, InterpSpeed)
 local _paramsSize = 0x130
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TInterpTo: Failed To Allocate The Params");return;end;
 DeltaTime = DeltaTime or 0
 InterpSpeed = InterpSpeed or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: current at +0x0, target at +0x60, DeltaTime at +0xC0, InterpSpeed at +0xC4
 writeQword(_params + 0x0, current)
 writeQword(_params + 0x60, target)
 writeFloat(_params + 0xC0, DeltaTime)
 writeFloat(_params + 0xC4, InterpSpeed)
 UE.CallProcessEventEx(OwnerAddress, "TInterpTo", _params);
 local RET=readQword(_params + 0xD0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.TInterpTo");

BL4.TLerp = function(OwnerAddress, A, B, ALPHA, InterpMode)
 local _paramsSize = 0x130
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TLerp: Failed To Allocate The Params");return;end;
 ALPHA = ALPHA or 0
 InterpMode = InterpMode or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x60, ALPHA at +0xC0, InterpMode at +0xC4
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x60, B)
 writeFloat(_params + 0xC0, ALPHA)
 writeByte(_params + 0xC4, InterpMode)
 UE.CallProcessEventEx(OwnerAddress, "TLerp", _params);
 local RET=readQword(_params + 0xD0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.TLerp");

BL4.Today = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Today: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "Today", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Today");

BL4.ToDirectionAndLength2D = function(OwnerAddress, A, OutDir, OutLength)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ToDirectionAndLength2D: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 OutDir = OutDir or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, OutDir at +0x10, OutLength at +0x20
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (OutDir and OutDir.X) or 0)
 writeDouble(_params + 0x18, (OutDir and OutDir.Y) or 0)
 writeQword(_params + 0x20, OutLength)
 UE.CallProcessEventEx(OwnerAddress, "ToDirectionAndLength2D", _params);
 deAlloc(_params);
end
FNR("BL4.ToDirectionAndLength2D");

BL4.ToHex_LinearColor = function(OwnerAddress, InColor)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ToHex_LinearColor: Failed To Allocate The Params");return;end;
 InColor = InColor or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InColor at +0x0
 writeFloat(_params + 0x0, (InColor and InColor.R) or 0)
 writeFloat(_params + 0x4, (InColor and InColor.G) or 0)
 writeFloat(_params + 0x8, (InColor and InColor.B) or 0)
 writeFloat(_params + 0xC, (InColor and InColor.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "ToHex_LinearColor", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ToHex_LinearColor");

BL4.ToRounded2D = function(OwnerAddress, A)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ToRounded2D: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "ToRounded2D", _params);
 local RET={X=readFloat(_params+0x10),Y=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.ToRounded2D");

BL4.ToSign2D = function(OwnerAddress, A)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ToSign2D: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "ToSign2D", _params);
 local RET={X=readFloat(_params+0x10),Y=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.ToSign2D");

BL4.ToUnixTimestamp = function(OwnerAddress, time)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ToUnixTimestamp: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: time at +0x0
 writeQword(_params + 0x0, time)
 UE.CallProcessEventEx(OwnerAddress, "ToUnixTimestamp", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ToUnixTimestamp");

BL4.ToUnixTimestampDouble = function(OwnerAddress, time)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ToUnixTimestampDouble: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: time at +0x0
 writeQword(_params + 0x0, time)
 UE.CallProcessEventEx(OwnerAddress, "ToUnixTimestampDouble", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ToUnixTimestampDouble");

BL4.Transform_Determinant = function(OwnerAddress, Transform)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Transform_Determinant: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Transform at +0x0
 writeQword(_params + 0x0, Transform)
 UE.CallProcessEventEx(OwnerAddress, "Transform_Determinant", _params);
 local RET=readFloat(_params + 0x60);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Transform_Determinant");

BL4.TransformDirection = function(OwnerAddress, T, Direction)
 local _paramsSize = 0x90
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TransformDirection: Failed To Allocate The Params");return;end;
 Direction = Direction or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: T at +0x0, Direction at +0x60
 writeQword(_params + 0x0, T)
 writeDouble(_params + 0x60, (Direction and Direction.X) or 0)
 writeDouble(_params + 0x68, (Direction and Direction.Y) or 0)
 writeDouble(_params + 0x70, (Direction and Direction.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "TransformDirection", _params);
 local RET={X=readFloat(_params+0x78),Y=readFloat(_params+0x80),Z=readFloat(_params+0x88)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.TransformDirection");

BL4.TransformLocation = function(OwnerAddress, T, Location)
 local _paramsSize = 0x90
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TransformLocation: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: T at +0x0, Location at +0x60
 writeQword(_params + 0x0, T)
 writeDouble(_params + 0x60, (Location and Location.X) or 0)
 writeDouble(_params + 0x68, (Location and Location.Y) or 0)
 writeDouble(_params + 0x70, (Location and Location.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "TransformLocation", _params);
 local RET={X=readFloat(_params+0x78),Y=readFloat(_params+0x80),Z=readFloat(_params+0x88)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.TransformLocation");

BL4.TransformRotation = function(OwnerAddress, T, Rotation)
 local _paramsSize = 0x90
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TransformRotation: Failed To Allocate The Params");return;end;
 Rotation = Rotation or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: T at +0x0, Rotation at +0x60
 writeQword(_params + 0x0, T)
 writeDouble(_params + 0x60, (Rotation and Rotation.Pitch) or 0)
 writeDouble(_params + 0x68, (Rotation and Rotation.Yaw) or 0)
 writeDouble(_params + 0x70, (Rotation and Rotation.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "TransformRotation", _params);
 local RET={Pitch=readFloat(_params+0x78),Yaw=readFloat(_params+0x80),Roll=readFloat(_params+0x88)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.TransformRotation");

BL4.TransformVector4 = function(OwnerAddress, Matrix, Vec4)
 local _paramsSize = 0xC0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TransformVector4: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Matrix at +0x0, Vec4 at +0x80
 writeQword(_params + 0x0, Matrix)
 writeQword(_params + 0x80, Vec4)
 UE.CallProcessEventEx(OwnerAddress, "TransformVector4", _params);
 local RET=readQword(_params + 0xA0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.TransformVector4");

BL4.UtcNow = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UtcNow: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "UtcNow", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.UtcNow");

BL4.VEase = function(OwnerAddress, A, B, ALPHA, EasingFunc, BlendExp, steps)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.VEase: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 B = B or {X=0,Y=0,Z=0}
 ALPHA = ALPHA or 0
 EasingFunc = EasingFunc or 0
 BlendExp = BlendExp or 0
 steps = steps or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18, ALPHA at +0x30, EasingFunc at +0x34, BlendExp at +0x38, steps at +0x3C
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeDouble(_params + 0x18, (B and B.X) or 0)
 writeDouble(_params + 0x20, (B and B.Y) or 0)
 writeDouble(_params + 0x28, (B and B.Z) or 0)
 writeFloat(_params + 0x30, ALPHA)
 writeByte(_params + 0x34, EasingFunc)
 writeFloat(_params + 0x38, BlendExp)
 writeInteger(_params + 0x3C, steps)
 UE.CallProcessEventEx(OwnerAddress, "VEase", _params);
 local RET={X=readFloat(_params+0x40),Y=readFloat(_params+0x48),Z=readFloat(_params+0x50)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.VEase");

BL4.Vector2D_One = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector2D_One: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "Vector2D_One", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector2D_One");

BL4.Vector2D_Unit45Deg = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector2D_Unit45Deg: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "Vector2D_Unit45Deg", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector2D_Unit45Deg");

BL4.Vector2D_Zero = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector2D_Zero: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "Vector2D_Zero", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector2D_Zero");

BL4.Vector2DInterpTo = function(OwnerAddress, current, target, DeltaTime, InterpSpeed)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector2DInterpTo: Failed To Allocate The Params");return;end;
 current = current or {X=0,Y=0}
 target = target or {X=0,Y=0}
 DeltaTime = DeltaTime or 0
 InterpSpeed = InterpSpeed or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: current at +0x0, target at +0x10, DeltaTime at +0x20, InterpSpeed at +0x24
 writeDouble(_params + 0x0, (current and current.X) or 0)
 writeDouble(_params + 0x8, (current and current.Y) or 0)
 writeDouble(_params + 0x10, (target and target.X) or 0)
 writeDouble(_params + 0x18, (target and target.Y) or 0)
 writeFloat(_params + 0x20, DeltaTime)
 writeFloat(_params + 0x24, InterpSpeed)
 UE.CallProcessEventEx(OwnerAddress, "Vector2DInterpTo", _params);
 local RET={X=readFloat(_params+0x28),Y=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector2DInterpTo");

BL4.Vector2DInterpTo_Constant = function(OwnerAddress, current, target, DeltaTime, InterpSpeed)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector2DInterpTo_Constant: Failed To Allocate The Params");return;end;
 current = current or {X=0,Y=0}
 target = target or {X=0,Y=0}
 DeltaTime = DeltaTime or 0
 InterpSpeed = InterpSpeed or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: current at +0x0, target at +0x10, DeltaTime at +0x20, InterpSpeed at +0x24
 writeDouble(_params + 0x0, (current and current.X) or 0)
 writeDouble(_params + 0x8, (current and current.Y) or 0)
 writeDouble(_params + 0x10, (target and target.X) or 0)
 writeDouble(_params + 0x18, (target and target.Y) or 0)
 writeFloat(_params + 0x20, DeltaTime)
 writeFloat(_params + 0x24, InterpSpeed)
 UE.CallProcessEventEx(OwnerAddress, "Vector2DInterpTo_Constant", _params);
 local RET={X=readFloat(_params+0x28),Y=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector2DInterpTo_Constant");

BL4.Vector4_Assign = function(OwnerAddress, A, InVector)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector4_Assign: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, InVector at +0x20
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x20, InVector)
 UE.CallProcessEventEx(OwnerAddress, "Vector4_Assign", _params);
 deAlloc(_params);
end
FNR("BL4.Vector4_Assign");

BL4.Vector4_CrossProduct3 = function(OwnerAddress, A, B)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector4_CrossProduct3: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x20
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x20, B)
 UE.CallProcessEventEx(OwnerAddress, "Vector4_CrossProduct3", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector4_CrossProduct3");

BL4.Vector4_DotProduct = function(OwnerAddress, A, B)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector4_DotProduct: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x20
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x20, B)
 UE.CallProcessEventEx(OwnerAddress, "Vector4_DotProduct", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector4_DotProduct");

BL4.Vector4_DotProduct3 = function(OwnerAddress, A, B)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector4_DotProduct3: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x20
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x20, B)
 UE.CallProcessEventEx(OwnerAddress, "Vector4_DotProduct3", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector4_DotProduct3");

BL4.Vector4_IsNAN = function(OwnerAddress, A)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector4_IsNAN: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "Vector4_IsNAN", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector4_IsNAN");

BL4.Vector4_IsNearlyZero3 = function(OwnerAddress, A, Tolerance)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector4_IsNearlyZero3: Failed To Allocate The Params");return;end;
 Tolerance = Tolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, Tolerance at +0x20
 writeQword(_params + 0x0, A)
 writeFloat(_params + 0x20, Tolerance)
 UE.CallProcessEventEx(OwnerAddress, "Vector4_IsNearlyZero3", _params);
 local RET=readByte(_params + 0x24);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector4_IsNearlyZero3");

BL4.Vector4_IsNormal3 = function(OwnerAddress, A)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector4_IsNormal3: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "Vector4_IsNormal3", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector4_IsNormal3");

BL4.Vector4_IsUnit3 = function(OwnerAddress, A, SquaredLenthTolerance)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector4_IsUnit3: Failed To Allocate The Params");return;end;
 SquaredLenthTolerance = SquaredLenthTolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, SquaredLenthTolerance at +0x20
 writeQword(_params + 0x0, A)
 writeFloat(_params + 0x20, SquaredLenthTolerance)
 UE.CallProcessEventEx(OwnerAddress, "Vector4_IsUnit3", _params);
 local RET=readByte(_params + 0x24);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector4_IsUnit3");

BL4.Vector4_IsZero = function(OwnerAddress, A)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector4_IsZero: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "Vector4_IsZero", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector4_IsZero");

BL4.Vector4_MirrorByVector3 = function(OwnerAddress, Direction, SurfaceNormal)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector4_MirrorByVector3: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Direction at +0x0, SurfaceNormal at +0x20
 writeQword(_params + 0x0, Direction)
 writeQword(_params + 0x20, SurfaceNormal)
 UE.CallProcessEventEx(OwnerAddress, "Vector4_MirrorByVector3", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector4_MirrorByVector3");

BL4.Vector4_Negated = function(OwnerAddress, A)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector4_Negated: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "Vector4_Negated", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector4_Negated");

BL4.Vector4_Normal3 = function(OwnerAddress, A, Tolerance)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector4_Normal3: Failed To Allocate The Params");return;end;
 Tolerance = Tolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, Tolerance at +0x20
 writeQword(_params + 0x0, A)
 writeFloat(_params + 0x20, Tolerance)
 UE.CallProcessEventEx(OwnerAddress, "Vector4_Normal3", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector4_Normal3");

BL4.Vector4_Normalize3 = function(OwnerAddress, A, Tolerance)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector4_Normalize3: Failed To Allocate The Params");return;end;
 Tolerance = Tolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, Tolerance at +0x20
 writeQword(_params + 0x0, A)
 writeFloat(_params + 0x20, Tolerance)
 UE.CallProcessEventEx(OwnerAddress, "Vector4_Normalize3", _params);
 deAlloc(_params);
end
FNR("BL4.Vector4_Normalize3");

BL4.Vector4_NormalUnsafe3 = function(OwnerAddress, A)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector4_NormalUnsafe3: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "Vector4_NormalUnsafe3", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector4_NormalUnsafe3");

BL4.Vector4_Set = function(OwnerAddress, A, X, Y, Z, W)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector4_Set: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, X at +0x20, Y at +0x28, Z at +0x30, W at +0x38
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x20, X)
 writeQword(_params + 0x28, Y)
 writeQword(_params + 0x30, Z)
 writeQword(_params + 0x38, W)
 UE.CallProcessEventEx(OwnerAddress, "Vector4_Set", _params);
 deAlloc(_params);
end
FNR("BL4.Vector4_Set");

BL4.Vector4_Size = function(OwnerAddress, A)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector4_Size: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "Vector4_Size", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector4_Size");

BL4.Vector4_Size3 = function(OwnerAddress, A)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector4_Size3: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "Vector4_Size3", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector4_Size3");

BL4.Vector4_SizeSquared = function(OwnerAddress, A)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector4_SizeSquared: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "Vector4_SizeSquared", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector4_SizeSquared");

BL4.Vector4_SizeSquared3 = function(OwnerAddress, A)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector4_SizeSquared3: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeQword(_params + 0x0, A)
 UE.CallProcessEventEx(OwnerAddress, "Vector4_SizeSquared3", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector4_SizeSquared3");

BL4.Vector4_Zero = function(OwnerAddress)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector4_Zero: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "Vector4_Zero", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector4_Zero");

BL4.Vector_AddBounded = function(OwnerAddress, A, InAddVect, InRadius)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_AddBounded: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 InAddVect = InAddVect or {X=0,Y=0,Z=0}
 InRadius = InRadius or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, InAddVect at +0x18, InRadius at +0x30
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeDouble(_params + 0x18, (InAddVect and InAddVect.X) or 0)
 writeDouble(_params + 0x20, (InAddVect and InAddVect.Y) or 0)
 writeDouble(_params + 0x28, (InAddVect and InAddVect.Z) or 0)
 writeFloat(_params + 0x30, InRadius)
 UE.CallProcessEventEx(OwnerAddress, "Vector_AddBounded", _params);
 deAlloc(_params);
end
FNR("BL4.Vector_AddBounded");

BL4.Vector_Assign = function(OwnerAddress, A, InVector)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_Assign: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 InVector = InVector or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, InVector at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeDouble(_params + 0x18, (InVector and InVector.X) or 0)
 writeDouble(_params + 0x20, (InVector and InVector.Y) or 0)
 writeDouble(_params + 0x28, (InVector and InVector.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Vector_Assign", _params);
 deAlloc(_params);
end
FNR("BL4.Vector_Assign");

BL4.Vector_Backward = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_Backward: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "Vector_Backward", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8),Z=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_Backward");

BL4.Vector_BoundedToBox = function(OwnerAddress, InVect, InBoxMin, InBoxMax)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_BoundedToBox: Failed To Allocate The Params");return;end;
 InVect = InVect or {X=0,Y=0,Z=0}
 InBoxMin = InBoxMin or {X=0,Y=0,Z=0}
 InBoxMax = InBoxMax or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVect at +0x0, InBoxMin at +0x18, InBoxMax at +0x30
 writeDouble(_params + 0x0, (InVect and InVect.X) or 0)
 writeDouble(_params + 0x8, (InVect and InVect.Y) or 0)
 writeDouble(_params + 0x10, (InVect and InVect.Z) or 0)
 writeDouble(_params + 0x18, (InBoxMin and InBoxMin.X) or 0)
 writeDouble(_params + 0x20, (InBoxMin and InBoxMin.Y) or 0)
 writeDouble(_params + 0x28, (InBoxMin and InBoxMin.Z) or 0)
 writeDouble(_params + 0x30, (InBoxMax and InBoxMax.X) or 0)
 writeDouble(_params + 0x38, (InBoxMax and InBoxMax.Y) or 0)
 writeDouble(_params + 0x40, (InBoxMax and InBoxMax.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Vector_BoundedToBox", _params);
 local RET={X=readFloat(_params+0x48),Y=readFloat(_params+0x50),Z=readFloat(_params+0x58)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_BoundedToBox");

BL4.Vector_BoundedToCube = function(OwnerAddress, InVect, InRadius)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_BoundedToCube: Failed To Allocate The Params");return;end;
 InVect = InVect or {X=0,Y=0,Z=0}
 InRadius = InRadius or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVect at +0x0, InRadius at +0x18
 writeDouble(_params + 0x0, (InVect and InVect.X) or 0)
 writeDouble(_params + 0x8, (InVect and InVect.Y) or 0)
 writeDouble(_params + 0x10, (InVect and InVect.Z) or 0)
 writeFloat(_params + 0x18, InRadius)
 UE.CallProcessEventEx(OwnerAddress, "Vector_BoundedToCube", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_BoundedToCube");

BL4.Vector_ClampSize2D = function(OwnerAddress, A, min, MAX)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_ClampSize2D: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, min at +0x18, MAX at +0x20
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeQword(_params + 0x18, min)
 writeQword(_params + 0x20, MAX)
 UE.CallProcessEventEx(OwnerAddress, "Vector_ClampSize2D", _params);
 local RET={X=readFloat(_params+0x28),Y=readFloat(_params+0x30),Z=readFloat(_params+0x38)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_ClampSize2D");

BL4.Vector_ClampSizeMax = function(OwnerAddress, A, MAX)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_ClampSizeMax: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, MAX at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeQword(_params + 0x18, MAX)
 UE.CallProcessEventEx(OwnerAddress, "Vector_ClampSizeMax", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_ClampSizeMax");

BL4.Vector_ClampSizeMax2D = function(OwnerAddress, A, MAX)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_ClampSizeMax2D: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, MAX at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeQword(_params + 0x18, MAX)
 UE.CallProcessEventEx(OwnerAddress, "Vector_ClampSizeMax2D", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_ClampSizeMax2D");

BL4.Vector_ComponentMax = function(OwnerAddress, A, B)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_ComponentMax: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 B = B or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeDouble(_params + 0x18, (B and B.X) or 0)
 writeDouble(_params + 0x20, (B and B.Y) or 0)
 writeDouble(_params + 0x28, (B and B.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Vector_ComponentMax", _params);
 local RET={X=readFloat(_params+0x30),Y=readFloat(_params+0x38),Z=readFloat(_params+0x40)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_ComponentMax");

BL4.Vector_ComponentMin = function(OwnerAddress, A, B)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_ComponentMin: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 B = B or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeDouble(_params + 0x18, (B and B.X) or 0)
 writeDouble(_params + 0x20, (B and B.Y) or 0)
 writeDouble(_params + 0x28, (B and B.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Vector_ComponentMin", _params);
 local RET={X=readFloat(_params+0x30),Y=readFloat(_params+0x38),Z=readFloat(_params+0x40)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_ComponentMin");

BL4.Vector_CosineAngle2D = function(OwnerAddress, A, B)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_CosineAngle2D: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 B = B or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeDouble(_params + 0x18, (B and B.X) or 0)
 writeDouble(_params + 0x20, (B and B.Y) or 0)
 writeDouble(_params + 0x28, (B and B.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Vector_CosineAngle2D", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_CosineAngle2D");

BL4.Vector_Distance = function(OwnerAddress, v1, v2)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_Distance: Failed To Allocate The Params");return;end;
 v1 = v1 or {X=0,Y=0,Z=0}
 v2 = v2 or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: v1 at +0x0, v2 at +0x18
 writeDouble(_params + 0x0, (v1 and v1.X) or 0)
 writeDouble(_params + 0x8, (v1 and v1.Y) or 0)
 writeDouble(_params + 0x10, (v1 and v1.Z) or 0)
 writeDouble(_params + 0x18, (v2 and v2.X) or 0)
 writeDouble(_params + 0x20, (v2 and v2.Y) or 0)
 writeDouble(_params + 0x28, (v2 and v2.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Vector_Distance", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_Distance");

BL4.Vector_Distance2D = function(OwnerAddress, v1, v2)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_Distance2D: Failed To Allocate The Params");return;end;
 v1 = v1 or {X=0,Y=0,Z=0}
 v2 = v2 or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: v1 at +0x0, v2 at +0x18
 writeDouble(_params + 0x0, (v1 and v1.X) or 0)
 writeDouble(_params + 0x8, (v1 and v1.Y) or 0)
 writeDouble(_params + 0x10, (v1 and v1.Z) or 0)
 writeDouble(_params + 0x18, (v2 and v2.X) or 0)
 writeDouble(_params + 0x20, (v2 and v2.Y) or 0)
 writeDouble(_params + 0x28, (v2 and v2.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Vector_Distance2D", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_Distance2D");

BL4.Vector_Distance2DSquared = function(OwnerAddress, v1, v2)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_Distance2DSquared: Failed To Allocate The Params");return;end;
 v1 = v1 or {X=0,Y=0,Z=0}
 v2 = v2 or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: v1 at +0x0, v2 at +0x18
 writeDouble(_params + 0x0, (v1 and v1.X) or 0)
 writeDouble(_params + 0x8, (v1 and v1.Y) or 0)
 writeDouble(_params + 0x10, (v1 and v1.Z) or 0)
 writeDouble(_params + 0x18, (v2 and v2.X) or 0)
 writeDouble(_params + 0x20, (v2 and v2.Y) or 0)
 writeDouble(_params + 0x28, (v2 and v2.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Vector_Distance2DSquared", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_Distance2DSquared");

BL4.Vector_DistanceSquared = function(OwnerAddress, v1, v2)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_DistanceSquared: Failed To Allocate The Params");return;end;
 v1 = v1 or {X=0,Y=0,Z=0}
 v2 = v2 or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: v1 at +0x0, v2 at +0x18
 writeDouble(_params + 0x0, (v1 and v1.X) or 0)
 writeDouble(_params + 0x8, (v1 and v1.Y) or 0)
 writeDouble(_params + 0x10, (v1 and v1.Z) or 0)
 writeDouble(_params + 0x18, (v2 and v2.X) or 0)
 writeDouble(_params + 0x20, (v2 and v2.Y) or 0)
 writeDouble(_params + 0x28, (v2 and v2.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Vector_DistanceSquared", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_DistanceSquared");

BL4.Vector_Down = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_Down: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "Vector_Down", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8),Z=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_Down");

BL4.Vector_Forward = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_Forward: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "Vector_Forward", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8),Z=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_Forward");

BL4.Vector_GetAbs = function(OwnerAddress, A)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_GetAbs: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Vector_GetAbs", _params);
 local RET={X=readFloat(_params+0x18),Y=readFloat(_params+0x20),Z=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_GetAbs");

BL4.Vector_GetAbsMax = function(OwnerAddress, A)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_GetAbsMax: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Vector_GetAbsMax", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_GetAbsMax");

BL4.Vector_GetAbsMin = function(OwnerAddress, A)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_GetAbsMin: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Vector_GetAbsMin", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_GetAbsMin");

BL4.Vector_GetProjection = function(OwnerAddress, A)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_GetProjection: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Vector_GetProjection", _params);
 local RET={X=readFloat(_params+0x18),Y=readFloat(_params+0x20),Z=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_GetProjection");

BL4.Vector_GetSignVector = function(OwnerAddress, A)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_GetSignVector: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Vector_GetSignVector", _params);
 local RET={X=readFloat(_params+0x18),Y=readFloat(_params+0x20),Z=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_GetSignVector");

BL4.Vector_HeadingAngle = function(OwnerAddress, A)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_HeadingAngle: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Vector_HeadingAngle", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_HeadingAngle");

BL4.Vector_IsNAN = function(OwnerAddress, A)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_IsNAN: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Vector_IsNAN", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_IsNAN");

BL4.Vector_IsNearlyZero = function(OwnerAddress, A, Tolerance)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_IsNearlyZero: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 Tolerance = Tolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, Tolerance at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeFloat(_params + 0x18, Tolerance)
 UE.CallProcessEventEx(OwnerAddress, "Vector_IsNearlyZero", _params);
 local RET=readByte(_params + 0x1C);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_IsNearlyZero");

BL4.Vector_IsNormal = function(OwnerAddress, A)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_IsNormal: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Vector_IsNormal", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_IsNormal");

BL4.Vector_IsUniform = function(OwnerAddress, A, Tolerance)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_IsUniform: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 Tolerance = Tolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, Tolerance at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeFloat(_params + 0x18, Tolerance)
 UE.CallProcessEventEx(OwnerAddress, "Vector_IsUniform", _params);
 local RET=readByte(_params + 0x1C);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_IsUniform");

BL4.Vector_IsUnit = function(OwnerAddress, A, SquaredLenthTolerance)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_IsUnit: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 SquaredLenthTolerance = SquaredLenthTolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, SquaredLenthTolerance at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeFloat(_params + 0x18, SquaredLenthTolerance)
 UE.CallProcessEventEx(OwnerAddress, "Vector_IsUnit", _params);
 local RET=readByte(_params + 0x1C);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_IsUnit");

BL4.Vector_IsZero = function(OwnerAddress, A)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_IsZero: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Vector_IsZero", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_IsZero");

BL4.Vector_Left = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_Left: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "Vector_Left", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8),Z=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_Left");

BL4.Vector_MirrorByPlane = function(OwnerAddress, A, InPlane)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_MirrorByPlane: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, InPlane at +0x20
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeQword(_params + 0x20, InPlane)
 UE.CallProcessEventEx(OwnerAddress, "Vector_MirrorByPlane", _params);
 local RET={X=readFloat(_params+0x40),Y=readFloat(_params+0x48),Z=readFloat(_params+0x50)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_MirrorByPlane");

BL4.Vector_Normal2D = function(OwnerAddress, A, Tolerance)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_Normal2D: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 Tolerance = Tolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, Tolerance at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeFloat(_params + 0x18, Tolerance)
 UE.CallProcessEventEx(OwnerAddress, "Vector_Normal2D", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_Normal2D");

BL4.Vector_Normalize = function(OwnerAddress, A, Tolerance)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_Normalize: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 Tolerance = Tolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, Tolerance at +0x18
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeFloat(_params + 0x18, Tolerance)
 UE.CallProcessEventEx(OwnerAddress, "Vector_Normalize", _params);
 deAlloc(_params);
end
FNR("BL4.Vector_Normalize");

BL4.Vector_NormalUnsafe = function(OwnerAddress, A)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_NormalUnsafe: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Vector_NormalUnsafe", _params);
 local RET={X=readFloat(_params+0x18),Y=readFloat(_params+0x20),Z=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_NormalUnsafe");

BL4.Vector_One = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_One: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "Vector_One", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8),Z=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_One");

BL4.Vector_ProjectOnToNormal = function(OwnerAddress, V, InNormal)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_ProjectOnToNormal: Failed To Allocate The Params");return;end;
 V = V or {X=0,Y=0,Z=0}
 InNormal = InNormal or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: V at +0x0, InNormal at +0x18
 writeDouble(_params + 0x0, (V and V.X) or 0)
 writeDouble(_params + 0x8, (V and V.Y) or 0)
 writeDouble(_params + 0x10, (V and V.Z) or 0)
 writeDouble(_params + 0x18, (InNormal and InNormal.X) or 0)
 writeDouble(_params + 0x20, (InNormal and InNormal.Y) or 0)
 writeDouble(_params + 0x28, (InNormal and InNormal.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Vector_ProjectOnToNormal", _params);
 local RET={X=readFloat(_params+0x30),Y=readFloat(_params+0x38),Z=readFloat(_params+0x40)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_ProjectOnToNormal");

BL4.Vector_Reciprocal = function(OwnerAddress, A)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_Reciprocal: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Vector_Reciprocal", _params);
 local RET={X=readFloat(_params+0x18),Y=readFloat(_params+0x20),Z=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_Reciprocal");

BL4.Vector_Right = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_Right: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "Vector_Right", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8),Z=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_Right");

BL4.Vector_Set = function(OwnerAddress, A, X, Y, Z)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_Set: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, X at +0x18, Y at +0x20, Z at +0x28
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeQword(_params + 0x18, X)
 writeQword(_params + 0x20, Y)
 writeQword(_params + 0x28, Z)
 UE.CallProcessEventEx(OwnerAddress, "Vector_Set", _params);
 deAlloc(_params);
end
FNR("BL4.Vector_Set");

BL4.Vector_SlerpNormals = function(OwnerAddress, NormalA, NormalB, ALPHA)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_SlerpNormals: Failed To Allocate The Params");return;end;
 NormalA = NormalA or {X=0,Y=0,Z=0}
 NormalB = NormalB or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NormalA at +0x0, NormalB at +0x18, ALPHA at +0x30
 writeDouble(_params + 0x0, (NormalA and NormalA.X) or 0)
 writeDouble(_params + 0x8, (NormalA and NormalA.Y) or 0)
 writeDouble(_params + 0x10, (NormalA and NormalA.Z) or 0)
 writeDouble(_params + 0x18, (NormalB and NormalB.X) or 0)
 writeDouble(_params + 0x20, (NormalB and NormalB.Y) or 0)
 writeDouble(_params + 0x28, (NormalB and NormalB.Z) or 0)
 writeQword(_params + 0x30, ALPHA)
 UE.CallProcessEventEx(OwnerAddress, "Vector_SlerpNormals", _params);
 local RET={X=readFloat(_params+0x38),Y=readFloat(_params+0x40),Z=readFloat(_params+0x48)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_SlerpNormals");

BL4.Vector_SlerpVectorToDirection = function(OwnerAddress, Vector, Direction, ALPHA)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_SlerpVectorToDirection: Failed To Allocate The Params");return;end;
 Vector = Vector or {X=0,Y=0,Z=0}
 Direction = Direction or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Vector at +0x0, Direction at +0x18, ALPHA at +0x30
 writeDouble(_params + 0x0, (Vector and Vector.X) or 0)
 writeDouble(_params + 0x8, (Vector and Vector.Y) or 0)
 writeDouble(_params + 0x10, (Vector and Vector.Z) or 0)
 writeDouble(_params + 0x18, (Direction and Direction.X) or 0)
 writeDouble(_params + 0x20, (Direction and Direction.Y) or 0)
 writeDouble(_params + 0x28, (Direction and Direction.Z) or 0)
 writeQword(_params + 0x30, ALPHA)
 UE.CallProcessEventEx(OwnerAddress, "Vector_SlerpVectorToDirection", _params);
 local RET={X=readFloat(_params+0x38),Y=readFloat(_params+0x40),Z=readFloat(_params+0x48)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_SlerpVectorToDirection");

BL4.Vector_SnappedToGrid = function(OwnerAddress, InVect, InGridSize)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_SnappedToGrid: Failed To Allocate The Params");return;end;
 InVect = InVect or {X=0,Y=0,Z=0}
 InGridSize = InGridSize or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVect at +0x0, InGridSize at +0x18
 writeDouble(_params + 0x0, (InVect and InVect.X) or 0)
 writeDouble(_params + 0x8, (InVect and InVect.Y) or 0)
 writeDouble(_params + 0x10, (InVect and InVect.Z) or 0)
 writeFloat(_params + 0x18, InGridSize)
 UE.CallProcessEventEx(OwnerAddress, "Vector_SnappedToGrid", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_SnappedToGrid");

BL4.Vector_ToDegrees = function(OwnerAddress, A)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_ToDegrees: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Vector_ToDegrees", _params);
 local RET={X=readFloat(_params+0x18),Y=readFloat(_params+0x20),Z=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_ToDegrees");

BL4.Vector_ToRadians = function(OwnerAddress, A)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_ToRadians: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Vector_ToRadians", _params);
 local RET={X=readFloat(_params+0x18),Y=readFloat(_params+0x20),Z=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_ToRadians");

BL4.Vector_UnitCartesianToSpherical = function(OwnerAddress, A)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_UnitCartesianToSpherical: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Vector_UnitCartesianToSpherical", _params);
 local RET={X=readFloat(_params+0x18),Y=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_UnitCartesianToSpherical");

BL4.Vector_UnwindEuler = function(OwnerAddress, A)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_UnwindEuler: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Vector_UnwindEuler", _params);
 deAlloc(_params);
end
FNR("BL4.Vector_UnwindEuler");

BL4.Vector_Up = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_Up: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "Vector_Up", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8),Z=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_Up");

BL4.Vector_Zero = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Vector_Zero: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "Vector_Zero", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8),Z=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Vector_Zero");

BL4.VectorSpringInterp = function(OwnerAddress, current, target, SpringState, Stiffness, CriticalDampingFactor, DeltaTime, Mass, TargetVelocityAmount, bClamp, MinValue, MaxValue, bInitializeFromTarget)
 local _paramsSize = 0xD0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.VectorSpringInterp: Failed To Allocate The Params");return;end;
 current = current or {X=0,Y=0,Z=0}
 target = target or {X=0,Y=0,Z=0}
 Stiffness = Stiffness or 0
 CriticalDampingFactor = CriticalDampingFactor or 0
 DeltaTime = DeltaTime or 0
 Mass = Mass or 0
 TargetVelocityAmount = TargetVelocityAmount or 0
 bClamp = bClamp or false
 MinValue = MinValue or {X=0,Y=0,Z=0}
 MaxValue = MaxValue or {X=0,Y=0,Z=0}
 bInitializeFromTarget = bInitializeFromTarget or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: current at +0x0, target at +0x18, SpringState at +0x30, Stiffness at +0x68, CriticalDampingFactor at +0x6C, DeltaTime at +0x70, Mass at +0x74, TargetVelocityAmount at +0x78, bClamp at +0x7C, MinValue at +0x80, MaxValue at +0x98, bInitializeFromTarget at +0xB0
 writeDouble(_params + 0x0, (current and current.X) or 0)
 writeDouble(_params + 0x8, (current and current.Y) or 0)
 writeDouble(_params + 0x10, (current and current.Z) or 0)
 writeDouble(_params + 0x18, (target and target.X) or 0)
 writeDouble(_params + 0x20, (target and target.Y) or 0)
 writeDouble(_params + 0x28, (target and target.Z) or 0)
 writeQword(_params + 0x30, SpringState)
 writeFloat(_params + 0x68, Stiffness)
 writeFloat(_params + 0x6C, CriticalDampingFactor)
 writeFloat(_params + 0x70, DeltaTime)
 writeFloat(_params + 0x74, Mass)
 writeFloat(_params + 0x78, TargetVelocityAmount)
 writeByte(_params + 0x7C, bClamp)
 writeDouble(_params + 0x80, (MinValue and MinValue.X) or 0)
 writeDouble(_params + 0x88, (MinValue and MinValue.Y) or 0)
 writeDouble(_params + 0x90, (MinValue and MinValue.Z) or 0)
 writeDouble(_params + 0x98, (MaxValue and MaxValue.X) or 0)
 writeDouble(_params + 0xA0, (MaxValue and MaxValue.Y) or 0)
 writeDouble(_params + 0xA8, (MaxValue and MaxValue.Z) or 0)
 writeByte(_params + 0xB0, bInitializeFromTarget)
 UE.CallProcessEventEx(OwnerAddress, "VectorSpringInterp", _params);
 local RET={X=readFloat(_params+0xB8),Y=readFloat(_params+0xC0),Z=readFloat(_params+0xC8)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.VectorSpringInterp");

BL4.VInterpTo = function(OwnerAddress, current, target, DeltaTime, InterpSpeed)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.VInterpTo: Failed To Allocate The Params");return;end;
 current = current or {X=0,Y=0,Z=0}
 target = target or {X=0,Y=0,Z=0}
 DeltaTime = DeltaTime or 0
 InterpSpeed = InterpSpeed or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: current at +0x0, target at +0x18, DeltaTime at +0x30, InterpSpeed at +0x34
 writeDouble(_params + 0x0, (current and current.X) or 0)
 writeDouble(_params + 0x8, (current and current.Y) or 0)
 writeDouble(_params + 0x10, (current and current.Z) or 0)
 writeDouble(_params + 0x18, (target and target.X) or 0)
 writeDouble(_params + 0x20, (target and target.Y) or 0)
 writeDouble(_params + 0x28, (target and target.Z) or 0)
 writeFloat(_params + 0x30, DeltaTime)
 writeFloat(_params + 0x34, InterpSpeed)
 UE.CallProcessEventEx(OwnerAddress, "VInterpTo", _params);
 local RET={X=readFloat(_params+0x38),Y=readFloat(_params+0x40),Z=readFloat(_params+0x48)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.VInterpTo");

BL4.VInterpTo_Constant = function(OwnerAddress, current, target, DeltaTime, InterpSpeed)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.VInterpTo_Constant: Failed To Allocate The Params");return;end;
 current = current or {X=0,Y=0,Z=0}
 target = target or {X=0,Y=0,Z=0}
 DeltaTime = DeltaTime or 0
 InterpSpeed = InterpSpeed or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: current at +0x0, target at +0x18, DeltaTime at +0x30, InterpSpeed at +0x34
 writeDouble(_params + 0x0, (current and current.X) or 0)
 writeDouble(_params + 0x8, (current and current.Y) or 0)
 writeDouble(_params + 0x10, (current and current.Z) or 0)
 writeDouble(_params + 0x18, (target and target.X) or 0)
 writeDouble(_params + 0x20, (target and target.Y) or 0)
 writeDouble(_params + 0x28, (target and target.Z) or 0)
 writeFloat(_params + 0x30, DeltaTime)
 writeFloat(_params + 0x34, InterpSpeed)
 UE.CallProcessEventEx(OwnerAddress, "VInterpTo_Constant", _params);
 local RET={X=readFloat(_params+0x38),Y=readFloat(_params+0x40),Z=readFloat(_params+0x48)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.VInterpTo_Constant");

BL4.VLerp = function(OwnerAddress, A, B, ALPHA)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.VLerp: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 B = B or {X=0,Y=0,Z=0}
 ALPHA = ALPHA or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18, ALPHA at +0x30
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 writeDouble(_params + 0x18, (B and B.X) or 0)
 writeDouble(_params + 0x20, (B and B.Y) or 0)
 writeDouble(_params + 0x28, (B and B.Z) or 0)
 writeFloat(_params + 0x30, ALPHA)
 UE.CallProcessEventEx(OwnerAddress, "VLerp", _params);
 local RET={X=readFloat(_params+0x38),Y=readFloat(_params+0x40),Z=readFloat(_params+0x48)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.VLerp");

BL4.VSize = function(OwnerAddress, A)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.VSize: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "VSize", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.VSize");

BL4.VSize2D = function(OwnerAddress, A)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.VSize2D: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "VSize2D", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.VSize2D");

BL4.VSize2DSquared = function(OwnerAddress, A)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.VSize2DSquared: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "VSize2DSquared", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.VSize2DSquared");

BL4.VSizeSquared = function(OwnerAddress, A)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.VSizeSquared: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "VSizeSquared", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.VSizeSquared");

BL4.VSizeXY = function(OwnerAddress, A)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.VSizeXY: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "VSizeXY", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.VSizeXY");

BL4.VSizeXYSquared = function(OwnerAddress, A)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.VSizeXYSquared: Failed To Allocate The Params");return;end;
 A = A or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0
 writeDouble(_params + 0x0, (A and A.X) or 0)
 writeDouble(_params + 0x8, (A and A.Y) or 0)
 writeDouble(_params + 0x10, (A and A.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "VSizeXYSquared", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.VSizeXYSquared");

BL4.WeightedMovingAverage_Float = function(OwnerAddress, CurrentSample, PreviousSample, Weight)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.WeightedMovingAverage_Float: Failed To Allocate The Params");return;end;
 CurrentSample = CurrentSample or 0
 PreviousSample = PreviousSample or 0
 Weight = Weight or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CurrentSample at +0x0, PreviousSample at +0x4, Weight at +0x8
 writeFloat(_params + 0x0, CurrentSample)
 writeFloat(_params + 0x4, PreviousSample)
 writeFloat(_params + 0x8, Weight)
 UE.CallProcessEventEx(OwnerAddress, "WeightedMovingAverage_Float", _params);
 local RET=readFloat(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.WeightedMovingAverage_Float");

BL4.WeightedMovingAverage_FRotator = function(OwnerAddress, CurrentSample, PreviousSample, Weight)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.WeightedMovingAverage_FRotator: Failed To Allocate The Params");return;end;
 CurrentSample = CurrentSample or {Pitch=0,Yaw=0,Roll=0}
 PreviousSample = PreviousSample or {Pitch=0,Yaw=0,Roll=0}
 Weight = Weight or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CurrentSample at +0x0, PreviousSample at +0x18, Weight at +0x30
 writeDouble(_params + 0x0, (CurrentSample and CurrentSample.Pitch) or 0)
 writeDouble(_params + 0x8, (CurrentSample and CurrentSample.Yaw) or 0)
 writeDouble(_params + 0x10, (CurrentSample and CurrentSample.Roll) or 0)
 writeDouble(_params + 0x18, (PreviousSample and PreviousSample.Pitch) or 0)
 writeDouble(_params + 0x20, (PreviousSample and PreviousSample.Yaw) or 0)
 writeDouble(_params + 0x28, (PreviousSample and PreviousSample.Roll) or 0)
 writeFloat(_params + 0x30, Weight)
 UE.CallProcessEventEx(OwnerAddress, "WeightedMovingAverage_FRotator", _params);
 local RET={Pitch=readFloat(_params+0x38),Yaw=readFloat(_params+0x40),Roll=readFloat(_params+0x48)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.WeightedMovingAverage_FRotator");

BL4.WeightedMovingAverage_FVector = function(OwnerAddress, CurrentSample, PreviousSample, Weight)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.WeightedMovingAverage_FVector: Failed To Allocate The Params");return;end;
 CurrentSample = CurrentSample or {X=0,Y=0,Z=0}
 PreviousSample = PreviousSample or {X=0,Y=0,Z=0}
 Weight = Weight or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CurrentSample at +0x0, PreviousSample at +0x18, Weight at +0x30
 writeDouble(_params + 0x0, (CurrentSample and CurrentSample.X) or 0)
 writeDouble(_params + 0x8, (CurrentSample and CurrentSample.Y) or 0)
 writeDouble(_params + 0x10, (CurrentSample and CurrentSample.Z) or 0)
 writeDouble(_params + 0x18, (PreviousSample and PreviousSample.X) or 0)
 writeDouble(_params + 0x20, (PreviousSample and PreviousSample.Y) or 0)
 writeDouble(_params + 0x28, (PreviousSample and PreviousSample.Z) or 0)
 writeFloat(_params + 0x30, Weight)
 UE.CallProcessEventEx(OwnerAddress, "WeightedMovingAverage_FVector", _params);
 local RET={X=readFloat(_params+0x38),Y=readFloat(_params+0x40),Z=readFloat(_params+0x48)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.WeightedMovingAverage_FVector");

BL4.Wrap = function(OwnerAddress, Value, min, MAX)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Wrap: Failed To Allocate The Params");return;end;
 Value = Value or 0
 min = min or 0
 MAX = MAX or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0, min at +0x4, MAX at +0x8
 writeInteger(_params + 0x0, Value)
 writeInteger(_params + 0x4, min)
 writeInteger(_params + 0x8, MAX)
 UE.CallProcessEventEx(OwnerAddress, "Wrap", _params);
 local RET=readInteger(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Wrap");

BL4.Xor_Int64Int64 = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Xor_Int64Int64: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "Xor_Int64Int64", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Xor_Int64Int64");

BL4.Xor_IntInt = function(OwnerAddress, A, B)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Xor_IntInt: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 UE.CallProcessEventEx(OwnerAddress, "Xor_IntInt", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Xor_IntInt");

