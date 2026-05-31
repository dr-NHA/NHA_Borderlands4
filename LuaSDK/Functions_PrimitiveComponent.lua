BL4.AddAngularImpulseInDegrees = function(OwnerAddress, Impulse, BoneName, bVelChange)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddAngularImpulseInDegrees: Failed To Allocate The Params");return;end;
 Impulse = Impulse or {X=0,Y=0,Z=0}
 bVelChange = bVelChange or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Impulse at +0x0, BoneName at +0x18, bVelChange at +0x20
 writeDouble(_params + 0x0, (Impulse and Impulse.X) or 0)
 writeDouble(_params + 0x8, (Impulse and Impulse.Y) or 0)
 writeDouble(_params + 0x10, (Impulse and Impulse.Z) or 0)
 writeQword(_params + 0x18, BoneName)
 writeByte(_params + 0x20, bVelChange)
 UE.CallProcessEventEx(OwnerAddress, "AddAngularImpulseInDegrees", _params);
 deAlloc(_params);
end
FNR("BL4.AddAngularImpulseInDegrees");

BL4.AddAngularImpulseInRadians = function(OwnerAddress, Impulse, BoneName, bVelChange)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddAngularImpulseInRadians: Failed To Allocate The Params");return;end;
 Impulse = Impulse or {X=0,Y=0,Z=0}
 bVelChange = bVelChange or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Impulse at +0x0, BoneName at +0x18, bVelChange at +0x20
 writeDouble(_params + 0x0, (Impulse and Impulse.X) or 0)
 writeDouble(_params + 0x8, (Impulse and Impulse.Y) or 0)
 writeDouble(_params + 0x10, (Impulse and Impulse.Z) or 0)
 writeQword(_params + 0x18, BoneName)
 writeByte(_params + 0x20, bVelChange)
 UE.CallProcessEventEx(OwnerAddress, "AddAngularImpulseInRadians", _params);
 deAlloc(_params);
end
FNR("BL4.AddAngularImpulseInRadians");

BL4.AddForce = function(OwnerAddress, force, BoneName, bAccelChange)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddForce: Failed To Allocate The Params");return;end;
 force = force or {X=0,Y=0,Z=0}
 bAccelChange = bAccelChange or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: force at +0x0, BoneName at +0x18, bAccelChange at +0x20
 writeDouble(_params + 0x0, (force and force.X) or 0)
 writeDouble(_params + 0x8, (force and force.Y) or 0)
 writeDouble(_params + 0x10, (force and force.Z) or 0)
 writeQword(_params + 0x18, BoneName)
 writeByte(_params + 0x20, bAccelChange)
 UE.CallProcessEventEx(OwnerAddress, "AddForce", _params);
 deAlloc(_params);
end
FNR("BL4.AddForce");

BL4.AddForceAtLocation = function(OwnerAddress, force, Location, BoneName)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddForceAtLocation: Failed To Allocate The Params");return;end;
 force = force or {X=0,Y=0,Z=0}
 Location = Location or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: force at +0x0, Location at +0x18, BoneName at +0x30
 writeDouble(_params + 0x0, (force and force.X) or 0)
 writeDouble(_params + 0x8, (force and force.Y) or 0)
 writeDouble(_params + 0x10, (force and force.Z) or 0)
 writeDouble(_params + 0x18, (Location and Location.X) or 0)
 writeDouble(_params + 0x20, (Location and Location.Y) or 0)
 writeDouble(_params + 0x28, (Location and Location.Z) or 0)
 writeQword(_params + 0x30, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "AddForceAtLocation", _params);
 deAlloc(_params);
end
FNR("BL4.AddForceAtLocation");

BL4.AddForceAtLocationLocal = function(OwnerAddress, force, Location, BoneName)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddForceAtLocationLocal: Failed To Allocate The Params");return;end;
 force = force or {X=0,Y=0,Z=0}
 Location = Location or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: force at +0x0, Location at +0x18, BoneName at +0x30
 writeDouble(_params + 0x0, (force and force.X) or 0)
 writeDouble(_params + 0x8, (force and force.Y) or 0)
 writeDouble(_params + 0x10, (force and force.Z) or 0)
 writeDouble(_params + 0x18, (Location and Location.X) or 0)
 writeDouble(_params + 0x20, (Location and Location.Y) or 0)
 writeDouble(_params + 0x28, (Location and Location.Z) or 0)
 writeQword(_params + 0x30, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "AddForceAtLocationLocal", _params);
 deAlloc(_params);
end
FNR("BL4.AddForceAtLocationLocal");

BL4.AddImpulse = function(OwnerAddress, Impulse, BoneName, bVelChange)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddImpulse: Failed To Allocate The Params");return;end;
 Impulse = Impulse or {X=0,Y=0,Z=0}
 bVelChange = bVelChange or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Impulse at +0x0, BoneName at +0x18, bVelChange at +0x20
 writeDouble(_params + 0x0, (Impulse and Impulse.X) or 0)
 writeDouble(_params + 0x8, (Impulse and Impulse.Y) or 0)
 writeDouble(_params + 0x10, (Impulse and Impulse.Z) or 0)
 writeQword(_params + 0x18, BoneName)
 writeByte(_params + 0x20, bVelChange)
 UE.CallProcessEventEx(OwnerAddress, "AddImpulse", _params);
 deAlloc(_params);
end
FNR("BL4.AddImpulse");

BL4.AddImpulseAtLocation = function(OwnerAddress, Impulse, Location, BoneName)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddImpulseAtLocation: Failed To Allocate The Params");return;end;
 Impulse = Impulse or {X=0,Y=0,Z=0}
 Location = Location or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Impulse at +0x0, Location at +0x18, BoneName at +0x30
 writeDouble(_params + 0x0, (Impulse and Impulse.X) or 0)
 writeDouble(_params + 0x8, (Impulse and Impulse.Y) or 0)
 writeDouble(_params + 0x10, (Impulse and Impulse.Z) or 0)
 writeDouble(_params + 0x18, (Location and Location.X) or 0)
 writeDouble(_params + 0x20, (Location and Location.Y) or 0)
 writeDouble(_params + 0x28, (Location and Location.Z) or 0)
 writeQword(_params + 0x30, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "AddImpulseAtLocation", _params);
 deAlloc(_params);
end
FNR("BL4.AddImpulseAtLocation");

BL4.AddRadialForce = function(OwnerAddress, Origin, Radius, Strength, Falloff, bAccelChange)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddRadialForce: Failed To Allocate The Params");return;end;
 Origin = Origin or {X=0,Y=0,Z=0}
 Radius = Radius or 0
 Strength = Strength or 0
 Falloff = Falloff or 0
 bAccelChange = bAccelChange or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Origin at +0x0, Radius at +0x18, Strength at +0x1C, Falloff at +0x20, bAccelChange at +0x21
 writeDouble(_params + 0x0, (Origin and Origin.X) or 0)
 writeDouble(_params + 0x8, (Origin and Origin.Y) or 0)
 writeDouble(_params + 0x10, (Origin and Origin.Z) or 0)
 writeFloat(_params + 0x18, Radius)
 writeFloat(_params + 0x1C, Strength)
 writeByte(_params + 0x20, Falloff)
 writeByte(_params + 0x21, bAccelChange)
 UE.CallProcessEventEx(OwnerAddress, "AddRadialForce", _params);
 deAlloc(_params);
end
FNR("BL4.AddRadialForce");

BL4.AddRadialImpulse = function(OwnerAddress, Origin, Radius, Strength, Falloff, bVelChange)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddRadialImpulse: Failed To Allocate The Params");return;end;
 Origin = Origin or {X=0,Y=0,Z=0}
 Radius = Radius or 0
 Strength = Strength or 0
 Falloff = Falloff or 0
 bVelChange = bVelChange or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Origin at +0x0, Radius at +0x18, Strength at +0x1C, Falloff at +0x20, bVelChange at +0x21
 writeDouble(_params + 0x0, (Origin and Origin.X) or 0)
 writeDouble(_params + 0x8, (Origin and Origin.Y) or 0)
 writeDouble(_params + 0x10, (Origin and Origin.Z) or 0)
 writeFloat(_params + 0x18, Radius)
 writeFloat(_params + 0x1C, Strength)
 writeByte(_params + 0x20, Falloff)
 writeByte(_params + 0x21, bVelChange)
 UE.CallProcessEventEx(OwnerAddress, "AddRadialImpulse", _params);
 deAlloc(_params);
end
FNR("BL4.AddRadialImpulse");

BL4.AddTorqueInDegrees = function(OwnerAddress, Torque, BoneName, bAccelChange)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddTorqueInDegrees: Failed To Allocate The Params");return;end;
 Torque = Torque or {X=0,Y=0,Z=0}
 bAccelChange = bAccelChange or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Torque at +0x0, BoneName at +0x18, bAccelChange at +0x20
 writeDouble(_params + 0x0, (Torque and Torque.X) or 0)
 writeDouble(_params + 0x8, (Torque and Torque.Y) or 0)
 writeDouble(_params + 0x10, (Torque and Torque.Z) or 0)
 writeQword(_params + 0x18, BoneName)
 writeByte(_params + 0x20, bAccelChange)
 UE.CallProcessEventEx(OwnerAddress, "AddTorqueInDegrees", _params);
 deAlloc(_params);
end
FNR("BL4.AddTorqueInDegrees");

BL4.AddTorqueInRadians = function(OwnerAddress, Torque, BoneName, bAccelChange)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddTorqueInRadians: Failed To Allocate The Params");return;end;
 Torque = Torque or {X=0,Y=0,Z=0}
 bAccelChange = bAccelChange or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Torque at +0x0, BoneName at +0x18, bAccelChange at +0x20
 writeDouble(_params + 0x0, (Torque and Torque.X) or 0)
 writeDouble(_params + 0x8, (Torque and Torque.Y) or 0)
 writeDouble(_params + 0x10, (Torque and Torque.Z) or 0)
 writeQword(_params + 0x18, BoneName)
 writeByte(_params + 0x20, bAccelChange)
 UE.CallProcessEventEx(OwnerAddress, "AddTorqueInRadians", _params);
 deAlloc(_params);
end
FNR("BL4.AddTorqueInRadians");

BL4.AddVelocityChangeImpulseAtLocation = function(OwnerAddress, Impulse, Location, BoneName)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddVelocityChangeImpulseAtLocation: Failed To Allocate The Params");return;end;
 Impulse = Impulse or {X=0,Y=0,Z=0}
 Location = Location or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Impulse at +0x0, Location at +0x18, BoneName at +0x30
 writeDouble(_params + 0x0, (Impulse and Impulse.X) or 0)
 writeDouble(_params + 0x8, (Impulse and Impulse.Y) or 0)
 writeDouble(_params + 0x10, (Impulse and Impulse.Z) or 0)
 writeDouble(_params + 0x18, (Location and Location.X) or 0)
 writeDouble(_params + 0x20, (Location and Location.Y) or 0)
 writeDouble(_params + 0x28, (Location and Location.Z) or 0)
 writeQword(_params + 0x30, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "AddVelocityChangeImpulseAtLocation", _params);
 deAlloc(_params);
end
FNR("BL4.AddVelocityChangeImpulseAtLocation");

BL4.AllowHLODLevelsExclusion = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AllowHLODLevelsExclusion: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "AllowHLODLevelsExclusion", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AllowHLODLevelsExclusion");

BL4.CanCharacterStepUp = function(Pawn)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CanCharacterStepUp: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Pawn at +0x0
 writeQword(_params + 0x0, Pawn)
 UE.CallProcessEventEx(Pawn, "CanCharacterStepUp", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CanCharacterStepUp");

BL4.CopyArrayOfMoveIgnoreActors = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CopyArrayOfMoveIgnoreActors: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "CopyArrayOfMoveIgnoreActors", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CopyArrayOfMoveIgnoreActors");

BL4.CopyArrayOfMoveIgnoreComponents = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CopyArrayOfMoveIgnoreComponents: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "CopyArrayOfMoveIgnoreComponents", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CopyArrayOfMoveIgnoreComponents");

BL4.CreateAndSetMaterialInstanceDynamic = function(OwnerAddress, ElementIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CreateAndSetMaterialInstanceDynamic: Failed To Allocate The Params");return;end;
 ElementIndex = ElementIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ElementIndex at +0x0
 writeInteger(_params + 0x0, ElementIndex)
 UE.CallProcessEventEx(OwnerAddress, "CreateAndSetMaterialInstanceDynamic", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CreateAndSetMaterialInstanceDynamic");

BL4.CreateAndSetMaterialInstanceDynamicFromMaterial = function(OwnerAddress, ElementIndex, Parent_MaterialInterface)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CreateAndSetMaterialInstanceDynamicFromMaterial: Failed To Allocate The Params");return;end;
 ElementIndex = ElementIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ElementIndex at +0x0, Parent at +0x8
 writeInteger(_params + 0x0, ElementIndex)
 writeQword(_params + 0x8, Parent_MaterialInterface)
 UE.CallProcessEventEx(OwnerAddress, "CreateAndSetMaterialInstanceDynamicFromMaterial", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CreateAndSetMaterialInstanceDynamicFromMaterial");

BL4.CreateDynamicMaterialInstance = function(OwnerAddress, ElementIndex, SourceMaterial_MaterialInterface, OptionalName)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CreateDynamicMaterialInstance: Failed To Allocate The Params");return;end;
 ElementIndex = ElementIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ElementIndex at +0x0, SourceMaterial at +0x8, OptionalName at +0x10
 writeInteger(_params + 0x0, ElementIndex)
 writeQword(_params + 0x8, SourceMaterial_MaterialInterface)
 writeQword(_params + 0x10, OptionalName)
 UE.CallProcessEventEx(OwnerAddress, "CreateDynamicMaterialInstance", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CreateDynamicMaterialInstance");

BL4.GetAngularDamping = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAngularDamping: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAngularDamping", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAngularDamping");

BL4.GetBodyInstanceAsyncPhysicsTickHandle = function(OwnerAddress, BoneName, bGetWelded, Index)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBodyInstanceAsyncPhysicsTickHandle: Failed To Allocate The Params");return;end;
 bGetWelded = bGetWelded or false
 Index = Index or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0, bGetWelded at +0x8, Index at +0xC
 writeQword(_params + 0x0, BoneName)
 writeByte(_params + 0x8, bGetWelded)
 writeInteger(_params + 0xC, Index)
 UE.CallProcessEventEx(OwnerAddress, "GetBodyInstanceAsyncPhysicsTickHandle", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBodyInstanceAsyncPhysicsTickHandle");

BL4.GetCenterOfMass = function(OwnerAddress, BoneName)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCenterOfMass: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0
 writeQword(_params + 0x0, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "GetCenterOfMass", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCenterOfMass");

BL4.GetClosestPointOnCollision = function(OwnerAddress, Point, OutPointOnBody, BoneName)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetClosestPointOnCollision: Failed To Allocate The Params");return;end;
 Point = Point or {X=0,Y=0,Z=0}
 OutPointOnBody = OutPointOnBody or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Point at +0x0, OutPointOnBody at +0x18, BoneName at +0x30
 writeDouble(_params + 0x0, (Point and Point.X) or 0)
 writeDouble(_params + 0x8, (Point and Point.Y) or 0)
 writeDouble(_params + 0x10, (Point and Point.Z) or 0)
 writeDouble(_params + 0x18, (OutPointOnBody and OutPointOnBody.X) or 0)
 writeDouble(_params + 0x20, (OutPointOnBody and OutPointOnBody.Y) or 0)
 writeDouble(_params + 0x28, (OutPointOnBody and OutPointOnBody.Z) or 0)
 writeQword(_params + 0x30, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "GetClosestPointOnCollision", _params);
 local RET=readFloat(_params + 0x38);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetClosestPointOnCollision");

BL4.GetCollisionEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCollisionEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCollisionEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCollisionEnabled");

BL4.GetCollisionObjectType = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCollisionObjectType: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCollisionObjectType", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCollisionObjectType");

BL4.GetCollisionProfileName = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCollisionProfileName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCollisionProfileName", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCollisionProfileName");

BL4.GetCollisionResponseToChannel = function(OwnerAddress, channel)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCollisionResponseToChannel: Failed To Allocate The Params");return;end;
 channel = channel or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: channel at +0x0
 writeByte(_params + 0x0, channel)
 UE.CallProcessEventEx(OwnerAddress, "GetCollisionResponseToChannel", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCollisionResponseToChannel");

BL4.GetCustomGlowMaterial = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomGlowMaterial: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCustomGlowMaterial", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomGlowMaterial");

BL4.GetCustomMaskMaterial = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomMaskMaterial: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCustomMaskMaterial", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomMaskMaterial");

BL4.GetCustomPrimitiveDataIndexForScalarParameter = function(OwnerAddress, ParameterName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomPrimitiveDataIndexForScalarParameter: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ParameterName at +0x0
 writeQword(_params + 0x0, ParameterName)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomPrimitiveDataIndexForScalarParameter", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomPrimitiveDataIndexForScalarParameter");

BL4.GetCustomPrimitiveDataIndexForVectorParameter = function(OwnerAddress, ParameterName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomPrimitiveDataIndexForVectorParameter: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ParameterName at +0x0
 writeQword(_params + 0x0, ParameterName)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomPrimitiveDataIndexForVectorParameter", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomPrimitiveDataIndexForVectorParameter");

BL4.GetExcludeForSpecificHLODLevels = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetExcludeForSpecificHLODLevels: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetExcludeForSpecificHLODLevels", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetExcludeForSpecificHLODLevels");

BL4.GetGenerateOverlapEvents = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetGenerateOverlapEvents: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetGenerateOverlapEvents", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetGenerateOverlapEvents");

BL4.GetIgnoreBoundsForEditorFocus = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetIgnoreBoundsForEditorFocus: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetIgnoreBoundsForEditorFocus", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetIgnoreBoundsForEditorFocus");

BL4.GetInertiaTensor = function(OwnerAddress, BoneName)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInertiaTensor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0
 writeQword(_params + 0x0, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "GetInertiaTensor", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInertiaTensor");

BL4.GetLinearDamping = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLinearDamping: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetLinearDamping", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLinearDamping");

BL4.GetMass = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMass: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetMass", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMass");

BL4.GetMassScale = function(OwnerAddress, BoneName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMassScale: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0
 writeQword(_params + 0x0, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "GetMassScale", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMassScale");

BL4.GetMaterial = function(OwnerAddress, ElementIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMaterial: Failed To Allocate The Params");return;end;
 ElementIndex = ElementIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ElementIndex at +0x0
 writeInteger(_params + 0x0, ElementIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetMaterial", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMaterial");

BL4.GetMaterialByName = function(OwnerAddress, MaterialSlotName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMaterialByName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MaterialSlotName at +0x0
 writeQword(_params + 0x0, MaterialSlotName)
 UE.CallProcessEventEx(OwnerAddress, "GetMaterialByName", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMaterialByName");

BL4.GetMaterialFromCollisionFaceIndex = function(OwnerAddress, FaceIndex, SectionIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMaterialFromCollisionFaceIndex: Failed To Allocate The Params");return;end;
 FaceIndex = FaceIndex or 0
 SectionIndex = SectionIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: FaceIndex at +0x0, SectionIndex at +0x4
 writeInteger(_params + 0x0, FaceIndex)
 writeInteger(_params + 0x4, SectionIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetMaterialFromCollisionFaceIndex", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMaterialFromCollisionFaceIndex");

BL4.GetMaterialIndex = function(OwnerAddress, MaterialSlotName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMaterialIndex: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MaterialSlotName at +0x0
 writeQword(_params + 0x0, MaterialSlotName)
 UE.CallProcessEventEx(OwnerAddress, "GetMaterialIndex", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMaterialIndex");

BL4.GetMaterialSlotNames = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMaterialSlotNames: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetMaterialSlotNames", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMaterialSlotNames");

BL4.GetMaxDepenetrationVelocity = function(OwnerAddress, BoneName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMaxDepenetrationVelocity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0
 writeQword(_params + 0x0, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "GetMaxDepenetrationVelocity", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMaxDepenetrationVelocity");

BL4.GetNumMaterials = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumMaterials: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetNumMaterials", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumMaterials");

BL4.GetOverlappingActors = function(OwnerAddress, OverlappingActors, ClassFilter_Class)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetOverlappingActors: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OverlappingActors at +0x0, ClassFilter at +0x10
 writeQword(_params + 0x0, OverlappingActors)
 writeQword(_params + 0x10, ClassFilter_Class)
 UE.CallProcessEventEx(OwnerAddress, "GetOverlappingActors", _params);
 deAlloc(_params);
end
FNR("BL4.GetOverlappingActors");

BL4.GetOverlappingComponents = function(OwnerAddress, OutOverlappingComponents)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetOverlappingComponents: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OutOverlappingComponents at +0x0
 writeQword(_params + 0x0, OutOverlappingComponents)
 UE.CallProcessEventEx(OwnerAddress, "GetOverlappingComponents", _params);
 deAlloc(_params);
end
FNR("BL4.GetOverlappingComponents");

BL4.GetPhysicsAngularVelocityInDegrees = function(OwnerAddress, BoneName)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPhysicsAngularVelocityInDegrees: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0
 writeQword(_params + 0x0, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "GetPhysicsAngularVelocityInDegrees", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPhysicsAngularVelocityInDegrees");

BL4.GetPhysicsAngularVelocityInRadians = function(OwnerAddress, BoneName)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPhysicsAngularVelocityInRadians: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0
 writeQword(_params + 0x0, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "GetPhysicsAngularVelocityInRadians", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPhysicsAngularVelocityInRadians");

BL4.GetPhysicsLinearVelocity = function(OwnerAddress, BoneName)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPhysicsLinearVelocity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0
 writeQword(_params + 0x0, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "GetPhysicsLinearVelocity", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPhysicsLinearVelocity");

BL4.GetPhysicsLinearVelocityAtPoint = function(OwnerAddress, Point, BoneName)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPhysicsLinearVelocityAtPoint: Failed To Allocate The Params");return;end;
 Point = Point or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Point at +0x0, BoneName at +0x18
 writeDouble(_params + 0x0, (Point and Point.X) or 0)
 writeDouble(_params + 0x8, (Point and Point.Y) or 0)
 writeDouble(_params + 0x10, (Point and Point.Z) or 0)
 writeQword(_params + 0x18, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "GetPhysicsLinearVelocityAtPoint", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPhysicsLinearVelocityAtPoint");

BL4.GetStaticWhenNotMoveable = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetStaticWhenNotMoveable: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetStaticWhenNotMoveable", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetStaticWhenNotMoveable");

BL4.GetUpdateKinematicFromSimulation = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetUpdateKinematicFromSimulation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetUpdateKinematicFromSimulation", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetUpdateKinematicFromSimulation");

BL4.GetWalkableSlopeOverride = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetWalkableSlopeOverride: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetWalkableSlopeOverride", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetWalkableSlopeOverride");

BL4.IgnoreActorWhenMoving = function(Actor, bShouldIgnore)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IgnoreActorWhenMoving: Failed To Allocate The Params");return;end;
 bShouldIgnore = bShouldIgnore or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Actor at +0x0, bShouldIgnore at +0x8
 writeQword(_params + 0x0, Actor)
 writeByte(_params + 0x8, bShouldIgnore)
 UE.CallProcessEventEx(Actor, "IgnoreActorWhenMoving", _params);
 deAlloc(_params);
end
FNR("BL4.IgnoreActorWhenMoving");

BL4.IgnoreComponentWhenMoving = function(Component_PrimitiveComponent, bShouldIgnore)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IgnoreComponentWhenMoving: Failed To Allocate The Params");return;end;
 bShouldIgnore = bShouldIgnore or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Component at +0x0, bShouldIgnore at +0x8
 writeQword(_params + 0x0, Component_PrimitiveComponent)
 writeByte(_params + 0x8, bShouldIgnore)
 UE.CallProcessEventEx(Component_PrimitiveComponent, "IgnoreComponentWhenMoving", _params);
 deAlloc(_params);
end
FNR("BL4.IgnoreComponentWhenMoving");

BL4.IsAnyRigidBodyAwake = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsAnyRigidBodyAwake: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsAnyRigidBodyAwake", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsAnyRigidBodyAwake");

BL4.IsExcludedFromHLODLevel = function(OwnerAddress, HLODLevel)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsExcludedFromHLODLevel: Failed To Allocate The Params");return;end;
 HLODLevel = HLODLevel or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: HLODLevel at +0x0
 writeByte(_params + 0x0, HLODLevel)
 UE.CallProcessEventEx(OwnerAddress, "IsExcludedFromHLODLevel", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsExcludedFromHLODLevel");

BL4.IsGravityEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsGravityEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsGravityEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsGravityEnabled");

BL4.IsMaterialSlotNameValid = function(OwnerAddress, MaterialSlotName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsMaterialSlotNameValid: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MaterialSlotName at +0x0
 writeQword(_params + 0x0, MaterialSlotName)
 UE.CallProcessEventEx(OwnerAddress, "IsMaterialSlotNameValid", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsMaterialSlotNameValid");

BL4.IsOverlappingActor = function(Other_Actor)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsOverlappingActor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Other at +0x0
 writeQword(_params + 0x0, Other_Actor)
 UE.CallProcessEventEx(Other_Actor, "IsOverlappingActor", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsOverlappingActor");

BL4.IsOverlappingComponent = function(OtherComp_PrimitiveComponent)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsOverlappingComponent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OtherComp at +0x0
 writeQword(_params + 0x0, OtherComp_PrimitiveComponent)
 UE.CallProcessEventEx(OtherComp_PrimitiveComponent, "IsOverlappingComponent", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsOverlappingComponent");

BL4.K2_BoxOverlapComponent = function(OwnerAddress, InBoxCentre, InBox, bTraceComplex, bShowTrace, bPersistentShowTrace, HitLocation, HitNormal, BoneName, OutHit)
 local _paramsSize = 0x198
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_BoxOverlapComponent: Failed To Allocate The Params");return;end;
 InBoxCentre = InBoxCentre or {X=0,Y=0,Z=0}
 bTraceComplex = bTraceComplex or false
 bShowTrace = bShowTrace or false
 bPersistentShowTrace = bPersistentShowTrace or false
 HitLocation = HitLocation or {X=0,Y=0,Z=0}
 HitNormal = HitNormal or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InBoxCentre at +0x0, InBox at +0x18, bTraceComplex at +0x50, bShowTrace at +0x51, bPersistentShowTrace at +0x52, HitLocation at +0x58, HitNormal at +0x70, BoneName at +0x88, OutHit at +0x90
 writeDouble(_params + 0x0, (InBoxCentre and InBoxCentre.X) or 0)
 writeDouble(_params + 0x8, (InBoxCentre and InBoxCentre.Y) or 0)
 writeDouble(_params + 0x10, (InBoxCentre and InBoxCentre.Z) or 0)
 writeQword(_params + 0x18, InBox)
 writeByte(_params + 0x50, bTraceComplex)
 writeByte(_params + 0x51, bShowTrace)
 writeByte(_params + 0x52, bPersistentShowTrace)
 writeDouble(_params + 0x58, (HitLocation and HitLocation.X) or 0)
 writeDouble(_params + 0x60, (HitLocation and HitLocation.Y) or 0)
 writeDouble(_params + 0x68, (HitLocation and HitLocation.Z) or 0)
 writeDouble(_params + 0x70, (HitNormal and HitNormal.X) or 0)
 writeDouble(_params + 0x78, (HitNormal and HitNormal.Y) or 0)
 writeDouble(_params + 0x80, (HitNormal and HitNormal.Z) or 0)
 writeQword(_params + 0x88, BoneName)
 writeQword(_params + 0x90, OutHit)
 UE.CallProcessEventEx(OwnerAddress, "K2_BoxOverlapComponent", _params);
 local RET=readByte(_params + 0x190);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_BoxOverlapComponent");

BL4.K2_IsCollisionEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_IsCollisionEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "K2_IsCollisionEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_IsCollisionEnabled");

BL4.K2_IsPhysicsCollisionEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_IsPhysicsCollisionEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "K2_IsPhysicsCollisionEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_IsPhysicsCollisionEnabled");

BL4.K2_IsQueryCollisionEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_IsQueryCollisionEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "K2_IsQueryCollisionEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_IsQueryCollisionEnabled");

BL4.K2_LineTraceComponent = function(OwnerAddress, TraceStart, TraceEnd, bTraceComplex, bShowTrace, bPersistentShowTrace, HitLocation, HitNormal, BoneName, OutHit)
 local _paramsSize = 0x178
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_LineTraceComponent: Failed To Allocate The Params");return;end;
 TraceStart = TraceStart or {X=0,Y=0,Z=0}
 TraceEnd = TraceEnd or {X=0,Y=0,Z=0}
 bTraceComplex = bTraceComplex or false
 bShowTrace = bShowTrace or false
 bPersistentShowTrace = bPersistentShowTrace or false
 HitLocation = HitLocation or {X=0,Y=0,Z=0}
 HitNormal = HitNormal or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TraceStart at +0x0, TraceEnd at +0x18, bTraceComplex at +0x30, bShowTrace at +0x31, bPersistentShowTrace at +0x32, HitLocation at +0x38, HitNormal at +0x50, BoneName at +0x68, OutHit at +0x70
 writeDouble(_params + 0x0, (TraceStart and TraceStart.X) or 0)
 writeDouble(_params + 0x8, (TraceStart and TraceStart.Y) or 0)
 writeDouble(_params + 0x10, (TraceStart and TraceStart.Z) or 0)
 writeDouble(_params + 0x18, (TraceEnd and TraceEnd.X) or 0)
 writeDouble(_params + 0x20, (TraceEnd and TraceEnd.Y) or 0)
 writeDouble(_params + 0x28, (TraceEnd and TraceEnd.Z) or 0)
 writeByte(_params + 0x30, bTraceComplex)
 writeByte(_params + 0x31, bShowTrace)
 writeByte(_params + 0x32, bPersistentShowTrace)
 writeDouble(_params + 0x38, (HitLocation and HitLocation.X) or 0)
 writeDouble(_params + 0x40, (HitLocation and HitLocation.Y) or 0)
 writeDouble(_params + 0x48, (HitLocation and HitLocation.Z) or 0)
 writeDouble(_params + 0x50, (HitNormal and HitNormal.X) or 0)
 writeDouble(_params + 0x58, (HitNormal and HitNormal.Y) or 0)
 writeDouble(_params + 0x60, (HitNormal and HitNormal.Z) or 0)
 writeQword(_params + 0x68, BoneName)
 writeQword(_params + 0x70, OutHit)
 UE.CallProcessEventEx(OwnerAddress, "K2_LineTraceComponent", _params);
 local RET=readByte(_params + 0x170);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_LineTraceComponent");

BL4.K2_SphereOverlapComponent = function(OwnerAddress, InSphereCentre, InSphereRadius, bTraceComplex, bShowTrace, bPersistentShowTrace, HitLocation, HitNormal, BoneName, OutHit)
 local _paramsSize = 0x160
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_SphereOverlapComponent: Failed To Allocate The Params");return;end;
 InSphereCentre = InSphereCentre or {X=0,Y=0,Z=0}
 InSphereRadius = InSphereRadius or 0
 bTraceComplex = bTraceComplex or false
 bShowTrace = bShowTrace or false
 bPersistentShowTrace = bPersistentShowTrace or false
 HitLocation = HitLocation or {X=0,Y=0,Z=0}
 HitNormal = HitNormal or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSphereCentre at +0x0, InSphereRadius at +0x18, bTraceComplex at +0x1C, bShowTrace at +0x1D, bPersistentShowTrace at +0x1E, HitLocation at +0x20, HitNormal at +0x38, BoneName at +0x50, OutHit at +0x58
 writeDouble(_params + 0x0, (InSphereCentre and InSphereCentre.X) or 0)
 writeDouble(_params + 0x8, (InSphereCentre and InSphereCentre.Y) or 0)
 writeDouble(_params + 0x10, (InSphereCentre and InSphereCentre.Z) or 0)
 writeFloat(_params + 0x18, InSphereRadius)
 writeByte(_params + 0x1C, bTraceComplex)
 writeByte(_params + 0x1D, bShowTrace)
 writeByte(_params + 0x1E, bPersistentShowTrace)
 writeDouble(_params + 0x20, (HitLocation and HitLocation.X) or 0)
 writeDouble(_params + 0x28, (HitLocation and HitLocation.Y) or 0)
 writeDouble(_params + 0x30, (HitLocation and HitLocation.Z) or 0)
 writeDouble(_params + 0x38, (HitNormal and HitNormal.X) or 0)
 writeDouble(_params + 0x40, (HitNormal and HitNormal.Y) or 0)
 writeDouble(_params + 0x48, (HitNormal and HitNormal.Z) or 0)
 writeQword(_params + 0x50, BoneName)
 writeQword(_params + 0x58, OutHit)
 UE.CallProcessEventEx(OwnerAddress, "K2_SphereOverlapComponent", _params);
 local RET=readByte(_params + 0x158);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_SphereOverlapComponent");

BL4.K2_SphereTraceComponent = function(OwnerAddress, TraceStart, TraceEnd, SphereRadius, bTraceComplex, bShowTrace, bPersistentShowTrace, HitLocation, HitNormal, BoneName, OutHit)
 local _paramsSize = 0x178
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_SphereTraceComponent: Failed To Allocate The Params");return;end;
 TraceStart = TraceStart or {X=0,Y=0,Z=0}
 TraceEnd = TraceEnd or {X=0,Y=0,Z=0}
 SphereRadius = SphereRadius or 0
 bTraceComplex = bTraceComplex or false
 bShowTrace = bShowTrace or false
 bPersistentShowTrace = bPersistentShowTrace or false
 HitLocation = HitLocation or {X=0,Y=0,Z=0}
 HitNormal = HitNormal or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TraceStart at +0x0, TraceEnd at +0x18, SphereRadius at +0x30, bTraceComplex at +0x34, bShowTrace at +0x35, bPersistentShowTrace at +0x36, HitLocation at +0x38, HitNormal at +0x50, BoneName at +0x68, OutHit at +0x70
 writeDouble(_params + 0x0, (TraceStart and TraceStart.X) or 0)
 writeDouble(_params + 0x8, (TraceStart and TraceStart.Y) or 0)
 writeDouble(_params + 0x10, (TraceStart and TraceStart.Z) or 0)
 writeDouble(_params + 0x18, (TraceEnd and TraceEnd.X) or 0)
 writeDouble(_params + 0x20, (TraceEnd and TraceEnd.Y) or 0)
 writeDouble(_params + 0x28, (TraceEnd and TraceEnd.Z) or 0)
 writeFloat(_params + 0x30, SphereRadius)
 writeByte(_params + 0x34, bTraceComplex)
 writeByte(_params + 0x35, bShowTrace)
 writeByte(_params + 0x36, bPersistentShowTrace)
 writeDouble(_params + 0x38, (HitLocation and HitLocation.X) or 0)
 writeDouble(_params + 0x40, (HitLocation and HitLocation.Y) or 0)
 writeDouble(_params + 0x48, (HitLocation and HitLocation.Z) or 0)
 writeDouble(_params + 0x50, (HitNormal and HitNormal.X) or 0)
 writeDouble(_params + 0x58, (HitNormal and HitNormal.Y) or 0)
 writeDouble(_params + 0x60, (HitNormal and HitNormal.Z) or 0)
 writeQword(_params + 0x68, BoneName)
 writeQword(_params + 0x70, OutHit)
 UE.CallProcessEventEx(OwnerAddress, "K2_SphereTraceComponent", _params);
 local RET=readByte(_params + 0x170);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_SphereTraceComponent");

BL4.PutRigidBodyToSleep = function(OwnerAddress, BoneName)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PutRigidBodyToSleep: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0
 writeQword(_params + 0x0, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "PutRigidBodyToSleep", _params);
 deAlloc(_params);
end
FNR("BL4.PutRigidBodyToSleep");

BL4.ScaleByMomentOfInertia = function(OwnerAddress, InputVector, BoneName)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ScaleByMomentOfInertia: Failed To Allocate The Params");return;end;
 InputVector = InputVector or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InputVector at +0x0, BoneName at +0x18
 writeDouble(_params + 0x0, (InputVector and InputVector.X) or 0)
 writeDouble(_params + 0x8, (InputVector and InputVector.Y) or 0)
 writeDouble(_params + 0x10, (InputVector and InputVector.Z) or 0)
 writeQword(_params + 0x18, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "ScaleByMomentOfInertia", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.ScaleByMomentOfInertia");

BL4.SetAffectDistanceFieldLighting = function(OwnerAddress, NewAffectDistanceFieldLighting)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAffectDistanceFieldLighting: Failed To Allocate The Params");return;end;
 NewAffectDistanceFieldLighting = NewAffectDistanceFieldLighting or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewAffectDistanceFieldLighting at +0x0
 writeByte(_params + 0x0, NewAffectDistanceFieldLighting)
 UE.CallProcessEventEx(OwnerAddress, "SetAffectDistanceFieldLighting", _params);
 deAlloc(_params);
end
FNR("BL4.SetAffectDistanceFieldLighting");

BL4.SetAffectDynamicIndirectLighting = function(OwnerAddress, bNewAffectDynamicIndirectLighting)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAffectDynamicIndirectLighting: Failed To Allocate The Params");return;end;
 bNewAffectDynamicIndirectLighting = bNewAffectDynamicIndirectLighting or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bNewAffectDynamicIndirectLighting at +0x0
 writeByte(_params + 0x0, bNewAffectDynamicIndirectLighting)
 UE.CallProcessEventEx(OwnerAddress, "SetAffectDynamicIndirectLighting", _params);
 deAlloc(_params);
end
FNR("BL4.SetAffectDynamicIndirectLighting");

BL4.SetAffectIndirectLightingWhileHidden = function(OwnerAddress, bNewAffectIndirectLightingWhileHidden)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAffectIndirectLightingWhileHidden: Failed To Allocate The Params");return;end;
 bNewAffectIndirectLightingWhileHidden = bNewAffectIndirectLightingWhileHidden or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bNewAffectIndirectLightingWhileHidden at +0x0
 writeByte(_params + 0x0, bNewAffectIndirectLightingWhileHidden)
 UE.CallProcessEventEx(OwnerAddress, "SetAffectIndirectLightingWhileHidden", _params);
 deAlloc(_params);
end
FNR("BL4.SetAffectIndirectLightingWhileHidden");

BL4.SetAllMassScale = function(OwnerAddress, InMassScale)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAllMassScale: Failed To Allocate The Params");return;end;
 InMassScale = InMassScale or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InMassScale at +0x0
 writeFloat(_params + 0x0, InMassScale)
 UE.CallProcessEventEx(OwnerAddress, "SetAllMassScale", _params);
 deAlloc(_params);
end
FNR("BL4.SetAllMassScale");

BL4.SetAllPhysicsAngularVelocityInDegrees = function(OwnerAddress, NewAngVel, bAddToCurrent)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAllPhysicsAngularVelocityInDegrees: Failed To Allocate The Params");return;end;
 NewAngVel = NewAngVel or {X=0,Y=0,Z=0}
 bAddToCurrent = bAddToCurrent or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewAngVel at +0x0, bAddToCurrent at +0x18
 writeDouble(_params + 0x0, (NewAngVel and NewAngVel.X) or 0)
 writeDouble(_params + 0x8, (NewAngVel and NewAngVel.Y) or 0)
 writeDouble(_params + 0x10, (NewAngVel and NewAngVel.Z) or 0)
 writeByte(_params + 0x18, bAddToCurrent)
 UE.CallProcessEventEx(OwnerAddress, "SetAllPhysicsAngularVelocityInDegrees", _params);
 deAlloc(_params);
end
FNR("BL4.SetAllPhysicsAngularVelocityInDegrees");

BL4.SetAllPhysicsAngularVelocityInRadians = function(OwnerAddress, NewAngVel, bAddToCurrent)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAllPhysicsAngularVelocityInRadians: Failed To Allocate The Params");return;end;
 NewAngVel = NewAngVel or {X=0,Y=0,Z=0}
 bAddToCurrent = bAddToCurrent or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewAngVel at +0x0, bAddToCurrent at +0x18
 writeDouble(_params + 0x0, (NewAngVel and NewAngVel.X) or 0)
 writeDouble(_params + 0x8, (NewAngVel and NewAngVel.Y) or 0)
 writeDouble(_params + 0x10, (NewAngVel and NewAngVel.Z) or 0)
 writeByte(_params + 0x18, bAddToCurrent)
 UE.CallProcessEventEx(OwnerAddress, "SetAllPhysicsAngularVelocityInRadians", _params);
 deAlloc(_params);
end
FNR("BL4.SetAllPhysicsAngularVelocityInRadians");

BL4.SetAllPhysicsLinearVelocity = function(OwnerAddress, NewVel, bAddToCurrent)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAllPhysicsLinearVelocity: Failed To Allocate The Params");return;end;
 NewVel = NewVel or {X=0,Y=0,Z=0}
 bAddToCurrent = bAddToCurrent or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewVel at +0x0, bAddToCurrent at +0x18
 writeDouble(_params + 0x0, (NewVel and NewVel.X) or 0)
 writeDouble(_params + 0x8, (NewVel and NewVel.Y) or 0)
 writeDouble(_params + 0x10, (NewVel and NewVel.Z) or 0)
 writeByte(_params + 0x18, bAddToCurrent)
 UE.CallProcessEventEx(OwnerAddress, "SetAllPhysicsLinearVelocity", _params);
 deAlloc(_params);
end
FNR("BL4.SetAllPhysicsLinearVelocity");

BL4.SetAllUseCCD = function(OwnerAddress, InUseCCD)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAllUseCCD: Failed To Allocate The Params");return;end;
 InUseCCD = InUseCCD or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InUseCCD at +0x0
 writeByte(_params + 0x0, InUseCCD)
 UE.CallProcessEventEx(OwnerAddress, "SetAllUseCCD", _params);
 deAlloc(_params);
end
FNR("BL4.SetAllUseCCD");

BL4.SetAllUseMACD = function(OwnerAddress, InUseMACD)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAllUseMACD: Failed To Allocate The Params");return;end;
 InUseMACD = InUseMACD or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InUseMACD at +0x0
 writeByte(_params + 0x0, InUseMACD)
 UE.CallProcessEventEx(OwnerAddress, "SetAllUseMACD", _params);
 deAlloc(_params);
end
FNR("BL4.SetAllUseMACD");

BL4.SetAngularDamping = function(OwnerAddress, InDamping)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAngularDamping: Failed To Allocate The Params");return;end;
 InDamping = InDamping or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InDamping at +0x0
 writeFloat(_params + 0x0, InDamping)
 UE.CallProcessEventEx(OwnerAddress, "SetAngularDamping", _params);
 deAlloc(_params);
end
FNR("BL4.SetAngularDamping");

BL4.SetBoundsScale = function(OwnerAddress, NewBoundsScale)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBoundsScale: Failed To Allocate The Params");return;end;
 NewBoundsScale = NewBoundsScale or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewBoundsScale at +0x0
 writeFloat(_params + 0x0, NewBoundsScale)
 UE.CallProcessEventEx(OwnerAddress, "SetBoundsScale", _params);
 deAlloc(_params);
end
FNR("BL4.SetBoundsScale");

BL4.SetCastContactShadow = function(OwnerAddress, bInCastContactShadow)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCastContactShadow: Failed To Allocate The Params");return;end;
 bInCastContactShadow = bInCastContactShadow or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInCastContactShadow at +0x0
 writeByte(_params + 0x0, bInCastContactShadow)
 UE.CallProcessEventEx(OwnerAddress, "SetCastContactShadow", _params);
 deAlloc(_params);
end
FNR("BL4.SetCastContactShadow");

BL4.SetCastHiddenShadow = function(OwnerAddress, NewCastHiddenShadow)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCastHiddenShadow: Failed To Allocate The Params");return;end;
 NewCastHiddenShadow = NewCastHiddenShadow or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewCastHiddenShadow at +0x0
 writeByte(_params + 0x0, NewCastHiddenShadow)
 UE.CallProcessEventEx(OwnerAddress, "SetCastHiddenShadow", _params);
 deAlloc(_params);
end
FNR("BL4.SetCastHiddenShadow");

BL4.SetCastInsetShadow = function(OwnerAddress, bInCastInsetShadow)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCastInsetShadow: Failed To Allocate The Params");return;end;
 bInCastInsetShadow = bInCastInsetShadow or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInCastInsetShadow at +0x0
 writeByte(_params + 0x0, bInCastInsetShadow)
 UE.CallProcessEventEx(OwnerAddress, "SetCastInsetShadow", _params);
 deAlloc(_params);
end
FNR("BL4.SetCastInsetShadow");

BL4.SetCastShadow = function(OwnerAddress, NewCastShadow)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCastShadow: Failed To Allocate The Params");return;end;
 NewCastShadow = NewCastShadow or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewCastShadow at +0x0
 writeByte(_params + 0x0, NewCastShadow)
 UE.CallProcessEventEx(OwnerAddress, "SetCastShadow", _params);
 deAlloc(_params);
end
FNR("BL4.SetCastShadow");

BL4.SetCenterOfMass = function(OwnerAddress, CenterOfMassOffset, BoneName)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCenterOfMass: Failed To Allocate The Params");return;end;
 CenterOfMassOffset = CenterOfMassOffset or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CenterOfMassOffset at +0x0, BoneName at +0x18
 writeDouble(_params + 0x0, (CenterOfMassOffset and CenterOfMassOffset.X) or 0)
 writeDouble(_params + 0x8, (CenterOfMassOffset and CenterOfMassOffset.Y) or 0)
 writeDouble(_params + 0x10, (CenterOfMassOffset and CenterOfMassOffset.Z) or 0)
 writeQword(_params + 0x18, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "SetCenterOfMass", _params);
 deAlloc(_params);
end
FNR("BL4.SetCenterOfMass");

BL4.SetCollisionEnabled = function(OwnerAddress, NewType)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCollisionEnabled: Failed To Allocate The Params");return;end;
 NewType = NewType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewType at +0x0
 writeByte(_params + 0x0, NewType)
 UE.CallProcessEventEx(OwnerAddress, "SetCollisionEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetCollisionEnabled");

BL4.SetCollisionObjectType = function(OwnerAddress, channel)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCollisionObjectType: Failed To Allocate The Params");return;end;
 channel = channel or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: channel at +0x0
 writeByte(_params + 0x0, channel)
 UE.CallProcessEventEx(OwnerAddress, "SetCollisionObjectType", _params);
 deAlloc(_params);
end
FNR("BL4.SetCollisionObjectType");

BL4.SetCollisionProfileName = function(OwnerAddress, InCollisionProfileName, bUpdateOverlaps)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCollisionProfileName: Failed To Allocate The Params");return;end;
 bUpdateOverlaps = bUpdateOverlaps or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InCollisionProfileName at +0x0, bUpdateOverlaps at +0x8
 writeQword(_params + 0x0, InCollisionProfileName)
 writeByte(_params + 0x8, bUpdateOverlaps)
 UE.CallProcessEventEx(OwnerAddress, "SetCollisionProfileName", _params);
 deAlloc(_params);
end
FNR("BL4.SetCollisionProfileName");

BL4.SetCollisionResponseToAllChannels = function(OwnerAddress, NewResponse)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCollisionResponseToAllChannels: Failed To Allocate The Params");return;end;
 NewResponse = NewResponse or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewResponse at +0x0
 writeByte(_params + 0x0, NewResponse)
 UE.CallProcessEventEx(OwnerAddress, "SetCollisionResponseToAllChannels", _params);
 deAlloc(_params);
end
FNR("BL4.SetCollisionResponseToAllChannels");

BL4.SetCollisionResponseToChannel = function(OwnerAddress, channel, NewResponse)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCollisionResponseToChannel: Failed To Allocate The Params");return;end;
 channel = channel or 0
 NewResponse = NewResponse or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: channel at +0x0, NewResponse at +0x1
 writeByte(_params + 0x0, channel)
 writeByte(_params + 0x1, NewResponse)
 UE.CallProcessEventEx(OwnerAddress, "SetCollisionResponseToChannel", _params);
 deAlloc(_params);
end
FNR("BL4.SetCollisionResponseToChannel");

BL4.SetConstraintMode = function(OwnerAddress, ConstraintMode)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetConstraintMode: Failed To Allocate The Params");return;end;
 ConstraintMode = ConstraintMode or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: ConstraintMode at +0x0
 writeByte(_params + 0x0, ConstraintMode)
 UE.CallProcessEventEx(OwnerAddress, "SetConstraintMode", _params);
 deAlloc(_params);
end
FNR("BL4.SetConstraintMode");

BL4.SetCullDistance = function(OwnerAddress, NewCullDistance)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCullDistance: Failed To Allocate The Params");return;end;
 NewCullDistance = NewCullDistance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewCullDistance at +0x0
 writeFloat(_params + 0x0, NewCullDistance)
 UE.CallProcessEventEx(OwnerAddress, "SetCullDistance", _params);
 deAlloc(_params);
end
FNR("BL4.SetCullDistance");

BL4.SetCustomColorValue = function(OwnerAddress, ViewIndex, Value)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomColorValue: Failed To Allocate The Params");return;end;
 ViewIndex = ViewIndex or 0
 Value = Value or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ViewIndex at +0x0, Value at +0x4
 writeInteger(_params + 0x0, ViewIndex)
 writeFloat(_params + 0x4, (Value and Value.R) or 0)
 writeFloat(_params + 0x8, (Value and Value.G) or 0)
 writeFloat(_params + 0xC, (Value and Value.B) or 0)
 writeFloat(_params + 0x10, (Value and Value.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomColorValue", _params);
 deAlloc(_params);
end
FNR("BL4.SetCustomColorValue");

BL4.SetCustomDepthOnView = function(OwnerAddress, ViewIndex, Value)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomDepthOnView: Failed To Allocate The Params");return;end;
 ViewIndex = ViewIndex or 0
 Value = Value or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: ViewIndex at +0x0, Value at +0x4
 writeInteger(_params + 0x0, ViewIndex)
 writeByte(_params + 0x4, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomDepthOnView", _params);
 deAlloc(_params);
end
FNR("BL4.SetCustomDepthOnView");

BL4.SetCustomDepthStencilValue = function(OwnerAddress, Value)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomDepthStencilValue: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeInteger(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomDepthStencilValue", _params);
 deAlloc(_params);
end
FNR("BL4.SetCustomDepthStencilValue");

BL4.SetCustomDepthStencilWriteMask = function(OwnerAddress, WriteMaskBit)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomDepthStencilWriteMask: Failed To Allocate The Params");return;end;
 WriteMaskBit = WriteMaskBit or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: WriteMaskBit at +0x0
 writeByte(_params + 0x0, WriteMaskBit)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomDepthStencilWriteMask", _params);
 deAlloc(_params);
end
FNR("BL4.SetCustomDepthStencilWriteMask");

BL4.SetCustomGlowMaterial = function(CustomGlowMaterial_MaterialInterface)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomGlowMaterial: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: CustomGlowMaterial at +0x0
 writeQword(_params + 0x0, CustomGlowMaterial_MaterialInterface)
 UE.CallProcessEventEx(CustomGlowMaterial_MaterialInterface, "SetCustomGlowMaterial", _params);
 deAlloc(_params);
end
FNR("BL4.SetCustomGlowMaterial");

BL4.SetCustomMaskMaterial = function(CustomMaskMaterial_MaterialInterface)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomMaskMaterial: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: CustomMaskMaterial at +0x0
 writeQword(_params + 0x0, CustomMaskMaterial_MaterialInterface)
 UE.CallProcessEventEx(CustomMaskMaterial_MaterialInterface, "SetCustomMaskMaterial", _params);
 deAlloc(_params);
end
FNR("BL4.SetCustomMaskMaterial");

BL4.SetCustomPrimitiveDataFloat = function(OwnerAddress, DataIndex, Value)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomPrimitiveDataFloat: Failed To Allocate The Params");return;end;
 DataIndex = DataIndex or 0
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: DataIndex at +0x0, Value at +0x4
 writeInteger(_params + 0x0, DataIndex)
 writeFloat(_params + 0x4, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomPrimitiveDataFloat", _params);
 deAlloc(_params);
end
FNR("BL4.SetCustomPrimitiveDataFloat");

BL4.SetCustomPrimitiveDataVector2 = function(OwnerAddress, DataIndex, Value)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomPrimitiveDataVector2: Failed To Allocate The Params");return;end;
 DataIndex = DataIndex or 0
 Value = Value or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DataIndex at +0x0, Value at +0x8
 writeInteger(_params + 0x0, DataIndex)
 writeDouble(_params + 0x8, (Value and Value.X) or 0)
 writeDouble(_params + 0x10, (Value and Value.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomPrimitiveDataVector2", _params);
 deAlloc(_params);
end
FNR("BL4.SetCustomPrimitiveDataVector2");

BL4.SetCustomPrimitiveDataVector3 = function(OwnerAddress, DataIndex, Value)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomPrimitiveDataVector3: Failed To Allocate The Params");return;end;
 DataIndex = DataIndex or 0
 Value = Value or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DataIndex at +0x0, Value at +0x8
 writeInteger(_params + 0x0, DataIndex)
 writeDouble(_params + 0x8, (Value and Value.X) or 0)
 writeDouble(_params + 0x10, (Value and Value.Y) or 0)
 writeDouble(_params + 0x18, (Value and Value.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomPrimitiveDataVector3", _params);
 deAlloc(_params);
end
FNR("BL4.SetCustomPrimitiveDataVector3");

BL4.SetCustomPrimitiveDataVector4 = function(OwnerAddress, DataIndex, Value)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomPrimitiveDataVector4: Failed To Allocate The Params");return;end;
 DataIndex = DataIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DataIndex at +0x0, Value at +0x10
 writeInteger(_params + 0x0, DataIndex)
 writeQword(_params + 0x10, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomPrimitiveDataVector4", _params);
 deAlloc(_params);
end
FNR("BL4.SetCustomPrimitiveDataVector4");

BL4.SetDefaultCustomPrimitiveDataFloat = function(OwnerAddress, DataIndex, Value)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDefaultCustomPrimitiveDataFloat: Failed To Allocate The Params");return;end;
 DataIndex = DataIndex or 0
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: DataIndex at +0x0, Value at +0x4
 writeInteger(_params + 0x0, DataIndex)
 writeFloat(_params + 0x4, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetDefaultCustomPrimitiveDataFloat", _params);
 deAlloc(_params);
end
FNR("BL4.SetDefaultCustomPrimitiveDataFloat");

BL4.SetDefaultCustomPrimitiveDataVector2 = function(OwnerAddress, DataIndex, Value)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDefaultCustomPrimitiveDataVector2: Failed To Allocate The Params");return;end;
 DataIndex = DataIndex or 0
 Value = Value or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DataIndex at +0x0, Value at +0x8
 writeInteger(_params + 0x0, DataIndex)
 writeDouble(_params + 0x8, (Value and Value.X) or 0)
 writeDouble(_params + 0x10, (Value and Value.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetDefaultCustomPrimitiveDataVector2", _params);
 deAlloc(_params);
end
FNR("BL4.SetDefaultCustomPrimitiveDataVector2");

BL4.SetDefaultCustomPrimitiveDataVector3 = function(OwnerAddress, DataIndex, Value)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDefaultCustomPrimitiveDataVector3: Failed To Allocate The Params");return;end;
 DataIndex = DataIndex or 0
 Value = Value or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DataIndex at +0x0, Value at +0x8
 writeInteger(_params + 0x0, DataIndex)
 writeDouble(_params + 0x8, (Value and Value.X) or 0)
 writeDouble(_params + 0x10, (Value and Value.Y) or 0)
 writeDouble(_params + 0x18, (Value and Value.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetDefaultCustomPrimitiveDataVector3", _params);
 deAlloc(_params);
end
FNR("BL4.SetDefaultCustomPrimitiveDataVector3");

BL4.SetDefaultCustomPrimitiveDataVector4 = function(OwnerAddress, DataIndex, Value)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDefaultCustomPrimitiveDataVector4: Failed To Allocate The Params");return;end;
 DataIndex = DataIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DataIndex at +0x0, Value at +0x10
 writeInteger(_params + 0x0, DataIndex)
 writeQword(_params + 0x10, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetDefaultCustomPrimitiveDataVector4", _params);
 deAlloc(_params);
end
FNR("BL4.SetDefaultCustomPrimitiveDataVector4");

BL4.SetEmissiveLightSource = function(OwnerAddress, NewEmissiveLightSource)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetEmissiveLightSource: Failed To Allocate The Params");return;end;
 NewEmissiveLightSource = NewEmissiveLightSource or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewEmissiveLightSource at +0x0
 writeByte(_params + 0x0, NewEmissiveLightSource)
 UE.CallProcessEventEx(OwnerAddress, "SetEmissiveLightSource", _params);
 deAlloc(_params);
end
FNR("BL4.SetEmissiveLightSource");

BL4.SetEnableGravity = function(OwnerAddress, bGravityEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetEnableGravity: Failed To Allocate The Params");return;end;
 bGravityEnabled = bGravityEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bGravityEnabled at +0x0
 writeByte(_params + 0x0, bGravityEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetEnableGravity", _params);
 deAlloc(_params);
end
FNR("BL4.SetEnableGravity");

BL4.SetExcludedFromHLODLevel = function(OwnerAddress, HLODLevel, bExcluded)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetExcludedFromHLODLevel: Failed To Allocate The Params");return;end;
 HLODLevel = HLODLevel or 0
 bExcluded = bExcluded or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: HLODLevel at +0x0, bExcluded at +0x1
 writeByte(_params + 0x0, HLODLevel)
 writeByte(_params + 0x1, bExcluded)
 UE.CallProcessEventEx(OwnerAddress, "SetExcludedFromHLODLevel", _params);
 deAlloc(_params);
end
FNR("BL4.SetExcludedFromHLODLevel");

BL4.SetExcludeForSpecificHLODLevels = function(OwnerAddress, InExcludeForSpecificHLODLevels)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetExcludeForSpecificHLODLevels: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InExcludeForSpecificHLODLevels at +0x0
 writeQword(_params + 0x0, InExcludeForSpecificHLODLevels)
 UE.CallProcessEventEx(OwnerAddress, "SetExcludeForSpecificHLODLevels", _params);
 deAlloc(_params);
end
FNR("BL4.SetExcludeForSpecificHLODLevels");

BL4.SetExcludeFromLightAttachmentGroup = function(OwnerAddress, bInExcludeFromLightAttachmentGroup)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetExcludeFromLightAttachmentGroup: Failed To Allocate The Params");return;end;
 bInExcludeFromLightAttachmentGroup = bInExcludeFromLightAttachmentGroup or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInExcludeFromLightAttachmentGroup at +0x0
 writeByte(_params + 0x0, bInExcludeFromLightAttachmentGroup)
 UE.CallProcessEventEx(OwnerAddress, "SetExcludeFromLightAttachmentGroup", _params);
 deAlloc(_params);
end
FNR("BL4.SetExcludeFromLightAttachmentGroup");

BL4.SetFirstPersonPrimitiveType = function(OwnerAddress, Value)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetFirstPersonPrimitiveType: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeByte(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetFirstPersonPrimitiveType", _params);
 deAlloc(_params);
end
FNR("BL4.SetFirstPersonPrimitiveType");

BL4.SetForceEdgeDetectionOff = function(OwnerAddress, bNewForceEdgeDetectionOff)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetForceEdgeDetectionOff: Failed To Allocate The Params");return;end;
 bNewForceEdgeDetectionOff = bNewForceEdgeDetectionOff or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bNewForceEdgeDetectionOff at +0x0
 writeByte(_params + 0x0, bNewForceEdgeDetectionOff)
 UE.CallProcessEventEx(OwnerAddress, "SetForceEdgeDetectionOff", _params);
 deAlloc(_params);
end
FNR("BL4.SetForceEdgeDetectionOff");

BL4.SetGbxForeground = function(OwnerAddress, bNewGbxForeground)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetGbxForeground: Failed To Allocate The Params");return;end;
 bNewGbxForeground = bNewGbxForeground or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bNewGbxForeground at +0x0
 writeByte(_params + 0x0, bNewGbxForeground)
 UE.CallProcessEventEx(OwnerAddress, "SetGbxForeground", _params);
 deAlloc(_params);
end
FNR("BL4.SetGbxForeground");

BL4.SetGenerateOverlapEvents = function(OwnerAddress, bInGenerateOverlapEvents)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetGenerateOverlapEvents: Failed To Allocate The Params");return;end;
 bInGenerateOverlapEvents = bInGenerateOverlapEvents or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInGenerateOverlapEvents at +0x0
 writeByte(_params + 0x0, bInGenerateOverlapEvents)
 UE.CallProcessEventEx(OwnerAddress, "SetGenerateOverlapEvents", _params);
 deAlloc(_params);
end
FNR("BL4.SetGenerateOverlapEvents");

BL4.SetHiddenInSceneCapture = function(OwnerAddress, bValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetHiddenInSceneCapture: Failed To Allocate The Params");return;end;
 bValue = bValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bValue at +0x0
 writeByte(_params + 0x0, bValue)
 UE.CallProcessEventEx(OwnerAddress, "SetHiddenInSceneCapture", _params);
 deAlloc(_params);
end
FNR("BL4.SetHiddenInSceneCapture");

BL4.SetHoldout = function(OwnerAddress, bNewHoldout)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetHoldout: Failed To Allocate The Params");return;end;
 bNewHoldout = bNewHoldout or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bNewHoldout at +0x0
 writeByte(_params + 0x0, bNewHoldout)
 UE.CallProcessEventEx(OwnerAddress, "SetHoldout", _params);
 deAlloc(_params);
end
FNR("BL4.SetHoldout");

BL4.SetIgnoreBoundsForEditorFocus = function(OwnerAddress, bIgnore)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetIgnoreBoundsForEditorFocus: Failed To Allocate The Params");return;end;
 bIgnore = bIgnore or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bIgnore at +0x0
 writeByte(_params + 0x0, bIgnore)
 UE.CallProcessEventEx(OwnerAddress, "SetIgnoreBoundsForEditorFocus", _params);
 deAlloc(_params);
end
FNR("BL4.SetIgnoreBoundsForEditorFocus");

BL4.SetLightAttachmentsAsGroup = function(OwnerAddress, bInLightAttachmentsAsGroup)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLightAttachmentsAsGroup: Failed To Allocate The Params");return;end;
 bInLightAttachmentsAsGroup = bInLightAttachmentsAsGroup or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInLightAttachmentsAsGroup at +0x0
 writeByte(_params + 0x0, bInLightAttachmentsAsGroup)
 UE.CallProcessEventEx(OwnerAddress, "SetLightAttachmentsAsGroup", _params);
 deAlloc(_params);
end
FNR("BL4.SetLightAttachmentsAsGroup");

BL4.SetLightingChannels = function(OwnerAddress, bChannel0, bChannel1, bChannel2)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLightingChannels: Failed To Allocate The Params");return;end;
 bChannel0 = bChannel0 or false
 bChannel1 = bChannel1 or false
 bChannel2 = bChannel2 or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bChannel0 at +0x0, bChannel1 at +0x1, bChannel2 at +0x2
 writeByte(_params + 0x0, bChannel0)
 writeByte(_params + 0x1, bChannel1)
 writeByte(_params + 0x2, bChannel2)
 UE.CallProcessEventEx(OwnerAddress, "SetLightingChannels", _params);
 deAlloc(_params);
end
FNR("BL4.SetLightingChannels");

BL4.SetLinearDamping = function(OwnerAddress, InDamping)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLinearDamping: Failed To Allocate The Params");return;end;
 InDamping = InDamping or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InDamping at +0x0
 writeFloat(_params + 0x0, InDamping)
 UE.CallProcessEventEx(OwnerAddress, "SetLinearDamping", _params);
 deAlloc(_params);
end
FNR("BL4.SetLinearDamping");

BL4.SetMassOverrideInKg = function(OwnerAddress, BoneName, MassInKg, bOverrideMass)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMassOverrideInKg: Failed To Allocate The Params");return;end;
 MassInKg = MassInKg or 0
 bOverrideMass = bOverrideMass or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0, MassInKg at +0x8, bOverrideMass at +0xC
 writeQword(_params + 0x0, BoneName)
 writeFloat(_params + 0x8, MassInKg)
 writeByte(_params + 0xC, bOverrideMass)
 UE.CallProcessEventEx(OwnerAddress, "SetMassOverrideInKg", _params);
 deAlloc(_params);
end
FNR("BL4.SetMassOverrideInKg");

BL4.SetMassScale = function(OwnerAddress, BoneName, InMassScale)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMassScale: Failed To Allocate The Params");return;end;
 InMassScale = InMassScale or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0, InMassScale at +0x8
 writeQword(_params + 0x0, BoneName)
 writeFloat(_params + 0x8, InMassScale)
 UE.CallProcessEventEx(OwnerAddress, "SetMassScale", _params);
 deAlloc(_params);
end
FNR("BL4.SetMassScale");

BL4.SetMaterial = function(OwnerAddress, ElementIndex, Material_MaterialInterface)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMaterial: Failed To Allocate The Params");return;end;
 ElementIndex = ElementIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ElementIndex at +0x0, Material at +0x8
 writeInteger(_params + 0x0, ElementIndex)
 writeQword(_params + 0x8, Material_MaterialInterface)
 UE.CallProcessEventEx(OwnerAddress, "SetMaterial", _params);
 deAlloc(_params);
end
FNR("BL4.SetMaterial");

BL4.SetMaterialByName = function(OwnerAddress, MaterialSlotName, Material_MaterialInterface)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMaterialByName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MaterialSlotName at +0x0, Material at +0x8
 writeQword(_params + 0x0, MaterialSlotName)
 writeQword(_params + 0x8, Material_MaterialInterface)
 UE.CallProcessEventEx(OwnerAddress, "SetMaterialByName", _params);
 deAlloc(_params);
end
FNR("BL4.SetMaterialByName");

BL4.SetMaxDepenetrationVelocity = function(OwnerAddress, BoneName, InMaxDepenetrationVelocity)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMaxDepenetrationVelocity: Failed To Allocate The Params");return;end;
 InMaxDepenetrationVelocity = InMaxDepenetrationVelocity or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0, InMaxDepenetrationVelocity at +0x8
 writeQword(_params + 0x0, BoneName)
 writeFloat(_params + 0x8, InMaxDepenetrationVelocity)
 UE.CallProcessEventEx(OwnerAddress, "SetMaxDepenetrationVelocity", _params);
 deAlloc(_params);
end
FNR("BL4.SetMaxDepenetrationVelocity");

BL4.SetNotifyRigidBodyCollision = function(OwnerAddress, bNewNotifyRigidBodyCollision)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNotifyRigidBodyCollision: Failed To Allocate The Params");return;end;
 bNewNotifyRigidBodyCollision = bNewNotifyRigidBodyCollision or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bNewNotifyRigidBodyCollision at +0x0
 writeByte(_params + 0x0, bNewNotifyRigidBodyCollision)
 UE.CallProcessEventEx(OwnerAddress, "SetNotifyRigidBodyCollision", _params);
 deAlloc(_params);
end
FNR("BL4.SetNotifyRigidBodyCollision");

BL4.SetOnlyOwnerSee = function(OwnerAddress, bNewOnlyOwnerSee)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetOnlyOwnerSee: Failed To Allocate The Params");return;end;
 bNewOnlyOwnerSee = bNewOnlyOwnerSee or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bNewOnlyOwnerSee at +0x0
 writeByte(_params + 0x0, bNewOnlyOwnerSee)
 UE.CallProcessEventEx(OwnerAddress, "SetOnlyOwnerSee", _params);
 deAlloc(_params);
end
FNR("BL4.SetOnlyOwnerSee");

BL4.SetOwnerNoSee = function(OwnerAddress, bNewOwnerNoSee)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetOwnerNoSee: Failed To Allocate The Params");return;end;
 bNewOwnerNoSee = bNewOwnerNoSee or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bNewOwnerNoSee at +0x0
 writeByte(_params + 0x0, bNewOwnerNoSee)
 UE.CallProcessEventEx(OwnerAddress, "SetOwnerNoSee", _params);
 deAlloc(_params);
end
FNR("BL4.SetOwnerNoSee");

BL4.SetPhysicsAngularVelocityInDegrees = function(OwnerAddress, NewAngVel, bAddToCurrent, BoneName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPhysicsAngularVelocityInDegrees: Failed To Allocate The Params");return;end;
 NewAngVel = NewAngVel or {X=0,Y=0,Z=0}
 bAddToCurrent = bAddToCurrent or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewAngVel at +0x0, bAddToCurrent at +0x18, BoneName at +0x1C
 writeDouble(_params + 0x0, (NewAngVel and NewAngVel.X) or 0)
 writeDouble(_params + 0x8, (NewAngVel and NewAngVel.Y) or 0)
 writeDouble(_params + 0x10, (NewAngVel and NewAngVel.Z) or 0)
 writeByte(_params + 0x18, bAddToCurrent)
 writeQword(_params + 0x1C, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "SetPhysicsAngularVelocityInDegrees", _params);
 deAlloc(_params);
end
FNR("BL4.SetPhysicsAngularVelocityInDegrees");

BL4.SetPhysicsAngularVelocityInRadians = function(OwnerAddress, NewAngVel, bAddToCurrent, BoneName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPhysicsAngularVelocityInRadians: Failed To Allocate The Params");return;end;
 NewAngVel = NewAngVel or {X=0,Y=0,Z=0}
 bAddToCurrent = bAddToCurrent or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewAngVel at +0x0, bAddToCurrent at +0x18, BoneName at +0x1C
 writeDouble(_params + 0x0, (NewAngVel and NewAngVel.X) or 0)
 writeDouble(_params + 0x8, (NewAngVel and NewAngVel.Y) or 0)
 writeDouble(_params + 0x10, (NewAngVel and NewAngVel.Z) or 0)
 writeByte(_params + 0x18, bAddToCurrent)
 writeQword(_params + 0x1C, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "SetPhysicsAngularVelocityInRadians", _params);
 deAlloc(_params);
end
FNR("BL4.SetPhysicsAngularVelocityInRadians");

BL4.SetPhysicsLinearVelocity = function(OwnerAddress, NewVel, bAddToCurrent, BoneName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPhysicsLinearVelocity: Failed To Allocate The Params");return;end;
 NewVel = NewVel or {X=0,Y=0,Z=0}
 bAddToCurrent = bAddToCurrent or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewVel at +0x0, bAddToCurrent at +0x18, BoneName at +0x1C
 writeDouble(_params + 0x0, (NewVel and NewVel.X) or 0)
 writeDouble(_params + 0x8, (NewVel and NewVel.Y) or 0)
 writeDouble(_params + 0x10, (NewVel and NewVel.Z) or 0)
 writeByte(_params + 0x18, bAddToCurrent)
 writeQword(_params + 0x1C, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "SetPhysicsLinearVelocity", _params);
 deAlloc(_params);
end
FNR("BL4.SetPhysicsLinearVelocity");

BL4.SetPhysicsMaxAngularVelocityInDegrees = function(OwnerAddress, NewMaxAngVel, bAddToCurrent, BoneName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPhysicsMaxAngularVelocityInDegrees: Failed To Allocate The Params");return;end;
 NewMaxAngVel = NewMaxAngVel or 0
 bAddToCurrent = bAddToCurrent or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewMaxAngVel at +0x0, bAddToCurrent at +0x4, BoneName at +0x8
 writeFloat(_params + 0x0, NewMaxAngVel)
 writeByte(_params + 0x4, bAddToCurrent)
 writeQword(_params + 0x8, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "SetPhysicsMaxAngularVelocityInDegrees", _params);
 deAlloc(_params);
end
FNR("BL4.SetPhysicsMaxAngularVelocityInDegrees");

BL4.SetPhysicsMaxAngularVelocityInRadians = function(OwnerAddress, NewMaxAngVel, bAddToCurrent, BoneName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPhysicsMaxAngularVelocityInRadians: Failed To Allocate The Params");return;end;
 NewMaxAngVel = NewMaxAngVel or 0
 bAddToCurrent = bAddToCurrent or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewMaxAngVel at +0x0, bAddToCurrent at +0x4, BoneName at +0x8
 writeFloat(_params + 0x0, NewMaxAngVel)
 writeByte(_params + 0x4, bAddToCurrent)
 writeQword(_params + 0x8, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "SetPhysicsMaxAngularVelocityInRadians", _params);
 deAlloc(_params);
end
FNR("BL4.SetPhysicsMaxAngularVelocityInRadians");

BL4.SetPhysMaterialOverride = function(NewPhysMaterial_PhysicalMaterial)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPhysMaterialOverride: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewPhysMaterial at +0x0
 writeQword(_params + 0x0, NewPhysMaterial_PhysicalMaterial)
 UE.CallProcessEventEx(NewPhysMaterial_PhysicalMaterial, "SetPhysMaterialOverride", _params);
 deAlloc(_params);
end
FNR("BL4.SetPhysMaterialOverride");

BL4.SetReceivesDecals = function(OwnerAddress, bNewReceivesDecals)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetReceivesDecals: Failed To Allocate The Params");return;end;
 bNewReceivesDecals = bNewReceivesDecals or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bNewReceivesDecals at +0x0
 writeByte(_params + 0x0, bNewReceivesDecals)
 UE.CallProcessEventEx(OwnerAddress, "SetReceivesDecals", _params);
 deAlloc(_params);
end
FNR("BL4.SetReceivesDecals");

BL4.SetRenderCustomDepth = function(OwnerAddress, bValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRenderCustomDepth: Failed To Allocate The Params");return;end;
 bValue = bValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bValue at +0x0
 writeByte(_params + 0x0, bValue)
 UE.CallProcessEventEx(OwnerAddress, "SetRenderCustomDepth", _params);
 deAlloc(_params);
end
FNR("BL4.SetRenderCustomDepth");

BL4.SetRenderInDepthPass = function(OwnerAddress, bValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRenderInDepthPass: Failed To Allocate The Params");return;end;
 bValue = bValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bValue at +0x0
 writeByte(_params + 0x0, bValue)
 UE.CallProcessEventEx(OwnerAddress, "SetRenderInDepthPass", _params);
 deAlloc(_params);
end
FNR("BL4.SetRenderInDepthPass");

BL4.SetRenderInMainPass = function(OwnerAddress, bValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRenderInMainPass: Failed To Allocate The Params");return;end;
 bValue = bValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bValue at +0x0
 writeByte(_params + 0x0, bValue)
 UE.CallProcessEventEx(OwnerAddress, "SetRenderInMainPass", _params);
 deAlloc(_params);
end
FNR("BL4.SetRenderInMainPass");

BL4.SetScalarParameterForCustomPrimitiveData = function(OwnerAddress, ParameterName, Value)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetScalarParameterForCustomPrimitiveData: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ParameterName at +0x0, Value at +0x8
 writeQword(_params + 0x0, ParameterName)
 writeFloat(_params + 0x8, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetScalarParameterForCustomPrimitiveData", _params);
 deAlloc(_params);
end
FNR("BL4.SetScalarParameterForCustomPrimitiveData");

BL4.SetScalarParameterForDefaultCustomPrimitiveData = function(OwnerAddress, ParameterName, Value)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetScalarParameterForDefaultCustomPrimitiveData: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ParameterName at +0x0, Value at +0x8
 writeQword(_params + 0x0, ParameterName)
 writeFloat(_params + 0x8, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetScalarParameterForDefaultCustomPrimitiveData", _params);
 deAlloc(_params);
end
FNR("BL4.SetScalarParameterForDefaultCustomPrimitiveData");

BL4.SetSimulatePhysics = function(OwnerAddress, bSimulate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSimulatePhysics: Failed To Allocate The Params");return;end;
 bSimulate = bSimulate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bSimulate at +0x0
 writeByte(_params + 0x0, bSimulate)
 UE.CallProcessEventEx(OwnerAddress, "SetSimulatePhysics", _params);
 deAlloc(_params);
end
FNR("BL4.SetSimulatePhysics");

BL4.SetSingleSampleShadowFromStationaryLights = function(OwnerAddress, bNewSingleSampleShadowFromStationaryLights)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSingleSampleShadowFromStationaryLights: Failed To Allocate The Params");return;end;
 bNewSingleSampleShadowFromStationaryLights = bNewSingleSampleShadowFromStationaryLights or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bNewSingleSampleShadowFromStationaryLights at +0x0
 writeByte(_params + 0x0, bNewSingleSampleShadowFromStationaryLights)
 UE.CallProcessEventEx(OwnerAddress, "SetSingleSampleShadowFromStationaryLights", _params);
 deAlloc(_params);
end
FNR("BL4.SetSingleSampleShadowFromStationaryLights");

BL4.SetStaticWhenNotMoveable = function(OwnerAddress, bInStaticWhenNotMoveable)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetStaticWhenNotMoveable: Failed To Allocate The Params");return;end;
 bInStaticWhenNotMoveable = bInStaticWhenNotMoveable or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInStaticWhenNotMoveable at +0x0
 writeByte(_params + 0x0, bInStaticWhenNotMoveable)
 UE.CallProcessEventEx(OwnerAddress, "SetStaticWhenNotMoveable", _params);
 deAlloc(_params);
end
FNR("BL4.SetStaticWhenNotMoveable");

BL4.SetTranslucencySortDistanceOffset = function(OwnerAddress, NewTranslucencySortDistanceOffset)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTranslucencySortDistanceOffset: Failed To Allocate The Params");return;end;
 NewTranslucencySortDistanceOffset = NewTranslucencySortDistanceOffset or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewTranslucencySortDistanceOffset at +0x0
 writeFloat(_params + 0x0, NewTranslucencySortDistanceOffset)
 UE.CallProcessEventEx(OwnerAddress, "SetTranslucencySortDistanceOffset", _params);
 deAlloc(_params);
end
FNR("BL4.SetTranslucencySortDistanceOffset");

BL4.SetTranslucentSortPriority = function(OwnerAddress, NewTranslucentSortPriority)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTranslucentSortPriority: Failed To Allocate The Params");return;end;
 NewTranslucentSortPriority = NewTranslucentSortPriority or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewTranslucentSortPriority at +0x0
 writeInteger(_params + 0x0, NewTranslucentSortPriority)
 UE.CallProcessEventEx(OwnerAddress, "SetTranslucentSortPriority", _params);
 deAlloc(_params);
end
FNR("BL4.SetTranslucentSortPriority");

BL4.SetUpdateKinematicFromSimulation = function(OwnerAddress, bUpdateKinematicFromSimulation)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetUpdateKinematicFromSimulation: Failed To Allocate The Params");return;end;
 bUpdateKinematicFromSimulation = bUpdateKinematicFromSimulation or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bUpdateKinematicFromSimulation at +0x0
 writeByte(_params + 0x0, bUpdateKinematicFromSimulation)
 UE.CallProcessEventEx(OwnerAddress, "SetUpdateKinematicFromSimulation", _params);
 deAlloc(_params);
end
FNR("BL4.SetUpdateKinematicFromSimulation");

BL4.SetUseCCD = function(OwnerAddress, InUseCCD, BoneName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetUseCCD: Failed To Allocate The Params");return;end;
 InUseCCD = InUseCCD or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InUseCCD at +0x0, BoneName at +0x4
 writeByte(_params + 0x0, InUseCCD)
 writeQword(_params + 0x4, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "SetUseCCD", _params);
 deAlloc(_params);
end
FNR("BL4.SetUseCCD");

BL4.SetUseMACD = function(OwnerAddress, InUseMACD, BoneName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetUseMACD: Failed To Allocate The Params");return;end;
 InUseMACD = InUseMACD or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InUseMACD at +0x0, BoneName at +0x4
 writeByte(_params + 0x0, InUseMACD)
 writeQword(_params + 0x4, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "SetUseMACD", _params);
 deAlloc(_params);
end
FNR("BL4.SetUseMACD");

BL4.SetVectorParameterForCustomPrimitiveData = function(OwnerAddress, ParameterName, Value)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVectorParameterForCustomPrimitiveData: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ParameterName at +0x0, Value at +0x10
 writeQword(_params + 0x0, ParameterName)
 writeQword(_params + 0x10, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetVectorParameterForCustomPrimitiveData", _params);
 deAlloc(_params);
end
FNR("BL4.SetVectorParameterForCustomPrimitiveData");

BL4.SetVectorParameterForDefaultCustomPrimitiveData = function(OwnerAddress, ParameterName, Value)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVectorParameterForDefaultCustomPrimitiveData: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ParameterName at +0x0, Value at +0x10
 writeQword(_params + 0x0, ParameterName)
 writeQword(_params + 0x10, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetVectorParameterForDefaultCustomPrimitiveData", _params);
 deAlloc(_params);
end
FNR("BL4.SetVectorParameterForDefaultCustomPrimitiveData");

BL4.SetViewFlags = function(OwnerAddress, NewViewFlags, Method)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetViewFlags: Failed To Allocate The Params");return;end;
 NewViewFlags = NewViewFlags or 0
 Method = Method or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewViewFlags at +0x0, Method at +0x4
 writeInteger(_params + 0x0, NewViewFlags)
 writeByte(_params + 0x4, Method)
 UE.CallProcessEventEx(OwnerAddress, "SetViewFlags", _params);
 deAlloc(_params);
end
FNR("BL4.SetViewFlags");

BL4.SetViewOwner = function(NewViewOwner_Actor)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetViewOwner: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewViewOwner at +0x0
 writeQword(_params + 0x0, NewViewOwner_Actor)
 UE.CallProcessEventEx(NewViewOwner_Actor, "SetViewOwner", _params);
 deAlloc(_params);
end
FNR("BL4.SetViewOwner");

BL4.SetVisibleInRayTracing = function(OwnerAddress, bNewVisibleInRayTracing)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVisibleInRayTracing: Failed To Allocate The Params");return;end;
 bNewVisibleInRayTracing = bNewVisibleInRayTracing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bNewVisibleInRayTracing at +0x0
 writeByte(_params + 0x0, bNewVisibleInRayTracing)
 UE.CallProcessEventEx(OwnerAddress, "SetVisibleInRayTracing", _params);
 deAlloc(_params);
end
FNR("BL4.SetVisibleInRayTracing");

BL4.SetVisibleInSceneCaptureOnly = function(OwnerAddress, bValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVisibleInSceneCaptureOnly: Failed To Allocate The Params");return;end;
 bValue = bValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bValue at +0x0
 writeByte(_params + 0x0, bValue)
 UE.CallProcessEventEx(OwnerAddress, "SetVisibleInSceneCaptureOnly", _params);
 deAlloc(_params);
end
FNR("BL4.SetVisibleInSceneCaptureOnly");

BL4.SetWalkableSlopeOverride = function(OwnerAddress, NewOverride)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetWalkableSlopeOverride: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewOverride at +0x0
 writeQword(_params + 0x0, NewOverride)
 UE.CallProcessEventEx(OwnerAddress, "SetWalkableSlopeOverride", _params);
 deAlloc(_params);
end
FNR("BL4.SetWalkableSlopeOverride");

BL4.WakeRigidBody = function(OwnerAddress, BoneName)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.WakeRigidBody: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0
 writeQword(_params + 0x0, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "WakeRigidBody", _params);
 deAlloc(_params);
end
FNR("BL4.WakeRigidBody");

BL4.WasRecentlyRendered = function(OwnerAddress, Tolerance)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.WasRecentlyRendered: Failed To Allocate The Params");return;end;
 Tolerance = Tolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Tolerance at +0x0
 writeFloat(_params + 0x0, Tolerance)
 UE.CallProcessEventEx(OwnerAddress, "WasRecentlyRendered", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.WasRecentlyRendered");

