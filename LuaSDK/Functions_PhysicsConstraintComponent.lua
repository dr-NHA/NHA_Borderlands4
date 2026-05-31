BL4.GetConstrainedComponents = function(OutComponent1_PrimitiveComponent, OutBoneName1, OutComponent2_PrimitiveComponent, OutBoneName2)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetConstrainedComponents: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OutComponent1 at +0x0, OutBoneName1 at +0x8, OutComponent2 at +0x10, OutBoneName2 at +0x18
 writeQword(_params + 0x0, OutComponent1_PrimitiveComponent)
 writeQword(_params + 0x8, OutBoneName1)
 writeQword(_params + 0x10, OutComponent2_PrimitiveComponent)
 writeQword(_params + 0x18, OutBoneName2)
 UE.CallProcessEventEx(OutComponent1_PrimitiveComponent, "GetConstrainedComponents", _params);
 deAlloc(_params);
end
FNR("BL4.GetConstrainedComponents");

BL4.GetConstraint = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetConstraint: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetConstraint", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetConstraint");

BL4.GetConstraintForce = function(OwnerAddress, OutLinearForce, OutAngularForce)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetConstraintForce: Failed To Allocate The Params");return;end;
 OutLinearForce = OutLinearForce or {X=0,Y=0,Z=0}
 OutAngularForce = OutAngularForce or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OutLinearForce at +0x0, OutAngularForce at +0x18
 writeDouble(_params + 0x0, (OutLinearForce and OutLinearForce.X) or 0)
 writeDouble(_params + 0x8, (OutLinearForce and OutLinearForce.Y) or 0)
 writeDouble(_params + 0x10, (OutLinearForce and OutLinearForce.Z) or 0)
 writeDouble(_params + 0x18, (OutAngularForce and OutAngularForce.X) or 0)
 writeDouble(_params + 0x20, (OutAngularForce and OutAngularForce.Y) or 0)
 writeDouble(_params + 0x28, (OutAngularForce and OutAngularForce.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetConstraintForce", _params);
 deAlloc(_params);
end
FNR("BL4.GetConstraintForce");

BL4.GetCurrentSwing1 = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCurrentSwing1: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCurrentSwing1", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCurrentSwing1");

BL4.GetCurrentSwing2 = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCurrentSwing2: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCurrentSwing2", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCurrentSwing2");

BL4.GetCurrentTwist = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCurrentTwist: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCurrentTwist", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCurrentTwist");

BL4.IsBroken = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsBroken: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsBroken", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsBroken");

BL4.IsProjectionEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsProjectionEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsProjectionEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsProjectionEnabled");

BL4.SetAngularBreakable = function(OwnerAddress, bAngularBreakable, AngularBreakThreshold)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAngularBreakable: Failed To Allocate The Params");return;end;
 bAngularBreakable = bAngularBreakable or false
 AngularBreakThreshold = AngularBreakThreshold or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bAngularBreakable at +0x0, AngularBreakThreshold at +0x4
 writeByte(_params + 0x0, bAngularBreakable)
 writeFloat(_params + 0x4, AngularBreakThreshold)
 UE.CallProcessEventEx(OwnerAddress, "SetAngularBreakable", _params);
 deAlloc(_params);
end
FNR("BL4.SetAngularBreakable");

BL4.SetAngularDriveAccelerationMode = function(OwnerAddress, bAccelerationMode)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAngularDriveAccelerationMode: Failed To Allocate The Params");return;end;
 bAccelerationMode = bAccelerationMode or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bAccelerationMode at +0x0
 writeByte(_params + 0x0, bAccelerationMode)
 UE.CallProcessEventEx(OwnerAddress, "SetAngularDriveAccelerationMode", _params);
 deAlloc(_params);
end
FNR("BL4.SetAngularDriveAccelerationMode");

BL4.SetAngularDriveMode = function(OwnerAddress, DriveMode)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAngularDriveMode: Failed To Allocate The Params");return;end;
 DriveMode = DriveMode or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: DriveMode at +0x0
 writeByte(_params + 0x0, DriveMode)
 UE.CallProcessEventEx(OwnerAddress, "SetAngularDriveMode", _params);
 deAlloc(_params);
end
FNR("BL4.SetAngularDriveMode");

BL4.SetAngularDriveParams = function(OwnerAddress, PositionStrength, VelocityStrength, InForceLimit)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAngularDriveParams: Failed To Allocate The Params");return;end;
 PositionStrength = PositionStrength or 0
 VelocityStrength = VelocityStrength or 0
 InForceLimit = InForceLimit or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PositionStrength at +0x0, VelocityStrength at +0x4, InForceLimit at +0x8
 writeFloat(_params + 0x0, PositionStrength)
 writeFloat(_params + 0x4, VelocityStrength)
 writeFloat(_params + 0x8, InForceLimit)
 UE.CallProcessEventEx(OwnerAddress, "SetAngularDriveParams", _params);
 deAlloc(_params);
end
FNR("BL4.SetAngularDriveParams");

BL4.SetAngularOrientationDrive = function(OwnerAddress, bEnableSwingDrive, bEnableTwistDrive)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAngularOrientationDrive: Failed To Allocate The Params");return;end;
 bEnableSwingDrive = bEnableSwingDrive or false
 bEnableTwistDrive = bEnableTwistDrive or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnableSwingDrive at +0x0, bEnableTwistDrive at +0x1
 writeByte(_params + 0x0, bEnableSwingDrive)
 writeByte(_params + 0x1, bEnableTwistDrive)
 UE.CallProcessEventEx(OwnerAddress, "SetAngularOrientationDrive", _params);
 deAlloc(_params);
end
FNR("BL4.SetAngularOrientationDrive");

BL4.SetAngularOrientationTarget = function(OwnerAddress, InPosTarget)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAngularOrientationTarget: Failed To Allocate The Params");return;end;
 InPosTarget = InPosTarget or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InPosTarget at +0x0
 writeDouble(_params + 0x0, (InPosTarget and InPosTarget.Pitch) or 0)
 writeDouble(_params + 0x8, (InPosTarget and InPosTarget.Yaw) or 0)
 writeDouble(_params + 0x10, (InPosTarget and InPosTarget.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetAngularOrientationTarget", _params);
 deAlloc(_params);
end
FNR("BL4.SetAngularOrientationTarget");

BL4.SetAngularPlasticity = function(OwnerAddress, bAngularPlasticity, AngularPlasticityThreshold)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAngularPlasticity: Failed To Allocate The Params");return;end;
 bAngularPlasticity = bAngularPlasticity or false
 AngularPlasticityThreshold = AngularPlasticityThreshold or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bAngularPlasticity at +0x0, AngularPlasticityThreshold at +0x4
 writeByte(_params + 0x0, bAngularPlasticity)
 writeFloat(_params + 0x4, AngularPlasticityThreshold)
 UE.CallProcessEventEx(OwnerAddress, "SetAngularPlasticity", _params);
 deAlloc(_params);
end
FNR("BL4.SetAngularPlasticity");

BL4.SetAngularSwing1Limit = function(OwnerAddress, MotionType, Swing1LimitAngle)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAngularSwing1Limit: Failed To Allocate The Params");return;end;
 MotionType = MotionType or 0
 Swing1LimitAngle = Swing1LimitAngle or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: MotionType at +0x0, Swing1LimitAngle at +0x4
 writeByte(_params + 0x0, MotionType)
 writeFloat(_params + 0x4, Swing1LimitAngle)
 UE.CallProcessEventEx(OwnerAddress, "SetAngularSwing1Limit", _params);
 deAlloc(_params);
end
FNR("BL4.SetAngularSwing1Limit");

BL4.SetAngularSwing2Limit = function(OwnerAddress, MotionType, Swing2LimitAngle)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAngularSwing2Limit: Failed To Allocate The Params");return;end;
 MotionType = MotionType or 0
 Swing2LimitAngle = Swing2LimitAngle or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: MotionType at +0x0, Swing2LimitAngle at +0x4
 writeByte(_params + 0x0, MotionType)
 writeFloat(_params + 0x4, Swing2LimitAngle)
 UE.CallProcessEventEx(OwnerAddress, "SetAngularSwing2Limit", _params);
 deAlloc(_params);
end
FNR("BL4.SetAngularSwing2Limit");

BL4.SetAngularTwistLimit = function(OwnerAddress, ConstraintType, TwistLimitAngle)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAngularTwistLimit: Failed To Allocate The Params");return;end;
 ConstraintType = ConstraintType or 0
 TwistLimitAngle = TwistLimitAngle or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: ConstraintType at +0x0, TwistLimitAngle at +0x4
 writeByte(_params + 0x0, ConstraintType)
 writeFloat(_params + 0x4, TwistLimitAngle)
 UE.CallProcessEventEx(OwnerAddress, "SetAngularTwistLimit", _params);
 deAlloc(_params);
end
FNR("BL4.SetAngularTwistLimit");

BL4.SetAngularVelocityDrive = function(OwnerAddress, bEnableSwingDrive, bEnableTwistDrive)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAngularVelocityDrive: Failed To Allocate The Params");return;end;
 bEnableSwingDrive = bEnableSwingDrive or false
 bEnableTwistDrive = bEnableTwistDrive or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnableSwingDrive at +0x0, bEnableTwistDrive at +0x1
 writeByte(_params + 0x0, bEnableSwingDrive)
 writeByte(_params + 0x1, bEnableTwistDrive)
 UE.CallProcessEventEx(OwnerAddress, "SetAngularVelocityDrive", _params);
 deAlloc(_params);
end
FNR("BL4.SetAngularVelocityDrive");

BL4.SetAngularVelocityDriveSLERP = function(OwnerAddress, bEnableSLERP)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAngularVelocityDriveSLERP: Failed To Allocate The Params");return;end;
 bEnableSLERP = bEnableSLERP or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnableSLERP at +0x0
 writeByte(_params + 0x0, bEnableSLERP)
 UE.CallProcessEventEx(OwnerAddress, "SetAngularVelocityDriveSLERP", _params);
 deAlloc(_params);
end
FNR("BL4.SetAngularVelocityDriveSLERP");

BL4.SetAngularVelocityDriveTwistAndSwing = function(OwnerAddress, bEnableTwistDrive, bEnableSwingDrive)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAngularVelocityDriveTwistAndSwing: Failed To Allocate The Params");return;end;
 bEnableTwistDrive = bEnableTwistDrive or false
 bEnableSwingDrive = bEnableSwingDrive or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnableTwistDrive at +0x0, bEnableSwingDrive at +0x1
 writeByte(_params + 0x0, bEnableTwistDrive)
 writeByte(_params + 0x1, bEnableSwingDrive)
 UE.CallProcessEventEx(OwnerAddress, "SetAngularVelocityDriveTwistAndSwing", _params);
 deAlloc(_params);
end
FNR("BL4.SetAngularVelocityDriveTwistAndSwing");

BL4.SetAngularVelocityTarget = function(OwnerAddress, InVelTarget)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAngularVelocityTarget: Failed To Allocate The Params");return;end;
 InVelTarget = InVelTarget or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVelTarget at +0x0
 writeDouble(_params + 0x0, (InVelTarget and InVelTarget.X) or 0)
 writeDouble(_params + 0x8, (InVelTarget and InVelTarget.Y) or 0)
 writeDouble(_params + 0x10, (InVelTarget and InVelTarget.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetAngularVelocityTarget", _params);
 deAlloc(_params);
end
FNR("BL4.SetAngularVelocityTarget");

BL4.SetConstrainedComponents = function(Component1_PrimitiveComponent, BoneName1, Component2_PrimitiveComponent, BoneName2)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetConstrainedComponents: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Component1 at +0x0, BoneName1 at +0x8, Component2 at +0x10, BoneName2 at +0x18
 writeQword(_params + 0x0, Component1_PrimitiveComponent)
 writeQword(_params + 0x8, BoneName1)
 writeQword(_params + 0x10, Component2_PrimitiveComponent)
 writeQword(_params + 0x18, BoneName2)
 UE.CallProcessEventEx(Component1_PrimitiveComponent, "SetConstrainedComponents", _params);
 deAlloc(_params);
end
FNR("BL4.SetConstrainedComponents");

BL4.SetConstraintReferenceFrame = function(OwnerAddress, frame, RefFrame)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetConstraintReferenceFrame: Failed To Allocate The Params");return;end;
 frame = frame or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: frame at +0x0, RefFrame at +0x10
 writeByte(_params + 0x0, frame)
 writeQword(_params + 0x10, RefFrame)
 UE.CallProcessEventEx(OwnerAddress, "SetConstraintReferenceFrame", _params);
 deAlloc(_params);
end
FNR("BL4.SetConstraintReferenceFrame");

BL4.SetConstraintReferenceOrientation = function(OwnerAddress, frame, PriAxis, SecAxis)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetConstraintReferenceOrientation: Failed To Allocate The Params");return;end;
 frame = frame or 0
 PriAxis = PriAxis or {X=0,Y=0,Z=0}
 SecAxis = SecAxis or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: frame at +0x0, PriAxis at +0x8, SecAxis at +0x20
 writeByte(_params + 0x0, frame)
 writeDouble(_params + 0x8, (PriAxis and PriAxis.X) or 0)
 writeDouble(_params + 0x10, (PriAxis and PriAxis.Y) or 0)
 writeDouble(_params + 0x18, (PriAxis and PriAxis.Z) or 0)
 writeDouble(_params + 0x20, (SecAxis and SecAxis.X) or 0)
 writeDouble(_params + 0x28, (SecAxis and SecAxis.Y) or 0)
 writeDouble(_params + 0x30, (SecAxis and SecAxis.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetConstraintReferenceOrientation", _params);
 deAlloc(_params);
end
FNR("BL4.SetConstraintReferenceOrientation");

BL4.SetConstraintReferencePosition = function(OwnerAddress, frame, RefPosition)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetConstraintReferencePosition: Failed To Allocate The Params");return;end;
 frame = frame or 0
 RefPosition = RefPosition or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: frame at +0x0, RefPosition at +0x8
 writeByte(_params + 0x0, frame)
 writeDouble(_params + 0x8, (RefPosition and RefPosition.X) or 0)
 writeDouble(_params + 0x10, (RefPosition and RefPosition.Y) or 0)
 writeDouble(_params + 0x18, (RefPosition and RefPosition.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetConstraintReferencePosition", _params);
 deAlloc(_params);
end
FNR("BL4.SetConstraintReferencePosition");

BL4.SetContactTransferScale = function(OwnerAddress, ContactTransferScale)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetContactTransferScale: Failed To Allocate The Params");return;end;
 ContactTransferScale = ContactTransferScale or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: ContactTransferScale at +0x0
 writeFloat(_params + 0x0, ContactTransferScale)
 UE.CallProcessEventEx(OwnerAddress, "SetContactTransferScale", _params);
 deAlloc(_params);
end
FNR("BL4.SetContactTransferScale");

BL4.SetDisableCollision = function(OwnerAddress, bDisableCollision)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDisableCollision: Failed To Allocate The Params");return;end;
 bDisableCollision = bDisableCollision or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bDisableCollision at +0x0
 writeByte(_params + 0x0, bDisableCollision)
 UE.CallProcessEventEx(OwnerAddress, "SetDisableCollision", _params);
 deAlloc(_params);
end
FNR("BL4.SetDisableCollision");

BL4.SetLinearBreakable = function(OwnerAddress, bLinearBreakable, LinearBreakThreshold)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLinearBreakable: Failed To Allocate The Params");return;end;
 bLinearBreakable = bLinearBreakable or false
 LinearBreakThreshold = LinearBreakThreshold or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bLinearBreakable at +0x0, LinearBreakThreshold at +0x4
 writeByte(_params + 0x0, bLinearBreakable)
 writeFloat(_params + 0x4, LinearBreakThreshold)
 UE.CallProcessEventEx(OwnerAddress, "SetLinearBreakable", _params);
 deAlloc(_params);
end
FNR("BL4.SetLinearBreakable");

BL4.SetLinearDriveAccelerationMode = function(OwnerAddress, bAccelerationMode)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLinearDriveAccelerationMode: Failed To Allocate The Params");return;end;
 bAccelerationMode = bAccelerationMode or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bAccelerationMode at +0x0
 writeByte(_params + 0x0, bAccelerationMode)
 UE.CallProcessEventEx(OwnerAddress, "SetLinearDriveAccelerationMode", _params);
 deAlloc(_params);
end
FNR("BL4.SetLinearDriveAccelerationMode");

BL4.SetLinearDriveParams = function(OwnerAddress, PositionStrength, VelocityStrength, InForceLimit)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLinearDriveParams: Failed To Allocate The Params");return;end;
 PositionStrength = PositionStrength or 0
 VelocityStrength = VelocityStrength or 0
 InForceLimit = InForceLimit or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PositionStrength at +0x0, VelocityStrength at +0x4, InForceLimit at +0x8
 writeFloat(_params + 0x0, PositionStrength)
 writeFloat(_params + 0x4, VelocityStrength)
 writeFloat(_params + 0x8, InForceLimit)
 UE.CallProcessEventEx(OwnerAddress, "SetLinearDriveParams", _params);
 deAlloc(_params);
end
FNR("BL4.SetLinearDriveParams");

BL4.SetLinearPlasticity = function(OwnerAddress, bLinearPlasticity, LinearPlasticityThreshold, PlasticityType)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLinearPlasticity: Failed To Allocate The Params");return;end;
 bLinearPlasticity = bLinearPlasticity or false
 LinearPlasticityThreshold = LinearPlasticityThreshold or 0
 PlasticityType = PlasticityType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bLinearPlasticity at +0x0, LinearPlasticityThreshold at +0x4, PlasticityType at +0x8
 writeByte(_params + 0x0, bLinearPlasticity)
 writeFloat(_params + 0x4, LinearPlasticityThreshold)
 writeByte(_params + 0x8, PlasticityType)
 UE.CallProcessEventEx(OwnerAddress, "SetLinearPlasticity", _params);
 deAlloc(_params);
end
FNR("BL4.SetLinearPlasticity");

BL4.SetLinearPositionDrive = function(OwnerAddress, bEnableDriveX, bEnableDriveY, bEnableDriveZ)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLinearPositionDrive: Failed To Allocate The Params");return;end;
 bEnableDriveX = bEnableDriveX or false
 bEnableDriveY = bEnableDriveY or false
 bEnableDriveZ = bEnableDriveZ or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnableDriveX at +0x0, bEnableDriveY at +0x1, bEnableDriveZ at +0x2
 writeByte(_params + 0x0, bEnableDriveX)
 writeByte(_params + 0x1, bEnableDriveY)
 writeByte(_params + 0x2, bEnableDriveZ)
 UE.CallProcessEventEx(OwnerAddress, "SetLinearPositionDrive", _params);
 deAlloc(_params);
end
FNR("BL4.SetLinearPositionDrive");

BL4.SetLinearPositionTarget = function(OwnerAddress, InPosTarget)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLinearPositionTarget: Failed To Allocate The Params");return;end;
 InPosTarget = InPosTarget or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InPosTarget at +0x0
 writeDouble(_params + 0x0, (InPosTarget and InPosTarget.X) or 0)
 writeDouble(_params + 0x8, (InPosTarget and InPosTarget.Y) or 0)
 writeDouble(_params + 0x10, (InPosTarget and InPosTarget.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetLinearPositionTarget", _params);
 deAlloc(_params);
end
FNR("BL4.SetLinearPositionTarget");

BL4.SetLinearVelocityDrive = function(OwnerAddress, bEnableDriveX, bEnableDriveY, bEnableDriveZ)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLinearVelocityDrive: Failed To Allocate The Params");return;end;
 bEnableDriveX = bEnableDriveX or false
 bEnableDriveY = bEnableDriveY or false
 bEnableDriveZ = bEnableDriveZ or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnableDriveX at +0x0, bEnableDriveY at +0x1, bEnableDriveZ at +0x2
 writeByte(_params + 0x0, bEnableDriveX)
 writeByte(_params + 0x1, bEnableDriveY)
 writeByte(_params + 0x2, bEnableDriveZ)
 UE.CallProcessEventEx(OwnerAddress, "SetLinearVelocityDrive", _params);
 deAlloc(_params);
end
FNR("BL4.SetLinearVelocityDrive");

BL4.SetLinearVelocityTarget = function(OwnerAddress, InVelTarget)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLinearVelocityTarget: Failed To Allocate The Params");return;end;
 InVelTarget = InVelTarget or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVelTarget at +0x0
 writeDouble(_params + 0x0, (InVelTarget and InVelTarget.X) or 0)
 writeDouble(_params + 0x8, (InVelTarget and InVelTarget.Y) or 0)
 writeDouble(_params + 0x10, (InVelTarget and InVelTarget.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetLinearVelocityTarget", _params);
 deAlloc(_params);
end
FNR("BL4.SetLinearVelocityTarget");

BL4.SetLinearXLimit = function(OwnerAddress, ConstraintType, LimitSize)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLinearXLimit: Failed To Allocate The Params");return;end;
 ConstraintType = ConstraintType or 0
 LimitSize = LimitSize or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: ConstraintType at +0x0, LimitSize at +0x4
 writeByte(_params + 0x0, ConstraintType)
 writeFloat(_params + 0x4, LimitSize)
 UE.CallProcessEventEx(OwnerAddress, "SetLinearXLimit", _params);
 deAlloc(_params);
end
FNR("BL4.SetLinearXLimit");

BL4.SetLinearYLimit = function(OwnerAddress, ConstraintType, LimitSize)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLinearYLimit: Failed To Allocate The Params");return;end;
 ConstraintType = ConstraintType or 0
 LimitSize = LimitSize or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: ConstraintType at +0x0, LimitSize at +0x4
 writeByte(_params + 0x0, ConstraintType)
 writeFloat(_params + 0x4, LimitSize)
 UE.CallProcessEventEx(OwnerAddress, "SetLinearYLimit", _params);
 deAlloc(_params);
end
FNR("BL4.SetLinearYLimit");

BL4.SetLinearZLimit = function(OwnerAddress, ConstraintType, LimitSize)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLinearZLimit: Failed To Allocate The Params");return;end;
 ConstraintType = ConstraintType or 0
 LimitSize = LimitSize or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: ConstraintType at +0x0, LimitSize at +0x4
 writeByte(_params + 0x0, ConstraintType)
 writeFloat(_params + 0x4, LimitSize)
 UE.CallProcessEventEx(OwnerAddress, "SetLinearZLimit", _params);
 deAlloc(_params);
end
FNR("BL4.SetLinearZLimit");

BL4.SetOrientationDriveSLERP = function(OwnerAddress, bEnableSLERP)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetOrientationDriveSLERP: Failed To Allocate The Params");return;end;
 bEnableSLERP = bEnableSLERP or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnableSLERP at +0x0
 writeByte(_params + 0x0, bEnableSLERP)
 UE.CallProcessEventEx(OwnerAddress, "SetOrientationDriveSLERP", _params);
 deAlloc(_params);
end
FNR("BL4.SetOrientationDriveSLERP");

BL4.SetOrientationDriveTwistAndSwing = function(OwnerAddress, bEnableTwistDrive, bEnableSwingDrive)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetOrientationDriveTwistAndSwing: Failed To Allocate The Params");return;end;
 bEnableTwistDrive = bEnableTwistDrive or false
 bEnableSwingDrive = bEnableSwingDrive or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnableTwistDrive at +0x0, bEnableSwingDrive at +0x1
 writeByte(_params + 0x0, bEnableTwistDrive)
 writeByte(_params + 0x1, bEnableSwingDrive)
 UE.CallProcessEventEx(OwnerAddress, "SetOrientationDriveTwistAndSwing", _params);
 deAlloc(_params);
end
FNR("BL4.SetOrientationDriveTwistAndSwing");

BL4.SetProjectionEnabled = function(OwnerAddress, bProjectionEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetProjectionEnabled: Failed To Allocate The Params");return;end;
 bProjectionEnabled = bProjectionEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bProjectionEnabled at +0x0
 writeByte(_params + 0x0, bProjectionEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetProjectionEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetProjectionEnabled");

BL4.SetProjectionParams = function(OwnerAddress, ProjectionLinearAlpha, ProjectionAngularAlpha, ProjectionLinearTolerance, ProjectionAngularTolerance)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetProjectionParams: Failed To Allocate The Params");return;end;
 ProjectionLinearAlpha = ProjectionLinearAlpha or 0
 ProjectionAngularAlpha = ProjectionAngularAlpha or 0
 ProjectionLinearTolerance = ProjectionLinearTolerance or 0
 ProjectionAngularTolerance = ProjectionAngularTolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ProjectionLinearAlpha at +0x0, ProjectionAngularAlpha at +0x4, ProjectionLinearTolerance at +0x8, ProjectionAngularTolerance at +0xC
 writeFloat(_params + 0x0, ProjectionLinearAlpha)
 writeFloat(_params + 0x4, ProjectionAngularAlpha)
 writeFloat(_params + 0x8, ProjectionLinearTolerance)
 writeFloat(_params + 0xC, ProjectionAngularTolerance)
 UE.CallProcessEventEx(OwnerAddress, "SetProjectionParams", _params);
 deAlloc(_params);
end
FNR("BL4.SetProjectionParams");

