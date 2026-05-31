BL4.CopyParams = function(OwnerAddress, Accessor, SourceAccessor, bKeepPosition, bKeepRotation)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CopyParams: Failed To Allocate The Params");return;end;
 bKeepPosition = bKeepPosition or false
 bKeepRotation = bKeepRotation or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, SourceAccessor at +0xC, bKeepPosition at +0x18, bKeepRotation at +0x19
 writeQword(_params + 0x0, Accessor)
 writeQword(_params + 0xC, SourceAccessor)
 writeByte(_params + 0x18, bKeepPosition)
 writeByte(_params + 0x19, bKeepRotation)
 UE.CallProcessEventEx(OwnerAddress, "CopyParams", _params);
 deAlloc(_params);
end
FNR("BL4.CopyParams");

BL4.GetAngularBreakable = function(OwnerAddress, Accessor, bAngularBreakable, AngularBreakThreshold)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAngularBreakable: Failed To Allocate The Params");return;end;
 bAngularBreakable = bAngularBreakable or false
 AngularBreakThreshold = AngularBreakThreshold or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, bAngularBreakable at +0xC, AngularBreakThreshold at +0x10
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, bAngularBreakable)
 writeFloat(_params + 0x10, AngularBreakThreshold)
 UE.CallProcessEventEx(OwnerAddress, "GetAngularBreakable", _params);
 deAlloc(_params);
end
FNR("BL4.GetAngularBreakable");

BL4.GetAngularDriveMode = function(OwnerAddress, Accessor, OutDriveMode)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAngularDriveMode: Failed To Allocate The Params");return;end;
 OutDriveMode = OutDriveMode or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, OutDriveMode at +0xC
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, OutDriveMode)
 UE.CallProcessEventEx(OwnerAddress, "GetAngularDriveMode", _params);
 deAlloc(_params);
end
FNR("BL4.GetAngularDriveMode");

BL4.GetAngularDriveParams = function(OwnerAddress, Accessor, OutPositionStrength, OutVelocityStrength, OutForceLimit)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAngularDriveParams: Failed To Allocate The Params");return;end;
 OutPositionStrength = OutPositionStrength or 0
 OutVelocityStrength = OutVelocityStrength or 0
 OutForceLimit = OutForceLimit or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, OutPositionStrength at +0xC, OutVelocityStrength at +0x10, OutForceLimit at +0x14
 writeQword(_params + 0x0, Accessor)
 writeFloat(_params + 0xC, OutPositionStrength)
 writeFloat(_params + 0x10, OutVelocityStrength)
 writeFloat(_params + 0x14, OutForceLimit)
 UE.CallProcessEventEx(OwnerAddress, "GetAngularDriveParams", _params);
 deAlloc(_params);
end
FNR("BL4.GetAngularDriveParams");

BL4.GetAngularLimits = function(OwnerAddress, Accessor, Swing1MotionType, Swing1LimitAngle, Swing2MotionType, Swing2LimitAngle, TwistMotionType, TwistLimitAngle)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAngularLimits: Failed To Allocate The Params");return;end;
 Swing1MotionType = Swing1MotionType or 0
 Swing1LimitAngle = Swing1LimitAngle or 0
 Swing2MotionType = Swing2MotionType or 0
 Swing2LimitAngle = Swing2LimitAngle or 0
 TwistMotionType = TwistMotionType or 0
 TwistLimitAngle = TwistLimitAngle or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, Swing1MotionType at +0xC, Swing1LimitAngle at +0x10, Swing2MotionType at +0x14, Swing2LimitAngle at +0x18, TwistMotionType at +0x1C, TwistLimitAngle at +0x20
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, Swing1MotionType)
 writeFloat(_params + 0x10, Swing1LimitAngle)
 writeByte(_params + 0x14, Swing2MotionType)
 writeFloat(_params + 0x18, Swing2LimitAngle)
 writeByte(_params + 0x1C, TwistMotionType)
 writeFloat(_params + 0x20, TwistLimitAngle)
 UE.CallProcessEventEx(OwnerAddress, "GetAngularLimits", _params);
 deAlloc(_params);
end
FNR("BL4.GetAngularLimits");

BL4.GetAngularOrientationTarget = function(OwnerAddress, Accessor, OutPosTarget)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAngularOrientationTarget: Failed To Allocate The Params");return;end;
 OutPosTarget = OutPosTarget or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, OutPosTarget at +0x10
 writeQword(_params + 0x0, Accessor)
 writeDouble(_params + 0x10, (OutPosTarget and OutPosTarget.Pitch) or 0)
 writeDouble(_params + 0x18, (OutPosTarget and OutPosTarget.Yaw) or 0)
 writeDouble(_params + 0x20, (OutPosTarget and OutPosTarget.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetAngularOrientationTarget", _params);
 deAlloc(_params);
end
FNR("BL4.GetAngularOrientationTarget");

BL4.GetAngularPlasticity = function(OwnerAddress, Accessor, bAngularPlasticity, AngularPlasticityThreshold)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAngularPlasticity: Failed To Allocate The Params");return;end;
 bAngularPlasticity = bAngularPlasticity or false
 AngularPlasticityThreshold = AngularPlasticityThreshold or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, bAngularPlasticity at +0xC, AngularPlasticityThreshold at +0x10
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, bAngularPlasticity)
 writeFloat(_params + 0x10, AngularPlasticityThreshold)
 UE.CallProcessEventEx(OwnerAddress, "GetAngularPlasticity", _params);
 deAlloc(_params);
end
FNR("BL4.GetAngularPlasticity");

BL4.GetAngularSoftSwingLimitParams = function(OwnerAddress, Accessor, bSoftSwingLimit, SwingLimitStiffness, SwingLimitDamping, SwingLimitRestitution, SwingLimitContactDistance)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAngularSoftSwingLimitParams: Failed To Allocate The Params");return;end;
 bSoftSwingLimit = bSoftSwingLimit or false
 SwingLimitStiffness = SwingLimitStiffness or 0
 SwingLimitDamping = SwingLimitDamping or 0
 SwingLimitRestitution = SwingLimitRestitution or 0
 SwingLimitContactDistance = SwingLimitContactDistance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, bSoftSwingLimit at +0xC, SwingLimitStiffness at +0x10, SwingLimitDamping at +0x14, SwingLimitRestitution at +0x18, SwingLimitContactDistance at +0x1C
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, bSoftSwingLimit)
 writeFloat(_params + 0x10, SwingLimitStiffness)
 writeFloat(_params + 0x14, SwingLimitDamping)
 writeFloat(_params + 0x18, SwingLimitRestitution)
 writeFloat(_params + 0x1C, SwingLimitContactDistance)
 UE.CallProcessEventEx(OwnerAddress, "GetAngularSoftSwingLimitParams", _params);
 deAlloc(_params);
end
FNR("BL4.GetAngularSoftSwingLimitParams");

BL4.GetAngularSoftTwistLimitParams = function(OwnerAddress, Accessor, bSoftTwistLimit, TwistLimitStiffness, TwistLimitDamping, TwistLimitRestitution, TwistLimitContactDistance)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAngularSoftTwistLimitParams: Failed To Allocate The Params");return;end;
 bSoftTwistLimit = bSoftTwistLimit or false
 TwistLimitStiffness = TwistLimitStiffness or 0
 TwistLimitDamping = TwistLimitDamping or 0
 TwistLimitRestitution = TwistLimitRestitution or 0
 TwistLimitContactDistance = TwistLimitContactDistance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, bSoftTwistLimit at +0xC, TwistLimitStiffness at +0x10, TwistLimitDamping at +0x14, TwistLimitRestitution at +0x18, TwistLimitContactDistance at +0x1C
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, bSoftTwistLimit)
 writeFloat(_params + 0x10, TwistLimitStiffness)
 writeFloat(_params + 0x14, TwistLimitDamping)
 writeFloat(_params + 0x18, TwistLimitRestitution)
 writeFloat(_params + 0x1C, TwistLimitContactDistance)
 UE.CallProcessEventEx(OwnerAddress, "GetAngularSoftTwistLimitParams", _params);
 deAlloc(_params);
end
FNR("BL4.GetAngularSoftTwistLimitParams");

BL4.GetAngularVelocityDriveSLERP = function(OwnerAddress, Accessor, bOutEnableSLERP)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAngularVelocityDriveSLERP: Failed To Allocate The Params");return;end;
 bOutEnableSLERP = bOutEnableSLERP or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, bOutEnableSLERP at +0xC
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, bOutEnableSLERP)
 UE.CallProcessEventEx(OwnerAddress, "GetAngularVelocityDriveSLERP", _params);
 deAlloc(_params);
end
FNR("BL4.GetAngularVelocityDriveSLERP");

BL4.GetAngularVelocityDriveTwistAndSwing = function(OwnerAddress, Accessor, bOutEnableTwistDrive, bOutEnableSwingDrive)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAngularVelocityDriveTwistAndSwing: Failed To Allocate The Params");return;end;
 bOutEnableTwistDrive = bOutEnableTwistDrive or false
 bOutEnableSwingDrive = bOutEnableSwingDrive or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, bOutEnableTwistDrive at +0xC, bOutEnableSwingDrive at +0xD
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, bOutEnableTwistDrive)
 writeByte(_params + 0xD, bOutEnableSwingDrive)
 UE.CallProcessEventEx(OwnerAddress, "GetAngularVelocityDriveTwistAndSwing", _params);
 deAlloc(_params);
end
FNR("BL4.GetAngularVelocityDriveTwistAndSwing");

BL4.GetAngularVelocityTarget = function(OwnerAddress, Accessor, OutVelTarget)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAngularVelocityTarget: Failed To Allocate The Params");return;end;
 OutVelTarget = OutVelTarget or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, OutVelTarget at +0x10
 writeQword(_params + 0x0, Accessor)
 writeDouble(_params + 0x10, (OutVelTarget and OutVelTarget.X) or 0)
 writeDouble(_params + 0x18, (OutVelTarget and OutVelTarget.Y) or 0)
 writeDouble(_params + 0x20, (OutVelTarget and OutVelTarget.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetAngularVelocityTarget", _params);
 deAlloc(_params);
end
FNR("BL4.GetAngularVelocityTarget");

BL4.GetAttachedBodyNames = function(OwnerAddress, Accessor, ParentBody, ChildBody)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAttachedBodyNames: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, ParentBody at +0xC, ChildBody at +0x14
 writeQword(_params + 0x0, Accessor)
 writeQword(_params + 0xC, ParentBody)
 writeQword(_params + 0x14, ChildBody)
 UE.CallProcessEventEx(OwnerAddress, "GetAttachedBodyNames", _params);
 deAlloc(_params);
end
FNR("BL4.GetAttachedBodyNames");

BL4.GetContactTransferScale = function(OwnerAddress, Accessor, ContactTransferScale)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetContactTransferScale: Failed To Allocate The Params");return;end;
 ContactTransferScale = ContactTransferScale or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, ContactTransferScale at +0xC
 writeQword(_params + 0x0, Accessor)
 writeFloat(_params + 0xC, ContactTransferScale)
 UE.CallProcessEventEx(OwnerAddress, "GetContactTransferScale", _params);
 deAlloc(_params);
end
FNR("BL4.GetContactTransferScale");

BL4.GetDisableCollsion = function(OwnerAddress, Accessor)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDisableCollsion: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0
 writeQword(_params + 0x0, Accessor)
 UE.CallProcessEventEx(OwnerAddress, "GetDisableCollsion", _params);
 local RET=readByte(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDisableCollsion");

BL4.GetLinearBreakable = function(OwnerAddress, Accessor, bLinearBreakable, LinearBreakThreshold)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLinearBreakable: Failed To Allocate The Params");return;end;
 bLinearBreakable = bLinearBreakable or false
 LinearBreakThreshold = LinearBreakThreshold or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, bLinearBreakable at +0xC, LinearBreakThreshold at +0x10
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, bLinearBreakable)
 writeFloat(_params + 0x10, LinearBreakThreshold)
 UE.CallProcessEventEx(OwnerAddress, "GetLinearBreakable", _params);
 deAlloc(_params);
end
FNR("BL4.GetLinearBreakable");

BL4.GetLinearDriveParams = function(OwnerAddress, Accessor, OutPositionStrength, OutVelocityStrength, OutForceLimit)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLinearDriveParams: Failed To Allocate The Params");return;end;
 OutPositionStrength = OutPositionStrength or 0
 OutVelocityStrength = OutVelocityStrength or 0
 OutForceLimit = OutForceLimit or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, OutPositionStrength at +0xC, OutVelocityStrength at +0x10, OutForceLimit at +0x14
 writeQword(_params + 0x0, Accessor)
 writeFloat(_params + 0xC, OutPositionStrength)
 writeFloat(_params + 0x10, OutVelocityStrength)
 writeFloat(_params + 0x14, OutForceLimit)
 UE.CallProcessEventEx(OwnerAddress, "GetLinearDriveParams", _params);
 deAlloc(_params);
end
FNR("BL4.GetLinearDriveParams");

BL4.GetLinearLimits = function(OwnerAddress, Accessor, XMotion, YMotion, ZMotion, limit)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLinearLimits: Failed To Allocate The Params");return;end;
 XMotion = XMotion or 0
 YMotion = YMotion or 0
 ZMotion = ZMotion or 0
 limit = limit or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, XMotion at +0xC, YMotion at +0xD, ZMotion at +0xE, limit at +0x10
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, XMotion)
 writeByte(_params + 0xD, YMotion)
 writeByte(_params + 0xE, ZMotion)
 writeFloat(_params + 0x10, limit)
 UE.CallProcessEventEx(OwnerAddress, "GetLinearLimits", _params);
 deAlloc(_params);
end
FNR("BL4.GetLinearLimits");

BL4.GetLinearPlasticity = function(OwnerAddress, Accessor, bLinearPlasticity, LinearPlasticityThreshold, PlasticityType)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLinearPlasticity: Failed To Allocate The Params");return;end;
 bLinearPlasticity = bLinearPlasticity or false
 LinearPlasticityThreshold = LinearPlasticityThreshold or 0
 PlasticityType = PlasticityType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, bLinearPlasticity at +0xC, LinearPlasticityThreshold at +0x10, PlasticityType at +0x14
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, bLinearPlasticity)
 writeFloat(_params + 0x10, LinearPlasticityThreshold)
 writeByte(_params + 0x14, PlasticityType)
 UE.CallProcessEventEx(OwnerAddress, "GetLinearPlasticity", _params);
 deAlloc(_params);
end
FNR("BL4.GetLinearPlasticity");

BL4.GetLinearPositionDrive = function(OwnerAddress, Accessor, bOutEnableDriveX, bOutEnableDriveY, bOutEnableDriveZ)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLinearPositionDrive: Failed To Allocate The Params");return;end;
 bOutEnableDriveX = bOutEnableDriveX or false
 bOutEnableDriveY = bOutEnableDriveY or false
 bOutEnableDriveZ = bOutEnableDriveZ or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, bOutEnableDriveX at +0xC, bOutEnableDriveY at +0xD, bOutEnableDriveZ at +0xE
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, bOutEnableDriveX)
 writeByte(_params + 0xD, bOutEnableDriveY)
 writeByte(_params + 0xE, bOutEnableDriveZ)
 UE.CallProcessEventEx(OwnerAddress, "GetLinearPositionDrive", _params);
 deAlloc(_params);
end
FNR("BL4.GetLinearPositionDrive");

BL4.GetLinearPositionTarget = function(OwnerAddress, Accessor, OutPosTarget)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLinearPositionTarget: Failed To Allocate The Params");return;end;
 OutPosTarget = OutPosTarget or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, OutPosTarget at +0x10
 writeQword(_params + 0x0, Accessor)
 writeDouble(_params + 0x10, (OutPosTarget and OutPosTarget.X) or 0)
 writeDouble(_params + 0x18, (OutPosTarget and OutPosTarget.Y) or 0)
 writeDouble(_params + 0x20, (OutPosTarget and OutPosTarget.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetLinearPositionTarget", _params);
 deAlloc(_params);
end
FNR("BL4.GetLinearPositionTarget");

BL4.GetLinearSoftLimitParams = function(OwnerAddress, Accessor, bSoftLinearLimit, LinearLimitStiffness, LinearLimitDamping, LinearLimitRestitution, LinearLimitContactDistance)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLinearSoftLimitParams: Failed To Allocate The Params");return;end;
 bSoftLinearLimit = bSoftLinearLimit or false
 LinearLimitStiffness = LinearLimitStiffness or 0
 LinearLimitDamping = LinearLimitDamping or 0
 LinearLimitRestitution = LinearLimitRestitution or 0
 LinearLimitContactDistance = LinearLimitContactDistance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, bSoftLinearLimit at +0xC, LinearLimitStiffness at +0x10, LinearLimitDamping at +0x14, LinearLimitRestitution at +0x18, LinearLimitContactDistance at +0x1C
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, bSoftLinearLimit)
 writeFloat(_params + 0x10, LinearLimitStiffness)
 writeFloat(_params + 0x14, LinearLimitDamping)
 writeFloat(_params + 0x18, LinearLimitRestitution)
 writeFloat(_params + 0x1C, LinearLimitContactDistance)
 UE.CallProcessEventEx(OwnerAddress, "GetLinearSoftLimitParams", _params);
 deAlloc(_params);
end
FNR("BL4.GetLinearSoftLimitParams");

BL4.GetLinearVelocityDrive = function(OwnerAddress, Accessor, bOutEnableDriveX, bOutEnableDriveY, bOutEnableDriveZ)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLinearVelocityDrive: Failed To Allocate The Params");return;end;
 bOutEnableDriveX = bOutEnableDriveX or false
 bOutEnableDriveY = bOutEnableDriveY or false
 bOutEnableDriveZ = bOutEnableDriveZ or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, bOutEnableDriveX at +0xC, bOutEnableDriveY at +0xD, bOutEnableDriveZ at +0xE
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, bOutEnableDriveX)
 writeByte(_params + 0xD, bOutEnableDriveY)
 writeByte(_params + 0xE, bOutEnableDriveZ)
 UE.CallProcessEventEx(OwnerAddress, "GetLinearVelocityDrive", _params);
 deAlloc(_params);
end
FNR("BL4.GetLinearVelocityDrive");

BL4.GetLinearVelocityTarget = function(OwnerAddress, Accessor, OutVelTarget)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLinearVelocityTarget: Failed To Allocate The Params");return;end;
 OutVelTarget = OutVelTarget or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, OutVelTarget at +0x10
 writeQword(_params + 0x0, Accessor)
 writeDouble(_params + 0x10, (OutVelTarget and OutVelTarget.X) or 0)
 writeDouble(_params + 0x18, (OutVelTarget and OutVelTarget.Y) or 0)
 writeDouble(_params + 0x20, (OutVelTarget and OutVelTarget.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetLinearVelocityTarget", _params);
 deAlloc(_params);
end
FNR("BL4.GetLinearVelocityTarget");

BL4.GetMassConditioningEnabled = function(OwnerAddress, Accessor)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMassConditioningEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0
 writeQword(_params + 0x0, Accessor)
 UE.CallProcessEventEx(OwnerAddress, "GetMassConditioningEnabled", _params);
 local RET=readByte(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMassConditioningEnabled");

BL4.GetOrientationDriveSLERP = function(OwnerAddress, Accessor, bOutEnableSLERP)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetOrientationDriveSLERP: Failed To Allocate The Params");return;end;
 bOutEnableSLERP = bOutEnableSLERP or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, bOutEnableSLERP at +0xC
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, bOutEnableSLERP)
 UE.CallProcessEventEx(OwnerAddress, "GetOrientationDriveSLERP", _params);
 deAlloc(_params);
end
FNR("BL4.GetOrientationDriveSLERP");

BL4.GetOrientationDriveTwistAndSwing = function(OwnerAddress, Accessor, bOutEnableTwistDrive, bOutEnableSwingDrive)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetOrientationDriveTwistAndSwing: Failed To Allocate The Params");return;end;
 bOutEnableTwistDrive = bOutEnableTwistDrive or false
 bOutEnableSwingDrive = bOutEnableSwingDrive or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, bOutEnableTwistDrive at +0xC, bOutEnableSwingDrive at +0xD
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, bOutEnableTwistDrive)
 writeByte(_params + 0xD, bOutEnableSwingDrive)
 UE.CallProcessEventEx(OwnerAddress, "GetOrientationDriveTwistAndSwing", _params);
 deAlloc(_params);
end
FNR("BL4.GetOrientationDriveTwistAndSwing");

BL4.GetParentDominates = function(OwnerAddress, Accessor)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetParentDominates: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0
 writeQword(_params + 0x0, Accessor)
 UE.CallProcessEventEx(OwnerAddress, "GetParentDominates", _params);
 local RET=readByte(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetParentDominates");

BL4.GetProjectionParams = function(OwnerAddress, Accessor, bEnableProjection, ProjectionLinearAlpha, ProjectionAngularAlpha)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetProjectionParams: Failed To Allocate The Params");return;end;
 bEnableProjection = bEnableProjection or false
 ProjectionLinearAlpha = ProjectionLinearAlpha or 0
 ProjectionAngularAlpha = ProjectionAngularAlpha or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, bEnableProjection at +0xC, ProjectionLinearAlpha at +0x10, ProjectionAngularAlpha at +0x14
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, bEnableProjection)
 writeFloat(_params + 0x10, ProjectionLinearAlpha)
 writeFloat(_params + 0x14, ProjectionAngularAlpha)
 UE.CallProcessEventEx(OwnerAddress, "GetProjectionParams", _params);
 deAlloc(_params);
end
FNR("BL4.GetProjectionParams");

BL4.SetAngularBreakable = function(OwnerAddress, Accessor, bAngularBreakable, AngularBreakThreshold)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAngularBreakable: Failed To Allocate The Params");return;end;
 bAngularBreakable = bAngularBreakable or false
 AngularBreakThreshold = AngularBreakThreshold or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, bAngularBreakable at +0xC, AngularBreakThreshold at +0x10
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, bAngularBreakable)
 writeFloat(_params + 0x10, AngularBreakThreshold)
 UE.CallProcessEventEx(OwnerAddress, "SetAngularBreakable", _params);
 deAlloc(_params);
end
FNR("BL4.SetAngularBreakable");

BL4.SetAngularDriveMode = function(OwnerAddress, Accessor, DriveMode)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAngularDriveMode: Failed To Allocate The Params");return;end;
 DriveMode = DriveMode or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, DriveMode at +0xC
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, DriveMode)
 UE.CallProcessEventEx(OwnerAddress, "SetAngularDriveMode", _params);
 deAlloc(_params);
end
FNR("BL4.SetAngularDriveMode");

BL4.SetAngularDriveParams = function(OwnerAddress, Accessor, PositionStrength, VelocityStrength, InForceLimit)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAngularDriveParams: Failed To Allocate The Params");return;end;
 PositionStrength = PositionStrength or 0
 VelocityStrength = VelocityStrength or 0
 InForceLimit = InForceLimit or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, PositionStrength at +0xC, VelocityStrength at +0x10, InForceLimit at +0x14
 writeQword(_params + 0x0, Accessor)
 writeFloat(_params + 0xC, PositionStrength)
 writeFloat(_params + 0x10, VelocityStrength)
 writeFloat(_params + 0x14, InForceLimit)
 UE.CallProcessEventEx(OwnerAddress, "SetAngularDriveParams", _params);
 deAlloc(_params);
end
FNR("BL4.SetAngularDriveParams");

BL4.SetAngularLimits = function(OwnerAddress, Accessor, Swing1MotionType, Swing1LimitAngle, Swing2MotionType, Swing2LimitAngle, TwistMotionType, TwistLimitAngle)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAngularLimits: Failed To Allocate The Params");return;end;
 Swing1MotionType = Swing1MotionType or 0
 Swing1LimitAngle = Swing1LimitAngle or 0
 Swing2MotionType = Swing2MotionType or 0
 Swing2LimitAngle = Swing2LimitAngle or 0
 TwistMotionType = TwistMotionType or 0
 TwistLimitAngle = TwistLimitAngle or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, Swing1MotionType at +0xC, Swing1LimitAngle at +0x10, Swing2MotionType at +0x14, Swing2LimitAngle at +0x18, TwistMotionType at +0x1C, TwistLimitAngle at +0x20
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, Swing1MotionType)
 writeFloat(_params + 0x10, Swing1LimitAngle)
 writeByte(_params + 0x14, Swing2MotionType)
 writeFloat(_params + 0x18, Swing2LimitAngle)
 writeByte(_params + 0x1C, TwistMotionType)
 writeFloat(_params + 0x20, TwistLimitAngle)
 UE.CallProcessEventEx(OwnerAddress, "SetAngularLimits", _params);
 deAlloc(_params);
end
FNR("BL4.SetAngularLimits");

BL4.SetAngularOrientationTarget = function(OwnerAddress, Accessor, InPosTarget)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAngularOrientationTarget: Failed To Allocate The Params");return;end;
 InPosTarget = InPosTarget or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, InPosTarget at +0x10
 writeQword(_params + 0x0, Accessor)
 writeDouble(_params + 0x10, (InPosTarget and InPosTarget.Pitch) or 0)
 writeDouble(_params + 0x18, (InPosTarget and InPosTarget.Yaw) or 0)
 writeDouble(_params + 0x20, (InPosTarget and InPosTarget.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetAngularOrientationTarget", _params);
 deAlloc(_params);
end
FNR("BL4.SetAngularOrientationTarget");

BL4.SetAngularPlasticity = function(OwnerAddress, Accessor, bAngularPlasticity, AngularPlasticityThreshold)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAngularPlasticity: Failed To Allocate The Params");return;end;
 bAngularPlasticity = bAngularPlasticity or false
 AngularPlasticityThreshold = AngularPlasticityThreshold or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, bAngularPlasticity at +0xC, AngularPlasticityThreshold at +0x10
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, bAngularPlasticity)
 writeFloat(_params + 0x10, AngularPlasticityThreshold)
 UE.CallProcessEventEx(OwnerAddress, "SetAngularPlasticity", _params);
 deAlloc(_params);
end
FNR("BL4.SetAngularPlasticity");

BL4.SetAngularSoftSwingLimitParams = function(OwnerAddress, Accessor, bSoftSwingLimit, SwingLimitStiffness, SwingLimitDamping, SwingLimitRestitution, SwingLimitContactDistance)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAngularSoftSwingLimitParams: Failed To Allocate The Params");return;end;
 bSoftSwingLimit = bSoftSwingLimit or false
 SwingLimitStiffness = SwingLimitStiffness or 0
 SwingLimitDamping = SwingLimitDamping or 0
 SwingLimitRestitution = SwingLimitRestitution or 0
 SwingLimitContactDistance = SwingLimitContactDistance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, bSoftSwingLimit at +0xC, SwingLimitStiffness at +0x10, SwingLimitDamping at +0x14, SwingLimitRestitution at +0x18, SwingLimitContactDistance at +0x1C
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, bSoftSwingLimit)
 writeFloat(_params + 0x10, SwingLimitStiffness)
 writeFloat(_params + 0x14, SwingLimitDamping)
 writeFloat(_params + 0x18, SwingLimitRestitution)
 writeFloat(_params + 0x1C, SwingLimitContactDistance)
 UE.CallProcessEventEx(OwnerAddress, "SetAngularSoftSwingLimitParams", _params);
 deAlloc(_params);
end
FNR("BL4.SetAngularSoftSwingLimitParams");

BL4.SetAngularSoftTwistLimitParams = function(OwnerAddress, Accessor, bSoftTwistLimit, TwistLimitStiffness, TwistLimitDamping, TwistLimitRestitution, TwistLimitContactDistance)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAngularSoftTwistLimitParams: Failed To Allocate The Params");return;end;
 bSoftTwistLimit = bSoftTwistLimit or false
 TwistLimitStiffness = TwistLimitStiffness or 0
 TwistLimitDamping = TwistLimitDamping or 0
 TwistLimitRestitution = TwistLimitRestitution or 0
 TwistLimitContactDistance = TwistLimitContactDistance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, bSoftTwistLimit at +0xC, TwistLimitStiffness at +0x10, TwistLimitDamping at +0x14, TwistLimitRestitution at +0x18, TwistLimitContactDistance at +0x1C
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, bSoftTwistLimit)
 writeFloat(_params + 0x10, TwistLimitStiffness)
 writeFloat(_params + 0x14, TwistLimitDamping)
 writeFloat(_params + 0x18, TwistLimitRestitution)
 writeFloat(_params + 0x1C, TwistLimitContactDistance)
 UE.CallProcessEventEx(OwnerAddress, "SetAngularSoftTwistLimitParams", _params);
 deAlloc(_params);
end
FNR("BL4.SetAngularSoftTwistLimitParams");

BL4.SetAngularVelocityDriveSLERP = function(OwnerAddress, Accessor, bEnableSLERP)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAngularVelocityDriveSLERP: Failed To Allocate The Params");return;end;
 bEnableSLERP = bEnableSLERP or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, bEnableSLERP at +0xC
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, bEnableSLERP)
 UE.CallProcessEventEx(OwnerAddress, "SetAngularVelocityDriveSLERP", _params);
 deAlloc(_params);
end
FNR("BL4.SetAngularVelocityDriveSLERP");

BL4.SetAngularVelocityDriveTwistAndSwing = function(OwnerAddress, Accessor, bEnableTwistDrive, bEnableSwingDrive)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAngularVelocityDriveTwistAndSwing: Failed To Allocate The Params");return;end;
 bEnableTwistDrive = bEnableTwistDrive or false
 bEnableSwingDrive = bEnableSwingDrive or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, bEnableTwistDrive at +0xC, bEnableSwingDrive at +0xD
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, bEnableTwistDrive)
 writeByte(_params + 0xD, bEnableSwingDrive)
 UE.CallProcessEventEx(OwnerAddress, "SetAngularVelocityDriveTwistAndSwing", _params);
 deAlloc(_params);
end
FNR("BL4.SetAngularVelocityDriveTwistAndSwing");

BL4.SetAngularVelocityTarget = function(OwnerAddress, Accessor, InVelTarget)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAngularVelocityTarget: Failed To Allocate The Params");return;end;
 InVelTarget = InVelTarget or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, InVelTarget at +0x10
 writeQword(_params + 0x0, Accessor)
 writeDouble(_params + 0x10, (InVelTarget and InVelTarget.X) or 0)
 writeDouble(_params + 0x18, (InVelTarget and InVelTarget.Y) or 0)
 writeDouble(_params + 0x20, (InVelTarget and InVelTarget.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetAngularVelocityTarget", _params);
 deAlloc(_params);
end
FNR("BL4.SetAngularVelocityTarget");

BL4.SetContactTransferScale = function(OwnerAddress, Accessor, ContactTransferScale)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetContactTransferScale: Failed To Allocate The Params");return;end;
 ContactTransferScale = ContactTransferScale or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, ContactTransferScale at +0xC
 writeQword(_params + 0x0, Accessor)
 writeFloat(_params + 0xC, ContactTransferScale)
 UE.CallProcessEventEx(OwnerAddress, "SetContactTransferScale", _params);
 deAlloc(_params);
end
FNR("BL4.SetContactTransferScale");

BL4.SetDisableCollision = function(OwnerAddress, Accessor, bDisableCollision)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDisableCollision: Failed To Allocate The Params");return;end;
 bDisableCollision = bDisableCollision or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, bDisableCollision at +0xC
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, bDisableCollision)
 UE.CallProcessEventEx(OwnerAddress, "SetDisableCollision", _params);
 deAlloc(_params);
end
FNR("BL4.SetDisableCollision");

BL4.SetLinearBreakable = function(OwnerAddress, Accessor, bLinearBreakable, LinearBreakThreshold)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLinearBreakable: Failed To Allocate The Params");return;end;
 bLinearBreakable = bLinearBreakable or false
 LinearBreakThreshold = LinearBreakThreshold or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, bLinearBreakable at +0xC, LinearBreakThreshold at +0x10
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, bLinearBreakable)
 writeFloat(_params + 0x10, LinearBreakThreshold)
 UE.CallProcessEventEx(OwnerAddress, "SetLinearBreakable", _params);
 deAlloc(_params);
end
FNR("BL4.SetLinearBreakable");

BL4.SetLinearDriveParams = function(OwnerAddress, Accessor, PositionStrength, VelocityStrength, InForceLimit)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLinearDriveParams: Failed To Allocate The Params");return;end;
 PositionStrength = PositionStrength or 0
 VelocityStrength = VelocityStrength or 0
 InForceLimit = InForceLimit or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, PositionStrength at +0xC, VelocityStrength at +0x10, InForceLimit at +0x14
 writeQword(_params + 0x0, Accessor)
 writeFloat(_params + 0xC, PositionStrength)
 writeFloat(_params + 0x10, VelocityStrength)
 writeFloat(_params + 0x14, InForceLimit)
 UE.CallProcessEventEx(OwnerAddress, "SetLinearDriveParams", _params);
 deAlloc(_params);
end
FNR("BL4.SetLinearDriveParams");

BL4.SetLinearLimits = function(OwnerAddress, Accessor, XMotion, YMotion, ZMotion, limit)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLinearLimits: Failed To Allocate The Params");return;end;
 XMotion = XMotion or 0
 YMotion = YMotion or 0
 ZMotion = ZMotion or 0
 limit = limit or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, XMotion at +0xC, YMotion at +0xD, ZMotion at +0xE, limit at +0x10
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, XMotion)
 writeByte(_params + 0xD, YMotion)
 writeByte(_params + 0xE, ZMotion)
 writeFloat(_params + 0x10, limit)
 UE.CallProcessEventEx(OwnerAddress, "SetLinearLimits", _params);
 deAlloc(_params);
end
FNR("BL4.SetLinearLimits");

BL4.SetLinearPlasticity = function(OwnerAddress, Accessor, bLinearPlasticity, LinearPlasticityThreshold, PlasticityType)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLinearPlasticity: Failed To Allocate The Params");return;end;
 bLinearPlasticity = bLinearPlasticity or false
 LinearPlasticityThreshold = LinearPlasticityThreshold or 0
 PlasticityType = PlasticityType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, bLinearPlasticity at +0xC, LinearPlasticityThreshold at +0x10, PlasticityType at +0x14
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, bLinearPlasticity)
 writeFloat(_params + 0x10, LinearPlasticityThreshold)
 writeByte(_params + 0x14, PlasticityType)
 UE.CallProcessEventEx(OwnerAddress, "SetLinearPlasticity", _params);
 deAlloc(_params);
end
FNR("BL4.SetLinearPlasticity");

BL4.SetLinearPositionDrive = function(OwnerAddress, Accessor, bEnableDriveX, bEnableDriveY, bEnableDriveZ)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLinearPositionDrive: Failed To Allocate The Params");return;end;
 bEnableDriveX = bEnableDriveX or false
 bEnableDriveY = bEnableDriveY or false
 bEnableDriveZ = bEnableDriveZ or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, bEnableDriveX at +0xC, bEnableDriveY at +0xD, bEnableDriveZ at +0xE
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, bEnableDriveX)
 writeByte(_params + 0xD, bEnableDriveY)
 writeByte(_params + 0xE, bEnableDriveZ)
 UE.CallProcessEventEx(OwnerAddress, "SetLinearPositionDrive", _params);
 deAlloc(_params);
end
FNR("BL4.SetLinearPositionDrive");

BL4.SetLinearPositionTarget = function(OwnerAddress, Accessor, InPosTarget)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLinearPositionTarget: Failed To Allocate The Params");return;end;
 InPosTarget = InPosTarget or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, InPosTarget at +0x10
 writeQword(_params + 0x0, Accessor)
 writeDouble(_params + 0x10, (InPosTarget and InPosTarget.X) or 0)
 writeDouble(_params + 0x18, (InPosTarget and InPosTarget.Y) or 0)
 writeDouble(_params + 0x20, (InPosTarget and InPosTarget.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetLinearPositionTarget", _params);
 deAlloc(_params);
end
FNR("BL4.SetLinearPositionTarget");

BL4.SetLinearSoftLimitParams = function(OwnerAddress, Accessor, bSoftLinearLimit, LinearLimitStiffness, LinearLimitDamping, LinearLimitRestitution, LinearLimitContactDistance)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLinearSoftLimitParams: Failed To Allocate The Params");return;end;
 bSoftLinearLimit = bSoftLinearLimit or false
 LinearLimitStiffness = LinearLimitStiffness or 0
 LinearLimitDamping = LinearLimitDamping or 0
 LinearLimitRestitution = LinearLimitRestitution or 0
 LinearLimitContactDistance = LinearLimitContactDistance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, bSoftLinearLimit at +0xC, LinearLimitStiffness at +0x10, LinearLimitDamping at +0x14, LinearLimitRestitution at +0x18, LinearLimitContactDistance at +0x1C
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, bSoftLinearLimit)
 writeFloat(_params + 0x10, LinearLimitStiffness)
 writeFloat(_params + 0x14, LinearLimitDamping)
 writeFloat(_params + 0x18, LinearLimitRestitution)
 writeFloat(_params + 0x1C, LinearLimitContactDistance)
 UE.CallProcessEventEx(OwnerAddress, "SetLinearSoftLimitParams", _params);
 deAlloc(_params);
end
FNR("BL4.SetLinearSoftLimitParams");

BL4.SetLinearVelocityDrive = function(OwnerAddress, Accessor, bEnableDriveX, bEnableDriveY, bEnableDriveZ)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLinearVelocityDrive: Failed To Allocate The Params");return;end;
 bEnableDriveX = bEnableDriveX or false
 bEnableDriveY = bEnableDriveY or false
 bEnableDriveZ = bEnableDriveZ or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, bEnableDriveX at +0xC, bEnableDriveY at +0xD, bEnableDriveZ at +0xE
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, bEnableDriveX)
 writeByte(_params + 0xD, bEnableDriveY)
 writeByte(_params + 0xE, bEnableDriveZ)
 UE.CallProcessEventEx(OwnerAddress, "SetLinearVelocityDrive", _params);
 deAlloc(_params);
end
FNR("BL4.SetLinearVelocityDrive");

BL4.SetLinearVelocityTarget = function(OwnerAddress, Accessor, InVelTarget)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLinearVelocityTarget: Failed To Allocate The Params");return;end;
 InVelTarget = InVelTarget or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, InVelTarget at +0x10
 writeQword(_params + 0x0, Accessor)
 writeDouble(_params + 0x10, (InVelTarget and InVelTarget.X) or 0)
 writeDouble(_params + 0x18, (InVelTarget and InVelTarget.Y) or 0)
 writeDouble(_params + 0x20, (InVelTarget and InVelTarget.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetLinearVelocityTarget", _params);
 deAlloc(_params);
end
FNR("BL4.SetLinearVelocityTarget");

BL4.SetMassConditioningEnabled = function(OwnerAddress, Accessor, bEnableMassConditioning)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMassConditioningEnabled: Failed To Allocate The Params");return;end;
 bEnableMassConditioning = bEnableMassConditioning or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, bEnableMassConditioning at +0xC
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, bEnableMassConditioning)
 UE.CallProcessEventEx(OwnerAddress, "SetMassConditioningEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetMassConditioningEnabled");

BL4.SetOrientationDriveSLERP = function(OwnerAddress, Accessor, bEnableSLERP)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetOrientationDriveSLERP: Failed To Allocate The Params");return;end;
 bEnableSLERP = bEnableSLERP or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, bEnableSLERP at +0xC
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, bEnableSLERP)
 UE.CallProcessEventEx(OwnerAddress, "SetOrientationDriveSLERP", _params);
 deAlloc(_params);
end
FNR("BL4.SetOrientationDriveSLERP");

BL4.SetOrientationDriveTwistAndSwing = function(OwnerAddress, Accessor, bEnableTwistDrive, bEnableSwingDrive)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetOrientationDriveTwistAndSwing: Failed To Allocate The Params");return;end;
 bEnableTwistDrive = bEnableTwistDrive or false
 bEnableSwingDrive = bEnableSwingDrive or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, bEnableTwistDrive at +0xC, bEnableSwingDrive at +0xD
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, bEnableTwistDrive)
 writeByte(_params + 0xD, bEnableSwingDrive)
 UE.CallProcessEventEx(OwnerAddress, "SetOrientationDriveTwistAndSwing", _params);
 deAlloc(_params);
end
FNR("BL4.SetOrientationDriveTwistAndSwing");

BL4.SetParentDominates = function(OwnerAddress, Accessor, bParentDominates)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetParentDominates: Failed To Allocate The Params");return;end;
 bParentDominates = bParentDominates or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, bParentDominates at +0xC
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, bParentDominates)
 UE.CallProcessEventEx(OwnerAddress, "SetParentDominates", _params);
 deAlloc(_params);
end
FNR("BL4.SetParentDominates");

BL4.SetProjectionParams = function(OwnerAddress, Accessor, bEnableProjection, ProjectionLinearAlpha, ProjectionAngularAlpha)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetProjectionParams: Failed To Allocate The Params");return;end;
 bEnableProjection = bEnableProjection or false
 ProjectionLinearAlpha = ProjectionLinearAlpha or 0
 ProjectionAngularAlpha = ProjectionAngularAlpha or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Accessor at +0x0, bEnableProjection at +0xC, ProjectionLinearAlpha at +0x10, ProjectionAngularAlpha at +0x14
 writeQword(_params + 0x0, Accessor)
 writeByte(_params + 0xC, bEnableProjection)
 writeFloat(_params + 0x10, ProjectionLinearAlpha)
 writeFloat(_params + 0x14, ProjectionAngularAlpha)
 UE.CallProcessEventEx(OwnerAddress, "SetProjectionParams", _params);
 deAlloc(_params);
end
FNR("BL4.SetProjectionParams");

