BL4.ActivateReverbEffect = function(WorldContextObject_Object, ReverbEffect, TagName, priority, Volume, FadeTime)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ActivateReverbEffect: Failed To Allocate The Params");return;end;
 priority = priority or 0
 Volume = Volume or 0
 FadeTime = FadeTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, ReverbEffect at +0x8, TagName at +0x10, priority at +0x18, Volume at +0x1C, FadeTime at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, ReverbEffect)
 writeQword(_params + 0x10, TagName)
 writeFloat(_params + 0x18, priority)
 writeFloat(_params + 0x1C, Volume)
 writeFloat(_params + 0x20, FadeTime)
 UE.CallProcessEventEx(WorldContextObject_Object, "ActivateReverbEffect", _params);
 deAlloc(_params);
end
FNR("BL4.ActivateReverbEffect");

BL4.AnnounceAccessibleString = function(OwnerAddress, AnnouncementString)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AnnounceAccessibleString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AnnouncementString at +0x0
 writeQword(_params + 0x0, AnnouncementString)
 UE.CallProcessEventEx(OwnerAddress, "AnnounceAccessibleString", _params);
 deAlloc(_params);
end
FNR("BL4.AnnounceAccessibleString");

BL4.ApplyDamage = function(DamagedActor_Actor, BaseDamage, EventInstigator_Controller, DamageCauser_Actor, DamageTypeClass_Class)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ApplyDamage: Failed To Allocate The Params");return;end;
 BaseDamage = BaseDamage or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DamagedActor at +0x0, BaseDamage at +0x8, EventInstigator at +0x10, DamageCauser at +0x18, DamageTypeClass at +0x20
 writeQword(_params + 0x0, DamagedActor_Actor)
 writeFloat(_params + 0x8, BaseDamage)
 writeQword(_params + 0x10, EventInstigator_Controller)
 writeQword(_params + 0x18, DamageCauser_Actor)
 writeQword(_params + 0x20, DamageTypeClass_Class)
 UE.CallProcessEventEx(DamagedActor_Actor, "ApplyDamage", _params);
 local RET=readFloat(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ApplyDamage");

BL4.ApplyPointDamage = function(DamagedActor_Actor, BaseDamage, HitFromDirection, HitInfo, EventInstigator_Controller, DamageCauser_Actor, DamageTypeClass_Class)
 local _paramsSize = 0x148
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ApplyPointDamage: Failed To Allocate The Params");return;end;
 BaseDamage = BaseDamage or 0
 HitFromDirection = HitFromDirection or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DamagedActor at +0x0, BaseDamage at +0x8, HitFromDirection at +0x10, HitInfo at +0x28, EventInstigator at +0x128, DamageCauser at +0x130, DamageTypeClass at +0x138
 writeQword(_params + 0x0, DamagedActor_Actor)
 writeFloat(_params + 0x8, BaseDamage)
 writeDouble(_params + 0x10, (HitFromDirection and HitFromDirection.X) or 0)
 writeDouble(_params + 0x18, (HitFromDirection and HitFromDirection.Y) or 0)
 writeDouble(_params + 0x20, (HitFromDirection and HitFromDirection.Z) or 0)
 writeQword(_params + 0x28, HitInfo)
 writeQword(_params + 0x128, EventInstigator_Controller)
 writeQword(_params + 0x130, DamageCauser_Actor)
 writeQword(_params + 0x138, DamageTypeClass_Class)
 UE.CallProcessEventEx(DamagedActor_Actor, "ApplyPointDamage", _params);
 local RET=readFloat(_params + 0x140);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ApplyPointDamage");

BL4.ApplyRadialDamage = function(WorldContextObject_Object, BaseDamage, Origin, damageradius, DamageTypeClass_Class, IgnoreActors, DamageCauser_Actor, InstigatedByController_Controller, bDoFullDamage, DamagePreventionChannel)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ApplyRadialDamage: Failed To Allocate The Params");return;end;
 BaseDamage = BaseDamage or 0
 Origin = Origin or {X=0,Y=0,Z=0}
 damageradius = damageradius or 0
 bDoFullDamage = bDoFullDamage or false
 DamagePreventionChannel = DamagePreventionChannel or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, BaseDamage at +0x8, Origin at +0x10, damageradius at +0x28, DamageTypeClass at +0x30, IgnoreActors at +0x38, DamageCauser at +0x48, InstigatedByController at +0x50, bDoFullDamage at +0x58, DamagePreventionChannel at +0x59
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeFloat(_params + 0x8, BaseDamage)
 writeDouble(_params + 0x10, (Origin and Origin.X) or 0)
 writeDouble(_params + 0x18, (Origin and Origin.Y) or 0)
 writeDouble(_params + 0x20, (Origin and Origin.Z) or 0)
 writeFloat(_params + 0x28, damageradius)
 writeQword(_params + 0x30, DamageTypeClass_Class)
 writeQword(_params + 0x38, IgnoreActors)
 writeQword(_params + 0x48, DamageCauser_Actor)
 writeQword(_params + 0x50, InstigatedByController_Controller)
 writeByte(_params + 0x58, bDoFullDamage)
 writeByte(_params + 0x59, DamagePreventionChannel)
 UE.CallProcessEventEx(WorldContextObject_Object, "ApplyRadialDamage", _params);
 local RET=readByte(_params + 0x5A);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ApplyRadialDamage");

BL4.ApplyRadialDamageWithFalloff = function(WorldContextObject_Object, BaseDamage, MinimumDamage, Origin, DamageInnerRadius, DamageOuterRadius, DamageFalloff, DamageTypeClass_Class, IgnoreActors, DamageCauser_Actor, InstigatedByController_Controller, DamagePreventionChannel)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ApplyRadialDamageWithFalloff: Failed To Allocate The Params");return;end;
 BaseDamage = BaseDamage or 0
 MinimumDamage = MinimumDamage or 0
 Origin = Origin or {X=0,Y=0,Z=0}
 DamageInnerRadius = DamageInnerRadius or 0
 DamageOuterRadius = DamageOuterRadius or 0
 DamageFalloff = DamageFalloff or 0
 DamagePreventionChannel = DamagePreventionChannel or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, BaseDamage at +0x8, MinimumDamage at +0xC, Origin at +0x10, DamageInnerRadius at +0x28, DamageOuterRadius at +0x2C, DamageFalloff at +0x30, DamageTypeClass at +0x38, IgnoreActors at +0x40, DamageCauser at +0x50, InstigatedByController at +0x58, DamagePreventionChannel at +0x60
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeFloat(_params + 0x8, BaseDamage)
 writeFloat(_params + 0xC, MinimumDamage)
 writeDouble(_params + 0x10, (Origin and Origin.X) or 0)
 writeDouble(_params + 0x18, (Origin and Origin.Y) or 0)
 writeDouble(_params + 0x20, (Origin and Origin.Z) or 0)
 writeFloat(_params + 0x28, DamageInnerRadius)
 writeFloat(_params + 0x2C, DamageOuterRadius)
 writeFloat(_params + 0x30, DamageFalloff)
 writeQword(_params + 0x38, DamageTypeClass_Class)
 writeQword(_params + 0x40, IgnoreActors)
 writeQword(_params + 0x50, DamageCauser_Actor)
 writeQword(_params + 0x58, InstigatedByController_Controller)
 writeByte(_params + 0x60, DamagePreventionChannel)
 UE.CallProcessEventEx(WorldContextObject_Object, "ApplyRadialDamageWithFalloff", _params);
 local RET=readByte(_params + 0x61);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ApplyRadialDamageWithFalloff");

BL4.AreAnyListenersWithinRange = function(WorldContextObject_Object, Location, MaximumRange)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AreAnyListenersWithinRange: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 MaximumRange = MaximumRange or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Location at +0x8, MaximumRange at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Location and Location.X) or 0)
 writeDouble(_params + 0x10, (Location and Location.Y) or 0)
 writeDouble(_params + 0x18, (Location and Location.Z) or 0)
 writeFloat(_params + 0x20, MaximumRange)
 UE.CallProcessEventEx(WorldContextObject_Object, "AreAnyListenersWithinRange", _params);
 local RET=readByte(_params + 0x24);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AreAnyListenersWithinRange");

BL4.AreSubtitlesEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AreSubtitlesEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "AreSubtitlesEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AreSubtitlesEnabled");

BL4.BeginDeferredActorSpawnFromClass = function(WorldContextObject_Object, ActorClass_Class, SpawnTransform, CollisionHandlingOverride, owner_Actor, TransformScaleMethod)
 local _paramsSize = 0x90
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BeginDeferredActorSpawnFromClass: Failed To Allocate The Params");return;end;
 CollisionHandlingOverride = CollisionHandlingOverride or 0
 TransformScaleMethod = TransformScaleMethod or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, ActorClass at +0x8, SpawnTransform at +0x10, CollisionHandlingOverride at +0x70, owner at +0x78, TransformScaleMethod at +0x80
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, ActorClass_Class)
 writeQword(_params + 0x10, SpawnTransform)
 writeByte(_params + 0x70, CollisionHandlingOverride)
 writeQword(_params + 0x78, owner_Actor)
 writeByte(_params + 0x80, TransformScaleMethod)
 UE.CallProcessEventEx(WorldContextObject_Object, "BeginDeferredActorSpawnFromClass", _params);
 local RET=readQword(_params + 0x88);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BeginDeferredActorSpawnFromClass");

BL4.BeginSpawningActorFromBlueprint = function(WorldContextObject_Object, Blueprint, SpawnTransform, bNoCollisionFail)
 local _paramsSize = 0x80
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BeginSpawningActorFromBlueprint: Failed To Allocate The Params");return;end;
 bNoCollisionFail = bNoCollisionFail or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Blueprint at +0x8, SpawnTransform at +0x10, bNoCollisionFail at +0x70
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Blueprint)
 writeQword(_params + 0x10, SpawnTransform)
 writeByte(_params + 0x70, bNoCollisionFail)
 UE.CallProcessEventEx(WorldContextObject_Object, "BeginSpawningActorFromBlueprint", _params);
 local RET=readQword(_params + 0x78);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BeginSpawningActorFromBlueprint");

BL4.Blueprint_PredictProjectilePath_Advanced = function(WorldContextObject_Object, PredictParams, PredictResult)
 local _paramsSize = 0x1D0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Blueprint_PredictProjectilePath_Advanced: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, PredictParams at +0x8, PredictResult at +0x80
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, PredictParams)
 writeQword(_params + 0x80, PredictResult)
 UE.CallProcessEventEx(WorldContextObject_Object, "Blueprint_PredictProjectilePath_Advanced", _params);
 local RET=readByte(_params + 0x1C8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Blueprint_PredictProjectilePath_Advanced");

BL4.Blueprint_PredictProjectilePath_ByObjectType = function(WorldContextObject_Object, OutHit, OutPathPositions, OutLastTraceDestination, StartPos, LaunchVelocity, bTracePath, ProjectileRadius, ObjectTypes, bTraceComplex, ActorsToIgnore, DrawDebugType, DrawDebugTime, SimFrequency, MaxSimTime, OverrideGravityZ)
 local _paramsSize = 0x1A8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Blueprint_PredictProjectilePath_ByObjectType: Failed To Allocate The Params");return;end;
 OutLastTraceDestination = OutLastTraceDestination or {X=0,Y=0,Z=0}
 StartPos = StartPos or {X=0,Y=0,Z=0}
 LaunchVelocity = LaunchVelocity or {X=0,Y=0,Z=0}
 bTracePath = bTracePath or false
 ProjectileRadius = ProjectileRadius or 0
 bTraceComplex = bTraceComplex or false
 DrawDebugType = DrawDebugType or 0
 DrawDebugTime = DrawDebugTime or 0
 SimFrequency = SimFrequency or 0
 MaxSimTime = MaxSimTime or 0
 OverrideGravityZ = OverrideGravityZ or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OutHit at +0x8, OutPathPositions at +0x108, OutLastTraceDestination at +0x118, StartPos at +0x130, LaunchVelocity at +0x148, bTracePath at +0x160, ProjectileRadius at +0x164, ObjectTypes at +0x168, bTraceComplex at +0x178, ActorsToIgnore at +0x180, DrawDebugType at +0x190, DrawDebugTime at +0x194, SimFrequency at +0x198, MaxSimTime at +0x19C, OverrideGravityZ at +0x1A0
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OutHit)
 writeQword(_params + 0x108, OutPathPositions)
 writeDouble(_params + 0x118, (OutLastTraceDestination and OutLastTraceDestination.X) or 0)
 writeDouble(_params + 0x120, (OutLastTraceDestination and OutLastTraceDestination.Y) or 0)
 writeDouble(_params + 0x128, (OutLastTraceDestination and OutLastTraceDestination.Z) or 0)
 writeDouble(_params + 0x130, (StartPos and StartPos.X) or 0)
 writeDouble(_params + 0x138, (StartPos and StartPos.Y) or 0)
 writeDouble(_params + 0x140, (StartPos and StartPos.Z) or 0)
 writeDouble(_params + 0x148, (LaunchVelocity and LaunchVelocity.X) or 0)
 writeDouble(_params + 0x150, (LaunchVelocity and LaunchVelocity.Y) or 0)
 writeDouble(_params + 0x158, (LaunchVelocity and LaunchVelocity.Z) or 0)
 writeByte(_params + 0x160, bTracePath)
 writeFloat(_params + 0x164, ProjectileRadius)
 writeQword(_params + 0x168, ObjectTypes)
 writeByte(_params + 0x178, bTraceComplex)
 writeQword(_params + 0x180, ActorsToIgnore)
 writeByte(_params + 0x190, DrawDebugType)
 writeFloat(_params + 0x194, DrawDebugTime)
 writeFloat(_params + 0x198, SimFrequency)
 writeFloat(_params + 0x19C, MaxSimTime)
 writeFloat(_params + 0x1A0, OverrideGravityZ)
 UE.CallProcessEventEx(WorldContextObject_Object, "Blueprint_PredictProjectilePath_ByObjectType", _params);
 local RET=readByte(_params + 0x1A4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Blueprint_PredictProjectilePath_ByObjectType");

BL4.Blueprint_PredictProjectilePath_ByTraceChannel = function(WorldContextObject_Object, OutHit, OutPathPositions, OutLastTraceDestination, StartPos, LaunchVelocity, bTracePath, ProjectileRadius, TraceChannel, bTraceComplex, ActorsToIgnore, DrawDebugType, DrawDebugTime, SimFrequency, MaxSimTime, OverrideGravityZ)
 local _paramsSize = 0x198
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Blueprint_PredictProjectilePath_ByTraceChannel: Failed To Allocate The Params");return;end;
 OutLastTraceDestination = OutLastTraceDestination or {X=0,Y=0,Z=0}
 StartPos = StartPos or {X=0,Y=0,Z=0}
 LaunchVelocity = LaunchVelocity or {X=0,Y=0,Z=0}
 bTracePath = bTracePath or false
 ProjectileRadius = ProjectileRadius or 0
 TraceChannel = TraceChannel or 0
 bTraceComplex = bTraceComplex or false
 DrawDebugType = DrawDebugType or 0
 DrawDebugTime = DrawDebugTime or 0
 SimFrequency = SimFrequency or 0
 MaxSimTime = MaxSimTime or 0
 OverrideGravityZ = OverrideGravityZ or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OutHit at +0x8, OutPathPositions at +0x108, OutLastTraceDestination at +0x118, StartPos at +0x130, LaunchVelocity at +0x148, bTracePath at +0x160, ProjectileRadius at +0x164, TraceChannel at +0x168, bTraceComplex at +0x169, ActorsToIgnore at +0x170, DrawDebugType at +0x180, DrawDebugTime at +0x184, SimFrequency at +0x188, MaxSimTime at +0x18C, OverrideGravityZ at +0x190
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OutHit)
 writeQword(_params + 0x108, OutPathPositions)
 writeDouble(_params + 0x118, (OutLastTraceDestination and OutLastTraceDestination.X) or 0)
 writeDouble(_params + 0x120, (OutLastTraceDestination and OutLastTraceDestination.Y) or 0)
 writeDouble(_params + 0x128, (OutLastTraceDestination and OutLastTraceDestination.Z) or 0)
 writeDouble(_params + 0x130, (StartPos and StartPos.X) or 0)
 writeDouble(_params + 0x138, (StartPos and StartPos.Y) or 0)
 writeDouble(_params + 0x140, (StartPos and StartPos.Z) or 0)
 writeDouble(_params + 0x148, (LaunchVelocity and LaunchVelocity.X) or 0)
 writeDouble(_params + 0x150, (LaunchVelocity and LaunchVelocity.Y) or 0)
 writeDouble(_params + 0x158, (LaunchVelocity and LaunchVelocity.Z) or 0)
 writeByte(_params + 0x160, bTracePath)
 writeFloat(_params + 0x164, ProjectileRadius)
 writeByte(_params + 0x168, TraceChannel)
 writeByte(_params + 0x169, bTraceComplex)
 writeQword(_params + 0x170, ActorsToIgnore)
 writeByte(_params + 0x180, DrawDebugType)
 writeFloat(_params + 0x184, DrawDebugTime)
 writeFloat(_params + 0x188, SimFrequency)
 writeFloat(_params + 0x18C, MaxSimTime)
 writeFloat(_params + 0x190, OverrideGravityZ)
 UE.CallProcessEventEx(WorldContextObject_Object, "Blueprint_PredictProjectilePath_ByTraceChannel", _params);
 local RET=readByte(_params + 0x194);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Blueprint_PredictProjectilePath_ByTraceChannel");

BL4.BlueprintSuggestProjectileVelocity = function(WorldContextObject_Object, TossVelocity, StartLocation, EndLocation, LaunchSpeed, OverrideGravityZ, TraceOption, CollisionRadius, bFavorHighArc, bDrawDebug, bAcceptClosestOnNoSolutions)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BlueprintSuggestProjectileVelocity: Failed To Allocate The Params");return;end;
 TossVelocity = TossVelocity or {X=0,Y=0,Z=0}
 StartLocation = StartLocation or {X=0,Y=0,Z=0}
 EndLocation = EndLocation or {X=0,Y=0,Z=0}
 LaunchSpeed = LaunchSpeed or 0
 OverrideGravityZ = OverrideGravityZ or 0
 TraceOption = TraceOption or 0
 CollisionRadius = CollisionRadius or 0
 bFavorHighArc = bFavorHighArc or false
 bDrawDebug = bDrawDebug or false
 bAcceptClosestOnNoSolutions = bAcceptClosestOnNoSolutions or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, TossVelocity at +0x8, StartLocation at +0x20, EndLocation at +0x38, LaunchSpeed at +0x50, OverrideGravityZ at +0x54, TraceOption at +0x58, CollisionRadius at +0x5C, bFavorHighArc at +0x60, bDrawDebug at +0x61, bAcceptClosestOnNoSolutions at +0x62
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (TossVelocity and TossVelocity.X) or 0)
 writeDouble(_params + 0x10, (TossVelocity and TossVelocity.Y) or 0)
 writeDouble(_params + 0x18, (TossVelocity and TossVelocity.Z) or 0)
 writeDouble(_params + 0x20, (StartLocation and StartLocation.X) or 0)
 writeDouble(_params + 0x28, (StartLocation and StartLocation.Y) or 0)
 writeDouble(_params + 0x30, (StartLocation and StartLocation.Z) or 0)
 writeDouble(_params + 0x38, (EndLocation and EndLocation.X) or 0)
 writeDouble(_params + 0x40, (EndLocation and EndLocation.Y) or 0)
 writeDouble(_params + 0x48, (EndLocation and EndLocation.Z) or 0)
 writeFloat(_params + 0x50, LaunchSpeed)
 writeFloat(_params + 0x54, OverrideGravityZ)
 writeByte(_params + 0x58, TraceOption)
 writeFloat(_params + 0x5C, CollisionRadius)
 writeByte(_params + 0x60, bFavorHighArc)
 writeByte(_params + 0x61, bDrawDebug)
 writeByte(_params + 0x62, bAcceptClosestOnNoSolutions)
 UE.CallProcessEventEx(WorldContextObject_Object, "BlueprintSuggestProjectileVelocity", _params);
 local RET=readByte(_params + 0x63);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BlueprintSuggestProjectileVelocity");

BL4.BreakHitResult = function(OwnerAddress, Hit, bBlockingHit, bInitialOverlap, time, Distance, Location, ImpactPoint, Normal, ImpactNormal, PhysMat_PhysicalMaterial, HitActor_Actor, HitComponent_PrimitiveComponent, HitBoneName, BoneName, HitItem, ElementIndex, FaceIndex, TraceStart, TraceEnd)
 local _paramsSize = 0x1D8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakHitResult: Failed To Allocate The Params");return;end;
 bBlockingHit = bBlockingHit or false
 bInitialOverlap = bInitialOverlap or false
 time = time or 0
 Distance = Distance or 0
 Location = Location or {X=0,Y=0,Z=0}
 ImpactPoint = ImpactPoint or {X=0,Y=0,Z=0}
 Normal = Normal or {X=0,Y=0,Z=0}
 ImpactNormal = ImpactNormal or {X=0,Y=0,Z=0}
 HitItem = HitItem or 0
 ElementIndex = ElementIndex or 0
 FaceIndex = FaceIndex or 0
 TraceStart = TraceStart or {X=0,Y=0,Z=0}
 TraceEnd = TraceEnd or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Hit at +0x0, bBlockingHit at +0x100, bInitialOverlap at +0x101, time at +0x104, Distance at +0x108, Location at +0x110, ImpactPoint at +0x128, Normal at +0x140, ImpactNormal at +0x158, PhysMat at +0x170, HitActor at +0x178, HitComponent at +0x180, HitBoneName at +0x188, BoneName at +0x190, HitItem at +0x198, ElementIndex at +0x19C, FaceIndex at +0x1A0, TraceStart at +0x1A8, TraceEnd at +0x1C0
 writeQword(_params + 0x0, Hit)
 writeByte(_params + 0x100, bBlockingHit)
 writeByte(_params + 0x101, bInitialOverlap)
 writeFloat(_params + 0x104, time)
 writeFloat(_params + 0x108, Distance)
 writeDouble(_params + 0x110, (Location and Location.X) or 0)
 writeDouble(_params + 0x118, (Location and Location.Y) or 0)
 writeDouble(_params + 0x120, (Location and Location.Z) or 0)
 writeDouble(_params + 0x128, (ImpactPoint and ImpactPoint.X) or 0)
 writeDouble(_params + 0x130, (ImpactPoint and ImpactPoint.Y) or 0)
 writeDouble(_params + 0x138, (ImpactPoint and ImpactPoint.Z) or 0)
 writeDouble(_params + 0x140, (Normal and Normal.X) or 0)
 writeDouble(_params + 0x148, (Normal and Normal.Y) or 0)
 writeDouble(_params + 0x150, (Normal and Normal.Z) or 0)
 writeDouble(_params + 0x158, (ImpactNormal and ImpactNormal.X) or 0)
 writeDouble(_params + 0x160, (ImpactNormal and ImpactNormal.Y) or 0)
 writeDouble(_params + 0x168, (ImpactNormal and ImpactNormal.Z) or 0)
 writeQword(_params + 0x170, PhysMat_PhysicalMaterial)
 writeQword(_params + 0x178, HitActor_Actor)
 writeQword(_params + 0x180, HitComponent_PrimitiveComponent)
 writeQword(_params + 0x188, HitBoneName)
 writeQword(_params + 0x190, BoneName)
 writeInteger(_params + 0x198, HitItem)
 writeInteger(_params + 0x19C, ElementIndex)
 writeInteger(_params + 0x1A0, FaceIndex)
 writeDouble(_params + 0x1A8, (TraceStart and TraceStart.X) or 0)
 writeDouble(_params + 0x1B0, (TraceStart and TraceStart.Y) or 0)
 writeDouble(_params + 0x1B8, (TraceStart and TraceStart.Z) or 0)
 writeDouble(_params + 0x1C0, (TraceEnd and TraceEnd.X) or 0)
 writeDouble(_params + 0x1C8, (TraceEnd and TraceEnd.Y) or 0)
 writeDouble(_params + 0x1D0, (TraceEnd and TraceEnd.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "BreakHitResult", _params);
 deAlloc(_params);
end
FNR("BL4.BreakHitResult");

BL4.ClearSoundMixClassOverride = function(WorldContextObject_Object, InSoundMixModifier_SoundMix, InSoundClass_SoundClass, FadeOutTime)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClearSoundMixClassOverride: Failed To Allocate The Params");return;end;
 FadeOutTime = FadeOutTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, InSoundMixModifier at +0x8, InSoundClass at +0x10, FadeOutTime at +0x18
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, InSoundMixModifier_SoundMix)
 writeQword(_params + 0x10, InSoundClass_SoundClass)
 writeFloat(_params + 0x18, FadeOutTime)
 UE.CallProcessEventEx(WorldContextObject_Object, "ClearSoundMixClassOverride", _params);
 deAlloc(_params);
end
FNR("BL4.ClearSoundMixClassOverride");

BL4.ClearSoundMixModifiers = function(WorldContextObject_Object)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClearSoundMixModifiers: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "ClearSoundMixModifiers", _params);
 deAlloc(_params);
end
FNR("BL4.ClearSoundMixModifiers");

BL4.CreatePlayer = function(WorldContextObject_Object, ControllerId, bSpawnPlayerController)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CreatePlayer: Failed To Allocate The Params");return;end;
 ControllerId = ControllerId or 0
 bSpawnPlayerController = bSpawnPlayerController or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, ControllerId at +0x8, bSpawnPlayerController at +0xC
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeInteger(_params + 0x8, ControllerId)
 writeByte(_params + 0xC, bSpawnPlayerController)
 UE.CallProcessEventEx(WorldContextObject_Object, "CreatePlayer", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CreatePlayer");

BL4.CreatePlayerFromPlatformUser = function(WorldContextObject_Object, UserId, bSpawnPlayerController)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CreatePlayerFromPlatformUser: Failed To Allocate The Params");return;end;
 bSpawnPlayerController = bSpawnPlayerController or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, UserId at +0x8, bSpawnPlayerController at +0xC
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, UserId)
 writeByte(_params + 0xC, bSpawnPlayerController)
 UE.CallProcessEventEx(WorldContextObject_Object, "CreatePlayerFromPlatformUser", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CreatePlayerFromPlatformUser");

BL4.CreateSaveGameObject = function(SaveGameClass_Class)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CreateSaveGameObject: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SaveGameClass at +0x0
 writeQword(_params + 0x0, SaveGameClass_Class)
 UE.CallProcessEventEx(SaveGameClass_Class, "CreateSaveGameObject", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CreateSaveGameObject");

BL4.CreateSound2D = function(WorldContextObject_Object, Sound_SoundBase, VolumeMultiplier, PitchMultiplier, StartTime, ConcurrencySettings_SoundConcurrency, bPersistAcrossLevelTransition, bAutoDestroy)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CreateSound2D: Failed To Allocate The Params");return;end;
 VolumeMultiplier = VolumeMultiplier or 0
 PitchMultiplier = PitchMultiplier or 0
 StartTime = StartTime or 0
 bPersistAcrossLevelTransition = bPersistAcrossLevelTransition or false
 bAutoDestroy = bAutoDestroy or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Sound at +0x8, VolumeMultiplier at +0x10, PitchMultiplier at +0x14, StartTime at +0x18, ConcurrencySettings at +0x20, bPersistAcrossLevelTransition at +0x28, bAutoDestroy at +0x29
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Sound_SoundBase)
 writeFloat(_params + 0x10, VolumeMultiplier)
 writeFloat(_params + 0x14, PitchMultiplier)
 writeFloat(_params + 0x18, StartTime)
 writeQword(_params + 0x20, ConcurrencySettings_SoundConcurrency)
 writeByte(_params + 0x28, bPersistAcrossLevelTransition)
 writeByte(_params + 0x29, bAutoDestroy)
 UE.CallProcessEventEx(WorldContextObject_Object, "CreateSound2D", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CreateSound2D");

BL4.DeactivateReverbEffect = function(WorldContextObject_Object, TagName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DeactivateReverbEffect: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, TagName at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, TagName)
 UE.CallProcessEventEx(WorldContextObject_Object, "DeactivateReverbEffect", _params);
 deAlloc(_params);
end
FNR("BL4.DeactivateReverbEffect");

BL4.DeleteGameInSlot = function(OwnerAddress, SlotName, UserIndex)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DeleteGameInSlot: Failed To Allocate The Params");return;end;
 UserIndex = UserIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SlotName at +0x0, UserIndex at +0x10
 writeQword(_params + 0x0, SlotName)
 writeInteger(_params + 0x10, UserIndex)
 UE.CallProcessEventEx(OwnerAddress, "DeleteGameInSlot", _params);
 local RET=readByte(_params + 0x14);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DeleteGameInSlot");

BL4.DeprojectSceneCaptureComponentToWorld = function(SceneCaptureComponent2D, TargetUV, WorldPosition, WorldDirection)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DeprojectSceneCaptureComponentToWorld: Failed To Allocate The Params");return;end;
 TargetUV = TargetUV or {X=0,Y=0}
 WorldPosition = WorldPosition or {X=0,Y=0,Z=0}
 WorldDirection = WorldDirection or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SceneCaptureComponent2D at +0x0, TargetUV at +0x8, WorldPosition at +0x18, WorldDirection at +0x30
 writeQword(_params + 0x0, SceneCaptureComponent2D)
 writeDouble(_params + 0x8, (TargetUV and TargetUV.X) or 0)
 writeDouble(_params + 0x10, (TargetUV and TargetUV.Y) or 0)
 writeDouble(_params + 0x18, (WorldPosition and WorldPosition.X) or 0)
 writeDouble(_params + 0x20, (WorldPosition and WorldPosition.Y) or 0)
 writeDouble(_params + 0x28, (WorldPosition and WorldPosition.Z) or 0)
 writeDouble(_params + 0x30, (WorldDirection and WorldDirection.X) or 0)
 writeDouble(_params + 0x38, (WorldDirection and WorldDirection.Y) or 0)
 writeDouble(_params + 0x40, (WorldDirection and WorldDirection.Z) or 0)
 UE.CallProcessEventEx(SceneCaptureComponent2D, "DeprojectSceneCaptureComponentToWorld", _params);
 local RET=readByte(_params + 0x48);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DeprojectSceneCaptureComponentToWorld");

BL4.DeprojectSceneCaptureToWorld = function(SceneCapture2D, TargetUV, WorldPosition, WorldDirection)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DeprojectSceneCaptureToWorld: Failed To Allocate The Params");return;end;
 TargetUV = TargetUV or {X=0,Y=0}
 WorldPosition = WorldPosition or {X=0,Y=0,Z=0}
 WorldDirection = WorldDirection or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SceneCapture2D at +0x0, TargetUV at +0x8, WorldPosition at +0x18, WorldDirection at +0x30
 writeQword(_params + 0x0, SceneCapture2D)
 writeDouble(_params + 0x8, (TargetUV and TargetUV.X) or 0)
 writeDouble(_params + 0x10, (TargetUV and TargetUV.Y) or 0)
 writeDouble(_params + 0x18, (WorldPosition and WorldPosition.X) or 0)
 writeDouble(_params + 0x20, (WorldPosition and WorldPosition.Y) or 0)
 writeDouble(_params + 0x28, (WorldPosition and WorldPosition.Z) or 0)
 writeDouble(_params + 0x30, (WorldDirection and WorldDirection.X) or 0)
 writeDouble(_params + 0x38, (WorldDirection and WorldDirection.Y) or 0)
 writeDouble(_params + 0x40, (WorldDirection and WorldDirection.Z) or 0)
 UE.CallProcessEventEx(SceneCapture2D, "DeprojectSceneCaptureToWorld", _params);
 local RET=readByte(_params + 0x48);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DeprojectSceneCaptureToWorld");

BL4.DeprojectScreenToWorld = function(player_PlayerController, ScreenPosition, WorldPosition, WorldDirection)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DeprojectScreenToWorld: Failed To Allocate The Params");return;end;
 ScreenPosition = ScreenPosition or {X=0,Y=0}
 WorldPosition = WorldPosition or {X=0,Y=0,Z=0}
 WorldDirection = WorldDirection or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: player at +0x0, ScreenPosition at +0x8, WorldPosition at +0x18, WorldDirection at +0x30
 writeQword(_params + 0x0, player_PlayerController)
 writeDouble(_params + 0x8, (ScreenPosition and ScreenPosition.X) or 0)
 writeDouble(_params + 0x10, (ScreenPosition and ScreenPosition.Y) or 0)
 writeDouble(_params + 0x18, (WorldPosition and WorldPosition.X) or 0)
 writeDouble(_params + 0x20, (WorldPosition and WorldPosition.Y) or 0)
 writeDouble(_params + 0x28, (WorldPosition and WorldPosition.Z) or 0)
 writeDouble(_params + 0x30, (WorldDirection and WorldDirection.X) or 0)
 writeDouble(_params + 0x38, (WorldDirection and WorldDirection.Y) or 0)
 writeDouble(_params + 0x40, (WorldDirection and WorldDirection.Z) or 0)
 UE.CallProcessEventEx(player_PlayerController, "DeprojectScreenToWorld", _params);
 local RET=readByte(_params + 0x48);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DeprojectScreenToWorld");

BL4.DoesSaveGameExist = function(OwnerAddress, SlotName, UserIndex)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DoesSaveGameExist: Failed To Allocate The Params");return;end;
 UserIndex = UserIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SlotName at +0x0, UserIndex at +0x10
 writeQword(_params + 0x0, SlotName)
 writeInteger(_params + 0x10, UserIndex)
 UE.CallProcessEventEx(OwnerAddress, "DoesSaveGameExist", _params);
 local RET=readByte(_params + 0x14);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DoesSaveGameExist");

BL4.EnableLiveStreaming = function(OwnerAddress, Enable)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EnableLiveStreaming: Failed To Allocate The Params");return;end;
 Enable = Enable or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Enable at +0x0
 writeByte(_params + 0x0, Enable)
 UE.CallProcessEventEx(OwnerAddress, "EnableLiveStreaming", _params);
 deAlloc(_params);
end
FNR("BL4.EnableLiveStreaming");

BL4.FindCollisionUV = function(OwnerAddress, Hit, UVChannel, UV)
 local _paramsSize = 0x120
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindCollisionUV: Failed To Allocate The Params");return;end;
 UVChannel = UVChannel or 0
 UV = UV or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Hit at +0x0, UVChannel at +0x100, UV at +0x108
 writeQword(_params + 0x0, Hit)
 writeInteger(_params + 0x100, UVChannel)
 writeDouble(_params + 0x108, (UV and UV.X) or 0)
 writeDouble(_params + 0x110, (UV and UV.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "FindCollisionUV", _params);
 local RET=readByte(_params + 0x118);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindCollisionUV");

BL4.FindNearestActor = function(OwnerAddress, Origin, ActorsToCheck, Distance)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindNearestActor: Failed To Allocate The Params");return;end;
 Origin = Origin or {X=0,Y=0,Z=0}
 Distance = Distance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Origin at +0x0, ActorsToCheck at +0x18, Distance at +0x28
 writeDouble(_params + 0x0, (Origin and Origin.X) or 0)
 writeDouble(_params + 0x8, (Origin and Origin.Y) or 0)
 writeDouble(_params + 0x10, (Origin and Origin.Z) or 0)
 writeQword(_params + 0x18, ActorsToCheck)
 writeFloat(_params + 0x28, Distance)
 UE.CallProcessEventEx(OwnerAddress, "FindNearestActor", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindNearestActor");

BL4.FinishSpawningActor = function(Actor, SpawnTransform, TransformScaleMethod)
 local _paramsSize = 0x80
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FinishSpawningActor: Failed To Allocate The Params");return;end;
 TransformScaleMethod = TransformScaleMethod or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Actor at +0x0, SpawnTransform at +0x10, TransformScaleMethod at +0x70
 writeQword(_params + 0x0, Actor)
 writeQword(_params + 0x10, SpawnTransform)
 writeByte(_params + 0x70, TransformScaleMethod)
 UE.CallProcessEventEx(Actor, "FinishSpawningActor", _params);
 local RET=readQword(_params + 0x78);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FinishSpawningActor");

BL4.FlushLevelStreaming = function(WorldContextObject_Object)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FlushLevelStreaming: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "FlushLevelStreaming", _params);
 deAlloc(_params);
end
FNR("BL4.FlushLevelStreaming");

BL4.GetAccurateRealTime = function(OwnerAddress, Seconds, PartialSeconds)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAccurateRealTime: Failed To Allocate The Params");return;end;
 Seconds = Seconds or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Seconds at +0x0, PartialSeconds at +0x8
 writeInteger(_params + 0x0, Seconds)
 writeQword(_params + 0x8, PartialSeconds)
 UE.CallProcessEventEx(OwnerAddress, "GetAccurateRealTime", _params);
 deAlloc(_params);
end
FNR("BL4.GetAccurateRealTime");

BL4.GetActiveSpatialPluginName = function(WorldContextObject_Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetActiveSpatialPluginName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetActiveSpatialPluginName", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetActiveSpatialPluginName");

BL4.GetActorArrayAverageLocation = function(OwnerAddress, Actors)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetActorArrayAverageLocation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Actors at +0x0
 writeQword(_params + 0x0, Actors)
 UE.CallProcessEventEx(OwnerAddress, "GetActorArrayAverageLocation", _params);
 local RET={X=readFloat(_params+0x10),Y=readFloat(_params+0x18),Z=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetActorArrayAverageLocation");

BL4.GetActorArrayBounds = function(OwnerAddress, Actors, bOnlyCollidingComponents, Center, BoxExtent)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetActorArrayBounds: Failed To Allocate The Params");return;end;
 bOnlyCollidingComponents = bOnlyCollidingComponents or false
 Center = Center or {X=0,Y=0,Z=0}
 BoxExtent = BoxExtent or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Actors at +0x0, bOnlyCollidingComponents at +0x10, Center at +0x18, BoxExtent at +0x30
 writeQword(_params + 0x0, Actors)
 writeByte(_params + 0x10, bOnlyCollidingComponents)
 writeDouble(_params + 0x18, (Center and Center.X) or 0)
 writeDouble(_params + 0x20, (Center and Center.Y) or 0)
 writeDouble(_params + 0x28, (Center and Center.Z) or 0)
 writeDouble(_params + 0x30, (BoxExtent and BoxExtent.X) or 0)
 writeDouble(_params + 0x38, (BoxExtent and BoxExtent.Y) or 0)
 writeDouble(_params + 0x40, (BoxExtent and BoxExtent.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetActorArrayBounds", _params);
 deAlloc(_params);
end
FNR("BL4.GetActorArrayBounds");

BL4.GetActorOfClass = function(WorldContextObject_Object, ActorClass_Class)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetActorOfClass: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, ActorClass at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, ActorClass_Class)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetActorOfClass", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetActorOfClass");

BL4.GetAllActorsOfClass = function(WorldContextObject_Object, ActorClass_Class, OutActors)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAllActorsOfClass: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, ActorClass at +0x8, OutActors at +0x10
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, ActorClass_Class)
 writeQword(_params + 0x10, OutActors)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetAllActorsOfClass", _params);
 deAlloc(_params);
end
FNR("BL4.GetAllActorsOfClass");

BL4.GetAllActorsOfClassWithTag = function(WorldContextObject_Object, ActorClass_Class, Tag, OutActors)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAllActorsOfClassWithTag: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, ActorClass at +0x8, Tag at +0x10, OutActors at +0x18
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, ActorClass_Class)
 writeQword(_params + 0x10, Tag)
 writeQword(_params + 0x18, OutActors)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetAllActorsOfClassWithTag", _params);
 deAlloc(_params);
end
FNR("BL4.GetAllActorsOfClassWithTag");

BL4.GetAllActorsWithInterface = function(WorldContextObject_Object, Interface_Class, OutActors)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAllActorsWithInterface: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Interface at +0x8, OutActors at +0x10
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Interface_Class)
 writeQword(_params + 0x10, OutActors)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetAllActorsWithInterface", _params);
 deAlloc(_params);
end
FNR("BL4.GetAllActorsWithInterface");

BL4.GetAllActorsWithTag = function(WorldContextObject_Object, Tag, OutActors)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAllActorsWithTag: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Tag at +0x8, OutActors at +0x10
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Tag)
 writeQword(_params + 0x10, OutActors)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetAllActorsWithTag", _params);
 deAlloc(_params);
end
FNR("BL4.GetAllActorsWithTag");

BL4.GetAudioTimeSeconds = function(WorldContextObject_Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAudioTimeSeconds: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetAudioTimeSeconds", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAudioTimeSeconds");

BL4.GetAvailableSpatialPluginNames = function(WorldContextObject_Object)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAvailableSpatialPluginNames: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetAvailableSpatialPluginNames", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAvailableSpatialPluginNames");

BL4.GetClosestListenerLocation = function(WorldContextObject_Object, Location, MaximumRange, bAllowAttenuationOverride, ListenerPosition)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetClosestListenerLocation: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 MaximumRange = MaximumRange or 0
 bAllowAttenuationOverride = bAllowAttenuationOverride or false
 ListenerPosition = ListenerPosition or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Location at +0x8, MaximumRange at +0x20, bAllowAttenuationOverride at +0x24, ListenerPosition at +0x28
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Location and Location.X) or 0)
 writeDouble(_params + 0x10, (Location and Location.Y) or 0)
 writeDouble(_params + 0x18, (Location and Location.Z) or 0)
 writeFloat(_params + 0x20, MaximumRange)
 writeByte(_params + 0x24, bAllowAttenuationOverride)
 writeDouble(_params + 0x28, (ListenerPosition and ListenerPosition.X) or 0)
 writeDouble(_params + 0x30, (ListenerPosition and ListenerPosition.Y) or 0)
 writeDouble(_params + 0x38, (ListenerPosition and ListenerPosition.Z) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetClosestListenerLocation", _params);
 local RET=readByte(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetClosestListenerLocation");

BL4.GetCurrentLevelName = function(WorldContextObject_Object, bRemovePrefixString)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCurrentLevelName: Failed To Allocate The Params");return;end;
 bRemovePrefixString = bRemovePrefixString or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, bRemovePrefixString at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeByte(_params + 0x8, bRemovePrefixString)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetCurrentLevelName", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCurrentLevelName");

BL4.GetCurrentReverbEffect = function(WorldContextObject_Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCurrentReverbEffect: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetCurrentReverbEffect", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCurrentReverbEffect");

BL4.GetEnableWorldRendering = function(WorldContextObject_Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetEnableWorldRendering: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetEnableWorldRendering", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetEnableWorldRendering");

BL4.GetGameInstance = function(WorldContextObject_Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetGameInstance: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetGameInstance", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetGameInstance");

BL4.GetGameMode = function(WorldContextObject_Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetGameMode: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetGameMode", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetGameMode");

BL4.GetGameState = function(WorldContextObject_Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetGameState: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetGameState", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetGameState");

BL4.GetGlobalTimeDilation = function(WorldContextObject_Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetGlobalTimeDilation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetGlobalTimeDilation", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetGlobalTimeDilation");

BL4.GetIntOption = function(OwnerAddress, options, Key, DefaultValue)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetIntOption: Failed To Allocate The Params");return;end;
 DefaultValue = DefaultValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: options at +0x0, Key at +0x10, DefaultValue at +0x20
 writeQword(_params + 0x0, options)
 writeQword(_params + 0x10, Key)
 writeInteger(_params + 0x20, DefaultValue)
 UE.CallProcessEventEx(OwnerAddress, "GetIntOption", _params);
 local RET=readInteger(_params + 0x24);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetIntOption");

BL4.GetKeyValue = function(OwnerAddress, Pair, Key, Value)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetKeyValue: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Pair at +0x0, Key at +0x10, Value at +0x20
 writeQword(_params + 0x0, Pair)
 writeQword(_params + 0x10, Key)
 writeQword(_params + 0x20, Value)
 UE.CallProcessEventEx(OwnerAddress, "GetKeyValue", _params);
 deAlloc(_params);
end
FNR("BL4.GetKeyValue");

BL4.GetMaxAudioChannelCount = function(WorldContextObject_Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMaxAudioChannelCount: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetMaxAudioChannelCount", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMaxAudioChannelCount");

BL4.GetNumLocalPlayerControllers = function(WorldContextObject_Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumLocalPlayerControllers: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetNumLocalPlayerControllers", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumLocalPlayerControllers");

BL4.GetNumPlayerControllers = function(WorldContextObject_Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumPlayerControllers: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetNumPlayerControllers", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumPlayerControllers");

BL4.GetNumPlayerStates = function(WorldContextObject_Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumPlayerStates: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetNumPlayerStates", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumPlayerStates");

BL4.GetObjectClass = function(Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetObjectClass: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0
 writeQword(_params + 0x0, Object)
 UE.CallProcessEventEx(Object, "GetObjectClass", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetObjectClass");

BL4.GetPlatformName = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPlatformName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetPlatformName", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPlatformName");

BL4.GetPlayerCameraManager = function(WorldContextObject_Object, PlayerIndex)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPlayerCameraManager: Failed To Allocate The Params");return;end;
 PlayerIndex = PlayerIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, PlayerIndex at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeInteger(_params + 0x8, PlayerIndex)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetPlayerCameraManager", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPlayerCameraManager");

BL4.GetPlayerCharacter = function(WorldContextObject_Object, PlayerIndex)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPlayerCharacter: Failed To Allocate The Params");return;end;
 PlayerIndex = PlayerIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, PlayerIndex at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeInteger(_params + 0x8, PlayerIndex)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetPlayerCharacter", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPlayerCharacter");

BL4.GetPlayerController = function(WorldContextObject_Object, PlayerIndex)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPlayerController: Failed To Allocate The Params");return;end;
 PlayerIndex = PlayerIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, PlayerIndex at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeInteger(_params + 0x8, PlayerIndex)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetPlayerController", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPlayerController");

BL4.GetPlayerControllerFromID = function(WorldContextObject_Object, ControllerId)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPlayerControllerFromID: Failed To Allocate The Params");return;end;
 ControllerId = ControllerId or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, ControllerId at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeInteger(_params + 0x8, ControllerId)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetPlayerControllerFromID", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPlayerControllerFromID");

BL4.GetPlayerControllerFromPlatformUser = function(WorldContextObject_Object, UserId)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPlayerControllerFromPlatformUser: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, UserId at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, UserId)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetPlayerControllerFromPlatformUser", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPlayerControllerFromPlatformUser");

BL4.GetPlayerControllerID = function(player_PlayerController)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPlayerControllerID: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: player at +0x0
 writeQword(_params + 0x0, player_PlayerController)
 UE.CallProcessEventEx(player_PlayerController, "GetPlayerControllerID", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPlayerControllerID");

BL4.GetPlayerPawn = function(WorldContextObject_Object, PlayerIndex)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPlayerPawn: Failed To Allocate The Params");return;end;
 PlayerIndex = PlayerIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, PlayerIndex at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeInteger(_params + 0x8, PlayerIndex)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetPlayerPawn", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPlayerPawn");

BL4.GetPlayerState = function(WorldContextObject_Object, PlayerStateIndex)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPlayerState: Failed To Allocate The Params");return;end;
 PlayerStateIndex = PlayerStateIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, PlayerStateIndex at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeInteger(_params + 0x8, PlayerStateIndex)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetPlayerState", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPlayerState");

BL4.GetPlayerStateFromUniqueNetId = function(WorldContextObject_Object, UniqueID)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPlayerStateFromUniqueNetId: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, UniqueID at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, UniqueID)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetPlayerStateFromUniqueNetId", _params);
 local RET=readQword(_params + 0x38);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPlayerStateFromUniqueNetId");

BL4.GetRealTimeSeconds = function(WorldContextObject_Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRealTimeSeconds: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetRealTimeSeconds", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRealTimeSeconds");

BL4.GetStreamingLevel = function(WorldContextObject_Object, packagename)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetStreamingLevel: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, packagename at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, packagename)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetStreamingLevel", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetStreamingLevel");

BL4.GetSurfaceType = function(OwnerAddress, Hit)
 local _paramsSize = 0x108
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSurfaceType: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Hit at +0x0
 writeQword(_params + 0x0, Hit)
 UE.CallProcessEventEx(OwnerAddress, "GetSurfaceType", _params);
 local RET=readByte(_params + 0x100);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSurfaceType");

BL4.GetTimeSeconds = function(WorldContextObject_Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTimeSeconds: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetTimeSeconds", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTimeSeconds");

BL4.GetUnpausedTimeSeconds = function(WorldContextObject_Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetUnpausedTimeSeconds: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetUnpausedTimeSeconds", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetUnpausedTimeSeconds");

BL4.GetViewportMouseCaptureMode = function(WorldContextObject_Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetViewportMouseCaptureMode: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetViewportMouseCaptureMode", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetViewportMouseCaptureMode");

BL4.GetViewProjectionMatrix = function(OwnerAddress, DesiredView, ViewMatrix, ProjectionMatrix, ViewProjectionMatrix)
 local _paramsSize = 0xBB0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetViewProjectionMatrix: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DesiredView at +0x0, ViewMatrix at +0xA30, ProjectionMatrix at +0xAB0, ViewProjectionMatrix at +0xB30
 writeQword(_params + 0x0, DesiredView)
 writeQword(_params + 0xA30, ViewMatrix)
 writeQword(_params + 0xAB0, ProjectionMatrix)
 writeQword(_params + 0xB30, ViewProjectionMatrix)
 UE.CallProcessEventEx(OwnerAddress, "GetViewProjectionMatrix", _params);
 deAlloc(_params);
end
FNR("BL4.GetViewProjectionMatrix");

BL4.GetWorldDeltaSeconds = function(WorldContextObject_Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetWorldDeltaSeconds: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetWorldDeltaSeconds", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetWorldDeltaSeconds");

BL4.GetWorldOriginLocation = function(WorldContextObject_Object)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetWorldOriginLocation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetWorldOriginLocation", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetWorldOriginLocation");

BL4.GrassOverlappingSphereCount = function(WorldContextObject_Object, StaticMesh, CenterPosition, Radius)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GrassOverlappingSphereCount: Failed To Allocate The Params");return;end;
 CenterPosition = CenterPosition or {X=0,Y=0,Z=0}
 Radius = Radius or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, StaticMesh at +0x8, CenterPosition at +0x10, Radius at +0x28
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, StaticMesh)
 writeDouble(_params + 0x10, (CenterPosition and CenterPosition.X) or 0)
 writeDouble(_params + 0x18, (CenterPosition and CenterPosition.Y) or 0)
 writeDouble(_params + 0x20, (CenterPosition and CenterPosition.Z) or 0)
 writeFloat(_params + 0x28, Radius)
 UE.CallProcessEventEx(WorldContextObject_Object, "GrassOverlappingSphereCount", _params);
 local RET=readInteger(_params + 0x2C);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GrassOverlappingSphereCount");

BL4.HasLaunchOption = function(OwnerAddress, OptionToCheck)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.HasLaunchOption: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OptionToCheck at +0x0
 writeQword(_params + 0x0, OptionToCheck)
 UE.CallProcessEventEx(OwnerAddress, "HasLaunchOption", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.HasLaunchOption");

BL4.HasOption = function(OwnerAddress, options, InKey)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.HasOption: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: options at +0x0, InKey at +0x10
 writeQword(_params + 0x0, options)
 writeQword(_params + 0x10, InKey)
 UE.CallProcessEventEx(OwnerAddress, "HasOption", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.HasOption");

BL4.IsAnyLocalPlayerCameraWithinRange = function(WorldContextObject_Object, Location, MaximumRange)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsAnyLocalPlayerCameraWithinRange: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 MaximumRange = MaximumRange or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Location at +0x8, MaximumRange at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Location and Location.X) or 0)
 writeDouble(_params + 0x10, (Location and Location.Y) or 0)
 writeDouble(_params + 0x18, (Location and Location.Z) or 0)
 writeFloat(_params + 0x20, MaximumRange)
 UE.CallProcessEventEx(WorldContextObject_Object, "IsAnyLocalPlayerCameraWithinRange", _params);
 local RET=readByte(_params + 0x24);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsAnyLocalPlayerCameraWithinRange");

BL4.IsGamePaused = function(WorldContextObject_Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsGamePaused: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "IsGamePaused", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsGamePaused");

BL4.IsSplitscreenForceDisabled = function(WorldContextObject_Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsSplitscreenForceDisabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "IsSplitscreenForceDisabled", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsSplitscreenForceDisabled");

BL4.LoadGameFromSlot = function(OwnerAddress, SlotName, UserIndex)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LoadGameFromSlot: Failed To Allocate The Params");return;end;
 UserIndex = UserIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SlotName at +0x0, UserIndex at +0x10
 writeQword(_params + 0x0, SlotName)
 writeInteger(_params + 0x10, UserIndex)
 UE.CallProcessEventEx(OwnerAddress, "LoadGameFromSlot", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.LoadGameFromSlot");

BL4.LoadStreamLevel = function(WorldContextObject_Object, LevelName, bMakeVisibleAfterLoad, bShouldBlockOnLoad, LatentInfo)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LoadStreamLevel: Failed To Allocate The Params");return;end;
 bMakeVisibleAfterLoad = bMakeVisibleAfterLoad or false
 bShouldBlockOnLoad = bShouldBlockOnLoad or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, LevelName at +0x8, bMakeVisibleAfterLoad at +0x10, bShouldBlockOnLoad at +0x11, LatentInfo at +0x18
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, LevelName)
 writeByte(_params + 0x10, bMakeVisibleAfterLoad)
 writeByte(_params + 0x11, bShouldBlockOnLoad)
 writeQword(_params + 0x18, LatentInfo)
 UE.CallProcessEventEx(WorldContextObject_Object, "LoadStreamLevel", _params);
 deAlloc(_params);
end
FNR("BL4.LoadStreamLevel");

BL4.LoadStreamLevelBySoftObjectPtr = function(WorldContextObject_Object, Level_World, bMakeVisibleAfterLoad, bShouldBlockOnLoad, LatentInfo)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LoadStreamLevelBySoftObjectPtr: Failed To Allocate The Params");return;end;
 bMakeVisibleAfterLoad = bMakeVisibleAfterLoad or false
 bShouldBlockOnLoad = bShouldBlockOnLoad or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Level at +0x8, bMakeVisibleAfterLoad at +0x30, bShouldBlockOnLoad at +0x31, LatentInfo at +0x38
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Level_World)
 writeByte(_params + 0x30, bMakeVisibleAfterLoad)
 writeByte(_params + 0x31, bShouldBlockOnLoad)
 writeQword(_params + 0x38, LatentInfo)
 UE.CallProcessEventEx(WorldContextObject_Object, "LoadStreamLevelBySoftObjectPtr", _params);
 deAlloc(_params);
end
FNR("BL4.LoadStreamLevelBySoftObjectPtr");

BL4.MakeHitResult = function(OwnerAddress, bBlockingHit, bInitialOverlap, time, Distance, Location, ImpactPoint, Normal, ImpactNormal, PhysMat_PhysicalMaterial, HitActor_Actor, HitComponent_PrimitiveComponent, HitBoneName, BoneName, HitItem, ElementIndex, FaceIndex, TraceStart, TraceEnd)
 local _paramsSize = 0x1D8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeHitResult: Failed To Allocate The Params");return;end;
 bBlockingHit = bBlockingHit or false
 bInitialOverlap = bInitialOverlap or false
 time = time or 0
 Distance = Distance or 0
 Location = Location or {X=0,Y=0,Z=0}
 ImpactPoint = ImpactPoint or {X=0,Y=0,Z=0}
 Normal = Normal or {X=0,Y=0,Z=0}
 ImpactNormal = ImpactNormal or {X=0,Y=0,Z=0}
 HitItem = HitItem or 0
 ElementIndex = ElementIndex or 0
 FaceIndex = FaceIndex or 0
 TraceStart = TraceStart or {X=0,Y=0,Z=0}
 TraceEnd = TraceEnd or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bBlockingHit at +0x0, bInitialOverlap at +0x1, time at +0x4, Distance at +0x8, Location at +0x10, ImpactPoint at +0x28, Normal at +0x40, ImpactNormal at +0x58, PhysMat at +0x70, HitActor at +0x78, HitComponent at +0x80, HitBoneName at +0x88, BoneName at +0x90, HitItem at +0x98, ElementIndex at +0x9C, FaceIndex at +0xA0, TraceStart at +0xA8, TraceEnd at +0xC0
 writeByte(_params + 0x0, bBlockingHit)
 writeByte(_params + 0x1, bInitialOverlap)
 writeFloat(_params + 0x4, time)
 writeFloat(_params + 0x8, Distance)
 writeDouble(_params + 0x10, (Location and Location.X) or 0)
 writeDouble(_params + 0x18, (Location and Location.Y) or 0)
 writeDouble(_params + 0x20, (Location and Location.Z) or 0)
 writeDouble(_params + 0x28, (ImpactPoint and ImpactPoint.X) or 0)
 writeDouble(_params + 0x30, (ImpactPoint and ImpactPoint.Y) or 0)
 writeDouble(_params + 0x38, (ImpactPoint and ImpactPoint.Z) or 0)
 writeDouble(_params + 0x40, (Normal and Normal.X) or 0)
 writeDouble(_params + 0x48, (Normal and Normal.Y) or 0)
 writeDouble(_params + 0x50, (Normal and Normal.Z) or 0)
 writeDouble(_params + 0x58, (ImpactNormal and ImpactNormal.X) or 0)
 writeDouble(_params + 0x60, (ImpactNormal and ImpactNormal.Y) or 0)
 writeDouble(_params + 0x68, (ImpactNormal and ImpactNormal.Z) or 0)
 writeQword(_params + 0x70, PhysMat_PhysicalMaterial)
 writeQword(_params + 0x78, HitActor_Actor)
 writeQword(_params + 0x80, HitComponent_PrimitiveComponent)
 writeQword(_params + 0x88, HitBoneName)
 writeQword(_params + 0x90, BoneName)
 writeInteger(_params + 0x98, HitItem)
 writeInteger(_params + 0x9C, ElementIndex)
 writeInteger(_params + 0xA0, FaceIndex)
 writeDouble(_params + 0xA8, (TraceStart and TraceStart.X) or 0)
 writeDouble(_params + 0xB0, (TraceStart and TraceStart.Y) or 0)
 writeDouble(_params + 0xB8, (TraceStart and TraceStart.Z) or 0)
 writeDouble(_params + 0xC0, (TraceEnd and TraceEnd.X) or 0)
 writeDouble(_params + 0xC8, (TraceEnd and TraceEnd.Y) or 0)
 writeDouble(_params + 0xD0, (TraceEnd and TraceEnd.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "MakeHitResult", _params);
 local RET=readQword(_params + 0xD8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeHitResult");

BL4.ObjectIsA = function(Object, ObjectClass_Class)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ObjectIsA: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, ObjectClass at +0x8
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, ObjectClass_Class)
 UE.CallProcessEventEx(Object, "ObjectIsA", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ObjectIsA");

BL4.OpenLevel = function(WorldContextObject_Object, LevelName, bAbsolute, options)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OpenLevel: Failed To Allocate The Params");return;end;
 bAbsolute = bAbsolute or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, LevelName at +0x8, bAbsolute at +0x10, options at +0x18
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, LevelName)
 writeByte(_params + 0x10, bAbsolute)
 writeQword(_params + 0x18, options)
 UE.CallProcessEventEx(WorldContextObject_Object, "OpenLevel", _params);
 deAlloc(_params);
end
FNR("BL4.OpenLevel");

BL4.OpenLevelBySoftObjectPtr = function(WorldContextObject_Object, Level_World, bAbsolute, options)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OpenLevelBySoftObjectPtr: Failed To Allocate The Params");return;end;
 bAbsolute = bAbsolute or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Level at +0x8, bAbsolute at +0x30, options at +0x38
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Level_World)
 writeByte(_params + 0x30, bAbsolute)
 writeQword(_params + 0x38, options)
 UE.CallProcessEventEx(WorldContextObject_Object, "OpenLevelBySoftObjectPtr", _params);
 deAlloc(_params);
end
FNR("BL4.OpenLevelBySoftObjectPtr");

BL4.ParseOption = function(OwnerAddress, options, Key)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ParseOption: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: options at +0x0, Key at +0x10
 writeQword(_params + 0x0, options)
 writeQword(_params + 0x10, Key)
 UE.CallProcessEventEx(OwnerAddress, "ParseOption", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ParseOption");

BL4.PlayDialogue2D = function(WorldContextObject_Object, Dialogue_DialogueWave, Context, VolumeMultiplier, PitchMultiplier, StartTime)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PlayDialogue2D: Failed To Allocate The Params");return;end;
 VolumeMultiplier = VolumeMultiplier or 0
 PitchMultiplier = PitchMultiplier or 0
 StartTime = StartTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Dialogue at +0x8, Context at +0x10, VolumeMultiplier at +0x28, PitchMultiplier at +0x2C, StartTime at +0x30
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Dialogue_DialogueWave)
 writeQword(_params + 0x10, Context)
 writeFloat(_params + 0x28, VolumeMultiplier)
 writeFloat(_params + 0x2C, PitchMultiplier)
 writeFloat(_params + 0x30, StartTime)
 UE.CallProcessEventEx(WorldContextObject_Object, "PlayDialogue2D", _params);
 deAlloc(_params);
end
FNR("BL4.PlayDialogue2D");

BL4.PlayDialogueAtLocation = function(WorldContextObject_Object, Dialogue_DialogueWave, Context, Location, Rotation, VolumeMultiplier, PitchMultiplier, StartTime, AttenuationSettings_SoundAttenuation)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PlayDialogueAtLocation: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 Rotation = Rotation or {Pitch=0,Yaw=0,Roll=0}
 VolumeMultiplier = VolumeMultiplier or 0
 PitchMultiplier = PitchMultiplier or 0
 StartTime = StartTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Dialogue at +0x8, Context at +0x10, Location at +0x28, Rotation at +0x40, VolumeMultiplier at +0x58, PitchMultiplier at +0x5C, StartTime at +0x60, AttenuationSettings at +0x68
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Dialogue_DialogueWave)
 writeQword(_params + 0x10, Context)
 writeDouble(_params + 0x28, (Location and Location.X) or 0)
 writeDouble(_params + 0x30, (Location and Location.Y) or 0)
 writeDouble(_params + 0x38, (Location and Location.Z) or 0)
 writeDouble(_params + 0x40, (Rotation and Rotation.Pitch) or 0)
 writeDouble(_params + 0x48, (Rotation and Rotation.Yaw) or 0)
 writeDouble(_params + 0x50, (Rotation and Rotation.Roll) or 0)
 writeFloat(_params + 0x58, VolumeMultiplier)
 writeFloat(_params + 0x5C, PitchMultiplier)
 writeFloat(_params + 0x60, StartTime)
 writeQword(_params + 0x68, AttenuationSettings_SoundAttenuation)
 UE.CallProcessEventEx(WorldContextObject_Object, "PlayDialogueAtLocation", _params);
 deAlloc(_params);
end
FNR("BL4.PlayDialogueAtLocation");

BL4.PlaySound2D = function(WorldContextObject_Object, Sound_SoundBase, VolumeMultiplier, PitchMultiplier, StartTime, ConcurrencySettings_SoundConcurrency, OwningActor_Actor, bIsUISound)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PlaySound2D: Failed To Allocate The Params");return;end;
 VolumeMultiplier = VolumeMultiplier or 0
 PitchMultiplier = PitchMultiplier or 0
 StartTime = StartTime or 0
 bIsUISound = bIsUISound or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Sound at +0x8, VolumeMultiplier at +0x10, PitchMultiplier at +0x14, StartTime at +0x18, ConcurrencySettings at +0x20, OwningActor at +0x28, bIsUISound at +0x30
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Sound_SoundBase)
 writeFloat(_params + 0x10, VolumeMultiplier)
 writeFloat(_params + 0x14, PitchMultiplier)
 writeFloat(_params + 0x18, StartTime)
 writeQword(_params + 0x20, ConcurrencySettings_SoundConcurrency)
 writeQword(_params + 0x28, OwningActor_Actor)
 writeByte(_params + 0x30, bIsUISound)
 UE.CallProcessEventEx(WorldContextObject_Object, "PlaySound2D", _params);
 deAlloc(_params);
end
FNR("BL4.PlaySound2D");

BL4.PlaySoundAtLocation = function(WorldContextObject_Object, Sound_SoundBase, Location, Rotation, VolumeMultiplier, PitchMultiplier, StartTime, AttenuationSettings_SoundAttenuation, ConcurrencySettings_SoundConcurrency, OwningActor_Actor, InitialParams_InitialActiveSoundParams)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PlaySoundAtLocation: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 Rotation = Rotation or {Pitch=0,Yaw=0,Roll=0}
 VolumeMultiplier = VolumeMultiplier or 0
 PitchMultiplier = PitchMultiplier or 0
 StartTime = StartTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Sound at +0x8, Location at +0x10, Rotation at +0x28, VolumeMultiplier at +0x40, PitchMultiplier at +0x44, StartTime at +0x48, AttenuationSettings at +0x50, ConcurrencySettings at +0x58, OwningActor at +0x60, InitialParams at +0x68
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Sound_SoundBase)
 writeDouble(_params + 0x10, (Location and Location.X) or 0)
 writeDouble(_params + 0x18, (Location and Location.Y) or 0)
 writeDouble(_params + 0x20, (Location and Location.Z) or 0)
 writeDouble(_params + 0x28, (Rotation and Rotation.Pitch) or 0)
 writeDouble(_params + 0x30, (Rotation and Rotation.Yaw) or 0)
 writeDouble(_params + 0x38, (Rotation and Rotation.Roll) or 0)
 writeFloat(_params + 0x40, VolumeMultiplier)
 writeFloat(_params + 0x44, PitchMultiplier)
 writeFloat(_params + 0x48, StartTime)
 writeQword(_params + 0x50, AttenuationSettings_SoundAttenuation)
 writeQword(_params + 0x58, ConcurrencySettings_SoundConcurrency)
 writeQword(_params + 0x60, OwningActor_Actor)
 writeQword(_params + 0x68, InitialParams_InitialActiveSoundParams)
 UE.CallProcessEventEx(WorldContextObject_Object, "PlaySoundAtLocation", _params);
 deAlloc(_params);
end
FNR("BL4.PlaySoundAtLocation");

BL4.PlayWorldCameraShake = function(WorldContextObject_Object, Shake_Class, Epicenter, InnerRadius, OuterRadius, Falloff, bOrientShakeTowardsEpicenter)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PlayWorldCameraShake: Failed To Allocate The Params");return;end;
 Epicenter = Epicenter or {X=0,Y=0,Z=0}
 InnerRadius = InnerRadius or 0
 OuterRadius = OuterRadius or 0
 Falloff = Falloff or 0
 bOrientShakeTowardsEpicenter = bOrientShakeTowardsEpicenter or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Shake at +0x8, Epicenter at +0x10, InnerRadius at +0x28, OuterRadius at +0x2C, Falloff at +0x30, bOrientShakeTowardsEpicenter at +0x34
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Shake_Class)
 writeDouble(_params + 0x10, (Epicenter and Epicenter.X) or 0)
 writeDouble(_params + 0x18, (Epicenter and Epicenter.Y) or 0)
 writeDouble(_params + 0x20, (Epicenter and Epicenter.Z) or 0)
 writeFloat(_params + 0x28, InnerRadius)
 writeFloat(_params + 0x2C, OuterRadius)
 writeFloat(_params + 0x30, Falloff)
 writeByte(_params + 0x34, bOrientShakeTowardsEpicenter)
 UE.CallProcessEventEx(WorldContextObject_Object, "PlayWorldCameraShake", _params);
 deAlloc(_params);
end
FNR("BL4.PlayWorldCameraShake");

BL4.PopSoundMixModifier = function(WorldContextObject_Object, InSoundMixModifier_SoundMix)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PopSoundMixModifier: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, InSoundMixModifier at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, InSoundMixModifier_SoundMix)
 UE.CallProcessEventEx(WorldContextObject_Object, "PopSoundMixModifier", _params);
 deAlloc(_params);
end
FNR("BL4.PopSoundMixModifier");

BL4.PrimeAllSoundsInSoundClass = function(InSoundClass_SoundClass)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PrimeAllSoundsInSoundClass: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InSoundClass at +0x0
 writeQword(_params + 0x0, InSoundClass_SoundClass)
 UE.CallProcessEventEx(InSoundClass_SoundClass, "PrimeAllSoundsInSoundClass", _params);
 deAlloc(_params);
end
FNR("BL4.PrimeAllSoundsInSoundClass");

BL4.PrimeSound = function(InSound_SoundBase)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PrimeSound: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InSound at +0x0
 writeQword(_params + 0x0, InSound_SoundBase)
 UE.CallProcessEventEx(InSound_SoundBase, "PrimeSound", _params);
 deAlloc(_params);
end
FNR("BL4.PrimeSound");

BL4.ProjectWorldToScreen = function(player_PlayerController, WorldPosition, ScreenPosition, bPlayerViewportRelative)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ProjectWorldToScreen: Failed To Allocate The Params");return;end;
 WorldPosition = WorldPosition or {X=0,Y=0,Z=0}
 ScreenPosition = ScreenPosition or {X=0,Y=0}
 bPlayerViewportRelative = bPlayerViewportRelative or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: player at +0x0, WorldPosition at +0x8, ScreenPosition at +0x20, bPlayerViewportRelative at +0x30
 writeQword(_params + 0x0, player_PlayerController)
 writeDouble(_params + 0x8, (WorldPosition and WorldPosition.X) or 0)
 writeDouble(_params + 0x10, (WorldPosition and WorldPosition.Y) or 0)
 writeDouble(_params + 0x18, (WorldPosition and WorldPosition.Z) or 0)
 writeDouble(_params + 0x20, (ScreenPosition and ScreenPosition.X) or 0)
 writeDouble(_params + 0x28, (ScreenPosition and ScreenPosition.Y) or 0)
 writeByte(_params + 0x30, bPlayerViewportRelative)
 UE.CallProcessEventEx(player_PlayerController, "ProjectWorldToScreen", _params);
 local RET=readByte(_params + 0x31);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ProjectWorldToScreen");

BL4.PushSoundMixModifier = function(WorldContextObject_Object, InSoundMixModifier_SoundMix)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PushSoundMixModifier: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, InSoundMixModifier at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, InSoundMixModifier_SoundMix)
 UE.CallProcessEventEx(WorldContextObject_Object, "PushSoundMixModifier", _params);
 deAlloc(_params);
end
FNR("BL4.PushSoundMixModifier");

BL4.RebaseLocalOriginOntoZero = function(WorldContextObject_Object, WorldLocation)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RebaseLocalOriginOntoZero: Failed To Allocate The Params");return;end;
 WorldLocation = WorldLocation or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, WorldLocation at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (WorldLocation and WorldLocation.X) or 0)
 writeDouble(_params + 0x10, (WorldLocation and WorldLocation.Y) or 0)
 writeDouble(_params + 0x18, (WorldLocation and WorldLocation.Z) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "RebaseLocalOriginOntoZero", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.RebaseLocalOriginOntoZero");

BL4.RebaseZeroOriginOntoLocal = function(WorldContextObject_Object, WorldLocation)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RebaseZeroOriginOntoLocal: Failed To Allocate The Params");return;end;
 WorldLocation = WorldLocation or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, WorldLocation at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (WorldLocation and WorldLocation.X) or 0)
 writeDouble(_params + 0x10, (WorldLocation and WorldLocation.Y) or 0)
 writeDouble(_params + 0x18, (WorldLocation and WorldLocation.Z) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "RebaseZeroOriginOntoLocal", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.RebaseZeroOriginOntoLocal");

BL4.RemovePlayer = function(player_PlayerController, bDestroyPawn)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemovePlayer: Failed To Allocate The Params");return;end;
 bDestroyPawn = bDestroyPawn or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: player at +0x0, bDestroyPawn at +0x8
 writeQword(_params + 0x0, player_PlayerController)
 writeByte(_params + 0x8, bDestroyPawn)
 UE.CallProcessEventEx(player_PlayerController, "RemovePlayer", _params);
 deAlloc(_params);
end
FNR("BL4.RemovePlayer");

BL4.SaveGameToSlot = function(SaveGameObject_SaveGame, SlotName, UserIndex)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SaveGameToSlot: Failed To Allocate The Params");return;end;
 UserIndex = UserIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SaveGameObject at +0x0, SlotName at +0x8, UserIndex at +0x18
 writeQword(_params + 0x0, SaveGameObject_SaveGame)
 writeQword(_params + 0x8, SlotName)
 writeInteger(_params + 0x18, UserIndex)
 UE.CallProcessEventEx(SaveGameObject_SaveGame, "SaveGameToSlot", _params);
 local RET=readByte(_params + 0x1C);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SaveGameToSlot");

BL4.SetActiveSpatialPluginByName = function(WorldContextObject_Object, InPluginName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetActiveSpatialPluginByName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, InPluginName at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, InPluginName)
 UE.CallProcessEventEx(WorldContextObject_Object, "SetActiveSpatialPluginByName", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetActiveSpatialPluginByName");

BL4.SetBaseSoundMix = function(WorldContextObject_Object, InSoundMix_SoundMix)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBaseSoundMix: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, InSoundMix at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, InSoundMix_SoundMix)
 UE.CallProcessEventEx(WorldContextObject_Object, "SetBaseSoundMix", _params);
 deAlloc(_params);
end
FNR("BL4.SetBaseSoundMix");

BL4.SetEnableWorldRendering = function(WorldContextObject_Object, bEnable)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetEnableWorldRendering: Failed To Allocate The Params");return;end;
 bEnable = bEnable or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, bEnable at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeByte(_params + 0x8, bEnable)
 UE.CallProcessEventEx(WorldContextObject_Object, "SetEnableWorldRendering", _params);
 deAlloc(_params);
end
FNR("BL4.SetEnableWorldRendering");

BL4.SetForceDisableSplitscreen = function(WorldContextObject_Object, bDisable)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetForceDisableSplitscreen: Failed To Allocate The Params");return;end;
 bDisable = bDisable or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, bDisable at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeByte(_params + 0x8, bDisable)
 UE.CallProcessEventEx(WorldContextObject_Object, "SetForceDisableSplitscreen", _params);
 deAlloc(_params);
end
FNR("BL4.SetForceDisableSplitscreen");

BL4.SetGamePaused = function(WorldContextObject_Object, bPaused)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetGamePaused: Failed To Allocate The Params");return;end;
 bPaused = bPaused or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, bPaused at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeByte(_params + 0x8, bPaused)
 UE.CallProcessEventEx(WorldContextObject_Object, "SetGamePaused", _params);
 local RET=readByte(_params + 0x9);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetGamePaused");

BL4.SetGlobalListenerFocusParameters = function(WorldContextObject_Object, FocusAzimuthScale, NonFocusAzimuthScale, FocusDistanceScale, NonFocusDistanceScale, FocusVolumeScale, NonFocusVolumeScale, FocusPriorityScale, NonFocusPriorityScale)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetGlobalListenerFocusParameters: Failed To Allocate The Params");return;end;
 FocusAzimuthScale = FocusAzimuthScale or 0
 NonFocusAzimuthScale = NonFocusAzimuthScale or 0
 FocusDistanceScale = FocusDistanceScale or 0
 NonFocusDistanceScale = NonFocusDistanceScale or 0
 FocusVolumeScale = FocusVolumeScale or 0
 NonFocusVolumeScale = NonFocusVolumeScale or 0
 FocusPriorityScale = FocusPriorityScale or 0
 NonFocusPriorityScale = NonFocusPriorityScale or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, FocusAzimuthScale at +0x8, NonFocusAzimuthScale at +0xC, FocusDistanceScale at +0x10, NonFocusDistanceScale at +0x14, FocusVolumeScale at +0x18, NonFocusVolumeScale at +0x1C, FocusPriorityScale at +0x20, NonFocusPriorityScale at +0x24
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeFloat(_params + 0x8, FocusAzimuthScale)
 writeFloat(_params + 0xC, NonFocusAzimuthScale)
 writeFloat(_params + 0x10, FocusDistanceScale)
 writeFloat(_params + 0x14, NonFocusDistanceScale)
 writeFloat(_params + 0x18, FocusVolumeScale)
 writeFloat(_params + 0x1C, NonFocusVolumeScale)
 writeFloat(_params + 0x20, FocusPriorityScale)
 writeFloat(_params + 0x24, NonFocusPriorityScale)
 UE.CallProcessEventEx(WorldContextObject_Object, "SetGlobalListenerFocusParameters", _params);
 deAlloc(_params);
end
FNR("BL4.SetGlobalListenerFocusParameters");

BL4.SetGlobalPitchModulation = function(WorldContextObject_Object, PitchModulation, TimeSec)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetGlobalPitchModulation: Failed To Allocate The Params");return;end;
 PitchModulation = PitchModulation or 0
 TimeSec = TimeSec or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, PitchModulation at +0x8, TimeSec at +0xC
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeFloat(_params + 0x8, PitchModulation)
 writeFloat(_params + 0xC, TimeSec)
 UE.CallProcessEventEx(WorldContextObject_Object, "SetGlobalPitchModulation", _params);
 deAlloc(_params);
end
FNR("BL4.SetGlobalPitchModulation");

BL4.SetGlobalTimeDilation = function(WorldContextObject_Object, TimeDilation)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetGlobalTimeDilation: Failed To Allocate The Params");return;end;
 TimeDilation = TimeDilation or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, TimeDilation at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeFloat(_params + 0x8, TimeDilation)
 UE.CallProcessEventEx(WorldContextObject_Object, "SetGlobalTimeDilation", _params);
 deAlloc(_params);
end
FNR("BL4.SetGlobalTimeDilation");

BL4.SetMaxAudioChannelsScaled = function(WorldContextObject_Object, MaxChannelCountScale)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMaxAudioChannelsScaled: Failed To Allocate The Params");return;end;
 MaxChannelCountScale = MaxChannelCountScale or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, MaxChannelCountScale at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeFloat(_params + 0x8, MaxChannelCountScale)
 UE.CallProcessEventEx(WorldContextObject_Object, "SetMaxAudioChannelsScaled", _params);
 deAlloc(_params);
end
FNR("BL4.SetMaxAudioChannelsScaled");

BL4.SetPlayerControllerID = function(player_PlayerController, ControllerId)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPlayerControllerID: Failed To Allocate The Params");return;end;
 ControllerId = ControllerId or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: player at +0x0, ControllerId at +0x8
 writeQword(_params + 0x0, player_PlayerController)
 writeInteger(_params + 0x8, ControllerId)
 UE.CallProcessEventEx(player_PlayerController, "SetPlayerControllerID", _params);
 deAlloc(_params);
end
FNR("BL4.SetPlayerControllerID");

BL4.SetPlayerPlatformUserId = function(PlayerController, UserId)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPlayerPlatformUserId: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PlayerController at +0x0, UserId at +0x8
 writeQword(_params + 0x0, PlayerController)
 writeQword(_params + 0x8, UserId)
 UE.CallProcessEventEx(PlayerController, "SetPlayerPlatformUserId", _params);
 deAlloc(_params);
end
FNR("BL4.SetPlayerPlatformUserId");

BL4.SetSoundClassDistanceScale = function(WorldContextObject_Object, SoundClass, DistanceAttenuationScale, TimeSec)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSoundClassDistanceScale: Failed To Allocate The Params");return;end;
 DistanceAttenuationScale = DistanceAttenuationScale or 0
 TimeSec = TimeSec or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, SoundClass at +0x8, DistanceAttenuationScale at +0x10, TimeSec at +0x14
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, SoundClass)
 writeFloat(_params + 0x10, DistanceAttenuationScale)
 writeFloat(_params + 0x14, TimeSec)
 UE.CallProcessEventEx(WorldContextObject_Object, "SetSoundClassDistanceScale", _params);
 deAlloc(_params);
end
FNR("BL4.SetSoundClassDistanceScale");

BL4.SetSoundMixClassOverride = function(WorldContextObject_Object, InSoundMixModifier_SoundMix, InSoundClass_SoundClass, Volume, pitch, FadeInTime, bApplyToChildren)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSoundMixClassOverride: Failed To Allocate The Params");return;end;
 Volume = Volume or 0
 pitch = pitch or 0
 FadeInTime = FadeInTime or 0
 bApplyToChildren = bApplyToChildren or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, InSoundMixModifier at +0x8, InSoundClass at +0x10, Volume at +0x18, pitch at +0x1C, FadeInTime at +0x20, bApplyToChildren at +0x24
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, InSoundMixModifier_SoundMix)
 writeQword(_params + 0x10, InSoundClass_SoundClass)
 writeFloat(_params + 0x18, Volume)
 writeFloat(_params + 0x1C, pitch)
 writeFloat(_params + 0x20, FadeInTime)
 writeByte(_params + 0x24, bApplyToChildren)
 UE.CallProcessEventEx(WorldContextObject_Object, "SetSoundMixClassOverride", _params);
 deAlloc(_params);
end
FNR("BL4.SetSoundMixClassOverride");

BL4.SetSubtitlesEnabled = function(OwnerAddress, bEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSubtitlesEnabled: Failed To Allocate The Params");return;end;
 bEnabled = bEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnabled at +0x0
 writeByte(_params + 0x0, bEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetSubtitlesEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetSubtitlesEnabled");

BL4.SetViewportMouseCaptureMode = function(WorldContextObject_Object, MouseCaptureMode)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetViewportMouseCaptureMode: Failed To Allocate The Params");return;end;
 MouseCaptureMode = MouseCaptureMode or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, MouseCaptureMode at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeByte(_params + 0x8, MouseCaptureMode)
 UE.CallProcessEventEx(WorldContextObject_Object, "SetViewportMouseCaptureMode", _params);
 deAlloc(_params);
end
FNR("BL4.SetViewportMouseCaptureMode");

BL4.SetWorldOriginLocation = function(WorldContextObject_Object, NewLocation)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetWorldOriginLocation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, NewLocation at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, NewLocation)
 UE.CallProcessEventEx(WorldContextObject_Object, "SetWorldOriginLocation", _params);
 deAlloc(_params);
end
FNR("BL4.SetWorldOriginLocation");

BL4.SpawnDecalAtLocation = function(WorldContextObject_Object, DecalMaterial_MaterialInterface, DecalSize, Location, Rotation, lifespan)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnDecalAtLocation: Failed To Allocate The Params");return;end;
 DecalSize = DecalSize or {X=0,Y=0,Z=0}
 Location = Location or {X=0,Y=0,Z=0}
 Rotation = Rotation or {Pitch=0,Yaw=0,Roll=0}
 lifespan = lifespan or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, DecalMaterial at +0x8, DecalSize at +0x10, Location at +0x28, Rotation at +0x40, lifespan at +0x58
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, DecalMaterial_MaterialInterface)
 writeDouble(_params + 0x10, (DecalSize and DecalSize.X) or 0)
 writeDouble(_params + 0x18, (DecalSize and DecalSize.Y) or 0)
 writeDouble(_params + 0x20, (DecalSize and DecalSize.Z) or 0)
 writeDouble(_params + 0x28, (Location and Location.X) or 0)
 writeDouble(_params + 0x30, (Location and Location.Y) or 0)
 writeDouble(_params + 0x38, (Location and Location.Z) or 0)
 writeDouble(_params + 0x40, (Rotation and Rotation.Pitch) or 0)
 writeDouble(_params + 0x48, (Rotation and Rotation.Yaw) or 0)
 writeDouble(_params + 0x50, (Rotation and Rotation.Roll) or 0)
 writeFloat(_params + 0x58, lifespan)
 UE.CallProcessEventEx(WorldContextObject_Object, "SpawnDecalAtLocation", _params);
 local RET=readQword(_params + 0x60);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SpawnDecalAtLocation");

BL4.SpawnDecalAttached = function(DecalMaterial_MaterialInterface, DecalSize, AttachToComponent_SceneComponent, AttachPointName, Location, Rotation, LocationType, lifespan)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnDecalAttached: Failed To Allocate The Params");return;end;
 DecalSize = DecalSize or {X=0,Y=0,Z=0}
 Location = Location or {X=0,Y=0,Z=0}
 Rotation = Rotation or {Pitch=0,Yaw=0,Roll=0}
 LocationType = LocationType or 0
 lifespan = lifespan or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DecalMaterial at +0x0, DecalSize at +0x8, AttachToComponent at +0x20, AttachPointName at +0x28, Location at +0x30, Rotation at +0x48, LocationType at +0x60, lifespan at +0x64
 writeQword(_params + 0x0, DecalMaterial_MaterialInterface)
 writeDouble(_params + 0x8, (DecalSize and DecalSize.X) or 0)
 writeDouble(_params + 0x10, (DecalSize and DecalSize.Y) or 0)
 writeDouble(_params + 0x18, (DecalSize and DecalSize.Z) or 0)
 writeQword(_params + 0x20, AttachToComponent_SceneComponent)
 writeQword(_params + 0x28, AttachPointName)
 writeDouble(_params + 0x30, (Location and Location.X) or 0)
 writeDouble(_params + 0x38, (Location and Location.Y) or 0)
 writeDouble(_params + 0x40, (Location and Location.Z) or 0)
 writeDouble(_params + 0x48, (Rotation and Rotation.Pitch) or 0)
 writeDouble(_params + 0x50, (Rotation and Rotation.Yaw) or 0)
 writeDouble(_params + 0x58, (Rotation and Rotation.Roll) or 0)
 writeByte(_params + 0x60, LocationType)
 writeFloat(_params + 0x64, lifespan)
 UE.CallProcessEventEx(DecalMaterial_MaterialInterface, "SpawnDecalAttached", _params);
 local RET=readQword(_params + 0x68);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SpawnDecalAttached");

BL4.SpawnDialogue2D = function(WorldContextObject_Object, Dialogue_DialogueWave, Context, VolumeMultiplier, PitchMultiplier, StartTime, bAutoDestroy)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnDialogue2D: Failed To Allocate The Params");return;end;
 VolumeMultiplier = VolumeMultiplier or 0
 PitchMultiplier = PitchMultiplier or 0
 StartTime = StartTime or 0
 bAutoDestroy = bAutoDestroy or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Dialogue at +0x8, Context at +0x10, VolumeMultiplier at +0x28, PitchMultiplier at +0x2C, StartTime at +0x30, bAutoDestroy at +0x34
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Dialogue_DialogueWave)
 writeQword(_params + 0x10, Context)
 writeFloat(_params + 0x28, VolumeMultiplier)
 writeFloat(_params + 0x2C, PitchMultiplier)
 writeFloat(_params + 0x30, StartTime)
 writeByte(_params + 0x34, bAutoDestroy)
 UE.CallProcessEventEx(WorldContextObject_Object, "SpawnDialogue2D", _params);
 local RET=readQword(_params + 0x38);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SpawnDialogue2D");

BL4.SpawnDialogueAtLocation = function(WorldContextObject_Object, Dialogue_DialogueWave, Context, Location, Rotation, VolumeMultiplier, PitchMultiplier, StartTime, AttenuationSettings_SoundAttenuation, bAutoDestroy)
 local _paramsSize = 0x80
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnDialogueAtLocation: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 Rotation = Rotation or {Pitch=0,Yaw=0,Roll=0}
 VolumeMultiplier = VolumeMultiplier or 0
 PitchMultiplier = PitchMultiplier or 0
 StartTime = StartTime or 0
 bAutoDestroy = bAutoDestroy or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Dialogue at +0x8, Context at +0x10, Location at +0x28, Rotation at +0x40, VolumeMultiplier at +0x58, PitchMultiplier at +0x5C, StartTime at +0x60, AttenuationSettings at +0x68, bAutoDestroy at +0x70
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Dialogue_DialogueWave)
 writeQword(_params + 0x10, Context)
 writeDouble(_params + 0x28, (Location and Location.X) or 0)
 writeDouble(_params + 0x30, (Location and Location.Y) or 0)
 writeDouble(_params + 0x38, (Location and Location.Z) or 0)
 writeDouble(_params + 0x40, (Rotation and Rotation.Pitch) or 0)
 writeDouble(_params + 0x48, (Rotation and Rotation.Yaw) or 0)
 writeDouble(_params + 0x50, (Rotation and Rotation.Roll) or 0)
 writeFloat(_params + 0x58, VolumeMultiplier)
 writeFloat(_params + 0x5C, PitchMultiplier)
 writeFloat(_params + 0x60, StartTime)
 writeQword(_params + 0x68, AttenuationSettings_SoundAttenuation)
 writeByte(_params + 0x70, bAutoDestroy)
 UE.CallProcessEventEx(WorldContextObject_Object, "SpawnDialogueAtLocation", _params);
 local RET=readQword(_params + 0x78);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SpawnDialogueAtLocation");

BL4.SpawnDialogueAttached = function(Dialogue_DialogueWave, Context, AttachToComponent_SceneComponent, AttachPointName, Location, Rotation, LocationType, bStopWhenAttachedToDestroyed, VolumeMultiplier, PitchMultiplier, StartTime, AttenuationSettings_SoundAttenuation, bAutoDestroy)
 local _paramsSize = 0x88
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnDialogueAttached: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 Rotation = Rotation or {Pitch=0,Yaw=0,Roll=0}
 LocationType = LocationType or 0
 bStopWhenAttachedToDestroyed = bStopWhenAttachedToDestroyed or false
 VolumeMultiplier = VolumeMultiplier or 0
 PitchMultiplier = PitchMultiplier or 0
 StartTime = StartTime or 0
 bAutoDestroy = bAutoDestroy or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Dialogue at +0x0, Context at +0x8, AttachToComponent at +0x20, AttachPointName at +0x28, Location at +0x30, Rotation at +0x48, LocationType at +0x60, bStopWhenAttachedToDestroyed at +0x61, VolumeMultiplier at +0x64, PitchMultiplier at +0x68, StartTime at +0x6C, AttenuationSettings at +0x70, bAutoDestroy at +0x78
 writeQword(_params + 0x0, Dialogue_DialogueWave)
 writeQword(_params + 0x8, Context)
 writeQword(_params + 0x20, AttachToComponent_SceneComponent)
 writeQword(_params + 0x28, AttachPointName)
 writeDouble(_params + 0x30, (Location and Location.X) or 0)
 writeDouble(_params + 0x38, (Location and Location.Y) or 0)
 writeDouble(_params + 0x40, (Location and Location.Z) or 0)
 writeDouble(_params + 0x48, (Rotation and Rotation.Pitch) or 0)
 writeDouble(_params + 0x50, (Rotation and Rotation.Yaw) or 0)
 writeDouble(_params + 0x58, (Rotation and Rotation.Roll) or 0)
 writeByte(_params + 0x60, LocationType)
 writeByte(_params + 0x61, bStopWhenAttachedToDestroyed)
 writeFloat(_params + 0x64, VolumeMultiplier)
 writeFloat(_params + 0x68, PitchMultiplier)
 writeFloat(_params + 0x6C, StartTime)
 writeQword(_params + 0x70, AttenuationSettings_SoundAttenuation)
 writeByte(_params + 0x78, bAutoDestroy)
 UE.CallProcessEventEx(Dialogue_DialogueWave, "SpawnDialogueAttached", _params);
 local RET=readQword(_params + 0x80);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SpawnDialogueAttached");

BL4.SpawnEmitterAtLocation = function(WorldContextObject_Object, EmitterTemplate_ParticleSystem, Location, Rotation, scale, bAutoDestroy, PoolingMethod, bAutoActivateSystem)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnEmitterAtLocation: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 Rotation = Rotation or {Pitch=0,Yaw=0,Roll=0}
 scale = scale or {X=0,Y=0,Z=0}
 bAutoDestroy = bAutoDestroy or false
 PoolingMethod = PoolingMethod or 0
 bAutoActivateSystem = bAutoActivateSystem or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, EmitterTemplate at +0x8, Location at +0x10, Rotation at +0x28, scale at +0x40, bAutoDestroy at +0x58, PoolingMethod at +0x59, bAutoActivateSystem at +0x5A
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, EmitterTemplate_ParticleSystem)
 writeDouble(_params + 0x10, (Location and Location.X) or 0)
 writeDouble(_params + 0x18, (Location and Location.Y) or 0)
 writeDouble(_params + 0x20, (Location and Location.Z) or 0)
 writeDouble(_params + 0x28, (Rotation and Rotation.Pitch) or 0)
 writeDouble(_params + 0x30, (Rotation and Rotation.Yaw) or 0)
 writeDouble(_params + 0x38, (Rotation and Rotation.Roll) or 0)
 writeDouble(_params + 0x40, (scale and scale.X) or 0)
 writeDouble(_params + 0x48, (scale and scale.Y) or 0)
 writeDouble(_params + 0x50, (scale and scale.Z) or 0)
 writeByte(_params + 0x58, bAutoDestroy)
 writeByte(_params + 0x59, PoolingMethod)
 writeByte(_params + 0x5A, bAutoActivateSystem)
 UE.CallProcessEventEx(WorldContextObject_Object, "SpawnEmitterAtLocation", _params);
 local RET=readQword(_params + 0x60);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SpawnEmitterAtLocation");

BL4.SpawnEmitterAttached = function(EmitterTemplate_ParticleSystem, AttachToComponent_SceneComponent, AttachPointName, Location, Rotation, scale, LocationType, bAutoDestroy, PoolingMethod, bAutoActivate)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnEmitterAttached: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 Rotation = Rotation or {Pitch=0,Yaw=0,Roll=0}
 scale = scale or {X=0,Y=0,Z=0}
 LocationType = LocationType or 0
 bAutoDestroy = bAutoDestroy or false
 PoolingMethod = PoolingMethod or 0
 bAutoActivate = bAutoActivate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: EmitterTemplate at +0x0, AttachToComponent at +0x8, AttachPointName at +0x10, Location at +0x18, Rotation at +0x30, scale at +0x48, LocationType at +0x60, bAutoDestroy at +0x61, PoolingMethod at +0x62, bAutoActivate at +0x63
 writeQword(_params + 0x0, EmitterTemplate_ParticleSystem)
 writeQword(_params + 0x8, AttachToComponent_SceneComponent)
 writeQword(_params + 0x10, AttachPointName)
 writeDouble(_params + 0x18, (Location and Location.X) or 0)
 writeDouble(_params + 0x20, (Location and Location.Y) or 0)
 writeDouble(_params + 0x28, (Location and Location.Z) or 0)
 writeDouble(_params + 0x30, (Rotation and Rotation.Pitch) or 0)
 writeDouble(_params + 0x38, (Rotation and Rotation.Yaw) or 0)
 writeDouble(_params + 0x40, (Rotation and Rotation.Roll) or 0)
 writeDouble(_params + 0x48, (scale and scale.X) or 0)
 writeDouble(_params + 0x50, (scale and scale.Y) or 0)
 writeDouble(_params + 0x58, (scale and scale.Z) or 0)
 writeByte(_params + 0x60, LocationType)
 writeByte(_params + 0x61, bAutoDestroy)
 writeByte(_params + 0x62, PoolingMethod)
 writeByte(_params + 0x63, bAutoActivate)
 UE.CallProcessEventEx(EmitterTemplate_ParticleSystem, "SpawnEmitterAttached", _params);
 local RET=readQword(_params + 0x68);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SpawnEmitterAttached");

BL4.SpawnForceFeedbackAtLocation = function(WorldContextObject_Object, ForceFeedbackEffect, Location, Rotation, bLooping, IntensityMultiplier, StartTime, AttenuationSettings_ForceFeedbackAttenuation, bAutoDestroy)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnForceFeedbackAtLocation: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 Rotation = Rotation or {Pitch=0,Yaw=0,Roll=0}
 bLooping = bLooping or false
 IntensityMultiplier = IntensityMultiplier or 0
 StartTime = StartTime or 0
 bAutoDestroy = bAutoDestroy or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, ForceFeedbackEffect at +0x8, Location at +0x10, Rotation at +0x28, bLooping at +0x40, IntensityMultiplier at +0x44, StartTime at +0x48, AttenuationSettings at +0x50, bAutoDestroy at +0x58
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, ForceFeedbackEffect)
 writeDouble(_params + 0x10, (Location and Location.X) or 0)
 writeDouble(_params + 0x18, (Location and Location.Y) or 0)
 writeDouble(_params + 0x20, (Location and Location.Z) or 0)
 writeDouble(_params + 0x28, (Rotation and Rotation.Pitch) or 0)
 writeDouble(_params + 0x30, (Rotation and Rotation.Yaw) or 0)
 writeDouble(_params + 0x38, (Rotation and Rotation.Roll) or 0)
 writeByte(_params + 0x40, bLooping)
 writeFloat(_params + 0x44, IntensityMultiplier)
 writeFloat(_params + 0x48, StartTime)
 writeQword(_params + 0x50, AttenuationSettings_ForceFeedbackAttenuation)
 writeByte(_params + 0x58, bAutoDestroy)
 UE.CallProcessEventEx(WorldContextObject_Object, "SpawnForceFeedbackAtLocation", _params);
 local RET=readQword(_params + 0x60);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SpawnForceFeedbackAtLocation");

BL4.SpawnForceFeedbackAttached = function(ForceFeedbackEffect, AttachToComponent_SceneComponent, AttachPointName, Location, Rotation, LocationType, bStopWhenAttachedToDestroyed, bLooping, IntensityMultiplier, StartTime, AttenuationSettings_ForceFeedbackAttenuation, bAutoDestroy)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnForceFeedbackAttached: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 Rotation = Rotation or {Pitch=0,Yaw=0,Roll=0}
 LocationType = LocationType or 0
 bStopWhenAttachedToDestroyed = bStopWhenAttachedToDestroyed or false
 bLooping = bLooping or false
 IntensityMultiplier = IntensityMultiplier or 0
 StartTime = StartTime or 0
 bAutoDestroy = bAutoDestroy or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ForceFeedbackEffect at +0x0, AttachToComponent at +0x8, AttachPointName at +0x10, Location at +0x18, Rotation at +0x30, LocationType at +0x48, bStopWhenAttachedToDestroyed at +0x49, bLooping at +0x4A, IntensityMultiplier at +0x4C, StartTime at +0x50, AttenuationSettings at +0x58, bAutoDestroy at +0x60
 writeQword(_params + 0x0, ForceFeedbackEffect)
 writeQword(_params + 0x8, AttachToComponent_SceneComponent)
 writeQword(_params + 0x10, AttachPointName)
 writeDouble(_params + 0x18, (Location and Location.X) or 0)
 writeDouble(_params + 0x20, (Location and Location.Y) or 0)
 writeDouble(_params + 0x28, (Location and Location.Z) or 0)
 writeDouble(_params + 0x30, (Rotation and Rotation.Pitch) or 0)
 writeDouble(_params + 0x38, (Rotation and Rotation.Yaw) or 0)
 writeDouble(_params + 0x40, (Rotation and Rotation.Roll) or 0)
 writeByte(_params + 0x48, LocationType)
 writeByte(_params + 0x49, bStopWhenAttachedToDestroyed)
 writeByte(_params + 0x4A, bLooping)
 writeFloat(_params + 0x4C, IntensityMultiplier)
 writeFloat(_params + 0x50, StartTime)
 writeQword(_params + 0x58, AttenuationSettings_ForceFeedbackAttenuation)
 writeByte(_params + 0x60, bAutoDestroy)
 UE.CallProcessEventEx(ForceFeedbackEffect, "SpawnForceFeedbackAttached", _params);
 local RET=readQword(_params + 0x68);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SpawnForceFeedbackAttached");

BL4.SpawnObject = function(ObjectClass_Class, Outer_Object)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnObject: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ObjectClass at +0x0, Outer at +0x8
 writeQword(_params + 0x0, ObjectClass_Class)
 writeQword(_params + 0x8, Outer_Object)
 UE.CallProcessEventEx(ObjectClass_Class, "SpawnObject", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SpawnObject");

BL4.SpawnSound2D = function(WorldContextObject_Object, Sound_SoundBase, VolumeMultiplier, PitchMultiplier, StartTime, ConcurrencySettings_SoundConcurrency, bPersistAcrossLevelTransition, bAutoDestroy)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnSound2D: Failed To Allocate The Params");return;end;
 VolumeMultiplier = VolumeMultiplier or 0
 PitchMultiplier = PitchMultiplier or 0
 StartTime = StartTime or 0
 bPersistAcrossLevelTransition = bPersistAcrossLevelTransition or false
 bAutoDestroy = bAutoDestroy or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Sound at +0x8, VolumeMultiplier at +0x10, PitchMultiplier at +0x14, StartTime at +0x18, ConcurrencySettings at +0x20, bPersistAcrossLevelTransition at +0x28, bAutoDestroy at +0x29
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Sound_SoundBase)
 writeFloat(_params + 0x10, VolumeMultiplier)
 writeFloat(_params + 0x14, PitchMultiplier)
 writeFloat(_params + 0x18, StartTime)
 writeQword(_params + 0x20, ConcurrencySettings_SoundConcurrency)
 writeByte(_params + 0x28, bPersistAcrossLevelTransition)
 writeByte(_params + 0x29, bAutoDestroy)
 UE.CallProcessEventEx(WorldContextObject_Object, "SpawnSound2D", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SpawnSound2D");

BL4.SpawnSoundAtLocation = function(WorldContextObject_Object, Sound_SoundBase, Location, Rotation, VolumeMultiplier, PitchMultiplier, StartTime, AttenuationSettings_SoundAttenuation, ConcurrencySettings_SoundConcurrency, bAutoDestroy)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnSoundAtLocation: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 Rotation = Rotation or {Pitch=0,Yaw=0,Roll=0}
 VolumeMultiplier = VolumeMultiplier or 0
 PitchMultiplier = PitchMultiplier or 0
 StartTime = StartTime or 0
 bAutoDestroy = bAutoDestroy or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Sound at +0x8, Location at +0x10, Rotation at +0x28, VolumeMultiplier at +0x40, PitchMultiplier at +0x44, StartTime at +0x48, AttenuationSettings at +0x50, ConcurrencySettings at +0x58, bAutoDestroy at +0x60
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Sound_SoundBase)
 writeDouble(_params + 0x10, (Location and Location.X) or 0)
 writeDouble(_params + 0x18, (Location and Location.Y) or 0)
 writeDouble(_params + 0x20, (Location and Location.Z) or 0)
 writeDouble(_params + 0x28, (Rotation and Rotation.Pitch) or 0)
 writeDouble(_params + 0x30, (Rotation and Rotation.Yaw) or 0)
 writeDouble(_params + 0x38, (Rotation and Rotation.Roll) or 0)
 writeFloat(_params + 0x40, VolumeMultiplier)
 writeFloat(_params + 0x44, PitchMultiplier)
 writeFloat(_params + 0x48, StartTime)
 writeQword(_params + 0x50, AttenuationSettings_SoundAttenuation)
 writeQword(_params + 0x58, ConcurrencySettings_SoundConcurrency)
 writeByte(_params + 0x60, bAutoDestroy)
 UE.CallProcessEventEx(WorldContextObject_Object, "SpawnSoundAtLocation", _params);
 local RET=readQword(_params + 0x68);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SpawnSoundAtLocation");

BL4.SpawnSoundAttached = function(Sound_SoundBase, AttachToComponent_SceneComponent, AttachPointName, Location, Rotation, LocationType, bStopWhenAttachedToDestroyed, VolumeMultiplier, PitchMultiplier, StartTime, AttenuationSettings_SoundAttenuation, ConcurrencySettings_SoundConcurrency, bAutoDestroy)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnSoundAttached: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 Rotation = Rotation or {Pitch=0,Yaw=0,Roll=0}
 LocationType = LocationType or 0
 bStopWhenAttachedToDestroyed = bStopWhenAttachedToDestroyed or false
 VolumeMultiplier = VolumeMultiplier or 0
 PitchMultiplier = PitchMultiplier or 0
 StartTime = StartTime or 0
 bAutoDestroy = bAutoDestroy or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sound at +0x0, AttachToComponent at +0x8, AttachPointName at +0x10, Location at +0x18, Rotation at +0x30, LocationType at +0x48, bStopWhenAttachedToDestroyed at +0x49, VolumeMultiplier at +0x4C, PitchMultiplier at +0x50, StartTime at +0x54, AttenuationSettings at +0x58, ConcurrencySettings at +0x60, bAutoDestroy at +0x68
 writeQword(_params + 0x0, Sound_SoundBase)
 writeQword(_params + 0x8, AttachToComponent_SceneComponent)
 writeQword(_params + 0x10, AttachPointName)
 writeDouble(_params + 0x18, (Location and Location.X) or 0)
 writeDouble(_params + 0x20, (Location and Location.Y) or 0)
 writeDouble(_params + 0x28, (Location and Location.Z) or 0)
 writeDouble(_params + 0x30, (Rotation and Rotation.Pitch) or 0)
 writeDouble(_params + 0x38, (Rotation and Rotation.Yaw) or 0)
 writeDouble(_params + 0x40, (Rotation and Rotation.Roll) or 0)
 writeByte(_params + 0x48, LocationType)
 writeByte(_params + 0x49, bStopWhenAttachedToDestroyed)
 writeFloat(_params + 0x4C, VolumeMultiplier)
 writeFloat(_params + 0x50, PitchMultiplier)
 writeFloat(_params + 0x54, StartTime)
 writeQword(_params + 0x58, AttenuationSettings_SoundAttenuation)
 writeQword(_params + 0x60, ConcurrencySettings_SoundConcurrency)
 writeByte(_params + 0x68, bAutoDestroy)
 UE.CallProcessEventEx(Sound_SoundBase, "SpawnSoundAttached", _params);
 local RET=readQword(_params + 0x70);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SpawnSoundAttached");

BL4.SuggestProjectileVelocity_CustomArc = function(WorldContextObject_Object, OutLaunchVelocity, StartPos, EndPos, OverrideGravityZ, ArcParam)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SuggestProjectileVelocity_CustomArc: Failed To Allocate The Params");return;end;
 OutLaunchVelocity = OutLaunchVelocity or {X=0,Y=0,Z=0}
 StartPos = StartPos or {X=0,Y=0,Z=0}
 EndPos = EndPos or {X=0,Y=0,Z=0}
 OverrideGravityZ = OverrideGravityZ or 0
 ArcParam = ArcParam or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OutLaunchVelocity at +0x8, StartPos at +0x20, EndPos at +0x38, OverrideGravityZ at +0x50, ArcParam at +0x54
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (OutLaunchVelocity and OutLaunchVelocity.X) or 0)
 writeDouble(_params + 0x10, (OutLaunchVelocity and OutLaunchVelocity.Y) or 0)
 writeDouble(_params + 0x18, (OutLaunchVelocity and OutLaunchVelocity.Z) or 0)
 writeDouble(_params + 0x20, (StartPos and StartPos.X) or 0)
 writeDouble(_params + 0x28, (StartPos and StartPos.Y) or 0)
 writeDouble(_params + 0x30, (StartPos and StartPos.Z) or 0)
 writeDouble(_params + 0x38, (EndPos and EndPos.X) or 0)
 writeDouble(_params + 0x40, (EndPos and EndPos.Y) or 0)
 writeDouble(_params + 0x48, (EndPos and EndPos.Z) or 0)
 writeFloat(_params + 0x50, OverrideGravityZ)
 writeFloat(_params + 0x54, ArcParam)
 UE.CallProcessEventEx(WorldContextObject_Object, "SuggestProjectileVelocity_CustomArc", _params);
 local RET=readByte(_params + 0x58);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SuggestProjectileVelocity_CustomArc");

BL4.SuggestProjectileVelocity_MovingTarget = function(WorldContextObject_Object, OutLaunchVelocity, ProjectileStartLocation, TargetActor_Actor, TargetLocationOffset, GravityZOverride, TimeToTarget, DrawDebugType, DrawDebugTime, DrawDebugColor)
 local _paramsSize = 0x88
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SuggestProjectileVelocity_MovingTarget: Failed To Allocate The Params");return;end;
 OutLaunchVelocity = OutLaunchVelocity or {X=0,Y=0,Z=0}
 ProjectileStartLocation = ProjectileStartLocation or {X=0,Y=0,Z=0}
 TargetLocationOffset = TargetLocationOffset or {X=0,Y=0,Z=0}
 DrawDebugType = DrawDebugType or 0
 DrawDebugTime = DrawDebugTime or 0
 DrawDebugColor = DrawDebugColor or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OutLaunchVelocity at +0x8, ProjectileStartLocation at +0x20, TargetActor at +0x38, TargetLocationOffset at +0x40, GravityZOverride at +0x58, TimeToTarget at +0x60, DrawDebugType at +0x68, DrawDebugTime at +0x6C, DrawDebugColor at +0x70
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (OutLaunchVelocity and OutLaunchVelocity.X) or 0)
 writeDouble(_params + 0x10, (OutLaunchVelocity and OutLaunchVelocity.Y) or 0)
 writeDouble(_params + 0x18, (OutLaunchVelocity and OutLaunchVelocity.Z) or 0)
 writeDouble(_params + 0x20, (ProjectileStartLocation and ProjectileStartLocation.X) or 0)
 writeDouble(_params + 0x28, (ProjectileStartLocation and ProjectileStartLocation.Y) or 0)
 writeDouble(_params + 0x30, (ProjectileStartLocation and ProjectileStartLocation.Z) or 0)
 writeQword(_params + 0x38, TargetActor_Actor)
 writeDouble(_params + 0x40, (TargetLocationOffset and TargetLocationOffset.X) or 0)
 writeDouble(_params + 0x48, (TargetLocationOffset and TargetLocationOffset.Y) or 0)
 writeDouble(_params + 0x50, (TargetLocationOffset and TargetLocationOffset.Z) or 0)
 writeQword(_params + 0x58, GravityZOverride)
 writeQword(_params + 0x60, TimeToTarget)
 writeByte(_params + 0x68, DrawDebugType)
 writeFloat(_params + 0x6C, DrawDebugTime)
 writeFloat(_params + 0x70, (DrawDebugColor and DrawDebugColor.R) or 0)
 writeFloat(_params + 0x74, (DrawDebugColor and DrawDebugColor.G) or 0)
 writeFloat(_params + 0x78, (DrawDebugColor and DrawDebugColor.B) or 0)
 writeFloat(_params + 0x7C, (DrawDebugColor and DrawDebugColor.A) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "SuggestProjectileVelocity_MovingTarget", _params);
 local RET=readByte(_params + 0x80);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SuggestProjectileVelocity_MovingTarget");

BL4.TransformWorldToFirstPerson = function(OwnerAddress, ViewInfo, WorldPosition, bIgnoreFirstPersonScale)
 local _paramsSize = 0xA68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TransformWorldToFirstPerson: Failed To Allocate The Params");return;end;
 WorldPosition = WorldPosition or {X=0,Y=0,Z=0}
 bIgnoreFirstPersonScale = bIgnoreFirstPersonScale or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ViewInfo at +0x0, WorldPosition at +0xA30, bIgnoreFirstPersonScale at +0xA48
 writeQword(_params + 0x0, ViewInfo)
 writeDouble(_params + 0xA30, (WorldPosition and WorldPosition.X) or 0)
 writeDouble(_params + 0xA38, (WorldPosition and WorldPosition.Y) or 0)
 writeDouble(_params + 0xA40, (WorldPosition and WorldPosition.Z) or 0)
 writeByte(_params + 0xA48, bIgnoreFirstPersonScale)
 UE.CallProcessEventEx(OwnerAddress, "TransformWorldToFirstPerson", _params);
 local RET={X=readFloat(_params+0xA50),Y=readFloat(_params+0xA58),Z=readFloat(_params+0xA60)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.TransformWorldToFirstPerson");

BL4.UnloadStreamLevel = function(WorldContextObject_Object, LevelName, LatentInfo, bShouldBlockOnUnload)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnloadStreamLevel: Failed To Allocate The Params");return;end;
 bShouldBlockOnUnload = bShouldBlockOnUnload or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, LevelName at +0x8, LatentInfo at +0x10, bShouldBlockOnUnload at +0x28
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, LevelName)
 writeQword(_params + 0x10, LatentInfo)
 writeByte(_params + 0x28, bShouldBlockOnUnload)
 UE.CallProcessEventEx(WorldContextObject_Object, "UnloadStreamLevel", _params);
 deAlloc(_params);
end
FNR("BL4.UnloadStreamLevel");

BL4.UnloadStreamLevelBySoftObjectPtr = function(WorldContextObject_Object, Level_World, LatentInfo, bShouldBlockOnUnload)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnloadStreamLevelBySoftObjectPtr: Failed To Allocate The Params");return;end;
 bShouldBlockOnUnload = bShouldBlockOnUnload or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Level at +0x8, LatentInfo at +0x30, bShouldBlockOnUnload at +0x48
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Level_World)
 writeQword(_params + 0x30, LatentInfo)
 writeByte(_params + 0x48, bShouldBlockOnUnload)
 UE.CallProcessEventEx(WorldContextObject_Object, "UnloadStreamLevelBySoftObjectPtr", _params);
 deAlloc(_params);
end
FNR("BL4.UnloadStreamLevelBySoftObjectPtr");

BL4.UnRetainAllSoundsInSoundClass = function(InSoundClass_SoundClass)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnRetainAllSoundsInSoundClass: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InSoundClass at +0x0
 writeQword(_params + 0x0, InSoundClass_SoundClass)
 UE.CallProcessEventEx(InSoundClass_SoundClass, "UnRetainAllSoundsInSoundClass", _params);
 deAlloc(_params);
end
FNR("BL4.UnRetainAllSoundsInSoundClass");

