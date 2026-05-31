BL4.GetProjectileDistanceOverTime = function(OwnerAddress, definition, time, SpeedOverride)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetProjectileDistanceOverTime: Failed To Allocate The Params");return;end;
 time = time or 0
 SpeedOverride = SpeedOverride or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: definition at +0x0, time at +0x18, SpeedOverride at +0x1C
 writeQword(_params + 0x0, definition)
 writeFloat(_params + 0x18, time)
 writeFloat(_params + 0x1C, SpeedOverride)
 UE.CallProcessEventEx(OwnerAddress, "GetProjectileDistanceOverTime", _params);
 local RET=readFloat(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetProjectileDistanceOverTime");

BL4.GetProjectileTimeOverDistance = function(OwnerAddress, definition, Distance, SpeedOverride)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetProjectileTimeOverDistance: Failed To Allocate The Params");return;end;
 Distance = Distance or 0
 SpeedOverride = SpeedOverride or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: definition at +0x0, Distance at +0x18, SpeedOverride at +0x1C
 writeQword(_params + 0x0, definition)
 writeFloat(_params + 0x18, Distance)
 writeFloat(_params + 0x1C, SpeedOverride)
 UE.CallProcessEventEx(OwnerAddress, "GetProjectileTimeOverDistance", _params);
 local RET=readFloat(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetProjectileTimeOverDistance");

BL4.GetSafeProjectileThrowTransform = function(Source_Actor, SourceOptions, IgnoreActors, TraceChannel, SourceViewOptions)
 local _paramsSize = 0x100
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSafeProjectileThrowTransform: Failed To Allocate The Params");return;end;
 TraceChannel = TraceChannel or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Source at +0x0, SourceOptions at +0x8, IgnoreActors at +0x68, TraceChannel at +0x78, SourceViewOptions at +0x80
 writeQword(_params + 0x0, Source_Actor)
 writeQword(_params + 0x8, SourceOptions)
 writeQword(_params + 0x68, IgnoreActors)
 writeByte(_params + 0x78, TraceChannel)
 writeQword(_params + 0x80, SourceViewOptions)
 UE.CallProcessEventEx(Source_Actor, "GetSafeProjectileThrowTransform", _params);
 local RET=readQword(_params + 0xA0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSafeProjectileThrowTransform");

BL4.GetSafeProjectileThrowTransformFromLocation = function(Source_Actor, Location, IgnoreActors, TraceChannel, bUseAnimatedCameraRotation)
 local _paramsSize = 0xA0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSafeProjectileThrowTransformFromLocation: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 TraceChannel = TraceChannel or 0
 bUseAnimatedCameraRotation = bUseAnimatedCameraRotation or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Source at +0x0, Location at +0x8, IgnoreActors at +0x20, TraceChannel at +0x30, bUseAnimatedCameraRotation at +0x31
 writeQword(_params + 0x0, Source_Actor)
 writeDouble(_params + 0x8, (Location and Location.X) or 0)
 writeDouble(_params + 0x10, (Location and Location.Y) or 0)
 writeDouble(_params + 0x18, (Location and Location.Z) or 0)
 writeQword(_params + 0x20, IgnoreActors)
 writeByte(_params + 0x30, TraceChannel)
 writeByte(_params + 0x31, bUseAnimatedCameraRotation)
 UE.CallProcessEventEx(Source_Actor, "GetSafeProjectileThrowTransformFromLocation", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSafeProjectileThrowTransformFromLocation");

BL4.MakeViewRelativeLocation = function(OwnerAddress, Offset)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeViewRelativeLocation: Failed To Allocate The Params");return;end;
 Offset = Offset or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Offset at +0x0
 writeDouble(_params + 0x0, (Offset and Offset.X) or 0)
 writeDouble(_params + 0x8, (Offset and Offset.Y) or 0)
 writeDouble(_params + 0x10, (Offset and Offset.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "MakeViewRelativeLocation", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeViewRelativeLocation");

BL4.SpawnProjectile = function(WorldContext_Object, LatentInfo, projectile, definition, owner_Actor, bOwnerIsInstigator, instigator_Pawn, Location, Velocity, GravityScale, DamageOverrides)
 local _paramsSize = 0x160
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnProjectile: Failed To Allocate The Params");return;end;
 bOwnerIsInstigator = bOwnerIsInstigator or false
 Location = Location or {X=0,Y=0,Z=0}
 Velocity = Velocity or {X=0,Y=0,Z=0}
 GravityScale = GravityScale or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContext at +0x0, LatentInfo at +0x8, projectile at +0x20, definition at +0x28, owner at +0x40, bOwnerIsInstigator at +0x48, instigator at +0x50, Location at +0x58, Velocity at +0x70, GravityScale at +0x88, DamageOverrides at +0x90
 writeQword(_params + 0x0, WorldContext_Object)
 writeQword(_params + 0x8, LatentInfo)
 writeQword(_params + 0x20, projectile)
 writeQword(_params + 0x28, definition)
 writeQword(_params + 0x40, owner_Actor)
 writeByte(_params + 0x48, bOwnerIsInstigator)
 writeQword(_params + 0x50, instigator_Pawn)
 writeDouble(_params + 0x58, (Location and Location.X) or 0)
 writeDouble(_params + 0x60, (Location and Location.Y) or 0)
 writeDouble(_params + 0x68, (Location and Location.Z) or 0)
 writeDouble(_params + 0x70, (Velocity and Velocity.X) or 0)
 writeDouble(_params + 0x78, (Velocity and Velocity.Y) or 0)
 writeDouble(_params + 0x80, (Velocity and Velocity.Z) or 0)
 writeFloat(_params + 0x88, GravityScale)
 writeQword(_params + 0x90, DamageOverrides)
 UE.CallProcessEventEx(WorldContext_Object, "SpawnProjectile", _params);
 deAlloc(_params);
end
FNR("BL4.SpawnProjectile");

BL4.SpawnProjectile_Const = function(OwnerAddress, definition, owner_Actor, bOwnerIsInstigator, instigator_Pawn, Location, Velocity, GravityScale, DamageOverrides)
 local _paramsSize = 0x138
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnProjectile_Const: Failed To Allocate The Params");return;end;
 bOwnerIsInstigator = bOwnerIsInstigator or false
 Location = Location or {X=0,Y=0,Z=0}
 Velocity = Velocity or {X=0,Y=0,Z=0}
 GravityScale = GravityScale or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: definition at +0x0, owner at +0x18, bOwnerIsInstigator at +0x20, instigator at +0x28, Location at +0x30, Velocity at +0x48, GravityScale at +0x60, DamageOverrides at +0x68
 writeQword(_params + 0x0, definition)
 writeQword(_params + 0x18, owner_Actor)
 writeByte(_params + 0x20, bOwnerIsInstigator)
 writeQword(_params + 0x28, instigator_Pawn)
 writeDouble(_params + 0x30, (Location and Location.X) or 0)
 writeDouble(_params + 0x38, (Location and Location.Y) or 0)
 writeDouble(_params + 0x40, (Location and Location.Z) or 0)
 writeDouble(_params + 0x48, (Velocity and Velocity.X) or 0)
 writeDouble(_params + 0x50, (Velocity and Velocity.Y) or 0)
 writeDouble(_params + 0x58, (Velocity and Velocity.Z) or 0)
 writeFloat(_params + 0x60, GravityScale)
 writeQword(_params + 0x68, DamageOverrides)
 UE.CallProcessEventEx(OwnerAddress, "SpawnProjectile_Const", _params);
 deAlloc(_params);
end
FNR("BL4.SpawnProjectile_Const");

BL4.SpawnProjectile_Source = function(WorldContext_Object, LatentInfo, projectile, definition, Source_Actor, SourceOptions, SourceRotation, SpeedOverride, GravityScale, OwnerOptions, DamageOverrides, SourceViewOptions)
 local _paramsSize = 0x1E8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnProjectile_Source: Failed To Allocate The Params");return;end;
 SpeedOverride = SpeedOverride or 0
 GravityScale = GravityScale or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContext at +0x0, LatentInfo at +0x8, projectile at +0x20, definition at +0x28, Source at +0x40, SourceOptions at +0x48, SourceRotation at +0xA8, SpeedOverride at +0xD8, GravityScale at +0xDC, OwnerOptions at +0xE0, DamageOverrides at +0xF8, SourceViewOptions at +0x1C8
 writeQword(_params + 0x0, WorldContext_Object)
 writeQword(_params + 0x8, LatentInfo)
 writeQword(_params + 0x20, projectile)
 writeQword(_params + 0x28, definition)
 writeQword(_params + 0x40, Source_Actor)
 writeQword(_params + 0x48, SourceOptions)
 writeQword(_params + 0xA8, SourceRotation)
 writeFloat(_params + 0xD8, SpeedOverride)
 writeFloat(_params + 0xDC, GravityScale)
 writeQword(_params + 0xE0, OwnerOptions)
 writeQword(_params + 0xF8, DamageOverrides)
 writeQword(_params + 0x1C8, SourceViewOptions)
 UE.CallProcessEventEx(WorldContext_Object, "SpawnProjectile_Source", _params);
 deAlloc(_params);
end
FNR("BL4.SpawnProjectile_Source");

BL4.SpawnProjectile_Source_Const = function(OwnerAddress, definition, Source_Actor, SourceOptions, SourceRotation, SpeedOverride, GravityScale, OwnerOptions, DamageOverrides, SourceViewOptions)
 local _paramsSize = 0x1C0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnProjectile_Source_Const: Failed To Allocate The Params");return;end;
 SpeedOverride = SpeedOverride or 0
 GravityScale = GravityScale or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: definition at +0x0, Source at +0x18, SourceOptions at +0x20, SourceRotation at +0x80, SpeedOverride at +0xB0, GravityScale at +0xB4, OwnerOptions at +0xB8, DamageOverrides at +0xD0, SourceViewOptions at +0x1A0
 writeQword(_params + 0x0, definition)
 writeQword(_params + 0x18, Source_Actor)
 writeQword(_params + 0x20, SourceOptions)
 writeQword(_params + 0x80, SourceRotation)
 writeFloat(_params + 0xB0, SpeedOverride)
 writeFloat(_params + 0xB4, GravityScale)
 writeQword(_params + 0xB8, OwnerOptions)
 writeQword(_params + 0xD0, DamageOverrides)
 writeQword(_params + 0x1A0, SourceViewOptions)
 UE.CallProcessEventEx(OwnerAddress, "SpawnProjectile_Source_Const", _params);
 deAlloc(_params);
end
FNR("BL4.SpawnProjectile_Source_Const");

BL4.SpawnProjectile_ThrowAtActor = function(WorldContext_Object, LatentInfo, projectile, definition, Source_Actor, SourceOptions, SourceRotation, target_Actor, TargetOptions, TrajectoryOptions, OwnerOptions, DamageOverrides, SourceViewOptions)
 local _paramsSize = 0x290
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnProjectile_ThrowAtActor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContext at +0x0, LatentInfo at +0x8, projectile at +0x20, definition at +0x28, Source at +0x40, SourceOptions at +0x48, SourceRotation at +0xA8, target at +0xD8, TargetOptions at +0xE0, TrajectoryOptions at +0x140, OwnerOptions at +0x188, DamageOverrides at +0x1A0, SourceViewOptions at +0x270
 writeQword(_params + 0x0, WorldContext_Object)
 writeQword(_params + 0x8, LatentInfo)
 writeQword(_params + 0x20, projectile)
 writeQword(_params + 0x28, definition)
 writeQword(_params + 0x40, Source_Actor)
 writeQword(_params + 0x48, SourceOptions)
 writeQword(_params + 0xA8, SourceRotation)
 writeQword(_params + 0xD8, target_Actor)
 writeQword(_params + 0xE0, TargetOptions)
 writeQword(_params + 0x140, TrajectoryOptions)
 writeQword(_params + 0x188, OwnerOptions)
 writeQword(_params + 0x1A0, DamageOverrides)
 writeQword(_params + 0x270, SourceViewOptions)
 UE.CallProcessEventEx(WorldContext_Object, "SpawnProjectile_ThrowAtActor", _params);
 deAlloc(_params);
end
FNR("BL4.SpawnProjectile_ThrowAtActor");

BL4.SpawnProjectile_ThrowAtActor_Const = function(OwnerAddress, definition, Source_Actor, SourceOptions, SourceRotation, target_Actor, TargetOptions, TrajectoryOptions, OwnerOptions, DamageOverrides, SourceViewOptions)
 local _paramsSize = 0x268
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnProjectile_ThrowAtActor_Const: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: definition at +0x0, Source at +0x18, SourceOptions at +0x20, SourceRotation at +0x80, target at +0xB0, TargetOptions at +0xB8, TrajectoryOptions at +0x118, OwnerOptions at +0x160, DamageOverrides at +0x178, SourceViewOptions at +0x248
 writeQword(_params + 0x0, definition)
 writeQword(_params + 0x18, Source_Actor)
 writeQword(_params + 0x20, SourceOptions)
 writeQword(_params + 0x80, SourceRotation)
 writeQword(_params + 0xB0, target_Actor)
 writeQword(_params + 0xB8, TargetOptions)
 writeQword(_params + 0x118, TrajectoryOptions)
 writeQword(_params + 0x160, OwnerOptions)
 writeQword(_params + 0x178, DamageOverrides)
 writeQword(_params + 0x248, SourceViewOptions)
 UE.CallProcessEventEx(OwnerAddress, "SpawnProjectile_ThrowAtActor_Const", _params);
 deAlloc(_params);
end
FNR("BL4.SpawnProjectile_ThrowAtActor_Const");

BL4.SpawnProjectile_ThrowAtCrosshair = function(WorldContext_Object, LatentInfo, projectile, definition, Source_Actor, SourceOptions, SourceRotation, TrajectoryOptions, TraceDistance, OwnerOptions, DamageOverrides, SourceViewOptions)
 local _paramsSize = 0x230
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnProjectile_ThrowAtCrosshair: Failed To Allocate The Params");return;end;
 TraceDistance = TraceDistance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContext at +0x0, LatentInfo at +0x8, projectile at +0x20, definition at +0x28, Source at +0x40, SourceOptions at +0x48, SourceRotation at +0xA8, TrajectoryOptions at +0xD8, TraceDistance at +0x120, OwnerOptions at +0x128, DamageOverrides at +0x140, SourceViewOptions at +0x210
 writeQword(_params + 0x0, WorldContext_Object)
 writeQword(_params + 0x8, LatentInfo)
 writeQword(_params + 0x20, projectile)
 writeQword(_params + 0x28, definition)
 writeQword(_params + 0x40, Source_Actor)
 writeQword(_params + 0x48, SourceOptions)
 writeQword(_params + 0xA8, SourceRotation)
 writeQword(_params + 0xD8, TrajectoryOptions)
 writeFloat(_params + 0x120, TraceDistance)
 writeQword(_params + 0x128, OwnerOptions)
 writeQword(_params + 0x140, DamageOverrides)
 writeQword(_params + 0x210, SourceViewOptions)
 UE.CallProcessEventEx(WorldContext_Object, "SpawnProjectile_ThrowAtCrosshair", _params);
 deAlloc(_params);
end
FNR("BL4.SpawnProjectile_ThrowAtCrosshair");

BL4.SpawnProjectile_ThrowAtCrosshair_Const = function(OwnerAddress, definition, Source_Actor, SourceOptions, SourceRotation, TrajectoryOptions, TraceDistance, OwnerOptions, DamageOverrides, SourceViewOptions)
 local _paramsSize = 0x208
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnProjectile_ThrowAtCrosshair_Const: Failed To Allocate The Params");return;end;
 TraceDistance = TraceDistance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: definition at +0x0, Source at +0x18, SourceOptions at +0x20, SourceRotation at +0x80, TrajectoryOptions at +0xB0, TraceDistance at +0xF8, OwnerOptions at +0x100, DamageOverrides at +0x118, SourceViewOptions at +0x1E8
 writeQword(_params + 0x0, definition)
 writeQword(_params + 0x18, Source_Actor)
 writeQword(_params + 0x20, SourceOptions)
 writeQword(_params + 0x80, SourceRotation)
 writeQword(_params + 0xB0, TrajectoryOptions)
 writeFloat(_params + 0xF8, TraceDistance)
 writeQword(_params + 0x100, OwnerOptions)
 writeQword(_params + 0x118, DamageOverrides)
 writeQword(_params + 0x1E8, SourceViewOptions)
 UE.CallProcessEventEx(OwnerAddress, "SpawnProjectile_ThrowAtCrosshair_Const", _params);
 deAlloc(_params);
end
FNR("BL4.SpawnProjectile_ThrowAtCrosshair_Const");

BL4.SpawnProjectile_ThrowAtLocation = function(WorldContext_Object, LatentInfo, projectile, definition, Source_Actor, SourceOptions, SourceRotation, Location, TrajectoryOptions, OwnerOptions, DamageOverrides, SourceViewOptions)
 local _paramsSize = 0x240
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnProjectile_ThrowAtLocation: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContext at +0x0, LatentInfo at +0x8, projectile at +0x20, definition at +0x28, Source at +0x40, SourceOptions at +0x48, SourceRotation at +0xA8, Location at +0xD8, TrajectoryOptions at +0xF0, OwnerOptions at +0x138, DamageOverrides at +0x150, SourceViewOptions at +0x220
 writeQword(_params + 0x0, WorldContext_Object)
 writeQword(_params + 0x8, LatentInfo)
 writeQword(_params + 0x20, projectile)
 writeQword(_params + 0x28, definition)
 writeQword(_params + 0x40, Source_Actor)
 writeQword(_params + 0x48, SourceOptions)
 writeQword(_params + 0xA8, SourceRotation)
 writeDouble(_params + 0xD8, (Location and Location.X) or 0)
 writeDouble(_params + 0xE0, (Location and Location.Y) or 0)
 writeDouble(_params + 0xE8, (Location and Location.Z) or 0)
 writeQword(_params + 0xF0, TrajectoryOptions)
 writeQword(_params + 0x138, OwnerOptions)
 writeQword(_params + 0x150, DamageOverrides)
 writeQword(_params + 0x220, SourceViewOptions)
 UE.CallProcessEventEx(WorldContext_Object, "SpawnProjectile_ThrowAtLocation", _params);
 deAlloc(_params);
end
FNR("BL4.SpawnProjectile_ThrowAtLocation");

BL4.SpawnProjectile_ThrowAtLocation_Const = function(OwnerAddress, definition, Source_Actor, SourceOptions, SourceRotation, Location, TrajectoryOptions, OwnerOptions, DamageOverrides, SourceViewOptions)
 local _paramsSize = 0x218
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnProjectile_ThrowAtLocation_Const: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: definition at +0x0, Source at +0x18, SourceOptions at +0x20, SourceRotation at +0x80, Location at +0xB0, TrajectoryOptions at +0xC8, OwnerOptions at +0x110, DamageOverrides at +0x128, SourceViewOptions at +0x1F8
 writeQword(_params + 0x0, definition)
 writeQword(_params + 0x18, Source_Actor)
 writeQword(_params + 0x20, SourceOptions)
 writeQword(_params + 0x80, SourceRotation)
 writeDouble(_params + 0xB0, (Location and Location.X) or 0)
 writeDouble(_params + 0xB8, (Location and Location.Y) or 0)
 writeDouble(_params + 0xC0, (Location and Location.Z) or 0)
 writeQword(_params + 0xC8, TrajectoryOptions)
 writeQword(_params + 0x110, OwnerOptions)
 writeQword(_params + 0x128, DamageOverrides)
 writeQword(_params + 0x1F8, SourceViewOptions)
 UE.CallProcessEventEx(OwnerAddress, "SpawnProjectile_ThrowAtLocation_Const", _params);
 deAlloc(_params);
end
FNR("BL4.SpawnProjectile_ThrowAtLocation_Const");

BL4.SpawnProjectiles_Query = function(WorldContext_Object, LatentInfo, Exec, AllProjectiles, SpawnedProjectile_projectile, definition, owner_Actor, QueryData, Rotation, MaxResults, delay, DamageOverrides)
 local _paramsSize = 0x3E0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnProjectiles_Query: Failed To Allocate The Params");return;end;
 Exec = Exec or 0
 MaxResults = MaxResults or 0
 delay = delay or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContext at +0x0, LatentInfo at +0x8, Exec at +0x20, AllProjectiles at +0x28, SpawnedProjectile at +0x38, definition at +0x40, owner at +0x58, QueryData at +0x60, Rotation at +0x2D8, MaxResults at +0x308, delay at +0x30C, DamageOverrides at +0x310
 writeQword(_params + 0x0, WorldContext_Object)
 writeQword(_params + 0x8, LatentInfo)
 writeByte(_params + 0x20, Exec)
 writeQword(_params + 0x28, AllProjectiles)
 writeQword(_params + 0x38, SpawnedProjectile_projectile)
 writeQword(_params + 0x40, definition)
 writeQword(_params + 0x58, owner_Actor)
 writeQword(_params + 0x60, QueryData)
 writeQword(_params + 0x2D8, Rotation)
 writeInteger(_params + 0x308, MaxResults)
 writeFloat(_params + 0x30C, delay)
 writeQword(_params + 0x310, DamageOverrides)
 UE.CallProcessEventEx(WorldContext_Object, "SpawnProjectiles_Query", _params);
 deAlloc(_params);
end
FNR("BL4.SpawnProjectiles_Query");

BL4.SpawnProjectiles_Query_Const = function(OwnerAddress, definition, owner_Actor, QueryData, Rotation, MaxResults, delay, DamageOverrides)
 local _paramsSize = 0x3A0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnProjectiles_Query_Const: Failed To Allocate The Params");return;end;
 MaxResults = MaxResults or 0
 delay = delay or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: definition at +0x0, owner at +0x18, QueryData at +0x20, Rotation at +0x298, MaxResults at +0x2C8, delay at +0x2CC, DamageOverrides at +0x2D0
 writeQword(_params + 0x0, definition)
 writeQword(_params + 0x18, owner_Actor)
 writeQword(_params + 0x20, QueryData)
 writeQword(_params + 0x298, Rotation)
 writeInteger(_params + 0x2C8, MaxResults)
 writeFloat(_params + 0x2CC, delay)
 writeQword(_params + 0x2D0, DamageOverrides)
 UE.CallProcessEventEx(OwnerAddress, "SpawnProjectiles_Query_Const", _params);
 deAlloc(_params);
end
FNR("BL4.SpawnProjectiles_Query_Const");

