BL4.AIHeldExplosive_Destroy = function(AIActor_Actor, ID, FilterType)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldExplosive_Destroy: Failed To Allocate The Params");return;end;
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, ID at +0x8, FilterType at +0x10
 writeQword(_params + 0x0, AIActor_Actor)
 writeQword(_params + 0x8, ID)
 writeByte(_params + 0x10, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldExplosive_Destroy", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldExplosive_Destroy");

BL4.AIHeldExplosive_Detonate = function(AIActor_Actor, ID, FilterType, bKillSelfOnDetonate, bRequestNewExplosive, InstigatorOverride_Actor)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldExplosive_Detonate: Failed To Allocate The Params");return;end;
 FilterType = FilterType or 0
 bKillSelfOnDetonate = bKillSelfOnDetonate or false
 bRequestNewExplosive = bRequestNewExplosive or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, ID at +0x8, FilterType at +0x10, bKillSelfOnDetonate at +0x11, bRequestNewExplosive at +0x12, InstigatorOverride at +0x18
 writeQword(_params + 0x0, AIActor_Actor)
 writeQword(_params + 0x8, ID)
 writeByte(_params + 0x10, FilterType)
 writeByte(_params + 0x11, bKillSelfOnDetonate)
 writeByte(_params + 0x12, bRequestNewExplosive)
 writeQword(_params + 0x18, InstigatorOverride_Actor)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldExplosive_Detonate", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldExplosive_Detonate");

BL4.AIHeldExplosive_Drop = function(AIActor_Actor, bRequestNewHeldActor, ID, FilterType, InstigatorOverride_Actor)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldExplosive_Drop: Failed To Allocate The Params");return;end;
 bRequestNewHeldActor = bRequestNewHeldActor or false
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, bRequestNewHeldActor at +0x8, ID at +0xC, FilterType at +0x14, InstigatorOverride at +0x18
 writeQword(_params + 0x0, AIActor_Actor)
 writeByte(_params + 0x8, bRequestNewHeldActor)
 writeQword(_params + 0xC, ID)
 writeByte(_params + 0x14, FilterType)
 writeQword(_params + 0x18, InstigatorOverride_Actor)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldExplosive_Drop", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldExplosive_Drop");

BL4.AIHeldExplosive_GetActors = function(AIActor_Actor, ID, FilterType)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldExplosive_GetActors: Failed To Allocate The Params");return;end;
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, ID at +0x8, FilterType at +0x10
 writeQword(_params + 0x0, AIActor_Actor)
 writeQword(_params + 0x8, ID)
 writeByte(_params + 0x10, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldExplosive_GetActors", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AIHeldExplosive_GetActors");

BL4.AIHeldExplosive_SetChildActorDef = function(AIActor_Actor, NewActorDef, ID, FilterType)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldExplosive_SetChildActorDef: Failed To Allocate The Params");return;end;
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, NewActorDef at +0x8, ID at +0x20, FilterType at +0x28
 writeQword(_params + 0x0, AIActor_Actor)
 writeQword(_params + 0x8, NewActorDef)
 writeQword(_params + 0x20, ID)
 writeByte(_params + 0x28, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldExplosive_SetChildActorDef", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldExplosive_SetChildActorDef");

BL4.AIHeldExplosive_Spawn = function(AIActor_Actor, ID, FilterType)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldExplosive_Spawn: Failed To Allocate The Params");return;end;
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, ID at +0x8, FilterType at +0x10
 writeQword(_params + 0x0, AIActor_Actor)
 writeQword(_params + 0x8, ID)
 writeByte(_params + 0x10, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldExplosive_Spawn", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldExplosive_Spawn");

BL4.AIHeldExplosive_ThrowAtActor = function(AIActor_Actor, target_Actor, TargetOptions, TrajectoryOptions, bRequestNewHeldActor, bSpawnIfDoesNotExist, ID, FilterType)
 local _paramsSize = 0xC8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldExplosive_ThrowAtActor: Failed To Allocate The Params");return;end;
 bRequestNewHeldActor = bRequestNewHeldActor or false
 bSpawnIfDoesNotExist = bSpawnIfDoesNotExist or false
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, target at +0x8, TargetOptions at +0x10, TrajectoryOptions at +0x70, bRequestNewHeldActor at +0xB8, bSpawnIfDoesNotExist at +0xB9, ID at +0xBC, FilterType at +0xC4
 writeQword(_params + 0x0, AIActor_Actor)
 writeQword(_params + 0x8, target_Actor)
 writeQword(_params + 0x10, TargetOptions)
 writeQword(_params + 0x70, TrajectoryOptions)
 writeByte(_params + 0xB8, bRequestNewHeldActor)
 writeByte(_params + 0xB9, bSpawnIfDoesNotExist)
 writeQword(_params + 0xBC, ID)
 writeByte(_params + 0xC4, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldExplosive_ThrowAtActor", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldExplosive_ThrowAtActor");

BL4.AIHeldExplosive_ThrowAtCrosshair = function(AIActor_Actor, TrajectoryOptions, TraceDistance, bRequestNewHeldActor, bSpawnIfDoesNotExist, ID, FilterType)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldExplosive_ThrowAtCrosshair: Failed To Allocate The Params");return;end;
 TraceDistance = TraceDistance or 0
 bRequestNewHeldActor = bRequestNewHeldActor or false
 bSpawnIfDoesNotExist = bSpawnIfDoesNotExist or false
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, TrajectoryOptions at +0x8, TraceDistance at +0x50, bRequestNewHeldActor at +0x54, bSpawnIfDoesNotExist at +0x55, ID at +0x58, FilterType at +0x60
 writeQword(_params + 0x0, AIActor_Actor)
 writeQword(_params + 0x8, TrajectoryOptions)
 writeFloat(_params + 0x50, TraceDistance)
 writeByte(_params + 0x54, bRequestNewHeldActor)
 writeByte(_params + 0x55, bSpawnIfDoesNotExist)
 writeQword(_params + 0x58, ID)
 writeByte(_params + 0x60, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldExplosive_ThrowAtCrosshair", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldExplosive_ThrowAtCrosshair");

BL4.AIHeldExplosive_ThrowAtTarget = function(AIActor_Actor, TargetOptions, TrajectoryOptions, bRequestNewHeldActor, bSpawnIfDoesNotExist, ID, FilterType)
 local _paramsSize = 0xC0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldExplosive_ThrowAtTarget: Failed To Allocate The Params");return;end;
 bRequestNewHeldActor = bRequestNewHeldActor or false
 bSpawnIfDoesNotExist = bSpawnIfDoesNotExist or false
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, TargetOptions at +0x8, TrajectoryOptions at +0x68, bRequestNewHeldActor at +0xB0, bSpawnIfDoesNotExist at +0xB1, ID at +0xB4, FilterType at +0xBC
 writeQword(_params + 0x0, AIActor_Actor)
 writeQword(_params + 0x8, TargetOptions)
 writeQword(_params + 0x68, TrajectoryOptions)
 writeByte(_params + 0xB0, bRequestNewHeldActor)
 writeByte(_params + 0xB1, bSpawnIfDoesNotExist)
 writeQword(_params + 0xB4, ID)
 writeByte(_params + 0xBC, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldExplosive_ThrowAtTarget", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldExplosive_ThrowAtTarget");

BL4.AIHeldExplosive_ThrowHeldActorAtLocation = function(AIActor_Actor, ThrowAtLocation, TrajectoryOptions, bRequestNewHeldActor, bSpawnIfDoesNotExist, ID, FilterType)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldExplosive_ThrowHeldActorAtLocation: Failed To Allocate The Params");return;end;
 ThrowAtLocation = ThrowAtLocation or {X=0,Y=0,Z=0}
 bRequestNewHeldActor = bRequestNewHeldActor or false
 bSpawnIfDoesNotExist = bSpawnIfDoesNotExist or false
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, ThrowAtLocation at +0x8, TrajectoryOptions at +0x20, bRequestNewHeldActor at +0x68, bSpawnIfDoesNotExist at +0x69, ID at +0x6C, FilterType at +0x74
 writeQword(_params + 0x0, AIActor_Actor)
 writeDouble(_params + 0x8, (ThrowAtLocation and ThrowAtLocation.X) or 0)
 writeDouble(_params + 0x10, (ThrowAtLocation and ThrowAtLocation.Y) or 0)
 writeDouble(_params + 0x18, (ThrowAtLocation and ThrowAtLocation.Z) or 0)
 writeQword(_params + 0x20, TrajectoryOptions)
 writeByte(_params + 0x68, bRequestNewHeldActor)
 writeByte(_params + 0x69, bSpawnIfDoesNotExist)
 writeQword(_params + 0x6C, ID)
 writeByte(_params + 0x74, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldExplosive_ThrowHeldActorAtLocation", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldExplosive_ThrowHeldActorAtLocation");

BL4.AIHeldMelee_Destroy = function(AIActor_Actor, ID, FilterType)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldMelee_Destroy: Failed To Allocate The Params");return;end;
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, ID at +0x8, FilterType at +0x10
 writeQword(_params + 0x0, AIActor_Actor)
 writeQword(_params + 0x8, ID)
 writeByte(_params + 0x10, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldMelee_Destroy", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldMelee_Destroy");

BL4.AIHeldMelee_Drop = function(AIActor_Actor, bRequestNewHeldActor, ID, FilterType, InstigatorOverride_Actor)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldMelee_Drop: Failed To Allocate The Params");return;end;
 bRequestNewHeldActor = bRequestNewHeldActor or false
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, bRequestNewHeldActor at +0x8, ID at +0xC, FilterType at +0x14, InstigatorOverride at +0x18
 writeQword(_params + 0x0, AIActor_Actor)
 writeByte(_params + 0x8, bRequestNewHeldActor)
 writeQword(_params + 0xC, ID)
 writeByte(_params + 0x14, FilterType)
 writeQword(_params + 0x18, InstigatorOverride_Actor)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldMelee_Drop", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldMelee_Drop");

BL4.AIHeldMelee_GetActors = function(AIActor_Actor, ID, FilterType)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldMelee_GetActors: Failed To Allocate The Params");return;end;
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, ID at +0x8, FilterType at +0x10
 writeQword(_params + 0x0, AIActor_Actor)
 writeQword(_params + 0x8, ID)
 writeByte(_params + 0x10, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldMelee_GetActors", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AIHeldMelee_GetActors");

BL4.AIHeldMelee_SetChildActorDef = function(AIActor_Actor, NewActorDef, ID, FilterType)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldMelee_SetChildActorDef: Failed To Allocate The Params");return;end;
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, NewActorDef at +0x8, ID at +0x20, FilterType at +0x28
 writeQword(_params + 0x0, AIActor_Actor)
 writeQword(_params + 0x8, NewActorDef)
 writeQword(_params + 0x20, ID)
 writeByte(_params + 0x28, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldMelee_SetChildActorDef", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldMelee_SetChildActorDef");

BL4.AIHeldMelee_Spawn = function(AIActor_Actor, ID, FilterType)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldMelee_Spawn: Failed To Allocate The Params");return;end;
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, ID at +0x8, FilterType at +0x10
 writeQword(_params + 0x0, AIActor_Actor)
 writeQword(_params + 0x8, ID)
 writeByte(_params + 0x10, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldMelee_Spawn", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldMelee_Spawn");

BL4.AIHeldMelee_ThrowAtActor = function(AIActor_Actor, target_Actor, TargetOptions, TrajectoryOptions, bRequestNewHeldActor, bSpawnIfDoesNotExist, ID, FilterType)
 local _paramsSize = 0xC8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldMelee_ThrowAtActor: Failed To Allocate The Params");return;end;
 bRequestNewHeldActor = bRequestNewHeldActor or false
 bSpawnIfDoesNotExist = bSpawnIfDoesNotExist or false
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, target at +0x8, TargetOptions at +0x10, TrajectoryOptions at +0x70, bRequestNewHeldActor at +0xB8, bSpawnIfDoesNotExist at +0xB9, ID at +0xBC, FilterType at +0xC4
 writeQword(_params + 0x0, AIActor_Actor)
 writeQword(_params + 0x8, target_Actor)
 writeQword(_params + 0x10, TargetOptions)
 writeQword(_params + 0x70, TrajectoryOptions)
 writeByte(_params + 0xB8, bRequestNewHeldActor)
 writeByte(_params + 0xB9, bSpawnIfDoesNotExist)
 writeQword(_params + 0xBC, ID)
 writeByte(_params + 0xC4, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldMelee_ThrowAtActor", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldMelee_ThrowAtActor");

BL4.AIHeldMelee_ThrowAtCrosshair = function(AIActor_Actor, TrajectoryOptions, TraceDistance, bRequestNewHeldActor, bSpawnIfDoesNotExist, ID, FilterType)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldMelee_ThrowAtCrosshair: Failed To Allocate The Params");return;end;
 TraceDistance = TraceDistance or 0
 bRequestNewHeldActor = bRequestNewHeldActor or false
 bSpawnIfDoesNotExist = bSpawnIfDoesNotExist or false
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, TrajectoryOptions at +0x8, TraceDistance at +0x50, bRequestNewHeldActor at +0x54, bSpawnIfDoesNotExist at +0x55, ID at +0x58, FilterType at +0x60
 writeQword(_params + 0x0, AIActor_Actor)
 writeQword(_params + 0x8, TrajectoryOptions)
 writeFloat(_params + 0x50, TraceDistance)
 writeByte(_params + 0x54, bRequestNewHeldActor)
 writeByte(_params + 0x55, bSpawnIfDoesNotExist)
 writeQword(_params + 0x58, ID)
 writeByte(_params + 0x60, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldMelee_ThrowAtCrosshair", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldMelee_ThrowAtCrosshair");

BL4.AIHeldMelee_ThrowAtTarget = function(AIActor_Actor, TargetOptions, TrajectoryOptions, bRequestNewHeldActor, bSpawnIfDoesNotExist, ID, FilterType)
 local _paramsSize = 0xC0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldMelee_ThrowAtTarget: Failed To Allocate The Params");return;end;
 bRequestNewHeldActor = bRequestNewHeldActor or false
 bSpawnIfDoesNotExist = bSpawnIfDoesNotExist or false
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, TargetOptions at +0x8, TrajectoryOptions at +0x68, bRequestNewHeldActor at +0xB0, bSpawnIfDoesNotExist at +0xB1, ID at +0xB4, FilterType at +0xBC
 writeQword(_params + 0x0, AIActor_Actor)
 writeQword(_params + 0x8, TargetOptions)
 writeQword(_params + 0x68, TrajectoryOptions)
 writeByte(_params + 0xB0, bRequestNewHeldActor)
 writeByte(_params + 0xB1, bSpawnIfDoesNotExist)
 writeQword(_params + 0xB4, ID)
 writeByte(_params + 0xBC, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldMelee_ThrowAtTarget", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldMelee_ThrowAtTarget");

BL4.AIHeldMelee_ThrowHeldActorAtLocation = function(AIActor_Actor, ThrowAtLocation, TrajectoryOptions, bRequestNewHeldActor, bSpawnIfDoesNotExist, ID, FilterType)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldMelee_ThrowHeldActorAtLocation: Failed To Allocate The Params");return;end;
 ThrowAtLocation = ThrowAtLocation or {X=0,Y=0,Z=0}
 bRequestNewHeldActor = bRequestNewHeldActor or false
 bSpawnIfDoesNotExist = bSpawnIfDoesNotExist or false
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, ThrowAtLocation at +0x8, TrajectoryOptions at +0x20, bRequestNewHeldActor at +0x68, bSpawnIfDoesNotExist at +0x69, ID at +0x6C, FilterType at +0x74
 writeQword(_params + 0x0, AIActor_Actor)
 writeDouble(_params + 0x8, (ThrowAtLocation and ThrowAtLocation.X) or 0)
 writeDouble(_params + 0x10, (ThrowAtLocation and ThrowAtLocation.Y) or 0)
 writeDouble(_params + 0x18, (ThrowAtLocation and ThrowAtLocation.Z) or 0)
 writeQword(_params + 0x20, TrajectoryOptions)
 writeByte(_params + 0x68, bRequestNewHeldActor)
 writeByte(_params + 0x69, bSpawnIfDoesNotExist)
 writeQword(_params + 0x6C, ID)
 writeByte(_params + 0x74, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldMelee_ThrowHeldActorAtLocation", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldMelee_ThrowHeldActorAtLocation");

BL4.AIHeldProjectile_Destroy = function(AIActor_Actor, ID, FilterType)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldProjectile_Destroy: Failed To Allocate The Params");return;end;
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, ID at +0x8, FilterType at +0x10
 writeQword(_params + 0x0, AIActor_Actor)
 writeQword(_params + 0x8, ID)
 writeByte(_params + 0x10, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldProjectile_Destroy", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldProjectile_Destroy");

BL4.AIHeldProjectile_Drop = function(AIActor_Actor, bRequestNewHeldActor, ID, FilterType, InstigatorOverride_Actor)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldProjectile_Drop: Failed To Allocate The Params");return;end;
 bRequestNewHeldActor = bRequestNewHeldActor or false
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, bRequestNewHeldActor at +0x8, ID at +0xC, FilterType at +0x14, InstigatorOverride at +0x18
 writeQword(_params + 0x0, AIActor_Actor)
 writeByte(_params + 0x8, bRequestNewHeldActor)
 writeQword(_params + 0xC, ID)
 writeByte(_params + 0x14, FilterType)
 writeQword(_params + 0x18, InstigatorOverride_Actor)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldProjectile_Drop", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldProjectile_Drop");

BL4.AIHeldProjectile_GetActors = function(AIActor_Actor, ID, FilterType)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldProjectile_GetActors: Failed To Allocate The Params");return;end;
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, ID at +0x8, FilterType at +0x10
 writeQword(_params + 0x0, AIActor_Actor)
 writeQword(_params + 0x8, ID)
 writeByte(_params + 0x10, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldProjectile_GetActors", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AIHeldProjectile_GetActors");

BL4.AIHeldProjectile_GetImpactEffect = function(AIActor_Actor, ID, FilterType)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldProjectile_GetImpactEffect: Failed To Allocate The Params");return;end;
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, ID at +0x8, FilterType at +0x10
 writeQword(_params + 0x0, AIActor_Actor)
 writeQword(_params + 0x8, ID)
 writeByte(_params + 0x10, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldProjectile_GetImpactEffect", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AIHeldProjectile_GetImpactEffect");

BL4.AIHeldProjectile_SetChildActorDef = function(AIActor_Actor, NewActorDef, ID, FilterType)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldProjectile_SetChildActorDef: Failed To Allocate The Params");return;end;
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, NewActorDef at +0x8, ID at +0x20, FilterType at +0x28
 writeQword(_params + 0x0, AIActor_Actor)
 writeQword(_params + 0x8, NewActorDef)
 writeQword(_params + 0x20, ID)
 writeByte(_params + 0x28, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldProjectile_SetChildActorDef", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldProjectile_SetChildActorDef");

BL4.AIHeldProjectile_Spawn = function(AIActor_Actor, ID, FilterType)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldProjectile_Spawn: Failed To Allocate The Params");return;end;
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, ID at +0x8, FilterType at +0x10
 writeQword(_params + 0x0, AIActor_Actor)
 writeQword(_params + 0x8, ID)
 writeByte(_params + 0x10, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldProjectile_Spawn", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldProjectile_Spawn");

BL4.AIHeldProjectile_ThrowAtActor = function(AIActor_Actor, target_Actor, TargetOptions, TrajectoryOptions, bRequestNewHeldActor, bSpawnIfDoesNotExist, ID, FilterType)
 local _paramsSize = 0xC8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldProjectile_ThrowAtActor: Failed To Allocate The Params");return;end;
 bRequestNewHeldActor = bRequestNewHeldActor or false
 bSpawnIfDoesNotExist = bSpawnIfDoesNotExist or false
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, target at +0x8, TargetOptions at +0x10, TrajectoryOptions at +0x70, bRequestNewHeldActor at +0xB8, bSpawnIfDoesNotExist at +0xB9, ID at +0xBC, FilterType at +0xC4
 writeQword(_params + 0x0, AIActor_Actor)
 writeQword(_params + 0x8, target_Actor)
 writeQword(_params + 0x10, TargetOptions)
 writeQword(_params + 0x70, TrajectoryOptions)
 writeByte(_params + 0xB8, bRequestNewHeldActor)
 writeByte(_params + 0xB9, bSpawnIfDoesNotExist)
 writeQword(_params + 0xBC, ID)
 writeByte(_params + 0xC4, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldProjectile_ThrowAtActor", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldProjectile_ThrowAtActor");

BL4.AIHeldProjectile_ThrowAtCrosshair = function(AIActor_Actor, TrajectoryOptions, TraceDistance, bRequestNewHeldActor, bSpawnIfDoesNotExist, ID, FilterType)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldProjectile_ThrowAtCrosshair: Failed To Allocate The Params");return;end;
 TraceDistance = TraceDistance or 0
 bRequestNewHeldActor = bRequestNewHeldActor or false
 bSpawnIfDoesNotExist = bSpawnIfDoesNotExist or false
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, TrajectoryOptions at +0x8, TraceDistance at +0x50, bRequestNewHeldActor at +0x54, bSpawnIfDoesNotExist at +0x55, ID at +0x58, FilterType at +0x60
 writeQword(_params + 0x0, AIActor_Actor)
 writeQword(_params + 0x8, TrajectoryOptions)
 writeFloat(_params + 0x50, TraceDistance)
 writeByte(_params + 0x54, bRequestNewHeldActor)
 writeByte(_params + 0x55, bSpawnIfDoesNotExist)
 writeQword(_params + 0x58, ID)
 writeByte(_params + 0x60, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldProjectile_ThrowAtCrosshair", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldProjectile_ThrowAtCrosshair");

BL4.AIHeldProjectile_ThrowAtTarget = function(AIActor_Actor, TargetOptions, TrajectoryOptions, bRequestNewHeldActor, bSpawnIfDoesNotExist, ID, FilterType)
 local _paramsSize = 0xC0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldProjectile_ThrowAtTarget: Failed To Allocate The Params");return;end;
 bRequestNewHeldActor = bRequestNewHeldActor or false
 bSpawnIfDoesNotExist = bSpawnIfDoesNotExist or false
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, TargetOptions at +0x8, TrajectoryOptions at +0x68, bRequestNewHeldActor at +0xB0, bSpawnIfDoesNotExist at +0xB1, ID at +0xB4, FilterType at +0xBC
 writeQword(_params + 0x0, AIActor_Actor)
 writeQword(_params + 0x8, TargetOptions)
 writeQword(_params + 0x68, TrajectoryOptions)
 writeByte(_params + 0xB0, bRequestNewHeldActor)
 writeByte(_params + 0xB1, bSpawnIfDoesNotExist)
 writeQword(_params + 0xB4, ID)
 writeByte(_params + 0xBC, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldProjectile_ThrowAtTarget", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldProjectile_ThrowAtTarget");

BL4.AIHeldProjectile_ThrowHeldActorAtLocation = function(AIActor_Actor, ThrowAtLocation, TrajectoryOptions, bRequestNewHeldActor, bSpawnIfDoesNotExist, ID, FilterType)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldProjectile_ThrowHeldActorAtLocation: Failed To Allocate The Params");return;end;
 ThrowAtLocation = ThrowAtLocation or {X=0,Y=0,Z=0}
 bRequestNewHeldActor = bRequestNewHeldActor or false
 bSpawnIfDoesNotExist = bSpawnIfDoesNotExist or false
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, ThrowAtLocation at +0x8, TrajectoryOptions at +0x20, bRequestNewHeldActor at +0x68, bSpawnIfDoesNotExist at +0x69, ID at +0x6C, FilterType at +0x74
 writeQword(_params + 0x0, AIActor_Actor)
 writeDouble(_params + 0x8, (ThrowAtLocation and ThrowAtLocation.X) or 0)
 writeDouble(_params + 0x10, (ThrowAtLocation and ThrowAtLocation.Y) or 0)
 writeDouble(_params + 0x18, (ThrowAtLocation and ThrowAtLocation.Z) or 0)
 writeQword(_params + 0x20, TrajectoryOptions)
 writeByte(_params + 0x68, bRequestNewHeldActor)
 writeByte(_params + 0x69, bSpawnIfDoesNotExist)
 writeQword(_params + 0x6C, ID)
 writeByte(_params + 0x74, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldProjectile_ThrowHeldActorAtLocation", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldProjectile_ThrowHeldActorAtLocation");

BL4.AIHeldShield_Destroy = function(AIActor_Actor, ID, FilterType)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldShield_Destroy: Failed To Allocate The Params");return;end;
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, ID at +0x8, FilterType at +0x10
 writeQword(_params + 0x0, AIActor_Actor)
 writeQword(_params + 0x8, ID)
 writeByte(_params + 0x10, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldShield_Destroy", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldShield_Destroy");

BL4.AIHeldShield_Drop = function(AIActor_Actor, bRequestNewHeldActor, ID, FilterType, InstigatorOverride_Actor)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldShield_Drop: Failed To Allocate The Params");return;end;
 bRequestNewHeldActor = bRequestNewHeldActor or false
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, bRequestNewHeldActor at +0x8, ID at +0xC, FilterType at +0x14, InstigatorOverride at +0x18
 writeQword(_params + 0x0, AIActor_Actor)
 writeByte(_params + 0x8, bRequestNewHeldActor)
 writeQword(_params + 0xC, ID)
 writeByte(_params + 0x14, FilterType)
 writeQword(_params + 0x18, InstigatorOverride_Actor)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldShield_Drop", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldShield_Drop");

BL4.AIHeldShield_GetActors = function(AIActor_Actor, ID, FilterType)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldShield_GetActors: Failed To Allocate The Params");return;end;
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, ID at +0x8, FilterType at +0x10
 writeQword(_params + 0x0, AIActor_Actor)
 writeQword(_params + 0x8, ID)
 writeByte(_params + 0x10, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldShield_GetActors", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AIHeldShield_GetActors");

BL4.AIHeldShield_SetChildActorDef = function(AIActor_Actor, NewActorDef, ID, FilterType)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldShield_SetChildActorDef: Failed To Allocate The Params");return;end;
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, NewActorDef at +0x8, ID at +0x20, FilterType at +0x28
 writeQword(_params + 0x0, AIActor_Actor)
 writeQword(_params + 0x8, NewActorDef)
 writeQword(_params + 0x20, ID)
 writeByte(_params + 0x28, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldShield_SetChildActorDef", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldShield_SetChildActorDef");

BL4.AIHeldShield_Spawn = function(AIActor_Actor, ID, FilterType)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldShield_Spawn: Failed To Allocate The Params");return;end;
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, ID at +0x8, FilterType at +0x10
 writeQword(_params + 0x0, AIActor_Actor)
 writeQword(_params + 0x8, ID)
 writeByte(_params + 0x10, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldShield_Spawn", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldShield_Spawn");

BL4.AIHeldShield_ThrowAtActor = function(AIActor_Actor, target_Actor, TargetOptions, TrajectoryOptions, bRequestNewHeldActor, bSpawnIfDoesNotExist, ID, FilterType)
 local _paramsSize = 0xC8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldShield_ThrowAtActor: Failed To Allocate The Params");return;end;
 bRequestNewHeldActor = bRequestNewHeldActor or false
 bSpawnIfDoesNotExist = bSpawnIfDoesNotExist or false
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, target at +0x8, TargetOptions at +0x10, TrajectoryOptions at +0x70, bRequestNewHeldActor at +0xB8, bSpawnIfDoesNotExist at +0xB9, ID at +0xBC, FilterType at +0xC4
 writeQword(_params + 0x0, AIActor_Actor)
 writeQword(_params + 0x8, target_Actor)
 writeQword(_params + 0x10, TargetOptions)
 writeQword(_params + 0x70, TrajectoryOptions)
 writeByte(_params + 0xB8, bRequestNewHeldActor)
 writeByte(_params + 0xB9, bSpawnIfDoesNotExist)
 writeQword(_params + 0xBC, ID)
 writeByte(_params + 0xC4, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldShield_ThrowAtActor", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldShield_ThrowAtActor");

BL4.AIHeldShield_ThrowAtCrosshair = function(AIActor_Actor, TrajectoryOptions, TraceDistance, bRequestNewHeldActor, bSpawnIfDoesNotExist, ID, FilterType)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldShield_ThrowAtCrosshair: Failed To Allocate The Params");return;end;
 TraceDistance = TraceDistance or 0
 bRequestNewHeldActor = bRequestNewHeldActor or false
 bSpawnIfDoesNotExist = bSpawnIfDoesNotExist or false
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, TrajectoryOptions at +0x8, TraceDistance at +0x50, bRequestNewHeldActor at +0x54, bSpawnIfDoesNotExist at +0x55, ID at +0x58, FilterType at +0x60
 writeQword(_params + 0x0, AIActor_Actor)
 writeQword(_params + 0x8, TrajectoryOptions)
 writeFloat(_params + 0x50, TraceDistance)
 writeByte(_params + 0x54, bRequestNewHeldActor)
 writeByte(_params + 0x55, bSpawnIfDoesNotExist)
 writeQword(_params + 0x58, ID)
 writeByte(_params + 0x60, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldShield_ThrowAtCrosshair", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldShield_ThrowAtCrosshair");

BL4.AIHeldShield_ThrowAtTarget = function(AIActor_Actor, TargetOptions, TrajectoryOptions, bRequestNewHeldActor, bSpawnIfDoesNotExist, ID, FilterType)
 local _paramsSize = 0xC0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldShield_ThrowAtTarget: Failed To Allocate The Params");return;end;
 bRequestNewHeldActor = bRequestNewHeldActor or false
 bSpawnIfDoesNotExist = bSpawnIfDoesNotExist or false
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, TargetOptions at +0x8, TrajectoryOptions at +0x68, bRequestNewHeldActor at +0xB0, bSpawnIfDoesNotExist at +0xB1, ID at +0xB4, FilterType at +0xBC
 writeQword(_params + 0x0, AIActor_Actor)
 writeQword(_params + 0x8, TargetOptions)
 writeQword(_params + 0x68, TrajectoryOptions)
 writeByte(_params + 0xB0, bRequestNewHeldActor)
 writeByte(_params + 0xB1, bSpawnIfDoesNotExist)
 writeQword(_params + 0xB4, ID)
 writeByte(_params + 0xBC, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldShield_ThrowAtTarget", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldShield_ThrowAtTarget");

BL4.AIHeldShield_ThrowHeldActorAtLocation = function(AIActor_Actor, ThrowAtLocation, TrajectoryOptions, bRequestNewHeldActor, bSpawnIfDoesNotExist, ID, FilterType)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIHeldShield_ThrowHeldActorAtLocation: Failed To Allocate The Params");return;end;
 ThrowAtLocation = ThrowAtLocation or {X=0,Y=0,Z=0}
 bRequestNewHeldActor = bRequestNewHeldActor or false
 bSpawnIfDoesNotExist = bSpawnIfDoesNotExist or false
 FilterType = FilterType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AIActor at +0x0, ThrowAtLocation at +0x8, TrajectoryOptions at +0x20, bRequestNewHeldActor at +0x68, bSpawnIfDoesNotExist at +0x69, ID at +0x6C, FilterType at +0x74
 writeQword(_params + 0x0, AIActor_Actor)
 writeDouble(_params + 0x8, (ThrowAtLocation and ThrowAtLocation.X) or 0)
 writeDouble(_params + 0x10, (ThrowAtLocation and ThrowAtLocation.Y) or 0)
 writeDouble(_params + 0x18, (ThrowAtLocation and ThrowAtLocation.Z) or 0)
 writeQword(_params + 0x20, TrajectoryOptions)
 writeByte(_params + 0x68, bRequestNewHeldActor)
 writeByte(_params + 0x69, bSpawnIfDoesNotExist)
 writeQword(_params + 0x6C, ID)
 writeByte(_params + 0x74, FilterType)
 UE.CallProcessEventEx(AIActor_Actor, "AIHeldShield_ThrowHeldActorAtLocation", _params);
 deAlloc(_params);
end
FNR("BL4.AIHeldShield_ThrowHeldActorAtLocation");

BL4.AIProjectile_CallOnDrop = function(HeldProjectile_projectile)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIProjectile_CallOnDrop: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: HeldProjectile at +0x0
 writeQword(_params + 0x0, HeldProjectile_projectile)
 UE.CallProcessEventEx(HeldProjectile_projectile, "AIProjectile_CallOnDrop", _params);
 deAlloc(_params);
end
FNR("BL4.AIProjectile_CallOnDrop");

BL4.AIProjectile_CallOnThrown = function(HeldProjectile_projectile)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AIProjectile_CallOnThrown: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: HeldProjectile at +0x0
 writeQword(_params + 0x0, HeldProjectile_projectile)
 UE.CallProcessEventEx(HeldProjectile_projectile, "AIProjectile_CallOnThrown", _params);
 deAlloc(_params);
end
FNR("BL4.AIProjectile_CallOnThrown");

