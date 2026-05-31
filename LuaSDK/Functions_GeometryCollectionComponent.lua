BL4.ApplyAngularVelocity = function(OwnerAddress, ItemIndex, AngularVelocity)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ApplyAngularVelocity: Failed To Allocate The Params");return;end;
 ItemIndex = ItemIndex or 0
 AngularVelocity = AngularVelocity or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ItemIndex at +0x0, AngularVelocity at +0x8
 writeInteger(_params + 0x0, ItemIndex)
 writeDouble(_params + 0x8, (AngularVelocity and AngularVelocity.X) or 0)
 writeDouble(_params + 0x10, (AngularVelocity and AngularVelocity.Y) or 0)
 writeDouble(_params + 0x18, (AngularVelocity and AngularVelocity.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "ApplyAngularVelocity", _params);
 deAlloc(_params);
end
FNR("BL4.ApplyAngularVelocity");

BL4.ApplyBreakingAngularVelocity = function(OwnerAddress, ItemIndex, AngularVelocity)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ApplyBreakingAngularVelocity: Failed To Allocate The Params");return;end;
 ItemIndex = ItemIndex or 0
 AngularVelocity = AngularVelocity or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ItemIndex at +0x0, AngularVelocity at +0x8
 writeInteger(_params + 0x0, ItemIndex)
 writeDouble(_params + 0x8, (AngularVelocity and AngularVelocity.X) or 0)
 writeDouble(_params + 0x10, (AngularVelocity and AngularVelocity.Y) or 0)
 writeDouble(_params + 0x18, (AngularVelocity and AngularVelocity.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "ApplyBreakingAngularVelocity", _params);
 deAlloc(_params);
end
FNR("BL4.ApplyBreakingAngularVelocity");

BL4.ApplyBreakingLinearVelocity = function(OwnerAddress, ItemIndex, LinearVelocity)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ApplyBreakingLinearVelocity: Failed To Allocate The Params");return;end;
 ItemIndex = ItemIndex or 0
 LinearVelocity = LinearVelocity or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ItemIndex at +0x0, LinearVelocity at +0x8
 writeInteger(_params + 0x0, ItemIndex)
 writeDouble(_params + 0x8, (LinearVelocity and LinearVelocity.X) or 0)
 writeDouble(_params + 0x10, (LinearVelocity and LinearVelocity.Y) or 0)
 writeDouble(_params + 0x18, (LinearVelocity and LinearVelocity.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "ApplyBreakingLinearVelocity", _params);
 deAlloc(_params);
end
FNR("BL4.ApplyBreakingLinearVelocity");

BL4.ApplyExternalStrain = function(OwnerAddress, ItemIndex, Location, Radius, PropagationDepth, PropagationFactor, Strain)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ApplyExternalStrain: Failed To Allocate The Params");return;end;
 ItemIndex = ItemIndex or 0
 Location = Location or {X=0,Y=0,Z=0}
 Radius = Radius or 0
 PropagationDepth = PropagationDepth or 0
 PropagationFactor = PropagationFactor or 0
 Strain = Strain or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ItemIndex at +0x0, Location at +0x8, Radius at +0x20, PropagationDepth at +0x24, PropagationFactor at +0x28, Strain at +0x2C
 writeInteger(_params + 0x0, ItemIndex)
 writeDouble(_params + 0x8, (Location and Location.X) or 0)
 writeDouble(_params + 0x10, (Location and Location.Y) or 0)
 writeDouble(_params + 0x18, (Location and Location.Z) or 0)
 writeFloat(_params + 0x20, Radius)
 writeInteger(_params + 0x24, PropagationDepth)
 writeFloat(_params + 0x28, PropagationFactor)
 writeFloat(_params + 0x2C, Strain)
 UE.CallProcessEventEx(OwnerAddress, "ApplyExternalStrain", _params);
 deAlloc(_params);
end
FNR("BL4.ApplyExternalStrain");

BL4.ApplyInternalStrain = function(OwnerAddress, ItemIndex, Location, Radius, PropagationDepth, PropagationFactor, Strain)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ApplyInternalStrain: Failed To Allocate The Params");return;end;
 ItemIndex = ItemIndex or 0
 Location = Location or {X=0,Y=0,Z=0}
 Radius = Radius or 0
 PropagationDepth = PropagationDepth or 0
 PropagationFactor = PropagationFactor or 0
 Strain = Strain or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ItemIndex at +0x0, Location at +0x8, Radius at +0x20, PropagationDepth at +0x24, PropagationFactor at +0x28, Strain at +0x2C
 writeInteger(_params + 0x0, ItemIndex)
 writeDouble(_params + 0x8, (Location and Location.X) or 0)
 writeDouble(_params + 0x10, (Location and Location.Y) or 0)
 writeDouble(_params + 0x18, (Location and Location.Z) or 0)
 writeFloat(_params + 0x20, Radius)
 writeInteger(_params + 0x24, PropagationDepth)
 writeFloat(_params + 0x28, PropagationFactor)
 writeFloat(_params + 0x2C, Strain)
 UE.CallProcessEventEx(OwnerAddress, "ApplyInternalStrain", _params);
 deAlloc(_params);
end
FNR("BL4.ApplyInternalStrain");

BL4.ApplyKinematicField = function(OwnerAddress, Radius, position)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ApplyKinematicField: Failed To Allocate The Params");return;end;
 Radius = Radius or 0
 position = position or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Radius at +0x0, position at +0x8
 writeFloat(_params + 0x0, Radius)
 writeDouble(_params + 0x8, (position and position.X) or 0)
 writeDouble(_params + 0x10, (position and position.Y) or 0)
 writeDouble(_params + 0x18, (position and position.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "ApplyKinematicField", _params);
 deAlloc(_params);
end
FNR("BL4.ApplyKinematicField");

BL4.ApplyLinearVelocity = function(OwnerAddress, ItemIndex, LinearVelocity)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ApplyLinearVelocity: Failed To Allocate The Params");return;end;
 ItemIndex = ItemIndex or 0
 LinearVelocity = LinearVelocity or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ItemIndex at +0x0, LinearVelocity at +0x8
 writeInteger(_params + 0x0, ItemIndex)
 writeDouble(_params + 0x8, (LinearVelocity and LinearVelocity.X) or 0)
 writeDouble(_params + 0x10, (LinearVelocity and LinearVelocity.Y) or 0)
 writeDouble(_params + 0x18, (LinearVelocity and LinearVelocity.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "ApplyLinearVelocity", _params);
 deAlloc(_params);
end
FNR("BL4.ApplyLinearVelocity");

BL4.ApplyPhysicsField = function(OwnerAddress, Enabled, target, MetaData_FieldSystemMetaData, Field_FieldNodeBase)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ApplyPhysicsField: Failed To Allocate The Params");return;end;
 Enabled = Enabled or false
 target = target or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Enabled at +0x0, target at +0x1, MetaData at +0x8, Field at +0x10
 writeByte(_params + 0x0, Enabled)
 writeByte(_params + 0x1, target)
 writeQword(_params + 0x8, MetaData_FieldSystemMetaData)
 writeQword(_params + 0x10, Field_FieldNodeBase)
 UE.CallProcessEventEx(OwnerAddress, "ApplyPhysicsField", _params);
 deAlloc(_params);
end
FNR("BL4.ApplyPhysicsField");

BL4.CrumbleCluster = function(OwnerAddress, ItemIndex)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CrumbleCluster: Failed To Allocate The Params");return;end;
 ItemIndex = ItemIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: ItemIndex at +0x0
 writeInteger(_params + 0x0, ItemIndex)
 UE.CallProcessEventEx(OwnerAddress, "CrumbleCluster", _params);
 deAlloc(_params);
end
FNR("BL4.CrumbleCluster");

BL4.EnableRootProxyForCustomRenderer = function(OwnerAddress, bEnable)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EnableRootProxyForCustomRenderer: Failed To Allocate The Params");return;end;
 bEnable = bEnable or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnable at +0x0
 writeByte(_params + 0x0, bEnable)
 UE.CallProcessEventEx(OwnerAddress, "EnableRootProxyForCustomRenderer", _params);
 deAlloc(_params);
end
FNR("BL4.EnableRootProxyForCustomRenderer");

BL4.ForceBrokenForCustomRenderer = function(OwnerAddress, bForceBroken)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ForceBrokenForCustomRenderer: Failed To Allocate The Params");return;end;
 bForceBroken = bForceBroken or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bForceBroken at +0x0
 writeByte(_params + 0x0, bForceBroken)
 UE.CallProcessEventEx(OwnerAddress, "ForceBrokenForCustomRenderer", _params);
 deAlloc(_params);
end
FNR("BL4.ForceBrokenForCustomRenderer");

BL4.GetDamageThreshold = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDamageThreshold: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetDamageThreshold", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDamageThreshold");

BL4.GetDebugInfo = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDebugInfo: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetDebugInfo", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDebugInfo");

BL4.GetInitialLevel = function(OwnerAddress, ItemIndex)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInitialLevel: Failed To Allocate The Params");return;end;
 ItemIndex = ItemIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: ItemIndex at +0x0
 writeInteger(_params + 0x0, ItemIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetInitialLevel", _params);
 local RET=readInteger(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInitialLevel");

BL4.GetInitialLocalRestTransforms = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInitialLocalRestTransforms: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetInitialLocalRestTransforms", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInitialLocalRestTransforms");

BL4.GetLocalBounds = function(OwnerAddress)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLocalBounds: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetLocalBounds", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLocalBounds");

BL4.GetLocalRestTransforms = function(OwnerAddress, bInitialTransforms)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLocalRestTransforms: Failed To Allocate The Params");return;end;
 bInitialTransforms = bInitialTransforms or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bInitialTransforms at +0x0
 writeByte(_params + 0x0, bInitialTransforms)
 UE.CallProcessEventEx(OwnerAddress, "GetLocalRestTransforms", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLocalRestTransforms");

BL4.GetMassAndExtents = function(OwnerAddress, ItemIndex, OutMass, OutExtents)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMassAndExtents: Failed To Allocate The Params");return;end;
 ItemIndex = ItemIndex or 0
 OutMass = OutMass or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ItemIndex at +0x0, OutMass at +0x4, OutExtents at +0x8
 writeInteger(_params + 0x0, ItemIndex)
 writeFloat(_params + 0x4, OutMass)
 writeQword(_params + 0x8, OutExtents)
 UE.CallProcessEventEx(OwnerAddress, "GetMassAndExtents", _params);
 deAlloc(_params);
end
FNR("BL4.GetMassAndExtents");

BL4.GetRootCurrentTransform = function(OwnerAddress)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRootCurrentTransform: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetRootCurrentTransform", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRootCurrentTransform");

BL4.GetRootIndex = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRootIndex: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetRootIndex", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRootIndex");

BL4.GetRootInitialTransform = function(OwnerAddress)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRootInitialTransform: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetRootInitialTransform", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRootInitialTransform");

BL4.GetSolverActor = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSolverActor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetSolverActor", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSolverActor");

BL4.GetUseStaticMeshCollisionForTraces = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetUseStaticMeshCollisionForTraces: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetUseStaticMeshCollisionForTraces", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetUseStaticMeshCollisionForTraces");

BL4.IsRootBroken = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsRootBroken: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsRootBroken", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsRootBroken");

BL4.ReceivePhysicsCollision = function(OwnerAddress, CollisionInfo)
 local _paramsSize = 0xC0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReceivePhysicsCollision: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CollisionInfo at +0x0
 writeQword(_params + 0x0, CollisionInfo)
 UE.CallProcessEventEx(OwnerAddress, "ReceivePhysicsCollision", _params);
 deAlloc(_params);
end
FNR("BL4.ReceivePhysicsCollision");

BL4.SetAbandonedParticleCollisionProfileName = function(OwnerAddress, CollisionProfile)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAbandonedParticleCollisionProfileName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: CollisionProfile at +0x0
 writeQword(_params + 0x0, CollisionProfile)
 UE.CallProcessEventEx(OwnerAddress, "SetAbandonedParticleCollisionProfileName", _params);
 deAlloc(_params);
end
FNR("BL4.SetAbandonedParticleCollisionProfileName");

BL4.SetAnchoredByBox = function(OwnerAddress, WorldSpaceBox, bAnchored, MaxLevel)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAnchoredByBox: Failed To Allocate The Params");return;end;
 bAnchored = bAnchored or false
 MaxLevel = MaxLevel or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldSpaceBox at +0x0, bAnchored at +0x38, MaxLevel at +0x3C
 writeQword(_params + 0x0, WorldSpaceBox)
 writeByte(_params + 0x38, bAnchored)
 writeInteger(_params + 0x3C, MaxLevel)
 UE.CallProcessEventEx(OwnerAddress, "SetAnchoredByBox", _params);
 deAlloc(_params);
end
FNR("BL4.SetAnchoredByBox");

BL4.SetAnchoredByIndex = function(OwnerAddress, Index, bAnchored)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAnchoredByIndex: Failed To Allocate The Params");return;end;
 Index = Index or 0
 bAnchored = bAnchored or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Index at +0x0, bAnchored at +0x4
 writeInteger(_params + 0x0, Index)
 writeByte(_params + 0x4, bAnchored)
 UE.CallProcessEventEx(OwnerAddress, "SetAnchoredByIndex", _params);
 deAlloc(_params);
end
FNR("BL4.SetAnchoredByIndex");

BL4.SetAnchoredByTransformedBox = function(OwnerAddress, Box, Transform, bAnchored, MaxLevel)
 local _paramsSize = 0xA8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAnchoredByTransformedBox: Failed To Allocate The Params");return;end;
 bAnchored = bAnchored or false
 MaxLevel = MaxLevel or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Box at +0x0, Transform at +0x40, bAnchored at +0xA0, MaxLevel at +0xA4
 writeQword(_params + 0x0, Box)
 writeQword(_params + 0x40, Transform)
 writeByte(_params + 0xA0, bAnchored)
 writeInteger(_params + 0xA4, MaxLevel)
 UE.CallProcessEventEx(OwnerAddress, "SetAnchoredByTransformedBox", _params);
 deAlloc(_params);
end
FNR("BL4.SetAnchoredByTransformedBox");

BL4.SetDamageModel = function(OwnerAddress, InDamageModel)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDamageModel: Failed To Allocate The Params");return;end;
 InDamageModel = InDamageModel or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InDamageModel at +0x0
 writeByte(_params + 0x0, InDamageModel)
 UE.CallProcessEventEx(OwnerAddress, "SetDamageModel", _params);
 deAlloc(_params);
end
FNR("BL4.SetDamageModel");

BL4.SetDamagePropagationData = function(OwnerAddress, InDamagePropagationData)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDamagePropagationData: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InDamagePropagationData at +0x0
 writeQword(_params + 0x0, InDamagePropagationData)
 UE.CallProcessEventEx(OwnerAddress, "SetDamagePropagationData", _params);
 deAlloc(_params);
end
FNR("BL4.SetDamagePropagationData");

BL4.SetDamageThreshold = function(OwnerAddress, InDamageThreshold)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDamageThreshold: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InDamageThreshold at +0x0
 writeQword(_params + 0x0, InDamageThreshold)
 UE.CallProcessEventEx(OwnerAddress, "SetDamageThreshold", _params);
 deAlloc(_params);
end
FNR("BL4.SetDamageThreshold");

BL4.SetDensityFromPhysicsMaterial = function(OwnerAddress, bInDensityFromPhysicsMaterial)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDensityFromPhysicsMaterial: Failed To Allocate The Params");return;end;
 bInDensityFromPhysicsMaterial = bInDensityFromPhysicsMaterial or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInDensityFromPhysicsMaterial at +0x0
 writeByte(_params + 0x0, bInDensityFromPhysicsMaterial)
 UE.CallProcessEventEx(OwnerAddress, "SetDensityFromPhysicsMaterial", _params);
 deAlloc(_params);
end
FNR("BL4.SetDensityFromPhysicsMaterial");

BL4.SetEnableDamageFromCollision = function(OwnerAddress, bValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetEnableDamageFromCollision: Failed To Allocate The Params");return;end;
 bValue = bValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bValue at +0x0
 writeByte(_params + 0x0, bValue)
 UE.CallProcessEventEx(OwnerAddress, "SetEnableDamageFromCollision", _params);
 deAlloc(_params);
end
FNR("BL4.SetEnableDamageFromCollision");

BL4.SetGravityGroupIndex = function(OwnerAddress, InGravityGroupIndex)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetGravityGroupIndex: Failed To Allocate The Params");return;end;
 InGravityGroupIndex = InGravityGroupIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InGravityGroupIndex at +0x0
 writeInteger(_params + 0x0, InGravityGroupIndex)
 UE.CallProcessEventEx(OwnerAddress, "SetGravityGroupIndex", _params);
 deAlloc(_params);
end
FNR("BL4.SetGravityGroupIndex");

BL4.SetLocalRestTransforms = function(OwnerAddress, Transforms, bOnlyLeaves)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLocalRestTransforms: Failed To Allocate The Params");return;end;
 bOnlyLeaves = bOnlyLeaves or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Transforms at +0x0, bOnlyLeaves at +0x10
 writeQword(_params + 0x0, Transforms)
 writeByte(_params + 0x10, bOnlyLeaves)
 UE.CallProcessEventEx(OwnerAddress, "SetLocalRestTransforms", _params);
 deAlloc(_params);
end
FNR("BL4.SetLocalRestTransforms");

BL4.SetNotifyBreaks = function(OwnerAddress, bNewNotifyBreaks)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNotifyBreaks: Failed To Allocate The Params");return;end;
 bNewNotifyBreaks = bNewNotifyBreaks or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bNewNotifyBreaks at +0x0
 writeByte(_params + 0x0, bNewNotifyBreaks)
 UE.CallProcessEventEx(OwnerAddress, "SetNotifyBreaks", _params);
 deAlloc(_params);
end
FNR("BL4.SetNotifyBreaks");

BL4.SetNotifyCrumblings = function(OwnerAddress, bNewNotifyCrumblings, bNewCrumblingEventIncludesChildren)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNotifyCrumblings: Failed To Allocate The Params");return;end;
 bNewNotifyCrumblings = bNewNotifyCrumblings or false
 bNewCrumblingEventIncludesChildren = bNewCrumblingEventIncludesChildren or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bNewNotifyCrumblings at +0x0, bNewCrumblingEventIncludesChildren at +0x1
 writeByte(_params + 0x0, bNewNotifyCrumblings)
 writeByte(_params + 0x1, bNewCrumblingEventIncludesChildren)
 UE.CallProcessEventEx(OwnerAddress, "SetNotifyCrumblings", _params);
 deAlloc(_params);
end
FNR("BL4.SetNotifyCrumblings");

BL4.SetNotifyGlobalBreaks = function(OwnerAddress, bNewNotifyGlobalBreaks)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNotifyGlobalBreaks: Failed To Allocate The Params");return;end;
 bNewNotifyGlobalBreaks = bNewNotifyGlobalBreaks or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bNewNotifyGlobalBreaks at +0x0
 writeByte(_params + 0x0, bNewNotifyGlobalBreaks)
 UE.CallProcessEventEx(OwnerAddress, "SetNotifyGlobalBreaks", _params);
 deAlloc(_params);
end
FNR("BL4.SetNotifyGlobalBreaks");

BL4.SetNotifyGlobalCollision = function(OwnerAddress, bNewNotifyGlobalCollisions)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNotifyGlobalCollision: Failed To Allocate The Params");return;end;
 bNewNotifyGlobalCollisions = bNewNotifyGlobalCollisions or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bNewNotifyGlobalCollisions at +0x0
 writeByte(_params + 0x0, bNewNotifyGlobalCollisions)
 UE.CallProcessEventEx(OwnerAddress, "SetNotifyGlobalCollision", _params);
 deAlloc(_params);
end
FNR("BL4.SetNotifyGlobalCollision");

BL4.SetNotifyGlobalCrumblings = function(OwnerAddress, bNewNotifyGlobalCrumblings, bGlobalNewCrumblingEventIncludesChildren)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNotifyGlobalCrumblings: Failed To Allocate The Params");return;end;
 bNewNotifyGlobalCrumblings = bNewNotifyGlobalCrumblings or false
 bGlobalNewCrumblingEventIncludesChildren = bGlobalNewCrumblingEventIncludesChildren or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bNewNotifyGlobalCrumblings at +0x0, bGlobalNewCrumblingEventIncludesChildren at +0x1
 writeByte(_params + 0x0, bNewNotifyGlobalCrumblings)
 writeByte(_params + 0x1, bGlobalNewCrumblingEventIncludesChildren)
 UE.CallProcessEventEx(OwnerAddress, "SetNotifyGlobalCrumblings", _params);
 deAlloc(_params);
end
FNR("BL4.SetNotifyGlobalCrumblings");

BL4.SetNotifyGlobalRemovals = function(OwnerAddress, bNewNotifyGlobalRemovals)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNotifyGlobalRemovals: Failed To Allocate The Params");return;end;
 bNewNotifyGlobalRemovals = bNewNotifyGlobalRemovals or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bNewNotifyGlobalRemovals at +0x0
 writeByte(_params + 0x0, bNewNotifyGlobalRemovals)
 UE.CallProcessEventEx(OwnerAddress, "SetNotifyGlobalRemovals", _params);
 deAlloc(_params);
end
FNR("BL4.SetNotifyGlobalRemovals");

BL4.SetNotifyRemovals = function(OwnerAddress, bNewNotifyRemovals)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNotifyRemovals: Failed To Allocate The Params");return;end;
 bNewNotifyRemovals = bNewNotifyRemovals or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bNewNotifyRemovals at +0x0
 writeByte(_params + 0x0, bNewNotifyRemovals)
 UE.CallProcessEventEx(OwnerAddress, "SetNotifyRemovals", _params);
 deAlloc(_params);
end
FNR("BL4.SetNotifyRemovals");

BL4.SetOneWayInteractionLevel = function(OwnerAddress, InOneWayInteractionLevel)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetOneWayInteractionLevel: Failed To Allocate The Params");return;end;
 InOneWayInteractionLevel = InOneWayInteractionLevel or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InOneWayInteractionLevel at +0x0
 writeInteger(_params + 0x0, InOneWayInteractionLevel)
 UE.CallProcessEventEx(OwnerAddress, "SetOneWayInteractionLevel", _params);
 deAlloc(_params);
end
FNR("BL4.SetOneWayInteractionLevel");

BL4.SetPerLevelCollisionProfileNames = function(OwnerAddress, ProfileNames)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPerLevelCollisionProfileNames: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ProfileNames at +0x0
 writeQword(_params + 0x0, ProfileNames)
 UE.CallProcessEventEx(OwnerAddress, "SetPerLevelCollisionProfileNames", _params);
 deAlloc(_params);
end
FNR("BL4.SetPerLevelCollisionProfileNames");

BL4.SetPerParticleCollisionProfileName = function(OwnerAddress, BoneIds, ProfileName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPerParticleCollisionProfileName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneIds at +0x0, ProfileName at +0x10
 writeQword(_params + 0x0, BoneIds)
 writeQword(_params + 0x10, ProfileName)
 UE.CallProcessEventEx(OwnerAddress, "SetPerParticleCollisionProfileName", _params);
 deAlloc(_params);
end
FNR("BL4.SetPerParticleCollisionProfileName");

BL4.SetRestCollection = function(RestCollectionIn_GeometryCollection, bApplyAssetDefaults, bResetPhysicsState)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRestCollection: Failed To Allocate The Params");return;end;
 bApplyAssetDefaults = bApplyAssetDefaults or false
 bResetPhysicsState = bResetPhysicsState or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: RestCollectionIn at +0x0, bApplyAssetDefaults at +0x8, bResetPhysicsState at +0x9
 writeQword(_params + 0x0, RestCollectionIn_GeometryCollection)
 writeByte(_params + 0x8, bApplyAssetDefaults)
 writeByte(_params + 0x9, bResetPhysicsState)
 UE.CallProcessEventEx(RestCollectionIn_GeometryCollection, "SetRestCollection", _params);
 deAlloc(_params);
end
FNR("BL4.SetRestCollection");

BL4.SetRootProxyComponentSpaceTransform = function(OwnerAddress, Index, RootProxyTransform)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRootProxyComponentSpaceTransform: Failed To Allocate The Params");return;end;
 Index = Index or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Index at +0x0, RootProxyTransform at +0x10
 writeInteger(_params + 0x0, Index)
 writeQword(_params + 0x10, RootProxyTransform)
 UE.CallProcessEventEx(OwnerAddress, "SetRootProxyComponentSpaceTransform", _params);
 deAlloc(_params);
end
FNR("BL4.SetRootProxyComponentSpaceTransform");

BL4.SetSolverActor = function(InSolverActor_ChaosSolverActor)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSolverActor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InSolverActor at +0x0
 writeQword(_params + 0x0, InSolverActor_ChaosSolverActor)
 UE.CallProcessEventEx(InSolverActor_ChaosSolverActor, "SetSolverActor", _params);
 deAlloc(_params);
end
FNR("BL4.SetSolverActor");

BL4.SetUseMaterialDamageModifiers = function(OwnerAddress, bInUseMaterialDamageModifiers)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetUseMaterialDamageModifiers: Failed To Allocate The Params");return;end;
 bInUseMaterialDamageModifiers = bInUseMaterialDamageModifiers or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInUseMaterialDamageModifiers at +0x0
 writeByte(_params + 0x0, bInUseMaterialDamageModifiers)
 UE.CallProcessEventEx(OwnerAddress, "SetUseMaterialDamageModifiers", _params);
 deAlloc(_params);
end
FNR("BL4.SetUseMaterialDamageModifiers");

BL4.SetUseStaticMeshCollisionForTraces = function(OwnerAddress, bInUseStaticMeshCollisionForTraces)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetUseStaticMeshCollisionForTraces: Failed To Allocate The Params");return;end;
 bInUseStaticMeshCollisionForTraces = bInUseStaticMeshCollisionForTraces or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInUseStaticMeshCollisionForTraces at +0x0
 writeByte(_params + 0x0, bInUseStaticMeshCollisionForTraces)
 UE.CallProcessEventEx(OwnerAddress, "SetUseStaticMeshCollisionForTraces", _params);
 deAlloc(_params);
end
FNR("BL4.SetUseStaticMeshCollisionForTraces");

