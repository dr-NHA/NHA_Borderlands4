BL4.AccumulateAllBodiesBelowPhysicsBlendWeight = function(OwnerAddress, InBoneName, AddPhysicsBlendWeight, bSkipCustomPhysicsType)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AccumulateAllBodiesBelowPhysicsBlendWeight: Failed To Allocate The Params");return;end;
 AddPhysicsBlendWeight = AddPhysicsBlendWeight or 0
 bSkipCustomPhysicsType = bSkipCustomPhysicsType or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InBoneName at +0x0, AddPhysicsBlendWeight at +0x8, bSkipCustomPhysicsType at +0xC
 writeQword(_params + 0x0, InBoneName)
 writeFloat(_params + 0x8, AddPhysicsBlendWeight)
 writeByte(_params + 0xC, bSkipCustomPhysicsType)
 UE.CallProcessEventEx(OwnerAddress, "AccumulateAllBodiesBelowPhysicsBlendWeight", _params);
 deAlloc(_params);
end
FNR("BL4.AccumulateAllBodiesBelowPhysicsBlendWeight");

BL4.AddClothCollisionSource = function(InSourceComponent_SkeletalMeshComponent, InSourcePhysicsAsset_PhysicsAsset)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddClothCollisionSource: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSourceComponent at +0x0, InSourcePhysicsAsset at +0x8
 writeQword(_params + 0x0, InSourceComponent_SkeletalMeshComponent)
 writeQword(_params + 0x8, InSourcePhysicsAsset_PhysicsAsset)
 UE.CallProcessEventEx(InSourceComponent_SkeletalMeshComponent, "AddClothCollisionSource", _params);
 deAlloc(_params);
end
FNR("BL4.AddClothCollisionSource");

BL4.AddForceToAllBodiesBelow = function(OwnerAddress, force, BoneName, bAccelChange, bIncludeSelf)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddForceToAllBodiesBelow: Failed To Allocate The Params");return;end;
 force = force or {X=0,Y=0,Z=0}
 bAccelChange = bAccelChange or false
 bIncludeSelf = bIncludeSelf or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: force at +0x0, BoneName at +0x18, bAccelChange at +0x20, bIncludeSelf at +0x21
 writeDouble(_params + 0x0, (force and force.X) or 0)
 writeDouble(_params + 0x8, (force and force.Y) or 0)
 writeDouble(_params + 0x10, (force and force.Z) or 0)
 writeQword(_params + 0x18, BoneName)
 writeByte(_params + 0x20, bAccelChange)
 writeByte(_params + 0x21, bIncludeSelf)
 UE.CallProcessEventEx(OwnerAddress, "AddForceToAllBodiesBelow", _params);
 deAlloc(_params);
end
FNR("BL4.AddForceToAllBodiesBelow");

BL4.AddImpulseToAllBodiesBelow = function(OwnerAddress, Impulse, BoneName, bVelChange, bIncludeSelf)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddImpulseToAllBodiesBelow: Failed To Allocate The Params");return;end;
 Impulse = Impulse or {X=0,Y=0,Z=0}
 bVelChange = bVelChange or false
 bIncludeSelf = bIncludeSelf or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Impulse at +0x0, BoneName at +0x18, bVelChange at +0x20, bIncludeSelf at +0x21
 writeDouble(_params + 0x0, (Impulse and Impulse.X) or 0)
 writeDouble(_params + 0x8, (Impulse and Impulse.Y) or 0)
 writeDouble(_params + 0x10, (Impulse and Impulse.Z) or 0)
 writeQword(_params + 0x18, BoneName)
 writeByte(_params + 0x20, bVelChange)
 writeByte(_params + 0x21, bIncludeSelf)
 UE.CallProcessEventEx(OwnerAddress, "AddImpulseToAllBodiesBelow", _params);
 deAlloc(_params);
end
FNR("BL4.AddImpulseToAllBodiesBelow");

BL4.AllowAnimCurveEvaluation = function(OwnerAddress, NameOfCurve, bAllow)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AllowAnimCurveEvaluation: Failed To Allocate The Params");return;end;
 bAllow = bAllow or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NameOfCurve at +0x0, bAllow at +0x8
 writeQword(_params + 0x0, NameOfCurve)
 writeByte(_params + 0x8, bAllow)
 UE.CallProcessEventEx(OwnerAddress, "AllowAnimCurveEvaluation", _params);
 deAlloc(_params);
end
FNR("BL4.AllowAnimCurveEvaluation");

BL4.BreakConstraint = function(OwnerAddress, Impulse, HitLocation, InBoneName)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakConstraint: Failed To Allocate The Params");return;end;
 Impulse = Impulse or {X=0,Y=0,Z=0}
 HitLocation = HitLocation or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Impulse at +0x0, HitLocation at +0x18, InBoneName at +0x30
 writeDouble(_params + 0x0, (Impulse and Impulse.X) or 0)
 writeDouble(_params + 0x8, (Impulse and Impulse.Y) or 0)
 writeDouble(_params + 0x10, (Impulse and Impulse.Z) or 0)
 writeDouble(_params + 0x18, (HitLocation and HitLocation.X) or 0)
 writeDouble(_params + 0x20, (HitLocation and HitLocation.Y) or 0)
 writeDouble(_params + 0x28, (HitLocation and HitLocation.Z) or 0)
 writeQword(_params + 0x30, InBoneName)
 UE.CallProcessEventEx(OwnerAddress, "BreakConstraint", _params);
 deAlloc(_params);
end
FNR("BL4.BreakConstraint");

BL4.FindConstraintBoneName = function(OwnerAddress, ConstraintIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindConstraintBoneName: Failed To Allocate The Params");return;end;
 ConstraintIndex = ConstraintIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ConstraintIndex at +0x0
 writeInteger(_params + 0x0, ConstraintIndex)
 UE.CallProcessEventEx(OwnerAddress, "FindConstraintBoneName", _params);
 local RET=readQword(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindConstraintBoneName");

BL4.GetAllowClothActors = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAllowClothActors: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAllowClothActors", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAllowClothActors");

BL4.GetAllowedAnimCurveEvaluate = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAllowedAnimCurveEvaluate: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAllowedAnimCurveEvaluate", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAllowedAnimCurveEvaluate");

BL4.GetAllowRigidBodyAnimNode = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAllowRigidBodyAnimNode: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAllowRigidBodyAnimNode", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAllowRigidBodyAnimNode");

BL4.GetAnimationMode = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAnimationMode: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAnimationMode", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAnimationMode");

BL4.GetAnimClass = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAnimClass: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAnimClass", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAnimClass");

BL4.GetAnimInstance = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAnimInstance: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAnimInstance", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAnimInstance");

BL4.GetBoneLinearVelocity = function(OwnerAddress, InBoneName)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBoneLinearVelocity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InBoneName at +0x0
 writeQword(_params + 0x0, InBoneName)
 UE.CallProcessEventEx(OwnerAddress, "GetBoneLinearVelocity", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBoneLinearVelocity");

BL4.GetBoneMass = function(OwnerAddress, BoneName, bScaleMass)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBoneMass: Failed To Allocate The Params");return;end;
 bScaleMass = bScaleMass or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0, bScaleMass at +0x8
 writeQword(_params + 0x0, BoneName)
 writeByte(_params + 0x8, bScaleMass)
 UE.CallProcessEventEx(OwnerAddress, "GetBoneMass", _params);
 local RET=readFloat(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBoneMass");

BL4.GetClothingSimulationInteractor = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetClothingSimulationInteractor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetClothingSimulationInteractor", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetClothingSimulationInteractor");

BL4.GetClothMaxDistanceScale = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetClothMaxDistanceScale: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetClothMaxDistanceScale", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetClothMaxDistanceScale");

BL4.GetConstraintByName = function(OwnerAddress, ConstraintName, bIncludesTerminated)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetConstraintByName: Failed To Allocate The Params");return;end;
 bIncludesTerminated = bIncludesTerminated or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ConstraintName at +0x0, bIncludesTerminated at +0x8
 writeQword(_params + 0x0, ConstraintName)
 writeByte(_params + 0x8, bIncludesTerminated)
 UE.CallProcessEventEx(OwnerAddress, "GetConstraintByName", _params);
 local RET=readQword(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetConstraintByName");

BL4.GetConstraints = function(OwnerAddress, bIncludesTerminated, OutConstraints)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetConstraints: Failed To Allocate The Params");return;end;
 bIncludesTerminated = bIncludesTerminated or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bIncludesTerminated at +0x0, OutConstraints at +0x8
 writeByte(_params + 0x0, bIncludesTerminated)
 writeQword(_params + 0x8, OutConstraints)
 UE.CallProcessEventEx(OwnerAddress, "GetConstraints", _params);
 deAlloc(_params);
end
FNR("BL4.GetConstraints");

BL4.GetConstraintsFromBody = function(OwnerAddress, BodyName, bParentConstraints, bChildConstraints, bIncludesTerminated, OutConstraints)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetConstraintsFromBody: Failed To Allocate The Params");return;end;
 bParentConstraints = bParentConstraints or false
 bChildConstraints = bChildConstraints or false
 bIncludesTerminated = bIncludesTerminated or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BodyName at +0x0, bParentConstraints at +0x8, bChildConstraints at +0x9, bIncludesTerminated at +0xA, OutConstraints at +0x10
 writeQword(_params + 0x0, BodyName)
 writeByte(_params + 0x8, bParentConstraints)
 writeByte(_params + 0x9, bChildConstraints)
 writeByte(_params + 0xA, bIncludesTerminated)
 writeQword(_params + 0x10, OutConstraints)
 UE.CallProcessEventEx(OwnerAddress, "GetConstraintsFromBody", _params);
 deAlloc(_params);
end
FNR("BL4.GetConstraintsFromBody");

BL4.GetCurrentJointAngles = function(OwnerAddress, InBoneName, Swing1Angle, TwistAngle, Swing2Angle)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCurrentJointAngles: Failed To Allocate The Params");return;end;
 Swing1Angle = Swing1Angle or 0
 TwistAngle = TwistAngle or 0
 Swing2Angle = Swing2Angle or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InBoneName at +0x0, Swing1Angle at +0x8, TwistAngle at +0xC, Swing2Angle at +0x10
 writeQword(_params + 0x0, InBoneName)
 writeFloat(_params + 0x8, Swing1Angle)
 writeFloat(_params + 0xC, TwistAngle)
 writeFloat(_params + 0x10, Swing2Angle)
 UE.CallProcessEventEx(OwnerAddress, "GetCurrentJointAngles", _params);
 deAlloc(_params);
end
FNR("BL4.GetCurrentJointAngles");

BL4.GetDisableAnimCurves = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDisableAnimCurves: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetDisableAnimCurves", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDisableAnimCurves");

BL4.GetDisablePostProcessBlueprint = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDisablePostProcessBlueprint: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetDisablePostProcessBlueprint", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDisablePostProcessBlueprint");

BL4.GetFloatAttribute = function(OwnerAddress, BoneName, AttributeName, DefaultValue, OutValue, LookupType)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetFloatAttribute: Failed To Allocate The Params");return;end;
 DefaultValue = DefaultValue or 0
 OutValue = OutValue or 0
 LookupType = LookupType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0, AttributeName at +0x8, DefaultValue at +0x10, OutValue at +0x14, LookupType at +0x18
 writeQword(_params + 0x0, BoneName)
 writeQword(_params + 0x8, AttributeName)
 writeFloat(_params + 0x10, DefaultValue)
 writeFloat(_params + 0x14, OutValue)
 writeByte(_params + 0x18, LookupType)
 UE.CallProcessEventEx(OwnerAddress, "GetFloatAttribute", _params);
 local RET=readByte(_params + 0x19);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetFloatAttribute");

BL4.GetFloatAttribute_Ref = function(OwnerAddress, BoneName, AttributeName, OutValue, LookupType)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetFloatAttribute_Ref: Failed To Allocate The Params");return;end;
 OutValue = OutValue or 0
 LookupType = LookupType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0, AttributeName at +0x8, OutValue at +0x10, LookupType at +0x14
 writeQword(_params + 0x0, BoneName)
 writeQword(_params + 0x8, AttributeName)
 writeFloat(_params + 0x10, OutValue)
 writeByte(_params + 0x14, LookupType)
 UE.CallProcessEventEx(OwnerAddress, "GetFloatAttribute_Ref", _params);
 local RET=readByte(_params + 0x15);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetFloatAttribute_Ref");

BL4.GetIntegerAttribute = function(OwnerAddress, BoneName, AttributeName, DefaultValue, OutValue, LookupType)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetIntegerAttribute: Failed To Allocate The Params");return;end;
 DefaultValue = DefaultValue or 0
 OutValue = OutValue or 0
 LookupType = LookupType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0, AttributeName at +0x8, DefaultValue at +0x10, OutValue at +0x14, LookupType at +0x18
 writeQword(_params + 0x0, BoneName)
 writeQword(_params + 0x8, AttributeName)
 writeInteger(_params + 0x10, DefaultValue)
 writeInteger(_params + 0x14, OutValue)
 writeByte(_params + 0x18, LookupType)
 UE.CallProcessEventEx(OwnerAddress, "GetIntegerAttribute", _params);
 local RET=readByte(_params + 0x19);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetIntegerAttribute");

BL4.GetIntegerAttribute_Ref = function(OwnerAddress, BoneName, AttributeName, OutValue, LookupType)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetIntegerAttribute_Ref: Failed To Allocate The Params");return;end;
 OutValue = OutValue or 0
 LookupType = LookupType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0, AttributeName at +0x8, OutValue at +0x10, LookupType at +0x14
 writeQword(_params + 0x0, BoneName)
 writeQword(_params + 0x8, AttributeName)
 writeInteger(_params + 0x10, OutValue)
 writeByte(_params + 0x14, LookupType)
 UE.CallProcessEventEx(OwnerAddress, "GetIntegerAttribute_Ref", _params);
 local RET=readByte(_params + 0x15);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetIntegerAttribute_Ref");

BL4.GetLinkedAnimGraphInstanceByTag = function(OwnerAddress, InTag)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLinkedAnimGraphInstanceByTag: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InTag at +0x0
 writeQword(_params + 0x0, InTag)
 UE.CallProcessEventEx(OwnerAddress, "GetLinkedAnimGraphInstanceByTag", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLinkedAnimGraphInstanceByTag");

BL4.GetLinkedAnimGraphInstancesByTag = function(OwnerAddress, InTag, OutLinkedInstances)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLinkedAnimGraphInstancesByTag: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InTag at +0x0, OutLinkedInstances at +0x8
 writeQword(_params + 0x0, InTag)
 writeQword(_params + 0x8, OutLinkedInstances)
 UE.CallProcessEventEx(OwnerAddress, "GetLinkedAnimGraphInstancesByTag", _params);
 deAlloc(_params);
end
FNR("BL4.GetLinkedAnimGraphInstancesByTag");

BL4.GetLinkedAnimLayerInstanceByClass = function(InClass_Class)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLinkedAnimLayerInstanceByClass: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InClass at +0x0
 writeQword(_params + 0x0, InClass_Class)
 UE.CallProcessEventEx(InClass_Class, "GetLinkedAnimLayerInstanceByClass", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLinkedAnimLayerInstanceByClass");

BL4.GetLinkedAnimLayerInstanceByGroup = function(OwnerAddress, InGroup)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLinkedAnimLayerInstanceByGroup: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InGroup at +0x0
 writeQword(_params + 0x0, InGroup)
 UE.CallProcessEventEx(OwnerAddress, "GetLinkedAnimLayerInstanceByGroup", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLinkedAnimLayerInstanceByGroup");

BL4.GetMorphTarget = function(OwnerAddress, MorphTargetName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMorphTarget: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MorphTargetName at +0x0
 writeQword(_params + 0x0, MorphTargetName)
 UE.CallProcessEventEx(OwnerAddress, "GetMorphTarget", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMorphTarget");

BL4.GetPlayRate = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPlayRate: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetPlayRate", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPlayRate");

BL4.GetPosition = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPosition: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetPosition", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPosition");

BL4.GetPostProcessInstance = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPostProcessInstance: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetPostProcessInstance", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPostProcessInstance");

BL4.GetSkeletalCenterOfMass = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSkeletalCenterOfMass: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetSkeletalCenterOfMass", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8),Z=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSkeletalCenterOfMass");

BL4.GetSkeletalMeshAsset = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSkeletalMeshAsset: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetSkeletalMeshAsset", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSkeletalMeshAsset");

BL4.GetStringAttribute = function(OwnerAddress, BoneName, AttributeName, DefaultValue, OutValue, LookupType)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetStringAttribute: Failed To Allocate The Params");return;end;
 LookupType = LookupType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0, AttributeName at +0x8, DefaultValue at +0x10, OutValue at +0x20, LookupType at +0x30
 writeQword(_params + 0x0, BoneName)
 writeQword(_params + 0x8, AttributeName)
 writeQword(_params + 0x10, DefaultValue)
 writeQword(_params + 0x20, OutValue)
 writeByte(_params + 0x30, LookupType)
 UE.CallProcessEventEx(OwnerAddress, "GetStringAttribute", _params);
 local RET=readByte(_params + 0x31);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetStringAttribute");

BL4.GetStringAttribute_Ref = function(OwnerAddress, BoneName, AttributeName, OutValue, LookupType)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetStringAttribute_Ref: Failed To Allocate The Params");return;end;
 LookupType = LookupType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0, AttributeName at +0x8, OutValue at +0x10, LookupType at +0x20
 writeQword(_params + 0x0, BoneName)
 writeQword(_params + 0x8, AttributeName)
 writeQword(_params + 0x10, OutValue)
 writeByte(_params + 0x20, LookupType)
 UE.CallProcessEventEx(OwnerAddress, "GetStringAttribute_Ref", _params);
 local RET=readByte(_params + 0x21);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetStringAttribute_Ref");

BL4.GetTeleportDistanceThreshold = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTeleportDistanceThreshold: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetTeleportDistanceThreshold", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTeleportDistanceThreshold");

BL4.GetTeleportRotationThreshold = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTeleportRotationThreshold: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetTeleportRotationThreshold", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTeleportRotationThreshold");

BL4.GetTransformAttribute = function(OwnerAddress, BoneName, AttributeName, DefaultValue, OutValue, LookupType)
 local _paramsSize = 0xD8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTransformAttribute: Failed To Allocate The Params");return;end;
 LookupType = LookupType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0, AttributeName at +0x8, DefaultValue at +0x10, OutValue at +0x70, LookupType at +0xD0
 writeQword(_params + 0x0, BoneName)
 writeQword(_params + 0x8, AttributeName)
 writeQword(_params + 0x10, DefaultValue)
 writeQword(_params + 0x70, OutValue)
 writeByte(_params + 0xD0, LookupType)
 UE.CallProcessEventEx(OwnerAddress, "GetTransformAttribute", _params);
 local RET=readByte(_params + 0xD1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTransformAttribute");

BL4.GetTransformAttribute_Ref = function(OwnerAddress, BoneName, AttributeName, OutValue, LookupType)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTransformAttribute_Ref: Failed To Allocate The Params");return;end;
 LookupType = LookupType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0, AttributeName at +0x8, OutValue at +0x10, LookupType at +0x70
 writeQword(_params + 0x0, BoneName)
 writeQword(_params + 0x8, AttributeName)
 writeQword(_params + 0x10, OutValue)
 writeByte(_params + 0x70, LookupType)
 UE.CallProcessEventEx(OwnerAddress, "GetTransformAttribute_Ref", _params);
 local RET=readByte(_params + 0x71);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTransformAttribute_Ref");

BL4.HasValidAnimationInstance = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.HasValidAnimationInstance: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "HasValidAnimationInstance", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.HasValidAnimationInstance");

BL4.IsBodyGravityEnabled = function(OwnerAddress, BoneName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsBodyGravityEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0
 writeQword(_params + 0x0, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "IsBodyGravityEnabled", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsBodyGravityEnabled");

BL4.IsClothingSimulationSuspended = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsClothingSimulationSuspended: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsClothingSimulationSuspended", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsClothingSimulationSuspended");

BL4.IsPlaying = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsPlaying: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsPlaying", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsPlaying");

BL4.K2_GetClosestPointOnPhysicsAsset = function(OwnerAddress, WorldPosition, ClosestWorldPosition, Normal, BoneName, Distance)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_GetClosestPointOnPhysicsAsset: Failed To Allocate The Params");return;end;
 WorldPosition = WorldPosition or {X=0,Y=0,Z=0}
 ClosestWorldPosition = ClosestWorldPosition or {X=0,Y=0,Z=0}
 Normal = Normal or {X=0,Y=0,Z=0}
 Distance = Distance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldPosition at +0x0, ClosestWorldPosition at +0x18, Normal at +0x30, BoneName at +0x48, Distance at +0x50
 writeDouble(_params + 0x0, (WorldPosition and WorldPosition.X) or 0)
 writeDouble(_params + 0x8, (WorldPosition and WorldPosition.Y) or 0)
 writeDouble(_params + 0x10, (WorldPosition and WorldPosition.Z) or 0)
 writeDouble(_params + 0x18, (ClosestWorldPosition and ClosestWorldPosition.X) or 0)
 writeDouble(_params + 0x20, (ClosestWorldPosition and ClosestWorldPosition.Y) or 0)
 writeDouble(_params + 0x28, (ClosestWorldPosition and ClosestWorldPosition.Z) or 0)
 writeDouble(_params + 0x30, (Normal and Normal.X) or 0)
 writeDouble(_params + 0x38, (Normal and Normal.Y) or 0)
 writeDouble(_params + 0x40, (Normal and Normal.Z) or 0)
 writeQword(_params + 0x48, BoneName)
 writeFloat(_params + 0x50, Distance)
 UE.CallProcessEventEx(OwnerAddress, "K2_GetClosestPointOnPhysicsAsset", _params);
 local RET=readByte(_params + 0x54);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_GetClosestPointOnPhysicsAsset");

BL4.LinkAnimClassLayers = function(InClass_Class)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinkAnimClassLayers: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InClass at +0x0
 writeQword(_params + 0x0, InClass_Class)
 UE.CallProcessEventEx(InClass_Class, "LinkAnimClassLayers", _params);
 deAlloc(_params);
end
FNR("BL4.LinkAnimClassLayers");

BL4.LinkAnimGraphByTag = function(OwnerAddress, InTag, InClass_Class)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinkAnimGraphByTag: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InTag at +0x0, InClass at +0x8
 writeQword(_params + 0x0, InTag)
 writeQword(_params + 0x8, InClass_Class)
 UE.CallProcessEventEx(OwnerAddress, "LinkAnimGraphByTag", _params);
 deAlloc(_params);
end
FNR("BL4.LinkAnimGraphByTag");

BL4.OverrideAnimationData = function(InAnimToPlay_AnimationAsset, bIsLooping, bIsPlaying, position, PlayRate)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OverrideAnimationData: Failed To Allocate The Params");return;end;
 bIsLooping = bIsLooping or false
 bIsPlaying = bIsPlaying or false
 position = position or 0
 PlayRate = PlayRate or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InAnimToPlay at +0x0, bIsLooping at +0x8, bIsPlaying at +0x9, position at +0xC, PlayRate at +0x10
 writeQword(_params + 0x0, InAnimToPlay_AnimationAsset)
 writeByte(_params + 0x8, bIsLooping)
 writeByte(_params + 0x9, bIsPlaying)
 writeFloat(_params + 0xC, position)
 writeFloat(_params + 0x10, PlayRate)
 UE.CallProcessEventEx(InAnimToPlay_AnimationAsset, "OverrideAnimationData", _params);
 deAlloc(_params);
end
FNR("BL4.OverrideAnimationData");

BL4.Play = function(OwnerAddress, bLooping)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Play: Failed To Allocate The Params");return;end;
 bLooping = bLooping or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bLooping at +0x0
 writeByte(_params + 0x0, bLooping)
 UE.CallProcessEventEx(OwnerAddress, "Play", _params);
 deAlloc(_params);
end
FNR("BL4.Play");

BL4.PlayAnimation = function(NewAnimToPlay_AnimationAsset, bLooping)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PlayAnimation: Failed To Allocate The Params");return;end;
 bLooping = bLooping or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewAnimToPlay at +0x0, bLooping at +0x8
 writeQword(_params + 0x0, NewAnimToPlay_AnimationAsset)
 writeByte(_params + 0x8, bLooping)
 UE.CallProcessEventEx(NewAnimToPlay_AnimationAsset, "PlayAnimation", _params);
 deAlloc(_params);
end
FNR("BL4.PlayAnimation");

BL4.RemoveClothCollisionSource = function(InSourceComponent_SkeletalMeshComponent, InSourcePhysicsAsset_PhysicsAsset)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveClothCollisionSource: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSourceComponent at +0x0, InSourcePhysicsAsset at +0x8
 writeQword(_params + 0x0, InSourceComponent_SkeletalMeshComponent)
 writeQword(_params + 0x8, InSourcePhysicsAsset_PhysicsAsset)
 UE.CallProcessEventEx(InSourceComponent_SkeletalMeshComponent, "RemoveClothCollisionSource", _params);
 deAlloc(_params);
end
FNR("BL4.RemoveClothCollisionSource");

BL4.RemoveClothCollisionSources = function(InSourceComponent_SkeletalMeshComponent)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveClothCollisionSources: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InSourceComponent at +0x0
 writeQword(_params + 0x0, InSourceComponent_SkeletalMeshComponent)
 UE.CallProcessEventEx(InSourceComponent_SkeletalMeshComponent, "RemoveClothCollisionSources", _params);
 deAlloc(_params);
end
FNR("BL4.RemoveClothCollisionSources");

BL4.ResetAnimInstanceDynamics = function(OwnerAddress, InTeleportType)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ResetAnimInstanceDynamics: Failed To Allocate The Params");return;end;
 InTeleportType = InTeleportType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InTeleportType at +0x0
 writeByte(_params + 0x0, InTeleportType)
 UE.CallProcessEventEx(OwnerAddress, "ResetAnimInstanceDynamics", _params);
 deAlloc(_params);
end
FNR("BL4.ResetAnimInstanceDynamics");

BL4.SetAllBodiesBelowLinearVelocity = function(OwnerAddress, InBoneName, LinearVelocity, bIncludeSelf)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAllBodiesBelowLinearVelocity: Failed To Allocate The Params");return;end;
 LinearVelocity = LinearVelocity or {X=0,Y=0,Z=0}
 bIncludeSelf = bIncludeSelf or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InBoneName at +0x0, LinearVelocity at +0x8, bIncludeSelf at +0x20
 writeQword(_params + 0x0, InBoneName)
 writeDouble(_params + 0x8, (LinearVelocity and LinearVelocity.X) or 0)
 writeDouble(_params + 0x10, (LinearVelocity and LinearVelocity.Y) or 0)
 writeDouble(_params + 0x18, (LinearVelocity and LinearVelocity.Z) or 0)
 writeByte(_params + 0x20, bIncludeSelf)
 UE.CallProcessEventEx(OwnerAddress, "SetAllBodiesBelowLinearVelocity", _params);
 deAlloc(_params);
end
FNR("BL4.SetAllBodiesBelowLinearVelocity");

BL4.SetAllBodiesBelowPhysicsBlendWeight = function(OwnerAddress, InBoneName, PhysicsBlendWeight, bSkipCustomPhysicsType, bIncludeSelf)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAllBodiesBelowPhysicsBlendWeight: Failed To Allocate The Params");return;end;
 PhysicsBlendWeight = PhysicsBlendWeight or 0
 bSkipCustomPhysicsType = bSkipCustomPhysicsType or false
 bIncludeSelf = bIncludeSelf or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InBoneName at +0x0, PhysicsBlendWeight at +0x8, bSkipCustomPhysicsType at +0xC, bIncludeSelf at +0xD
 writeQword(_params + 0x0, InBoneName)
 writeFloat(_params + 0x8, PhysicsBlendWeight)
 writeByte(_params + 0xC, bSkipCustomPhysicsType)
 writeByte(_params + 0xD, bIncludeSelf)
 UE.CallProcessEventEx(OwnerAddress, "SetAllBodiesBelowPhysicsBlendWeight", _params);
 deAlloc(_params);
end
FNR("BL4.SetAllBodiesBelowPhysicsBlendWeight");

BL4.SetAllBodiesBelowPhysicsDisabled = function(OwnerAddress, InBoneName, bDisabled, bIncludeSelf)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAllBodiesBelowPhysicsDisabled: Failed To Allocate The Params");return;end;
 bDisabled = bDisabled or false
 bIncludeSelf = bIncludeSelf or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InBoneName at +0x0, bDisabled at +0x8, bIncludeSelf at +0x9
 writeQword(_params + 0x0, InBoneName)
 writeByte(_params + 0x8, bDisabled)
 writeByte(_params + 0x9, bIncludeSelf)
 UE.CallProcessEventEx(OwnerAddress, "SetAllBodiesBelowPhysicsDisabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetAllBodiesBelowPhysicsDisabled");

BL4.SetAllBodiesBelowSimulatePhysics = function(OwnerAddress, InBoneName, bNewSimulate, bIncludeSelf)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAllBodiesBelowSimulatePhysics: Failed To Allocate The Params");return;end;
 bNewSimulate = bNewSimulate or false
 bIncludeSelf = bIncludeSelf or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InBoneName at +0x0, bNewSimulate at +0x8, bIncludeSelf at +0x9
 writeQword(_params + 0x0, InBoneName)
 writeByte(_params + 0x8, bNewSimulate)
 writeByte(_params + 0x9, bIncludeSelf)
 UE.CallProcessEventEx(OwnerAddress, "SetAllBodiesBelowSimulatePhysics", _params);
 deAlloc(_params);
end
FNR("BL4.SetAllBodiesBelowSimulatePhysics");

BL4.SetAllBodiesPhysicsBlendWeight = function(OwnerAddress, PhysicsBlendWeight, bSkipCustomPhysicsType)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAllBodiesPhysicsBlendWeight: Failed To Allocate The Params");return;end;
 PhysicsBlendWeight = PhysicsBlendWeight or 0
 bSkipCustomPhysicsType = bSkipCustomPhysicsType or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PhysicsBlendWeight at +0x0, bSkipCustomPhysicsType at +0x4
 writeFloat(_params + 0x0, PhysicsBlendWeight)
 writeByte(_params + 0x4, bSkipCustomPhysicsType)
 UE.CallProcessEventEx(OwnerAddress, "SetAllBodiesPhysicsBlendWeight", _params);
 deAlloc(_params);
end
FNR("BL4.SetAllBodiesPhysicsBlendWeight");

BL4.SetAllBodiesSimulatePhysics = function(OwnerAddress, bNewSimulate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAllBodiesSimulatePhysics: Failed To Allocate The Params");return;end;
 bNewSimulate = bNewSimulate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bNewSimulate at +0x0
 writeByte(_params + 0x0, bNewSimulate)
 UE.CallProcessEventEx(OwnerAddress, "SetAllBodiesSimulatePhysics", _params);
 deAlloc(_params);
end
FNR("BL4.SetAllBodiesSimulatePhysics");

BL4.SetAllMotorsAngularDriveParams = function(OwnerAddress, InSpring, InDamping, InForceLimit, bSkipCustomPhysicsType)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAllMotorsAngularDriveParams: Failed To Allocate The Params");return;end;
 InSpring = InSpring or 0
 InDamping = InDamping or 0
 InForceLimit = InForceLimit or 0
 bSkipCustomPhysicsType = bSkipCustomPhysicsType or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSpring at +0x0, InDamping at +0x4, InForceLimit at +0x8, bSkipCustomPhysicsType at +0xC
 writeFloat(_params + 0x0, InSpring)
 writeFloat(_params + 0x4, InDamping)
 writeFloat(_params + 0x8, InForceLimit)
 writeByte(_params + 0xC, bSkipCustomPhysicsType)
 UE.CallProcessEventEx(OwnerAddress, "SetAllMotorsAngularDriveParams", _params);
 deAlloc(_params);
end
FNR("BL4.SetAllMotorsAngularDriveParams");

BL4.SetAllMotorsAngularPositionDrive = function(OwnerAddress, bEnableSwingDrive, bEnableTwistDrive, bSkipCustomPhysicsType)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAllMotorsAngularPositionDrive: Failed To Allocate The Params");return;end;
 bEnableSwingDrive = bEnableSwingDrive or false
 bEnableTwistDrive = bEnableTwistDrive or false
 bSkipCustomPhysicsType = bSkipCustomPhysicsType or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnableSwingDrive at +0x0, bEnableTwistDrive at +0x1, bSkipCustomPhysicsType at +0x2
 writeByte(_params + 0x0, bEnableSwingDrive)
 writeByte(_params + 0x1, bEnableTwistDrive)
 writeByte(_params + 0x2, bSkipCustomPhysicsType)
 UE.CallProcessEventEx(OwnerAddress, "SetAllMotorsAngularPositionDrive", _params);
 deAlloc(_params);
end
FNR("BL4.SetAllMotorsAngularPositionDrive");

BL4.SetAllMotorsAngularVelocityDrive = function(OwnerAddress, bEnableSwingDrive, bEnableTwistDrive, bSkipCustomPhysicsType)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAllMotorsAngularVelocityDrive: Failed To Allocate The Params");return;end;
 bEnableSwingDrive = bEnableSwingDrive or false
 bEnableTwistDrive = bEnableTwistDrive or false
 bSkipCustomPhysicsType = bSkipCustomPhysicsType or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnableSwingDrive at +0x0, bEnableTwistDrive at +0x1, bSkipCustomPhysicsType at +0x2
 writeByte(_params + 0x0, bEnableSwingDrive)
 writeByte(_params + 0x1, bEnableTwistDrive)
 writeByte(_params + 0x2, bSkipCustomPhysicsType)
 UE.CallProcessEventEx(OwnerAddress, "SetAllMotorsAngularVelocityDrive", _params);
 deAlloc(_params);
end
FNR("BL4.SetAllMotorsAngularVelocityDrive");

BL4.SetAllowAnimCurveEvaluation = function(OwnerAddress, bInAllow)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAllowAnimCurveEvaluation: Failed To Allocate The Params");return;end;
 bInAllow = bInAllow or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInAllow at +0x0
 writeByte(_params + 0x0, bInAllow)
 UE.CallProcessEventEx(OwnerAddress, "SetAllowAnimCurveEvaluation", _params);
 deAlloc(_params);
end
FNR("BL4.SetAllowAnimCurveEvaluation");

BL4.SetAllowClothActors = function(OwnerAddress, bInAllow)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAllowClothActors: Failed To Allocate The Params");return;end;
 bInAllow = bInAllow or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInAllow at +0x0
 writeByte(_params + 0x0, bInAllow)
 UE.CallProcessEventEx(OwnerAddress, "SetAllowClothActors", _params);
 deAlloc(_params);
end
FNR("BL4.SetAllowClothActors");

BL4.SetAllowedAnimCurvesEvaluation = function(OwnerAddress, list, bAllow)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAllowedAnimCurvesEvaluation: Failed To Allocate The Params");return;end;
 bAllow = bAllow or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: list at +0x0, bAllow at +0x10
 writeQword(_params + 0x0, list)
 writeByte(_params + 0x10, bAllow)
 UE.CallProcessEventEx(OwnerAddress, "SetAllowedAnimCurvesEvaluation", _params);
 deAlloc(_params);
end
FNR("BL4.SetAllowedAnimCurvesEvaluation");

BL4.SetAllowRigidBodyAnimNode = function(OwnerAddress, bInAllow, bReinitAnim)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAllowRigidBodyAnimNode: Failed To Allocate The Params");return;end;
 bInAllow = bInAllow or false
 bReinitAnim = bReinitAnim or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInAllow at +0x0, bReinitAnim at +0x1
 writeByte(_params + 0x0, bInAllow)
 writeByte(_params + 0x1, bReinitAnim)
 UE.CallProcessEventEx(OwnerAddress, "SetAllowRigidBodyAnimNode", _params);
 deAlloc(_params);
end
FNR("BL4.SetAllowRigidBodyAnimNode");

BL4.SetAngularLimits = function(OwnerAddress, InBoneName, Swing1LimitAngle, TwistLimitAngle, Swing2LimitAngle)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAngularLimits: Failed To Allocate The Params");return;end;
 Swing1LimitAngle = Swing1LimitAngle or 0
 TwistLimitAngle = TwistLimitAngle or 0
 Swing2LimitAngle = Swing2LimitAngle or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InBoneName at +0x0, Swing1LimitAngle at +0x8, TwistLimitAngle at +0xC, Swing2LimitAngle at +0x10
 writeQword(_params + 0x0, InBoneName)
 writeFloat(_params + 0x8, Swing1LimitAngle)
 writeFloat(_params + 0xC, TwistLimitAngle)
 writeFloat(_params + 0x10, Swing2LimitAngle)
 UE.CallProcessEventEx(OwnerAddress, "SetAngularLimits", _params);
 deAlloc(_params);
end
FNR("BL4.SetAngularLimits");

BL4.SetAnimation = function(NewAnimToPlay_AnimationAsset)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAnimation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewAnimToPlay at +0x0
 writeQword(_params + 0x0, NewAnimToPlay_AnimationAsset)
 UE.CallProcessEventEx(NewAnimToPlay_AnimationAsset, "SetAnimation", _params);
 deAlloc(_params);
end
FNR("BL4.SetAnimation");

BL4.SetAnimationMode = function(OwnerAddress, InAnimationMode, bForceInitAnimScriptInstance)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAnimationMode: Failed To Allocate The Params");return;end;
 InAnimationMode = InAnimationMode or 0
 bForceInitAnimScriptInstance = bForceInitAnimScriptInstance or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InAnimationMode at +0x0, bForceInitAnimScriptInstance at +0x1
 writeByte(_params + 0x0, InAnimationMode)
 writeByte(_params + 0x1, bForceInitAnimScriptInstance)
 UE.CallProcessEventEx(OwnerAddress, "SetAnimationMode", _params);
 deAlloc(_params);
end
FNR("BL4.SetAnimationMode");

BL4.SetAnimInstanceClass = function(NewClass_Class)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAnimInstanceClass: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewClass at +0x0
 writeQword(_params + 0x0, NewClass_Class)
 UE.CallProcessEventEx(NewClass_Class, "SetAnimInstanceClass", _params);
 deAlloc(_params);
end
FNR("BL4.SetAnimInstanceClass");

BL4.SetBodyNotifyRigidBodyCollision = function(OwnerAddress, bNewNotifyRigidBodyCollision, BoneName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBodyNotifyRigidBodyCollision: Failed To Allocate The Params");return;end;
 bNewNotifyRigidBodyCollision = bNewNotifyRigidBodyCollision or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bNewNotifyRigidBodyCollision at +0x0, BoneName at +0x4
 writeByte(_params + 0x0, bNewNotifyRigidBodyCollision)
 writeQword(_params + 0x4, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "SetBodyNotifyRigidBodyCollision", _params);
 deAlloc(_params);
end
FNR("BL4.SetBodyNotifyRigidBodyCollision");

BL4.SetBodySimulatePhysics = function(OwnerAddress, InBoneName, bSimulate)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBodySimulatePhysics: Failed To Allocate The Params");return;end;
 bSimulate = bSimulate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InBoneName at +0x0, bSimulate at +0x8
 writeQword(_params + 0x0, InBoneName)
 writeByte(_params + 0x8, bSimulate)
 UE.CallProcessEventEx(OwnerAddress, "SetBodySimulatePhysics", _params);
 deAlloc(_params);
end
FNR("BL4.SetBodySimulatePhysics");

BL4.SetClothMaxDistanceScale = function(OwnerAddress, scale)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetClothMaxDistanceScale: Failed To Allocate The Params");return;end;
 scale = scale or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: scale at +0x0
 writeFloat(_params + 0x0, scale)
 UE.CallProcessEventEx(OwnerAddress, "SetClothMaxDistanceScale", _params);
 deAlloc(_params);
end
FNR("BL4.SetClothMaxDistanceScale");

BL4.SetConstraintProfile = function(OwnerAddress, JointName, ProfileName, bDefaultIfNotFound)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetConstraintProfile: Failed To Allocate The Params");return;end;
 bDefaultIfNotFound = bDefaultIfNotFound or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: JointName at +0x0, ProfileName at +0x8, bDefaultIfNotFound at +0x10
 writeQword(_params + 0x0, JointName)
 writeQword(_params + 0x8, ProfileName)
 writeByte(_params + 0x10, bDefaultIfNotFound)
 UE.CallProcessEventEx(OwnerAddress, "SetConstraintProfile", _params);
 deAlloc(_params);
end
FNR("BL4.SetConstraintProfile");

BL4.SetConstraintProfileForAll = function(OwnerAddress, ProfileName, bDefaultIfNotFound)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetConstraintProfileForAll: Failed To Allocate The Params");return;end;
 bDefaultIfNotFound = bDefaultIfNotFound or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ProfileName at +0x0, bDefaultIfNotFound at +0x8
 writeQword(_params + 0x0, ProfileName)
 writeByte(_params + 0x8, bDefaultIfNotFound)
 UE.CallProcessEventEx(OwnerAddress, "SetConstraintProfileForAll", _params);
 deAlloc(_params);
end
FNR("BL4.SetConstraintProfileForAll");

BL4.SetDisableAnimCurves = function(OwnerAddress, bInDisableAnimCurves)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDisableAnimCurves: Failed To Allocate The Params");return;end;
 bInDisableAnimCurves = bInDisableAnimCurves or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInDisableAnimCurves at +0x0
 writeByte(_params + 0x0, bInDisableAnimCurves)
 UE.CallProcessEventEx(OwnerAddress, "SetDisableAnimCurves", _params);
 deAlloc(_params);
end
FNR("BL4.SetDisableAnimCurves");

BL4.SetDisablePostProcessBlueprint = function(OwnerAddress, bInDisablePostProcess)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDisablePostProcessBlueprint: Failed To Allocate The Params");return;end;
 bInDisablePostProcess = bInDisablePostProcess or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInDisablePostProcess at +0x0
 writeByte(_params + 0x0, bInDisablePostProcess)
 UE.CallProcessEventEx(OwnerAddress, "SetDisablePostProcessBlueprint", _params);
 deAlloc(_params);
end
FNR("BL4.SetDisablePostProcessBlueprint");

BL4.SetEnableBodyGravity = function(OwnerAddress, bEnableGravity, BoneName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetEnableBodyGravity: Failed To Allocate The Params");return;end;
 bEnableGravity = bEnableGravity or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bEnableGravity at +0x0, BoneName at +0x4
 writeByte(_params + 0x0, bEnableGravity)
 writeQword(_params + 0x4, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "SetEnableBodyGravity", _params);
 deAlloc(_params);
end
FNR("BL4.SetEnableBodyGravity");

BL4.SetEnableGravityOnAllBodiesBelow = function(OwnerAddress, bEnableGravity, BoneName, bIncludeSelf)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetEnableGravityOnAllBodiesBelow: Failed To Allocate The Params");return;end;
 bEnableGravity = bEnableGravity or false
 bIncludeSelf = bIncludeSelf or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bEnableGravity at +0x0, BoneName at +0x4, bIncludeSelf at +0xC
 writeByte(_params + 0x0, bEnableGravity)
 writeQword(_params + 0x4, BoneName)
 writeByte(_params + 0xC, bIncludeSelf)
 UE.CallProcessEventEx(OwnerAddress, "SetEnableGravityOnAllBodiesBelow", _params);
 deAlloc(_params);
end
FNR("BL4.SetEnableGravityOnAllBodiesBelow");

BL4.SetEnablePhysicsBlending = function(OwnerAddress, bNewBlendPhysics)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetEnablePhysicsBlending: Failed To Allocate The Params");return;end;
 bNewBlendPhysics = bNewBlendPhysics or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bNewBlendPhysics at +0x0
 writeByte(_params + 0x0, bNewBlendPhysics)
 UE.CallProcessEventEx(OwnerAddress, "SetEnablePhysicsBlending", _params);
 deAlloc(_params);
end
FNR("BL4.SetEnablePhysicsBlending");

BL4.SetMorphTarget = function(OwnerAddress, MorphTargetName, Value, bRemoveZeroWeight)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMorphTarget: Failed To Allocate The Params");return;end;
 Value = Value or 0
 bRemoveZeroWeight = bRemoveZeroWeight or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MorphTargetName at +0x0, Value at +0x8, bRemoveZeroWeight at +0xC
 writeQword(_params + 0x0, MorphTargetName)
 writeFloat(_params + 0x8, Value)
 writeByte(_params + 0xC, bRemoveZeroWeight)
 UE.CallProcessEventEx(OwnerAddress, "SetMorphTarget", _params);
 deAlloc(_params);
end
FNR("BL4.SetMorphTarget");

BL4.SetNotifyRigidBodyCollisionBelow = function(OwnerAddress, bNewNotifyRigidBodyCollision, BoneName, bIncludeSelf)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNotifyRigidBodyCollisionBelow: Failed To Allocate The Params");return;end;
 bNewNotifyRigidBodyCollision = bNewNotifyRigidBodyCollision or false
 bIncludeSelf = bIncludeSelf or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bNewNotifyRigidBodyCollision at +0x0, BoneName at +0x4, bIncludeSelf at +0xC
 writeByte(_params + 0x0, bNewNotifyRigidBodyCollision)
 writeQword(_params + 0x4, BoneName)
 writeByte(_params + 0xC, bIncludeSelf)
 UE.CallProcessEventEx(OwnerAddress, "SetNotifyRigidBodyCollisionBelow", _params);
 deAlloc(_params);
end
FNR("BL4.SetNotifyRigidBodyCollisionBelow");

BL4.SetOverridePostProcessAnimBP = function(InPostProcessAnimBlueprint_Class, ReinitAnimInstances)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetOverridePostProcessAnimBP: Failed To Allocate The Params");return;end;
 ReinitAnimInstances = ReinitAnimInstances or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InPostProcessAnimBlueprint at +0x0, ReinitAnimInstances at +0x8
 writeQword(_params + 0x0, InPostProcessAnimBlueprint_Class)
 writeByte(_params + 0x8, ReinitAnimInstances)
 UE.CallProcessEventEx(InPostProcessAnimBlueprint_Class, "SetOverridePostProcessAnimBP", _params);
 deAlloc(_params);
end
FNR("BL4.SetOverridePostProcessAnimBP");

BL4.SetPhysicsBlendWeight = function(OwnerAddress, PhysicsBlendWeight)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPhysicsBlendWeight: Failed To Allocate The Params");return;end;
 PhysicsBlendWeight = PhysicsBlendWeight or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PhysicsBlendWeight at +0x0
 writeFloat(_params + 0x0, PhysicsBlendWeight)
 UE.CallProcessEventEx(OwnerAddress, "SetPhysicsBlendWeight", _params);
 deAlloc(_params);
end
FNR("BL4.SetPhysicsBlendWeight");

BL4.SetPlayRate = function(OwnerAddress, rate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPlayRate: Failed To Allocate The Params");return;end;
 rate = rate or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: rate at +0x0
 writeFloat(_params + 0x0, rate)
 UE.CallProcessEventEx(OwnerAddress, "SetPlayRate", _params);
 deAlloc(_params);
end
FNR("BL4.SetPlayRate");

BL4.SetPosition = function(OwnerAddress, InPos, bFireNotifies)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPosition: Failed To Allocate The Params");return;end;
 InPos = InPos or 0
 bFireNotifies = bFireNotifies or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InPos at +0x0, bFireNotifies at +0x4
 writeFloat(_params + 0x0, InPos)
 writeByte(_params + 0x4, bFireNotifies)
 UE.CallProcessEventEx(OwnerAddress, "SetPosition", _params);
 deAlloc(_params);
end
FNR("BL4.SetPosition");

BL4.SetSkeletalMeshAsset = function(NewMesh_SkeletalMesh)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSkeletalMeshAsset: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewMesh at +0x0
 writeQword(_params + 0x0, NewMesh_SkeletalMesh)
 UE.CallProcessEventEx(NewMesh_SkeletalMesh, "SetSkeletalMeshAsset", _params);
 deAlloc(_params);
end
FNR("BL4.SetSkeletalMeshAsset");

BL4.SetTeleportDistanceThreshold = function(OwnerAddress, Threshold)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTeleportDistanceThreshold: Failed To Allocate The Params");return;end;
 Threshold = Threshold or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Threshold at +0x0
 writeFloat(_params + 0x0, Threshold)
 UE.CallProcessEventEx(OwnerAddress, "SetTeleportDistanceThreshold", _params);
 deAlloc(_params);
end
FNR("BL4.SetTeleportDistanceThreshold");

BL4.SetTeleportRotationThreshold = function(OwnerAddress, Threshold)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTeleportRotationThreshold: Failed To Allocate The Params");return;end;
 Threshold = Threshold or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Threshold at +0x0
 writeFloat(_params + 0x0, Threshold)
 UE.CallProcessEventEx(OwnerAddress, "SetTeleportRotationThreshold", _params);
 deAlloc(_params);
end
FNR("BL4.SetTeleportRotationThreshold");

BL4.SetUpdateAnimationInEditor = function(OwnerAddress, NewUpdateState)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetUpdateAnimationInEditor: Failed To Allocate The Params");return;end;
 NewUpdateState = NewUpdateState or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewUpdateState at +0x0
 writeByte(_params + 0x0, NewUpdateState)
 UE.CallProcessEventEx(OwnerAddress, "SetUpdateAnimationInEditor", _params);
 deAlloc(_params);
end
FNR("BL4.SetUpdateAnimationInEditor");

BL4.SetUpdateClothInEditor = function(OwnerAddress, NewUpdateState)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetUpdateClothInEditor: Failed To Allocate The Params");return;end;
 NewUpdateState = NewUpdateState or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewUpdateState at +0x0
 writeByte(_params + 0x0, NewUpdateState)
 UE.CallProcessEventEx(OwnerAddress, "SetUpdateClothInEditor", _params);
 deAlloc(_params);
end
FNR("BL4.SetUpdateClothInEditor");

BL4.SnapshotPose = function(OwnerAddress, Snapshot)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SnapshotPose: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Snapshot at +0x0
 writeQword(_params + 0x0, Snapshot)
 UE.CallProcessEventEx(OwnerAddress, "SnapshotPose", _params);
 deAlloc(_params);
end
FNR("BL4.SnapshotPose");

BL4.TermBodiesBelow = function(OwnerAddress, ParentBoneName)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TermBodiesBelow: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: ParentBoneName at +0x0
 writeQword(_params + 0x0, ParentBoneName)
 UE.CallProcessEventEx(OwnerAddress, "TermBodiesBelow", _params);
 deAlloc(_params);
end
FNR("BL4.TermBodiesBelow");

BL4.UnbindClothFromLeaderPoseComponent = function(OwnerAddress, bRestoreSimulationSpace)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnbindClothFromLeaderPoseComponent: Failed To Allocate The Params");return;end;
 bRestoreSimulationSpace = bRestoreSimulationSpace or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bRestoreSimulationSpace at +0x0
 writeByte(_params + 0x0, bRestoreSimulationSpace)
 UE.CallProcessEventEx(OwnerAddress, "UnbindClothFromLeaderPoseComponent", _params);
 deAlloc(_params);
end
FNR("BL4.UnbindClothFromLeaderPoseComponent");

BL4.UnlinkAnimClassLayers = function(InClass_Class)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnlinkAnimClassLayers: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InClass at +0x0
 writeQword(_params + 0x0, InClass_Class)
 UE.CallProcessEventEx(InClass_Class, "UnlinkAnimClassLayers", _params);
 deAlloc(_params);
end
FNR("BL4.UnlinkAnimClassLayers");

