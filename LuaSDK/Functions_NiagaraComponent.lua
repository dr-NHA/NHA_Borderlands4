BL4.AdvanceSimulation = function(OwnerAddress, TickCount, TickDeltaSeconds)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AdvanceSimulation: Failed To Allocate The Params");return;end;
 TickCount = TickCount or 0
 TickDeltaSeconds = TickDeltaSeconds or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: TickCount at +0x0, TickDeltaSeconds at +0x4
 writeInteger(_params + 0x0, TickCount)
 writeFloat(_params + 0x4, TickDeltaSeconds)
 UE.CallProcessEventEx(OwnerAddress, "AdvanceSimulation", _params);
 deAlloc(_params);
end
FNR("BL4.AdvanceSimulation");

BL4.AdvanceSimulationByTime = function(OwnerAddress, SimulateTime, TickDeltaSeconds)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AdvanceSimulationByTime: Failed To Allocate The Params");return;end;
 SimulateTime = SimulateTime or 0
 TickDeltaSeconds = TickDeltaSeconds or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: SimulateTime at +0x0, TickDeltaSeconds at +0x4
 writeFloat(_params + 0x0, SimulateTime)
 writeFloat(_params + 0x4, TickDeltaSeconds)
 UE.CallProcessEventEx(OwnerAddress, "AdvanceSimulationByTime", _params);
 deAlloc(_params);
end
FNR("BL4.AdvanceSimulationByTime");

BL4.ClearEmitterFixedBounds = function(OwnerAddress, EmitterName)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClearEmitterFixedBounds: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: EmitterName at +0x0
 writeQword(_params + 0x0, EmitterName)
 UE.CallProcessEventEx(OwnerAddress, "ClearEmitterFixedBounds", _params);
 deAlloc(_params);
end
FNR("BL4.ClearEmitterFixedBounds");

BL4.ClearSimCache = function(OwnerAddress, bResetSystem)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClearSimCache: Failed To Allocate The Params");return;end;
 bResetSystem = bResetSystem or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bResetSystem at +0x0
 writeByte(_params + 0x0, bResetSystem)
 UE.CallProcessEventEx(OwnerAddress, "ClearSimCache", _params);
 deAlloc(_params);
end
FNR("BL4.ClearSimCache");

BL4.GetAgeUpdateMode = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAgeUpdateMode: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAgeUpdateMode", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAgeUpdateMode");

BL4.GetAllowScalability = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAllowScalability: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAllowScalability", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAllowScalability");

BL4.GetAsset = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAsset: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAsset", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAsset");

BL4.GetCustomTimeDilation = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomTimeDilation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCustomTimeDilation", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomTimeDilation");

BL4.GetDataInterface = function(OwnerAddress, Name)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDataInterface: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Name at +0x0
 writeQword(_params + 0x0, Name)
 UE.CallProcessEventEx(OwnerAddress, "GetDataInterface", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDataInterface");

BL4.GetDesiredAge = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDesiredAge: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetDesiredAge", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDesiredAge");

BL4.GetEmitterFixedBounds = function(OwnerAddress, EmitterName)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetEmitterFixedBounds: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: EmitterName at +0x0
 writeQword(_params + 0x0, EmitterName)
 UE.CallProcessEventEx(OwnerAddress, "GetEmitterFixedBounds", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetEmitterFixedBounds");

BL4.GetForceLocalPlayerEffect = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetForceLocalPlayerEffect: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetForceLocalPlayerEffect", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetForceLocalPlayerEffect");

BL4.GetForceSolo = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetForceSolo: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetForceSolo", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetForceSolo");

BL4.GetLockDesiredAgeDeltaTimeToSeekDelta = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLockDesiredAgeDeltaTimeToSeekDelta: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetLockDesiredAgeDeltaTimeToSeekDelta", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLockDesiredAgeDeltaTimeToSeekDelta");

BL4.GetMaxSimTime = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMaxSimTime: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetMaxSimTime", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMaxSimTime");

BL4.GetOcclusionQueryMode = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetOcclusionQueryMode: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetOcclusionQueryMode", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetOcclusionQueryMode");

BL4.GetPreviewLODDistance = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPreviewLODDistance: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetPreviewLODDistance", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPreviewLODDistance");

BL4.GetPreviewLODDistanceEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPreviewLODDistanceEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetPreviewLODDistanceEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPreviewLODDistanceEnabled");

BL4.GetRandomSeedOffset = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRandomSeedOffset: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetRandomSeedOffset", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRandomSeedOffset");

BL4.GetSeekDelta = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSeekDelta: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetSeekDelta", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSeekDelta");

BL4.GetSimCache = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSimCache: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetSimCache", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSimCache");

BL4.GetSystemFixedBounds = function(OwnerAddress)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSystemFixedBounds: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetSystemFixedBounds", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSystemFixedBounds");

BL4.GetTickBehavior = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTickBehavior: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetTickBehavior", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTickBehavior");

BL4.IsPaused = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsPaused: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsPaused", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsPaused");

BL4.SeekToDesiredAge = function(OwnerAddress, InDesiredAge)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SeekToDesiredAge: Failed To Allocate The Params");return;end;
 InDesiredAge = InDesiredAge or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InDesiredAge at +0x0
 writeFloat(_params + 0x0, InDesiredAge)
 UE.CallProcessEventEx(OwnerAddress, "SeekToDesiredAge", _params);
 deAlloc(_params);
end
FNR("BL4.SeekToDesiredAge");

BL4.SetAgeUpdateMode = function(OwnerAddress, InAgeUpdateMode)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAgeUpdateMode: Failed To Allocate The Params");return;end;
 InAgeUpdateMode = InAgeUpdateMode or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InAgeUpdateMode at +0x0
 writeByte(_params + 0x0, InAgeUpdateMode)
 UE.CallProcessEventEx(OwnerAddress, "SetAgeUpdateMode", _params);
 deAlloc(_params);
end
FNR("BL4.SetAgeUpdateMode");

BL4.SetAllowScalability = function(OwnerAddress, bAllow)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAllowScalability: Failed To Allocate The Params");return;end;
 bAllow = bAllow or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bAllow at +0x0
 writeByte(_params + 0x0, bAllow)
 UE.CallProcessEventEx(OwnerAddress, "SetAllowScalability", _params);
 deAlloc(_params);
end
FNR("BL4.SetAllowScalability");

BL4.SetAsset = function(InAsset_NiagaraSystem, bResetExistingOverrideParameters)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAsset: Failed To Allocate The Params");return;end;
 bResetExistingOverrideParameters = bResetExistingOverrideParameters or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InAsset at +0x0, bResetExistingOverrideParameters at +0x8
 writeQword(_params + 0x0, InAsset_NiagaraSystem)
 writeByte(_params + 0x8, bResetExistingOverrideParameters)
 UE.CallProcessEventEx(InAsset_NiagaraSystem, "SetAsset", _params);
 deAlloc(_params);
end
FNR("BL4.SetAsset");

BL4.SetAutoDestroy = function(OwnerAddress, bInAutoDestroy)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAutoDestroy: Failed To Allocate The Params");return;end;
 bInAutoDestroy = bInAutoDestroy or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInAutoDestroy at +0x0
 writeByte(_params + 0x0, bInAutoDestroy)
 UE.CallProcessEventEx(OwnerAddress, "SetAutoDestroy", _params);
 deAlloc(_params);
end
FNR("BL4.SetAutoDestroy");

BL4.SetCanRenderWhileSeeking = function(OwnerAddress, bInCanRenderWhileSeeking)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCanRenderWhileSeeking: Failed To Allocate The Params");return;end;
 bInCanRenderWhileSeeking = bInCanRenderWhileSeeking or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInCanRenderWhileSeeking at +0x0
 writeByte(_params + 0x0, bInCanRenderWhileSeeking)
 UE.CallProcessEventEx(OwnerAddress, "SetCanRenderWhileSeeking", _params);
 deAlloc(_params);
end
FNR("BL4.SetCanRenderWhileSeeking");

BL4.SetCustomTimeDilation = function(OwnerAddress, Dilation)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomTimeDilation: Failed To Allocate The Params");return;end;
 Dilation = Dilation or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Dilation at +0x0
 writeFloat(_params + 0x0, Dilation)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomTimeDilation", _params);
 deAlloc(_params);
end
FNR("BL4.SetCustomTimeDilation");

BL4.SetDesiredAge = function(OwnerAddress, InDesiredAge)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDesiredAge: Failed To Allocate The Params");return;end;
 InDesiredAge = InDesiredAge or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InDesiredAge at +0x0
 writeFloat(_params + 0x0, InDesiredAge)
 UE.CallProcessEventEx(OwnerAddress, "SetDesiredAge", _params);
 deAlloc(_params);
end
FNR("BL4.SetDesiredAge");

BL4.SetEmitterFixedBounds = function(OwnerAddress, EmitterName, LocalBounds)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetEmitterFixedBounds: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: EmitterName at +0x0, LocalBounds at +0x8
 writeQword(_params + 0x0, EmitterName)
 writeQword(_params + 0x8, LocalBounds)
 UE.CallProcessEventEx(OwnerAddress, "SetEmitterFixedBounds", _params);
 deAlloc(_params);
end
FNR("BL4.SetEmitterFixedBounds");

BL4.SetForceLocalPlayerEffect = function(OwnerAddress, bIsPlayerEffect)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetForceLocalPlayerEffect: Failed To Allocate The Params");return;end;
 bIsPlayerEffect = bIsPlayerEffect or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bIsPlayerEffect at +0x0
 writeByte(_params + 0x0, bIsPlayerEffect)
 UE.CallProcessEventEx(OwnerAddress, "SetForceLocalPlayerEffect", _params);
 deAlloc(_params);
end
FNR("BL4.SetForceLocalPlayerEffect");

BL4.SetForceSolo = function(OwnerAddress, bInForceSolo)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetForceSolo: Failed To Allocate The Params");return;end;
 bInForceSolo = bInForceSolo or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInForceSolo at +0x0
 writeByte(_params + 0x0, bInForceSolo)
 UE.CallProcessEventEx(OwnerAddress, "SetForceSolo", _params);
 deAlloc(_params);
end
FNR("BL4.SetForceSolo");

BL4.SetGpuComputeDebug = function(OwnerAddress, bEnableDebug)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetGpuComputeDebug: Failed To Allocate The Params");return;end;
 bEnableDebug = bEnableDebug or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnableDebug at +0x0
 writeByte(_params + 0x0, bEnableDebug)
 UE.CallProcessEventEx(OwnerAddress, "SetGpuComputeDebug", _params);
 deAlloc(_params);
end
FNR("BL4.SetGpuComputeDebug");

BL4.SetLockDesiredAgeDeltaTimeToSeekDelta = function(OwnerAddress, Block)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLockDesiredAgeDeltaTimeToSeekDelta: Failed To Allocate The Params");return;end;
 Block = Block or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Block at +0x0
 writeByte(_params + 0x0, Block)
 UE.CallProcessEventEx(OwnerAddress, "SetLockDesiredAgeDeltaTimeToSeekDelta", _params);
 deAlloc(_params);
end
FNR("BL4.SetLockDesiredAgeDeltaTimeToSeekDelta");

BL4.SetMaxSimTime = function(OwnerAddress, InMaxTime)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMaxSimTime: Failed To Allocate The Params");return;end;
 InMaxTime = InMaxTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InMaxTime at +0x0
 writeFloat(_params + 0x0, InMaxTime)
 UE.CallProcessEventEx(OwnerAddress, "SetMaxSimTime", _params);
 deAlloc(_params);
end
FNR("BL4.SetMaxSimTime");

BL4.SetNiagaraVariableActor = function(OwnerAddress, InVariableName, Actor)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraVariableActor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVariableName at +0x0, Actor at +0x10
 writeQword(_params + 0x0, InVariableName)
 writeQword(_params + 0x10, Actor)
 UE.CallProcessEventEx(OwnerAddress, "SetNiagaraVariableActor", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraVariableActor");

BL4.SetNiagaraVariableBool = function(OwnerAddress, InVariableName, InValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraVariableBool: Failed To Allocate The Params");return;end;
 InValue = InValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVariableName at +0x0, InValue at +0x10
 writeQword(_params + 0x0, InVariableName)
 writeByte(_params + 0x10, InValue)
 UE.CallProcessEventEx(OwnerAddress, "SetNiagaraVariableBool", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraVariableBool");

BL4.SetNiagaraVariableFloat = function(OwnerAddress, InVariableName, InValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraVariableFloat: Failed To Allocate The Params");return;end;
 InValue = InValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVariableName at +0x0, InValue at +0x10
 writeQword(_params + 0x0, InVariableName)
 writeFloat(_params + 0x10, InValue)
 UE.CallProcessEventEx(OwnerAddress, "SetNiagaraVariableFloat", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraVariableFloat");

BL4.SetNiagaraVariableInt = function(OwnerAddress, InVariableName, InValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraVariableInt: Failed To Allocate The Params");return;end;
 InValue = InValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVariableName at +0x0, InValue at +0x10
 writeQword(_params + 0x0, InVariableName)
 writeInteger(_params + 0x10, InValue)
 UE.CallProcessEventEx(OwnerAddress, "SetNiagaraVariableInt", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraVariableInt");

BL4.SetNiagaraVariableLinearColor = function(OwnerAddress, InVariableName, InValue)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraVariableLinearColor: Failed To Allocate The Params");return;end;
 InValue = InValue or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVariableName at +0x0, InValue at +0x10
 writeQword(_params + 0x0, InVariableName)
 writeFloat(_params + 0x10, (InValue and InValue.R) or 0)
 writeFloat(_params + 0x14, (InValue and InValue.G) or 0)
 writeFloat(_params + 0x18, (InValue and InValue.B) or 0)
 writeFloat(_params + 0x1C, (InValue and InValue.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetNiagaraVariableLinearColor", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraVariableLinearColor");

BL4.SetNiagaraVariableMatrix = function(OwnerAddress, InVariableName, InValue)
 local _paramsSize = 0x90
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraVariableMatrix: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVariableName at +0x0, InValue at +0x10
 writeQword(_params + 0x0, InVariableName)
 writeQword(_params + 0x10, InValue)
 UE.CallProcessEventEx(OwnerAddress, "SetNiagaraVariableMatrix", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraVariableMatrix");

BL4.SetNiagaraVariableObject = function(OwnerAddress, InVariableName, Object)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraVariableObject: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVariableName at +0x0, Object at +0x10
 writeQword(_params + 0x0, InVariableName)
 writeQword(_params + 0x10, Object)
 UE.CallProcessEventEx(OwnerAddress, "SetNiagaraVariableObject", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraVariableObject");

BL4.SetNiagaraVariablePosition = function(OwnerAddress, InVariableName, InValue)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraVariablePosition: Failed To Allocate The Params");return;end;
 InValue = InValue or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVariableName at +0x0, InValue at +0x10
 writeQword(_params + 0x0, InVariableName)
 writeDouble(_params + 0x10, (InValue and InValue.X) or 0)
 writeDouble(_params + 0x18, (InValue and InValue.Y) or 0)
 writeDouble(_params + 0x20, (InValue and InValue.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetNiagaraVariablePosition", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraVariablePosition");

BL4.SetNiagaraVariableQuat = function(OwnerAddress, InVariableName, InValue)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraVariableQuat: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVariableName at +0x0, InValue at +0x10
 writeQword(_params + 0x0, InVariableName)
 writeQword(_params + 0x10, InValue)
 UE.CallProcessEventEx(OwnerAddress, "SetNiagaraVariableQuat", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraVariableQuat");

BL4.SetNiagaraVariableVec2 = function(OwnerAddress, InVariableName, InValue)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraVariableVec2: Failed To Allocate The Params");return;end;
 InValue = InValue or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVariableName at +0x0, InValue at +0x10
 writeQword(_params + 0x0, InVariableName)
 writeDouble(_params + 0x10, (InValue and InValue.X) or 0)
 writeDouble(_params + 0x18, (InValue and InValue.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetNiagaraVariableVec2", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraVariableVec2");

BL4.SetNiagaraVariableVec3 = function(OwnerAddress, InVariableName, InValue)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraVariableVec3: Failed To Allocate The Params");return;end;
 InValue = InValue or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVariableName at +0x0, InValue at +0x10
 writeQword(_params + 0x0, InVariableName)
 writeDouble(_params + 0x10, (InValue and InValue.X) or 0)
 writeDouble(_params + 0x18, (InValue and InValue.Y) or 0)
 writeDouble(_params + 0x20, (InValue and InValue.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetNiagaraVariableVec3", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraVariableVec3");

BL4.SetNiagaraVariableVec4 = function(OwnerAddress, InVariableName, InValue)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNiagaraVariableVec4: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVariableName at +0x0, InValue at +0x10
 writeQword(_params + 0x0, InVariableName)
 writeQword(_params + 0x10, InValue)
 UE.CallProcessEventEx(OwnerAddress, "SetNiagaraVariableVec4", _params);
 deAlloc(_params);
end
FNR("BL4.SetNiagaraVariableVec4");

BL4.SetOcclusionQueryMode = function(OwnerAddress, Mode)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetOcclusionQueryMode: Failed To Allocate The Params");return;end;
 Mode = Mode or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Mode at +0x0
 writeByte(_params + 0x0, Mode)
 UE.CallProcessEventEx(OwnerAddress, "SetOcclusionQueryMode", _params);
 deAlloc(_params);
end
FNR("BL4.SetOcclusionQueryMode");

BL4.SetPaused = function(OwnerAddress, bInPaused)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPaused: Failed To Allocate The Params");return;end;
 bInPaused = bInPaused or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInPaused at +0x0
 writeByte(_params + 0x0, bInPaused)
 UE.CallProcessEventEx(OwnerAddress, "SetPaused", _params);
 deAlloc(_params);
end
FNR("BL4.SetPaused");

BL4.SetPreviewLODDistance = function(OwnerAddress, bEnablePreviewLODDistance, PreviewLODDistance, PreviewMaxDistance)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPreviewLODDistance: Failed To Allocate The Params");return;end;
 bEnablePreviewLODDistance = bEnablePreviewLODDistance or false
 PreviewLODDistance = PreviewLODDistance or 0
 PreviewMaxDistance = PreviewMaxDistance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bEnablePreviewLODDistance at +0x0, PreviewLODDistance at +0x4, PreviewMaxDistance at +0x8
 writeByte(_params + 0x0, bEnablePreviewLODDistance)
 writeFloat(_params + 0x4, PreviewLODDistance)
 writeFloat(_params + 0x8, PreviewMaxDistance)
 UE.CallProcessEventEx(OwnerAddress, "SetPreviewLODDistance", _params);
 deAlloc(_params);
end
FNR("BL4.SetPreviewLODDistance");

BL4.SetRandomSeedOffset = function(OwnerAddress, NewRandomSeedOffset)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRandomSeedOffset: Failed To Allocate The Params");return;end;
 NewRandomSeedOffset = NewRandomSeedOffset or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewRandomSeedOffset at +0x0
 writeInteger(_params + 0x0, NewRandomSeedOffset)
 UE.CallProcessEventEx(OwnerAddress, "SetRandomSeedOffset", _params);
 deAlloc(_params);
end
FNR("BL4.SetRandomSeedOffset");

BL4.SetRenderingEnabled = function(OwnerAddress, bInRenderingEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRenderingEnabled: Failed To Allocate The Params");return;end;
 bInRenderingEnabled = bInRenderingEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInRenderingEnabled at +0x0
 writeByte(_params + 0x0, bInRenderingEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetRenderingEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetRenderingEnabled");

BL4.SetSeekDelta = function(OwnerAddress, InSeekDelta)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSeekDelta: Failed To Allocate The Params");return;end;
 InSeekDelta = InSeekDelta or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InSeekDelta at +0x0
 writeFloat(_params + 0x0, InSeekDelta)
 UE.CallProcessEventEx(OwnerAddress, "SetSeekDelta", _params);
 deAlloc(_params);
end
FNR("BL4.SetSeekDelta");

BL4.SetSimCache = function(SimCache_NiagaraSimCache, bResetSystem)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSimCache: Failed To Allocate The Params");return;end;
 bResetSystem = bResetSystem or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SimCache at +0x0, bResetSystem at +0x8
 writeQword(_params + 0x0, SimCache_NiagaraSimCache)
 writeByte(_params + 0x8, bResetSystem)
 UE.CallProcessEventEx(SimCache_NiagaraSimCache, "SetSimCache", _params);
 deAlloc(_params);
end
FNR("BL4.SetSimCache");

BL4.SetSystemFixedBounds = function(OwnerAddress, LocalBounds)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSystemFixedBounds: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: LocalBounds at +0x0
 writeQword(_params + 0x0, LocalBounds)
 UE.CallProcessEventEx(OwnerAddress, "SetSystemFixedBounds", _params);
 deAlloc(_params);
end
FNR("BL4.SetSystemFixedBounds");

BL4.SetTickBehavior = function(OwnerAddress, NewTickBehavior)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTickBehavior: Failed To Allocate The Params");return;end;
 NewTickBehavior = NewTickBehavior or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewTickBehavior at +0x0
 writeByte(_params + 0x0, NewTickBehavior)
 UE.CallProcessEventEx(OwnerAddress, "SetTickBehavior", _params);
 deAlloc(_params);
end
FNR("BL4.SetTickBehavior");

BL4.SetVariableActor = function(OwnerAddress, InVariableName, Actor)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVariableActor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVariableName at +0x0, Actor at +0x8
 writeQword(_params + 0x0, InVariableName)
 writeQword(_params + 0x8, Actor)
 UE.CallProcessEventEx(OwnerAddress, "SetVariableActor", _params);
 deAlloc(_params);
end
FNR("BL4.SetVariableActor");

BL4.SetVariableBool = function(OwnerAddress, InVariableName, InValue)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVariableBool: Failed To Allocate The Params");return;end;
 InValue = InValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVariableName at +0x0, InValue at +0x8
 writeQword(_params + 0x0, InVariableName)
 writeByte(_params + 0x8, InValue)
 UE.CallProcessEventEx(OwnerAddress, "SetVariableBool", _params);
 deAlloc(_params);
end
FNR("BL4.SetVariableBool");

BL4.SetVariableFloat = function(OwnerAddress, InVariableName, InValue)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVariableFloat: Failed To Allocate The Params");return;end;
 InValue = InValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVariableName at +0x0, InValue at +0x8
 writeQword(_params + 0x0, InVariableName)
 writeFloat(_params + 0x8, InValue)
 UE.CallProcessEventEx(OwnerAddress, "SetVariableFloat", _params);
 deAlloc(_params);
end
FNR("BL4.SetVariableFloat");

BL4.SetVariableInt = function(OwnerAddress, InVariableName, InValue)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVariableInt: Failed To Allocate The Params");return;end;
 InValue = InValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVariableName at +0x0, InValue at +0x8
 writeQword(_params + 0x0, InVariableName)
 writeInteger(_params + 0x8, InValue)
 UE.CallProcessEventEx(OwnerAddress, "SetVariableInt", _params);
 deAlloc(_params);
end
FNR("BL4.SetVariableInt");

BL4.SetVariableLinearColor = function(OwnerAddress, InVariableName, InValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVariableLinearColor: Failed To Allocate The Params");return;end;
 InValue = InValue or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVariableName at +0x0, InValue at +0x8
 writeQword(_params + 0x0, InVariableName)
 writeFloat(_params + 0x8, (InValue and InValue.R) or 0)
 writeFloat(_params + 0xC, (InValue and InValue.G) or 0)
 writeFloat(_params + 0x10, (InValue and InValue.B) or 0)
 writeFloat(_params + 0x14, (InValue and InValue.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetVariableLinearColor", _params);
 deAlloc(_params);
end
FNR("BL4.SetVariableLinearColor");

BL4.SetVariableMaterial = function(OwnerAddress, InVariableName, Object_MaterialInterface)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVariableMaterial: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVariableName at +0x0, Object at +0x8
 writeQword(_params + 0x0, InVariableName)
 writeQword(_params + 0x8, Object_MaterialInterface)
 UE.CallProcessEventEx(OwnerAddress, "SetVariableMaterial", _params);
 deAlloc(_params);
end
FNR("BL4.SetVariableMaterial");

BL4.SetVariableMatrix = function(OwnerAddress, InVariableName, InValue)
 local _paramsSize = 0x90
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVariableMatrix: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVariableName at +0x0, InValue at +0x10
 writeQword(_params + 0x0, InVariableName)
 writeQword(_params + 0x10, InValue)
 UE.CallProcessEventEx(OwnerAddress, "SetVariableMatrix", _params);
 deAlloc(_params);
end
FNR("BL4.SetVariableMatrix");

BL4.SetVariableObject = function(OwnerAddress, InVariableName, Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVariableObject: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVariableName at +0x0, Object at +0x8
 writeQword(_params + 0x0, InVariableName)
 writeQword(_params + 0x8, Object)
 UE.CallProcessEventEx(OwnerAddress, "SetVariableObject", _params);
 deAlloc(_params);
end
FNR("BL4.SetVariableObject");

BL4.SetVariablePosition = function(OwnerAddress, InVariableName, InValue)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVariablePosition: Failed To Allocate The Params");return;end;
 InValue = InValue or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVariableName at +0x0, InValue at +0x8
 writeQword(_params + 0x0, InVariableName)
 writeDouble(_params + 0x8, (InValue and InValue.X) or 0)
 writeDouble(_params + 0x10, (InValue and InValue.Y) or 0)
 writeDouble(_params + 0x18, (InValue and InValue.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetVariablePosition", _params);
 deAlloc(_params);
end
FNR("BL4.SetVariablePosition");

BL4.SetVariableQuat = function(OwnerAddress, InVariableName, InValue)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVariableQuat: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVariableName at +0x0, InValue at +0x10
 writeQword(_params + 0x0, InVariableName)
 writeQword(_params + 0x10, InValue)
 UE.CallProcessEventEx(OwnerAddress, "SetVariableQuat", _params);
 deAlloc(_params);
end
FNR("BL4.SetVariableQuat");

BL4.SetVariableStaticMesh = function(OwnerAddress, InVariableName, InValue_StaticMesh)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVariableStaticMesh: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVariableName at +0x0, InValue at +0x8
 writeQword(_params + 0x0, InVariableName)
 writeQword(_params + 0x8, InValue_StaticMesh)
 UE.CallProcessEventEx(OwnerAddress, "SetVariableStaticMesh", _params);
 deAlloc(_params);
end
FNR("BL4.SetVariableStaticMesh");

BL4.SetVariableTexture = function(OwnerAddress, InVariableName, Texture)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVariableTexture: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVariableName at +0x0, Texture at +0x8
 writeQword(_params + 0x0, InVariableName)
 writeQword(_params + 0x8, Texture)
 UE.CallProcessEventEx(OwnerAddress, "SetVariableTexture", _params);
 deAlloc(_params);
end
FNR("BL4.SetVariableTexture");

BL4.SetVariableTextureRenderTarget = function(OwnerAddress, InVariableName, TextureRenderTarget)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVariableTextureRenderTarget: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVariableName at +0x0, TextureRenderTarget at +0x8
 writeQword(_params + 0x0, InVariableName)
 writeQword(_params + 0x8, TextureRenderTarget)
 UE.CallProcessEventEx(OwnerAddress, "SetVariableTextureRenderTarget", _params);
 deAlloc(_params);
end
FNR("BL4.SetVariableTextureRenderTarget");

BL4.SetVariableVec2 = function(OwnerAddress, InVariableName, InValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVariableVec2: Failed To Allocate The Params");return;end;
 InValue = InValue or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVariableName at +0x0, InValue at +0x8
 writeQword(_params + 0x0, InVariableName)
 writeDouble(_params + 0x8, (InValue and InValue.X) or 0)
 writeDouble(_params + 0x10, (InValue and InValue.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetVariableVec2", _params);
 deAlloc(_params);
end
FNR("BL4.SetVariableVec2");

BL4.SetVariableVec3 = function(OwnerAddress, InVariableName, InValue)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVariableVec3: Failed To Allocate The Params");return;end;
 InValue = InValue or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVariableName at +0x0, InValue at +0x8
 writeQword(_params + 0x0, InVariableName)
 writeDouble(_params + 0x8, (InValue and InValue.X) or 0)
 writeDouble(_params + 0x10, (InValue and InValue.Y) or 0)
 writeDouble(_params + 0x18, (InValue and InValue.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetVariableVec3", _params);
 deAlloc(_params);
end
FNR("BL4.SetVariableVec3");

BL4.SetVariableVec4 = function(OwnerAddress, InVariableName, InValue)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVariableVec4: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVariableName at +0x0, InValue at +0x10
 writeQword(_params + 0x0, InVariableName)
 writeQword(_params + 0x10, InValue)
 UE.CallProcessEventEx(OwnerAddress, "SetVariableVec4", _params);
 deAlloc(_params);
end
FNR("BL4.SetVariableVec4");

