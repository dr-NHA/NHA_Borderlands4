BL4.BreakWheeledSnapshot = function(OwnerAddress, Snapshot, Transform, LinearVelocity, AngularVelocity, SelectedGear, EngineRPM, WheelSnapshots)
 local _paramsSize = 0x158
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakWheeledSnapshot: Failed To Allocate The Params");return;end;
 LinearVelocity = LinearVelocity or {X=0,Y=0,Z=0}
 AngularVelocity = AngularVelocity or {X=0,Y=0,Z=0}
 SelectedGear = SelectedGear or 0
 EngineRPM = EngineRPM or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Snapshot at +0x0, Transform at +0xB0, LinearVelocity at +0x110, AngularVelocity at +0x128, SelectedGear at +0x140, EngineRPM at +0x144, WheelSnapshots at +0x148
 writeQword(_params + 0x0, Snapshot)
 writeQword(_params + 0xB0, Transform)
 writeDouble(_params + 0x110, (LinearVelocity and LinearVelocity.X) or 0)
 writeDouble(_params + 0x118, (LinearVelocity and LinearVelocity.Y) or 0)
 writeDouble(_params + 0x120, (LinearVelocity and LinearVelocity.Z) or 0)
 writeDouble(_params + 0x128, (AngularVelocity and AngularVelocity.X) or 0)
 writeDouble(_params + 0x130, (AngularVelocity and AngularVelocity.Y) or 0)
 writeDouble(_params + 0x138, (AngularVelocity and AngularVelocity.Z) or 0)
 writeInteger(_params + 0x140, SelectedGear)
 writeFloat(_params + 0x144, EngineRPM)
 writeQword(_params + 0x148, WheelSnapshots)
 UE.CallProcessEventEx(OwnerAddress, "BreakWheeledSnapshot", _params);
 deAlloc(_params);
end
FNR("BL4.BreakWheeledSnapshot");

BL4.BreakWheelSnapshot = function(OwnerAddress, Snapshot, SuspensionOffset, WheelRotationAngle, SteeringAngle, WheelRadius, WheelAngularVelocity)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakWheelSnapshot: Failed To Allocate The Params");return;end;
 SuspensionOffset = SuspensionOffset or 0
 WheelRotationAngle = WheelRotationAngle or 0
 SteeringAngle = SteeringAngle or 0
 WheelRadius = WheelRadius or 0
 WheelAngularVelocity = WheelAngularVelocity or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Snapshot at +0x0, SuspensionOffset at +0x14, WheelRotationAngle at +0x18, SteeringAngle at +0x1C, WheelRadius at +0x20, WheelAngularVelocity at +0x24
 writeQword(_params + 0x0, Snapshot)
 writeFloat(_params + 0x14, SuspensionOffset)
 writeFloat(_params + 0x18, WheelRotationAngle)
 writeFloat(_params + 0x1C, SteeringAngle)
 writeFloat(_params + 0x20, WheelRadius)
 writeFloat(_params + 0x24, WheelAngularVelocity)
 UE.CallProcessEventEx(OwnerAddress, "BreakWheelSnapshot", _params);
 deAlloc(_params);
end
FNR("BL4.BreakWheelSnapshot");

BL4.BreakWheelStatus = function(OwnerAddress, status, bInContact, ContactPoint, PhysMaterial_PhysicalMaterial, NormalizedSuspensionLength, SpringForce, SlipAngle, bIsSlipping, SlipMagnitude, bIsSkidding, SkidMagnitude, SkidNormal, DriveTorque, BrakeTorque, bABSActivated)
 local _paramsSize = 0xF8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakWheelStatus: Failed To Allocate The Params");return;end;
 bInContact = bInContact or false
 ContactPoint = ContactPoint or {X=0,Y=0,Z=0}
 NormalizedSuspensionLength = NormalizedSuspensionLength or 0
 SpringForce = SpringForce or 0
 SlipAngle = SlipAngle or 0
 bIsSlipping = bIsSlipping or false
 SlipMagnitude = SlipMagnitude or 0
 bIsSkidding = bIsSkidding or false
 SkidMagnitude = SkidMagnitude or 0
 SkidNormal = SkidNormal or {X=0,Y=0,Z=0}
 DriveTorque = DriveTorque or 0
 BrakeTorque = BrakeTorque or 0
 bABSActivated = bABSActivated or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: status at +0x0, bInContact at +0x88, ContactPoint at +0x90, PhysMaterial at +0xA8, NormalizedSuspensionLength at +0xB0, SpringForce at +0xB4, SlipAngle at +0xB8, bIsSlipping at +0xBC, SlipMagnitude at +0xC0, bIsSkidding at +0xC4, SkidMagnitude at +0xC8, SkidNormal at +0xD0, DriveTorque at +0xE8, BrakeTorque at +0xEC, bABSActivated at +0xF0
 writeQword(_params + 0x0, status)
 writeByte(_params + 0x88, bInContact)
 writeDouble(_params + 0x90, (ContactPoint and ContactPoint.X) or 0)
 writeDouble(_params + 0x98, (ContactPoint and ContactPoint.Y) or 0)
 writeDouble(_params + 0xA0, (ContactPoint and ContactPoint.Z) or 0)
 writeQword(_params + 0xA8, PhysMaterial_PhysicalMaterial)
 writeFloat(_params + 0xB0, NormalizedSuspensionLength)
 writeFloat(_params + 0xB4, SpringForce)
 writeFloat(_params + 0xB8, SlipAngle)
 writeByte(_params + 0xBC, bIsSlipping)
 writeFloat(_params + 0xC0, SlipMagnitude)
 writeByte(_params + 0xC4, bIsSkidding)
 writeFloat(_params + 0xC8, SkidMagnitude)
 writeDouble(_params + 0xD0, (SkidNormal and SkidNormal.X) or 0)
 writeDouble(_params + 0xD8, (SkidNormal and SkidNormal.Y) or 0)
 writeDouble(_params + 0xE0, (SkidNormal and SkidNormal.Z) or 0)
 writeFloat(_params + 0xE8, DriveTorque)
 writeFloat(_params + 0xEC, BrakeTorque)
 writeByte(_params + 0xF0, bABSActivated)
 UE.CallProcessEventEx(OwnerAddress, "BreakWheelStatus", _params);
 deAlloc(_params);
end
FNR("BL4.BreakWheelStatus");

BL4.EnableMechanicalSim = function(OwnerAddress, InState)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EnableMechanicalSim: Failed To Allocate The Params");return;end;
 InState = InState or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InState at +0x0
 writeByte(_params + 0x0, InState)
 UE.CallProcessEventEx(OwnerAddress, "EnableMechanicalSim", _params);
 deAlloc(_params);
end
FNR("BL4.EnableMechanicalSim");

BL4.EnableSuspension = function(OwnerAddress, InState)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EnableSuspension: Failed To Allocate The Params");return;end;
 InState = InState or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InState at +0x0
 writeByte(_params + 0x0, InState)
 UE.CallProcessEventEx(OwnerAddress, "EnableSuspension", _params);
 deAlloc(_params);
end
FNR("BL4.EnableSuspension");

BL4.EnableWheelFriction = function(OwnerAddress, InState)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EnableWheelFriction: Failed To Allocate The Params");return;end;
 InState = InState or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InState at +0x0
 writeByte(_params + 0x0, InState)
 UE.CallProcessEventEx(OwnerAddress, "EnableWheelFriction", _params);
 deAlloc(_params);
end
FNR("BL4.EnableWheelFriction");

BL4.GetEngineMaxRotationSpeed = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetEngineMaxRotationSpeed: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetEngineMaxRotationSpeed", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetEngineMaxRotationSpeed");

BL4.GetEngineRotationSpeed = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetEngineRotationSpeed: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetEngineRotationSpeed", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetEngineRotationSpeed");

BL4.GetNumWheels = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumWheels: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetNumWheels", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumWheels");

BL4.GetSnapshot = function(OwnerAddress)
 local _paramsSize = 0xB0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSnapshot: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetSnapshot", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSnapshot");

BL4.GetWheelState = function(OwnerAddress, WheelIndex)
 local _paramsSize = 0x90
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetWheelState: Failed To Allocate The Params");return;end;
 WheelIndex = WheelIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WheelIndex at +0x0
 writeInteger(_params + 0x0, WheelIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetWheelState", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetWheelState");

BL4.MakeWheeledSnapshot = function(OwnerAddress, Transform, LinearVelocity, AngularVelocity, SelectedGear, EngineRPM, WheelSnapshots)
 local _paramsSize = 0x160
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeWheeledSnapshot: Failed To Allocate The Params");return;end;
 LinearVelocity = LinearVelocity or {X=0,Y=0,Z=0}
 AngularVelocity = AngularVelocity or {X=0,Y=0,Z=0}
 SelectedGear = SelectedGear or 0
 EngineRPM = EngineRPM or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Transform at +0x0, LinearVelocity at +0x60, AngularVelocity at +0x78, SelectedGear at +0x90, EngineRPM at +0x94, WheelSnapshots at +0x98
 writeQword(_params + 0x0, Transform)
 writeDouble(_params + 0x60, (LinearVelocity and LinearVelocity.X) or 0)
 writeDouble(_params + 0x68, (LinearVelocity and LinearVelocity.Y) or 0)
 writeDouble(_params + 0x70, (LinearVelocity and LinearVelocity.Z) or 0)
 writeDouble(_params + 0x78, (AngularVelocity and AngularVelocity.X) or 0)
 writeDouble(_params + 0x80, (AngularVelocity and AngularVelocity.Y) or 0)
 writeDouble(_params + 0x88, (AngularVelocity and AngularVelocity.Z) or 0)
 writeInteger(_params + 0x90, SelectedGear)
 writeFloat(_params + 0x94, EngineRPM)
 writeQword(_params + 0x98, WheelSnapshots)
 UE.CallProcessEventEx(OwnerAddress, "MakeWheeledSnapshot", _params);
 local RET=readQword(_params + 0xB0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeWheeledSnapshot");

BL4.MakeWheelSnapshot = function(OwnerAddress, SuspensionOffset, WheelRotationAngle, SteeringAngle, WheelRadius, WheelAngularVelocity)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeWheelSnapshot: Failed To Allocate The Params");return;end;
 SuspensionOffset = SuspensionOffset or 0
 WheelRotationAngle = WheelRotationAngle or 0
 SteeringAngle = SteeringAngle or 0
 WheelRadius = WheelRadius or 0
 WheelAngularVelocity = WheelAngularVelocity or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SuspensionOffset at +0x0, WheelRotationAngle at +0x4, SteeringAngle at +0x8, WheelRadius at +0xC, WheelAngularVelocity at +0x10
 writeFloat(_params + 0x0, SuspensionOffset)
 writeFloat(_params + 0x4, WheelRotationAngle)
 writeFloat(_params + 0x8, SteeringAngle)
 writeFloat(_params + 0xC, WheelRadius)
 writeFloat(_params + 0x10, WheelAngularVelocity)
 UE.CallProcessEventEx(OwnerAddress, "MakeWheelSnapshot", _params);
 local RET=readQword(_params + 0x14);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeWheelSnapshot");

BL4.MakeWheelStatus = function(OwnerAddress, bInContact, ContactPoint, PhysMaterial_PhysicalMaterial, NormalizedSuspensionLength, SpringForce, SlipAngle, bIsSlipping, SlipMagnitude, bIsSkidding, SkidMagnitude, SkidNormal, DriveTorque, BrakeTorque, bABSActivated)
 local _paramsSize = 0xF8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeWheelStatus: Failed To Allocate The Params");return;end;
 bInContact = bInContact or false
 ContactPoint = ContactPoint or {X=0,Y=0,Z=0}
 NormalizedSuspensionLength = NormalizedSuspensionLength or 0
 SpringForce = SpringForce or 0
 SlipAngle = SlipAngle or 0
 bIsSlipping = bIsSlipping or false
 SlipMagnitude = SlipMagnitude or 0
 bIsSkidding = bIsSkidding or false
 SkidMagnitude = SkidMagnitude or 0
 SkidNormal = SkidNormal or {X=0,Y=0,Z=0}
 DriveTorque = DriveTorque or 0
 BrakeTorque = BrakeTorque or 0
 bABSActivated = bABSActivated or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bInContact at +0x0, ContactPoint at +0x8, PhysMaterial at +0x20, NormalizedSuspensionLength at +0x28, SpringForce at +0x2C, SlipAngle at +0x30, bIsSlipping at +0x34, SlipMagnitude at +0x38, bIsSkidding at +0x3C, SkidMagnitude at +0x40, SkidNormal at +0x48, DriveTorque at +0x60, BrakeTorque at +0x64, bABSActivated at +0x68
 writeByte(_params + 0x0, bInContact)
 writeDouble(_params + 0x8, (ContactPoint and ContactPoint.X) or 0)
 writeDouble(_params + 0x10, (ContactPoint and ContactPoint.Y) or 0)
 writeDouble(_params + 0x18, (ContactPoint and ContactPoint.Z) or 0)
 writeQword(_params + 0x20, PhysMaterial_PhysicalMaterial)
 writeFloat(_params + 0x28, NormalizedSuspensionLength)
 writeFloat(_params + 0x2C, SpringForce)
 writeFloat(_params + 0x30, SlipAngle)
 writeByte(_params + 0x34, bIsSlipping)
 writeFloat(_params + 0x38, SlipMagnitude)
 writeByte(_params + 0x3C, bIsSkidding)
 writeFloat(_params + 0x40, SkidMagnitude)
 writeDouble(_params + 0x48, (SkidNormal and SkidNormal.X) or 0)
 writeDouble(_params + 0x50, (SkidNormal and SkidNormal.Y) or 0)
 writeDouble(_params + 0x58, (SkidNormal and SkidNormal.Z) or 0)
 writeFloat(_params + 0x60, DriveTorque)
 writeFloat(_params + 0x64, BrakeTorque)
 writeByte(_params + 0x68, bABSActivated)
 UE.CallProcessEventEx(OwnerAddress, "MakeWheelStatus", _params);
 local RET=readQword(_params + 0x70);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeWheelStatus");

BL4.SetABSEnabled = function(OwnerAddress, WheelIndex, Enabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetABSEnabled: Failed To Allocate The Params");return;end;
 WheelIndex = WheelIndex or 0
 Enabled = Enabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: WheelIndex at +0x0, Enabled at +0x4
 writeInteger(_params + 0x0, WheelIndex)
 writeByte(_params + 0x4, Enabled)
 UE.CallProcessEventEx(OwnerAddress, "SetABSEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetABSEnabled");

BL4.SetAffectedByBrake = function(OwnerAddress, WheelIndex, Enabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAffectedByBrake: Failed To Allocate The Params");return;end;
 WheelIndex = WheelIndex or 0
 Enabled = Enabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: WheelIndex at +0x0, Enabled at +0x4
 writeInteger(_params + 0x0, WheelIndex)
 writeByte(_params + 0x4, Enabled)
 UE.CallProcessEventEx(OwnerAddress, "SetAffectedByBrake", _params);
 deAlloc(_params);
end
FNR("BL4.SetAffectedByBrake");

BL4.SetAffectedByEngine = function(OwnerAddress, WheelIndex, Enabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAffectedByEngine: Failed To Allocate The Params");return;end;
 WheelIndex = WheelIndex or 0
 Enabled = Enabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: WheelIndex at +0x0, Enabled at +0x4
 writeInteger(_params + 0x0, WheelIndex)
 writeByte(_params + 0x4, Enabled)
 UE.CallProcessEventEx(OwnerAddress, "SetAffectedByEngine", _params);
 deAlloc(_params);
end
FNR("BL4.SetAffectedByEngine");

BL4.SetAffectedByHandbrake = function(OwnerAddress, WheelIndex, Enabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAffectedByHandbrake: Failed To Allocate The Params");return;end;
 WheelIndex = WheelIndex or 0
 Enabled = Enabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: WheelIndex at +0x0, Enabled at +0x4
 writeInteger(_params + 0x0, WheelIndex)
 writeByte(_params + 0x4, Enabled)
 UE.CallProcessEventEx(OwnerAddress, "SetAffectedByHandbrake", _params);
 deAlloc(_params);
end
FNR("BL4.SetAffectedByHandbrake");

BL4.SetAffectedBySteering = function(OwnerAddress, WheelIndex, Enabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAffectedBySteering: Failed To Allocate The Params");return;end;
 WheelIndex = WheelIndex or 0
 Enabled = Enabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: WheelIndex at +0x0, Enabled at +0x4
 writeInteger(_params + 0x0, WheelIndex)
 writeByte(_params + 0x4, Enabled)
 UE.CallProcessEventEx(OwnerAddress, "SetAffectedBySteering", _params);
 deAlloc(_params);
end
FNR("BL4.SetAffectedBySteering");

BL4.SetBrakeTorque = function(OwnerAddress, BrakeTorque, WheelIndex)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBrakeTorque: Failed To Allocate The Params");return;end;
 BrakeTorque = BrakeTorque or 0
 WheelIndex = WheelIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: BrakeTorque at +0x0, WheelIndex at +0x4
 writeFloat(_params + 0x0, BrakeTorque)
 writeInteger(_params + 0x4, WheelIndex)
 UE.CallProcessEventEx(OwnerAddress, "SetBrakeTorque", _params);
 deAlloc(_params);
end
FNR("BL4.SetBrakeTorque");

BL4.SetDifferentialFrontRearSplit = function(OwnerAddress, FrontRearSlpit)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDifferentialFrontRearSplit: Failed To Allocate The Params");return;end;
 FrontRearSlpit = FrontRearSlpit or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: FrontRearSlpit at +0x0
 writeFloat(_params + 0x0, FrontRearSlpit)
 UE.CallProcessEventEx(OwnerAddress, "SetDifferentialFrontRearSplit", _params);
 deAlloc(_params);
end
FNR("BL4.SetDifferentialFrontRearSplit");

BL4.SetDownforceCoefficient = function(OwnerAddress, DownforceCoeff)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDownforceCoefficient: Failed To Allocate The Params");return;end;
 DownforceCoeff = DownforceCoeff or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: DownforceCoeff at +0x0
 writeFloat(_params + 0x0, DownforceCoeff)
 UE.CallProcessEventEx(OwnerAddress, "SetDownforceCoefficient", _params);
 deAlloc(_params);
end
FNR("BL4.SetDownforceCoefficient");

BL4.SetDragCoefficient = function(OwnerAddress, DragCoeff)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDragCoefficient: Failed To Allocate The Params");return;end;
 DragCoeff = DragCoeff or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: DragCoeff at +0x0
 writeFloat(_params + 0x0, DragCoeff)
 UE.CallProcessEventEx(OwnerAddress, "SetDragCoefficient", _params);
 deAlloc(_params);
end
FNR("BL4.SetDragCoefficient");

BL4.SetDriveTorque = function(OwnerAddress, DriveTorque, WheelIndex)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDriveTorque: Failed To Allocate The Params");return;end;
 DriveTorque = DriveTorque or 0
 WheelIndex = WheelIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: DriveTorque at +0x0, WheelIndex at +0x4
 writeFloat(_params + 0x0, DriveTorque)
 writeInteger(_params + 0x4, WheelIndex)
 UE.CallProcessEventEx(OwnerAddress, "SetDriveTorque", _params);
 deAlloc(_params);
end
FNR("BL4.SetDriveTorque");

BL4.SetMaxEngineTorque = function(OwnerAddress, Torque)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMaxEngineTorque: Failed To Allocate The Params");return;end;
 Torque = Torque or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Torque at +0x0
 writeFloat(_params + 0x0, Torque)
 UE.CallProcessEventEx(OwnerAddress, "SetMaxEngineTorque", _params);
 deAlloc(_params);
end
FNR("BL4.SetMaxEngineTorque");

BL4.SetSnapshot = function(OwnerAddress, SnapshotIn)
 local _paramsSize = 0xB0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSnapshot: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SnapshotIn at +0x0
 writeQword(_params + 0x0, SnapshotIn)
 UE.CallProcessEventEx(OwnerAddress, "SetSnapshot", _params);
 deAlloc(_params);
end
FNR("BL4.SetSnapshot");

BL4.SetSuspensionParams = function(OwnerAddress, rate, Damping, preload, MaxRaise, MaxDrop, WheelIndex)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSuspensionParams: Failed To Allocate The Params");return;end;
 rate = rate or 0
 Damping = Damping or 0
 preload = preload or 0
 MaxRaise = MaxRaise or 0
 MaxDrop = MaxDrop or 0
 WheelIndex = WheelIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: rate at +0x0, Damping at +0x4, preload at +0x8, MaxRaise at +0xC, MaxDrop at +0x10, WheelIndex at +0x14
 writeFloat(_params + 0x0, rate)
 writeFloat(_params + 0x4, Damping)
 writeFloat(_params + 0x8, preload)
 writeFloat(_params + 0xC, MaxRaise)
 writeFloat(_params + 0x10, MaxDrop)
 writeInteger(_params + 0x14, WheelIndex)
 UE.CallProcessEventEx(OwnerAddress, "SetSuspensionParams", _params);
 deAlloc(_params);
end
FNR("BL4.SetSuspensionParams");

BL4.SetTorqueCombineMethod = function(OwnerAddress, InCombineMethod, WheelIndex)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTorqueCombineMethod: Failed To Allocate The Params");return;end;
 InCombineMethod = InCombineMethod or 0
 WheelIndex = WheelIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InCombineMethod at +0x0, WheelIndex at +0x4
 writeByte(_params + 0x0, InCombineMethod)
 writeInteger(_params + 0x4, WheelIndex)
 UE.CallProcessEventEx(OwnerAddress, "SetTorqueCombineMethod", _params);
 deAlloc(_params);
end
FNR("BL4.SetTorqueCombineMethod");

BL4.SetTractionControlEnabled = function(OwnerAddress, WheelIndex, Enabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTractionControlEnabled: Failed To Allocate The Params");return;end;
 WheelIndex = WheelIndex or 0
 Enabled = Enabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: WheelIndex at +0x0, Enabled at +0x4
 writeInteger(_params + 0x0, WheelIndex)
 writeByte(_params + 0x4, Enabled)
 UE.CallProcessEventEx(OwnerAddress, "SetTractionControlEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetTractionControlEnabled");

BL4.SetWheelClass = function(OwnerAddress, WheelIndex, InWheelClass_Class)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetWheelClass: Failed To Allocate The Params");return;end;
 WheelIndex = WheelIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WheelIndex at +0x0, InWheelClass at +0x8
 writeInteger(_params + 0x0, WheelIndex)
 writeQword(_params + 0x8, InWheelClass_Class)
 UE.CallProcessEventEx(OwnerAddress, "SetWheelClass", _params);
 deAlloc(_params);
end
FNR("BL4.SetWheelClass");

BL4.SetWheelFrictionMultiplier = function(OwnerAddress, WheelIndex, Friction)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetWheelFrictionMultiplier: Failed To Allocate The Params");return;end;
 WheelIndex = WheelIndex or 0
 Friction = Friction or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: WheelIndex at +0x0, Friction at +0x4
 writeInteger(_params + 0x0, WheelIndex)
 writeFloat(_params + 0x4, Friction)
 UE.CallProcessEventEx(OwnerAddress, "SetWheelFrictionMultiplier", _params);
 deAlloc(_params);
end
FNR("BL4.SetWheelFrictionMultiplier");

BL4.SetWheelHandbrakeTorque = function(OwnerAddress, WheelIndex, Torque)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetWheelHandbrakeTorque: Failed To Allocate The Params");return;end;
 WheelIndex = WheelIndex or 0
 Torque = Torque or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: WheelIndex at +0x0, Torque at +0x4
 writeInteger(_params + 0x0, WheelIndex)
 writeFloat(_params + 0x4, Torque)
 UE.CallProcessEventEx(OwnerAddress, "SetWheelHandbrakeTorque", _params);
 deAlloc(_params);
end
FNR("BL4.SetWheelHandbrakeTorque");

BL4.SetWheelMaxBrakeTorque = function(OwnerAddress, WheelIndex, Torque)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetWheelMaxBrakeTorque: Failed To Allocate The Params");return;end;
 WheelIndex = WheelIndex or 0
 Torque = Torque or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: WheelIndex at +0x0, Torque at +0x4
 writeInteger(_params + 0x0, WheelIndex)
 writeFloat(_params + 0x4, Torque)
 UE.CallProcessEventEx(OwnerAddress, "SetWheelMaxBrakeTorque", _params);
 deAlloc(_params);
end
FNR("BL4.SetWheelMaxBrakeTorque");

BL4.SetWheelMaxSteerAngle = function(OwnerAddress, WheelIndex, AngleDegrees)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetWheelMaxSteerAngle: Failed To Allocate The Params");return;end;
 WheelIndex = WheelIndex or 0
 AngleDegrees = AngleDegrees or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: WheelIndex at +0x0, AngleDegrees at +0x4
 writeInteger(_params + 0x0, WheelIndex)
 writeFloat(_params + 0x4, AngleDegrees)
 UE.CallProcessEventEx(OwnerAddress, "SetWheelMaxSteerAngle", _params);
 deAlloc(_params);
end
FNR("BL4.SetWheelMaxSteerAngle");

BL4.SetWheelRadius = function(OwnerAddress, WheelIndex, Radius)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetWheelRadius: Failed To Allocate The Params");return;end;
 WheelIndex = WheelIndex or 0
 Radius = Radius or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: WheelIndex at +0x0, Radius at +0x4
 writeInteger(_params + 0x0, WheelIndex)
 writeFloat(_params + 0x4, Radius)
 UE.CallProcessEventEx(OwnerAddress, "SetWheelRadius", _params);
 deAlloc(_params);
end
FNR("BL4.SetWheelRadius");

BL4.SetWheelSlipGraphMultiplier = function(OwnerAddress, WheelIndex, Multiplier)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetWheelSlipGraphMultiplier: Failed To Allocate The Params");return;end;
 WheelIndex = WheelIndex or 0
 Multiplier = Multiplier or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: WheelIndex at +0x0, Multiplier at +0x4
 writeInteger(_params + 0x0, WheelIndex)
 writeFloat(_params + 0x4, Multiplier)
 UE.CallProcessEventEx(OwnerAddress, "SetWheelSlipGraphMultiplier", _params);
 deAlloc(_params);
end
FNR("BL4.SetWheelSlipGraphMultiplier");

