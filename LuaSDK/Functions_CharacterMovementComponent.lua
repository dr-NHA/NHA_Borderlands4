BL4.AddForce = function(OwnerAddress, force)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddForce: Failed To Allocate The Params");return;end;
 force = force or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: force at +0x0
 writeDouble(_params + 0x0, (force and force.X) or 0)
 writeDouble(_params + 0x8, (force and force.Y) or 0)
 writeDouble(_params + 0x10, (force and force.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "AddForce", _params);
 deAlloc(_params);
end
FNR("BL4.AddForce");

BL4.AddImpulse = function(OwnerAddress, Impulse, bVelocityChange)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddImpulse: Failed To Allocate The Params");return;end;
 Impulse = Impulse or {X=0,Y=0,Z=0}
 bVelocityChange = bVelocityChange or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Impulse at +0x0, bVelocityChange at +0x18
 writeDouble(_params + 0x0, (Impulse and Impulse.X) or 0)
 writeDouble(_params + 0x8, (Impulse and Impulse.Y) or 0)
 writeDouble(_params + 0x10, (Impulse and Impulse.Z) or 0)
 writeByte(_params + 0x18, bVelocityChange)
 UE.CallProcessEventEx(OwnerAddress, "AddImpulse", _params);
 deAlloc(_params);
end
FNR("BL4.AddImpulse");

BL4.CalcVelocity = function(OwnerAddress, DeltaTime, Friction, bFluid, BrakingDeceleration)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CalcVelocity: Failed To Allocate The Params");return;end;
 DeltaTime = DeltaTime or 0
 Friction = Friction or 0
 bFluid = bFluid or false
 BrakingDeceleration = BrakingDeceleration or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DeltaTime at +0x0, Friction at +0x4, bFluid at +0x8, BrakingDeceleration at +0xC
 writeFloat(_params + 0x0, DeltaTime)
 writeFloat(_params + 0x4, Friction)
 writeByte(_params + 0x8, bFluid)
 writeFloat(_params + 0xC, BrakingDeceleration)
 UE.CallProcessEventEx(OwnerAddress, "CalcVelocity", _params);
 deAlloc(_params);
end
FNR("BL4.CalcVelocity");

BL4.CapsuleTouched = function(OverlappedComp_PrimitiveComponent, Other_Actor, OtherComp_PrimitiveComponent, OtherBodyIndex, bFromSweep, SweepResult)
 local _paramsSize = 0x120
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CapsuleTouched: Failed To Allocate The Params");return;end;
 OtherBodyIndex = OtherBodyIndex or 0
 bFromSweep = bFromSweep or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OverlappedComp at +0x0, Other at +0x8, OtherComp at +0x10, OtherBodyIndex at +0x18, bFromSweep at +0x1C, SweepResult at +0x20
 writeQword(_params + 0x0, OverlappedComp_PrimitiveComponent)
 writeQword(_params + 0x8, Other_Actor)
 writeQword(_params + 0x10, OtherComp_PrimitiveComponent)
 writeInteger(_params + 0x18, OtherBodyIndex)
 writeByte(_params + 0x1C, bFromSweep)
 writeQword(_params + 0x20, SweepResult)
 UE.CallProcessEventEx(OverlappedComp_PrimitiveComponent, "CapsuleTouched", _params);
 deAlloc(_params);
end
FNR("BL4.CapsuleTouched");

BL4.GetAnalogInputModifier = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAnalogInputModifier: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAnalogInputModifier", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAnalogInputModifier");

BL4.GetCharacterOwner = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCharacterOwner: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCharacterOwner", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCharacterOwner");

BL4.GetCrouchedHalfHeight = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCrouchedHalfHeight: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCrouchedHalfHeight", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCrouchedHalfHeight");

BL4.GetCurrentAcceleration = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCurrentAcceleration: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCurrentAcceleration", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8),Z=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCurrentAcceleration");

BL4.GetGravityDirection = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetGravityDirection: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetGravityDirection", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8),Z=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetGravityDirection");

BL4.GetImpartedMovementBaseVelocity = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetImpartedMovementBaseVelocity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetImpartedMovementBaseVelocity", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8),Z=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetImpartedMovementBaseVelocity");

BL4.GetLastUpdateLocation = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLastUpdateLocation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetLastUpdateLocation", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8),Z=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLastUpdateLocation");

BL4.GetLastUpdateRequestedVelocity = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLastUpdateRequestedVelocity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetLastUpdateRequestedVelocity", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8),Z=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLastUpdateRequestedVelocity");

BL4.GetLastUpdateRotation = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLastUpdateRotation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetLastUpdateRotation", _params);
 local RET={Pitch=readFloat(_params+0x0),Yaw=readFloat(_params+0x8),Roll=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLastUpdateRotation");

BL4.GetLastUpdateVelocity = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLastUpdateVelocity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetLastUpdateVelocity", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8),Z=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLastUpdateVelocity");

BL4.GetMaxAcceleration = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMaxAcceleration: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetMaxAcceleration", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMaxAcceleration");

BL4.GetMaxBrakingDeceleration = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMaxBrakingDeceleration: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetMaxBrakingDeceleration", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMaxBrakingDeceleration");

BL4.GetMaxJumpHeight = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMaxJumpHeight: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetMaxJumpHeight", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMaxJumpHeight");

BL4.GetMaxJumpHeightWithJumpTime = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMaxJumpHeightWithJumpTime: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetMaxJumpHeightWithJumpTime", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMaxJumpHeightWithJumpTime");

BL4.GetMinAnalogSpeed = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMinAnalogSpeed: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetMinAnalogSpeed", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMinAnalogSpeed");

BL4.GetMovementBase = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMovementBase: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetMovementBase", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMovementBase");

BL4.GetPerchRadiusThreshold = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPerchRadiusThreshold: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetPerchRadiusThreshold", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPerchRadiusThreshold");

BL4.GetValidPerchRadius = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetValidPerchRadius: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetValidPerchRadius", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetValidPerchRadius");

BL4.HasCustomGravity = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.HasCustomGravity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "HasCustomGravity", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.HasCustomGravity");

BL4.IsWalkable = function(OwnerAddress, Hit)
 local _paramsSize = 0x108
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsWalkable: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Hit at +0x0
 writeQword(_params + 0x0, Hit)
 UE.CallProcessEventEx(OwnerAddress, "IsWalkable", _params);
 local RET=readByte(_params + 0x100);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsWalkable");

BL4.IsWalking = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsWalking: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsWalking", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsWalking");

BL4.K2_ComputeFloorDist = function(OwnerAddress, CapsuleLocation, LineDistance, SweepDistance, SweepRadius, FloorResult)
 local _paramsSize = 0x138
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_ComputeFloorDist: Failed To Allocate The Params");return;end;
 CapsuleLocation = CapsuleLocation or {X=0,Y=0,Z=0}
 LineDistance = LineDistance or 0
 SweepDistance = SweepDistance or 0
 SweepRadius = SweepRadius or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CapsuleLocation at +0x0, LineDistance at +0x18, SweepDistance at +0x1C, SweepRadius at +0x20, FloorResult at +0x28
 writeDouble(_params + 0x0, (CapsuleLocation and CapsuleLocation.X) or 0)
 writeDouble(_params + 0x8, (CapsuleLocation and CapsuleLocation.Y) or 0)
 writeDouble(_params + 0x10, (CapsuleLocation and CapsuleLocation.Z) or 0)
 writeFloat(_params + 0x18, LineDistance)
 writeFloat(_params + 0x1C, SweepDistance)
 writeFloat(_params + 0x20, SweepRadius)
 writeQword(_params + 0x28, FloorResult)
 UE.CallProcessEventEx(OwnerAddress, "K2_ComputeFloorDist", _params);
 deAlloc(_params);
end
FNR("BL4.K2_ComputeFloorDist");

BL4.K2_FindFloor = function(OwnerAddress, CapsuleLocation, FloorResult)
 local _paramsSize = 0x128
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_FindFloor: Failed To Allocate The Params");return;end;
 CapsuleLocation = CapsuleLocation or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CapsuleLocation at +0x0, FloorResult at +0x18
 writeDouble(_params + 0x0, (CapsuleLocation and CapsuleLocation.X) or 0)
 writeDouble(_params + 0x8, (CapsuleLocation and CapsuleLocation.Y) or 0)
 writeDouble(_params + 0x10, (CapsuleLocation and CapsuleLocation.Z) or 0)
 writeQword(_params + 0x18, FloorResult)
 UE.CallProcessEventEx(OwnerAddress, "K2_FindFloor", _params);
 deAlloc(_params);
end
FNR("BL4.K2_FindFloor");

BL4.K2_GetWalkableFloorAngle = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_GetWalkableFloorAngle: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "K2_GetWalkableFloorAngle", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_GetWalkableFloorAngle");

BL4.K2_GetWalkableFloorZ = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_GetWalkableFloorZ: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "K2_GetWalkableFloorZ", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_GetWalkableFloorZ");

BL4.SetAvoidanceEnabled = function(OwnerAddress, bEnable)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAvoidanceEnabled: Failed To Allocate The Params");return;end;
 bEnable = bEnable or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnable at +0x0
 writeByte(_params + 0x0, bEnable)
 UE.CallProcessEventEx(OwnerAddress, "SetAvoidanceEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetAvoidanceEnabled");

BL4.SetAvoidanceGroup = function(OwnerAddress, GroupFlags)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAvoidanceGroup: Failed To Allocate The Params");return;end;
 GroupFlags = GroupFlags or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: GroupFlags at +0x0
 writeInteger(_params + 0x0, GroupFlags)
 UE.CallProcessEventEx(OwnerAddress, "SetAvoidanceGroup", _params);
 deAlloc(_params);
end
FNR("BL4.SetAvoidanceGroup");

BL4.SetAvoidanceGroupMask = function(OwnerAddress, GroupMask)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAvoidanceGroupMask: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: GroupMask at +0x0
 writeQword(_params + 0x0, GroupMask)
 UE.CallProcessEventEx(OwnerAddress, "SetAvoidanceGroupMask", _params);
 deAlloc(_params);
end
FNR("BL4.SetAvoidanceGroupMask");

BL4.SetCrouchedHalfHeight = function(OwnerAddress, NewValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCrouchedHalfHeight: Failed To Allocate The Params");return;end;
 NewValue = NewValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewValue at +0x0
 writeFloat(_params + 0x0, NewValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCrouchedHalfHeight", _params);
 deAlloc(_params);
end
FNR("BL4.SetCrouchedHalfHeight");

BL4.SetGravityDirection = function(OwnerAddress, GravityDir)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetGravityDirection: Failed To Allocate The Params");return;end;
 GravityDir = GravityDir or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: GravityDir at +0x0
 writeDouble(_params + 0x0, (GravityDir and GravityDir.X) or 0)
 writeDouble(_params + 0x8, (GravityDir and GravityDir.Y) or 0)
 writeDouble(_params + 0x10, (GravityDir and GravityDir.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetGravityDirection", _params);
 deAlloc(_params);
end
FNR("BL4.SetGravityDirection");

BL4.SetGroupsToAvoid = function(OwnerAddress, GroupFlags)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetGroupsToAvoid: Failed To Allocate The Params");return;end;
 GroupFlags = GroupFlags or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: GroupFlags at +0x0
 writeInteger(_params + 0x0, GroupFlags)
 UE.CallProcessEventEx(OwnerAddress, "SetGroupsToAvoid", _params);
 deAlloc(_params);
end
FNR("BL4.SetGroupsToAvoid");

BL4.SetGroupsToAvoidMask = function(OwnerAddress, GroupMask)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetGroupsToAvoidMask: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: GroupMask at +0x0
 writeQword(_params + 0x0, GroupMask)
 UE.CallProcessEventEx(OwnerAddress, "SetGroupsToAvoidMask", _params);
 deAlloc(_params);
end
FNR("BL4.SetGroupsToAvoidMask");

BL4.SetGroupsToIgnore = function(OwnerAddress, GroupFlags)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetGroupsToIgnore: Failed To Allocate The Params");return;end;
 GroupFlags = GroupFlags or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: GroupFlags at +0x0
 writeInteger(_params + 0x0, GroupFlags)
 UE.CallProcessEventEx(OwnerAddress, "SetGroupsToIgnore", _params);
 deAlloc(_params);
end
FNR("BL4.SetGroupsToIgnore");

BL4.SetGroupsToIgnoreMask = function(OwnerAddress, GroupMask)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetGroupsToIgnoreMask: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: GroupMask at +0x0
 writeQword(_params + 0x0, GroupMask)
 UE.CallProcessEventEx(OwnerAddress, "SetGroupsToIgnoreMask", _params);
 deAlloc(_params);
end
FNR("BL4.SetGroupsToIgnoreMask");

BL4.SetMovementMode = function(OwnerAddress, NewMovementMode, NewCustomMode)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMovementMode: Failed To Allocate The Params");return;end;
 NewMovementMode = NewMovementMode or 0
 NewCustomMode = NewCustomMode or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewMovementMode at +0x0, NewCustomMode at +0x1
 writeByte(_params + 0x0, NewMovementMode)
 writeByte(_params + 0x1, NewCustomMode)
 UE.CallProcessEventEx(OwnerAddress, "SetMovementMode", _params);
 deAlloc(_params);
end
FNR("BL4.SetMovementMode");

BL4.SetWalkableFloorAngle = function(OwnerAddress, InWalkableFloorAngle)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetWalkableFloorAngle: Failed To Allocate The Params");return;end;
 InWalkableFloorAngle = InWalkableFloorAngle or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InWalkableFloorAngle at +0x0
 writeFloat(_params + 0x0, InWalkableFloorAngle)
 UE.CallProcessEventEx(OwnerAddress, "SetWalkableFloorAngle", _params);
 deAlloc(_params);
end
FNR("BL4.SetWalkableFloorAngle");

BL4.SetWalkableFloorZ = function(OwnerAddress, InWalkableFloorZ)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetWalkableFloorZ: Failed To Allocate The Params");return;end;
 InWalkableFloorZ = InWalkableFloorZ or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InWalkableFloorZ at +0x0
 writeFloat(_params + 0x0, InWalkableFloorZ)
 UE.CallProcessEventEx(OwnerAddress, "SetWalkableFloorZ", _params);
 deAlloc(_params);
end
FNR("BL4.SetWalkableFloorZ");

