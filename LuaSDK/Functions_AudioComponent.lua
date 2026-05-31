BL4.AddModulationRouting = function(OwnerAddress, Modulators, Destination)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddModulationRouting: Failed To Allocate The Params");return;end;
 Destination = Destination or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Modulators at +0x0, Destination at +0x50
 writeQword(_params + 0x0, Modulators)
 writeByte(_params + 0x50, Destination)
 UE.CallProcessEventEx(OwnerAddress, "AddModulationRouting", _params);
 deAlloc(_params);
end
FNR("BL4.AddModulationRouting");

BL4.AdjustAttenuation = function(OwnerAddress, InAttenuationSettings)
 local _paramsSize = 0x3D0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AdjustAttenuation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InAttenuationSettings at +0x0
 writeQword(_params + 0x0, InAttenuationSettings)
 UE.CallProcessEventEx(OwnerAddress, "AdjustAttenuation", _params);
 deAlloc(_params);
end
FNR("BL4.AdjustAttenuation");

BL4.AdjustVolume = function(OwnerAddress, AdjustVolumeDuration, AdjustVolumeLevel, FadeCurve)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AdjustVolume: Failed To Allocate The Params");return;end;
 AdjustVolumeDuration = AdjustVolumeDuration or 0
 AdjustVolumeLevel = AdjustVolumeLevel or 0
 FadeCurve = FadeCurve or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AdjustVolumeDuration at +0x0, AdjustVolumeLevel at +0x4, FadeCurve at +0x8
 writeFloat(_params + 0x0, AdjustVolumeDuration)
 writeFloat(_params + 0x4, AdjustVolumeLevel)
 writeByte(_params + 0x8, FadeCurve)
 UE.CallProcessEventEx(OwnerAddress, "AdjustVolume", _params);
 deAlloc(_params);
end
FNR("BL4.AdjustVolume");

BL4.BP_GetAttenuationSettingsToApply = function(OwnerAddress, OutAttenuationSettings)
 local _paramsSize = 0x3D8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BP_GetAttenuationSettingsToApply: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OutAttenuationSettings at +0x0
 writeQword(_params + 0x0, OutAttenuationSettings)
 UE.CallProcessEventEx(OwnerAddress, "BP_GetAttenuationSettingsToApply", _params);
 local RET=readByte(_params + 0x3D0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BP_GetAttenuationSettingsToApply");

BL4.FadeIn = function(OwnerAddress, FadeInDuration, FadeVolumeLevel, StartTime, FadeCurve)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FadeIn: Failed To Allocate The Params");return;end;
 FadeInDuration = FadeInDuration or 0
 FadeVolumeLevel = FadeVolumeLevel or 0
 StartTime = StartTime or 0
 FadeCurve = FadeCurve or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: FadeInDuration at +0x0, FadeVolumeLevel at +0x4, StartTime at +0x8, FadeCurve at +0xC
 writeFloat(_params + 0x0, FadeInDuration)
 writeFloat(_params + 0x4, FadeVolumeLevel)
 writeFloat(_params + 0x8, StartTime)
 writeByte(_params + 0xC, FadeCurve)
 UE.CallProcessEventEx(OwnerAddress, "FadeIn", _params);
 deAlloc(_params);
end
FNR("BL4.FadeIn");

BL4.FadeOut = function(OwnerAddress, FadeOutDuration, FadeVolumeLevel, FadeCurve)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FadeOut: Failed To Allocate The Params");return;end;
 FadeOutDuration = FadeOutDuration or 0
 FadeVolumeLevel = FadeVolumeLevel or 0
 FadeCurve = FadeCurve or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: FadeOutDuration at +0x0, FadeVolumeLevel at +0x4, FadeCurve at +0x8
 writeFloat(_params + 0x0, FadeOutDuration)
 writeFloat(_params + 0x4, FadeVolumeLevel)
 writeByte(_params + 0x8, FadeCurve)
 UE.CallProcessEventEx(OwnerAddress, "FadeOut", _params);
 deAlloc(_params);
end
FNR("BL4.FadeOut");

BL4.GetCookedEnvelopeData = function(OwnerAddress, OutEnvelopeData)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCookedEnvelopeData: Failed To Allocate The Params");return;end;
 OutEnvelopeData = OutEnvelopeData or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: OutEnvelopeData at +0x0
 writeFloat(_params + 0x0, OutEnvelopeData)
 UE.CallProcessEventEx(OwnerAddress, "GetCookedEnvelopeData", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCookedEnvelopeData");

BL4.GetCookedEnvelopeDataForAllPlayingSounds = function(OwnerAddress, OutEnvelopeData)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCookedEnvelopeDataForAllPlayingSounds: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OutEnvelopeData at +0x0
 writeQword(_params + 0x0, OutEnvelopeData)
 UE.CallProcessEventEx(OwnerAddress, "GetCookedEnvelopeDataForAllPlayingSounds", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCookedEnvelopeDataForAllPlayingSounds");

BL4.GetCookedFFTData = function(OwnerAddress, FrequenciesToGet, OutSoundWaveSpectralData)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCookedFFTData: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: FrequenciesToGet at +0x0, OutSoundWaveSpectralData at +0x10
 writeQword(_params + 0x0, FrequenciesToGet)
 writeQword(_params + 0x10, OutSoundWaveSpectralData)
 UE.CallProcessEventEx(OwnerAddress, "GetCookedFFTData", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCookedFFTData");

BL4.GetCookedFFTDataForAllPlayingSounds = function(OwnerAddress, OutSoundWaveSpectralData)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCookedFFTDataForAllPlayingSounds: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OutSoundWaveSpectralData at +0x0
 writeQword(_params + 0x0, OutSoundWaveSpectralData)
 UE.CallProcessEventEx(OwnerAddress, "GetCookedFFTDataForAllPlayingSounds", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCookedFFTDataForAllPlayingSounds");

BL4.GetModulators = function(OwnerAddress, Destination)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetModulators: Failed To Allocate The Params");return;end;
 Destination = Destination or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Destination at +0x0
 writeByte(_params + 0x0, Destination)
 UE.CallProcessEventEx(OwnerAddress, "GetModulators", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetModulators");

BL4.GetPlayState = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPlayState: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetPlayState", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPlayState");

BL4.HasCookedAmplitudeEnvelopeData = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.HasCookedAmplitudeEnvelopeData: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "HasCookedAmplitudeEnvelopeData", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.HasCookedAmplitudeEnvelopeData");

BL4.HasCookedFFTData = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.HasCookedFFTData: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "HasCookedFFTData", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.HasCookedFFTData");

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

BL4.IsVirtualized = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsVirtualized: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsVirtualized", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsVirtualized");

BL4.Play = function(OwnerAddress, StartTime)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Play: Failed To Allocate The Params");return;end;
 StartTime = StartTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: StartTime at +0x0
 writeFloat(_params + 0x0, StartTime)
 UE.CallProcessEventEx(OwnerAddress, "Play", _params);
 deAlloc(_params);
end
FNR("BL4.Play");

BL4.PlayQuantized = function(WorldContextObject_Object, InClockHandle_QuartzClockHandle, InQuantizationBoundary, InDelegate, InStartTime, InFadeInDuration, InFadeVolumeLevel, InFadeCurve)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PlayQuantized: Failed To Allocate The Params");return;end;
 InStartTime = InStartTime or 0
 InFadeInDuration = InFadeInDuration or 0
 InFadeVolumeLevel = InFadeVolumeLevel or 0
 InFadeCurve = InFadeCurve or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, InClockHandle at +0x8, InQuantizationBoundary at +0x10, InDelegate at +0x30, InStartTime at +0x40, InFadeInDuration at +0x44, InFadeVolumeLevel at +0x48, InFadeCurve at +0x4C
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, InClockHandle_QuartzClockHandle)
 writeQword(_params + 0x10, InQuantizationBoundary)
 writeQword(_params + 0x30, InDelegate)
 writeFloat(_params + 0x40, InStartTime)
 writeFloat(_params + 0x44, InFadeInDuration)
 writeFloat(_params + 0x48, InFadeVolumeLevel)
 writeByte(_params + 0x4C, InFadeCurve)
 UE.CallProcessEventEx(WorldContextObject_Object, "PlayQuantized", _params);
 deAlloc(_params);
end
FNR("BL4.PlayQuantized");

BL4.RemoveModulationRouting = function(OwnerAddress, Modulators, Destination)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveModulationRouting: Failed To Allocate The Params");return;end;
 Destination = Destination or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Modulators at +0x0, Destination at +0x50
 writeQword(_params + 0x0, Modulators)
 writeByte(_params + 0x50, Destination)
 UE.CallProcessEventEx(OwnerAddress, "RemoveModulationRouting", _params);
 deAlloc(_params);
end
FNR("BL4.RemoveModulationRouting");

BL4.SetAttenuationOverrides = function(OwnerAddress, InAttenuationOverrides)
 local _paramsSize = 0x3D0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAttenuationOverrides: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InAttenuationOverrides at +0x0
 writeQword(_params + 0x0, InAttenuationOverrides)
 UE.CallProcessEventEx(OwnerAddress, "SetAttenuationOverrides", _params);
 deAlloc(_params);
end
FNR("BL4.SetAttenuationOverrides");

BL4.SetAttenuationSettings = function(InAttenuationSettings_SoundAttenuation)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAttenuationSettings: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InAttenuationSettings at +0x0
 writeQword(_params + 0x0, InAttenuationSettings_SoundAttenuation)
 UE.CallProcessEventEx(InAttenuationSettings_SoundAttenuation, "SetAttenuationSettings", _params);
 deAlloc(_params);
end
FNR("BL4.SetAttenuationSettings");

BL4.SetAudioBusSendPostEffect = function(AudioBus, AudioBusSendLevel)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAudioBusSendPostEffect: Failed To Allocate The Params");return;end;
 AudioBusSendLevel = AudioBusSendLevel or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AudioBus at +0x0, AudioBusSendLevel at +0x8
 writeQword(_params + 0x0, AudioBus)
 writeFloat(_params + 0x8, AudioBusSendLevel)
 UE.CallProcessEventEx(AudioBus, "SetAudioBusSendPostEffect", _params);
 deAlloc(_params);
end
FNR("BL4.SetAudioBusSendPostEffect");

BL4.SetAudioBusSendPreEffect = function(AudioBus, AudioBusSendLevel)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAudioBusSendPreEffect: Failed To Allocate The Params");return;end;
 AudioBusSendLevel = AudioBusSendLevel or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AudioBus at +0x0, AudioBusSendLevel at +0x8
 writeQword(_params + 0x0, AudioBus)
 writeFloat(_params + 0x8, AudioBusSendLevel)
 UE.CallProcessEventEx(AudioBus, "SetAudioBusSendPreEffect", _params);
 deAlloc(_params);
end
FNR("BL4.SetAudioBusSendPreEffect");

BL4.SetBoolParameter = function(OwnerAddress, InName, InBool)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBoolParameter: Failed To Allocate The Params");return;end;
 InBool = InBool or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InName at +0x0, InBool at +0x8
 writeQword(_params + 0x0, InName)
 writeByte(_params + 0x8, InBool)
 UE.CallProcessEventEx(OwnerAddress, "SetBoolParameter", _params);
 deAlloc(_params);
end
FNR("BL4.SetBoolParameter");

BL4.SetFloatParameter = function(OwnerAddress, InName, InFloat)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetFloatParameter: Failed To Allocate The Params");return;end;
 InFloat = InFloat or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InName at +0x0, InFloat at +0x8
 writeQword(_params + 0x0, InName)
 writeFloat(_params + 0x8, InFloat)
 UE.CallProcessEventEx(OwnerAddress, "SetFloatParameter", _params);
 deAlloc(_params);
end
FNR("BL4.SetFloatParameter");

BL4.SetHighPassFilterEnabled = function(OwnerAddress, InHighPassFilterEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetHighPassFilterEnabled: Failed To Allocate The Params");return;end;
 InHighPassFilterEnabled = InHighPassFilterEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InHighPassFilterEnabled at +0x0
 writeByte(_params + 0x0, InHighPassFilterEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetHighPassFilterEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetHighPassFilterEnabled");

BL4.SetHighPassFilterFrequency = function(OwnerAddress, InHighPassFilterFrequency)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetHighPassFilterFrequency: Failed To Allocate The Params");return;end;
 InHighPassFilterFrequency = InHighPassFilterFrequency or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InHighPassFilterFrequency at +0x0
 writeFloat(_params + 0x0, InHighPassFilterFrequency)
 UE.CallProcessEventEx(OwnerAddress, "SetHighPassFilterFrequency", _params);
 deAlloc(_params);
end
FNR("BL4.SetHighPassFilterFrequency");

BL4.SetIntParameter = function(OwnerAddress, InName, inInt)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetIntParameter: Failed To Allocate The Params");return;end;
 inInt = inInt or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InName at +0x0, inInt at +0x8
 writeQword(_params + 0x0, InName)
 writeInteger(_params + 0x8, inInt)
 UE.CallProcessEventEx(OwnerAddress, "SetIntParameter", _params);
 deAlloc(_params);
end
FNR("BL4.SetIntParameter");

BL4.SetLowPassFilterEnabled = function(OwnerAddress, InLowPassFilterEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLowPassFilterEnabled: Failed To Allocate The Params");return;end;
 InLowPassFilterEnabled = InLowPassFilterEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InLowPassFilterEnabled at +0x0
 writeByte(_params + 0x0, InLowPassFilterEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetLowPassFilterEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetLowPassFilterEnabled");

BL4.SetLowPassFilterFrequency = function(OwnerAddress, InLowPassFilterFrequency)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLowPassFilterFrequency: Failed To Allocate The Params");return;end;
 InLowPassFilterFrequency = InLowPassFilterFrequency or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InLowPassFilterFrequency at +0x0
 writeFloat(_params + 0x0, InLowPassFilterFrequency)
 UE.CallProcessEventEx(OwnerAddress, "SetLowPassFilterFrequency", _params);
 deAlloc(_params);
end
FNR("BL4.SetLowPassFilterFrequency");

BL4.SetModulationRouting = function(OwnerAddress, Modulators, Destination, RoutingMethod)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetModulationRouting: Failed To Allocate The Params");return;end;
 Destination = Destination or 0
 RoutingMethod = RoutingMethod or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Modulators at +0x0, Destination at +0x50, RoutingMethod at +0x51
 writeQword(_params + 0x0, Modulators)
 writeByte(_params + 0x50, Destination)
 writeByte(_params + 0x51, RoutingMethod)
 UE.CallProcessEventEx(OwnerAddress, "SetModulationRouting", _params);
 deAlloc(_params);
end
FNR("BL4.SetModulationRouting");

BL4.SetOutputToBusOnly = function(OwnerAddress, bInOutputToBusOnly)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetOutputToBusOnly: Failed To Allocate The Params");return;end;
 bInOutputToBusOnly = bInOutputToBusOnly or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInOutputToBusOnly at +0x0
 writeByte(_params + 0x0, bInOutputToBusOnly)
 UE.CallProcessEventEx(OwnerAddress, "SetOutputToBusOnly", _params);
 deAlloc(_params);
end
FNR("BL4.SetOutputToBusOnly");

BL4.SetOverrideAttenuation = function(OwnerAddress, bInOverrideAttenuation)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetOverrideAttenuation: Failed To Allocate The Params");return;end;
 bInOverrideAttenuation = bInOverrideAttenuation or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInOverrideAttenuation at +0x0
 writeByte(_params + 0x0, bInOverrideAttenuation)
 UE.CallProcessEventEx(OwnerAddress, "SetOverrideAttenuation", _params);
 deAlloc(_params);
end
FNR("BL4.SetOverrideAttenuation");

BL4.SetPaused = function(OwnerAddress, bPause)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPaused: Failed To Allocate The Params");return;end;
 bPause = bPause or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bPause at +0x0
 writeByte(_params + 0x0, bPause)
 UE.CallProcessEventEx(OwnerAddress, "SetPaused", _params);
 deAlloc(_params);
end
FNR("BL4.SetPaused");

BL4.SetPitchMultiplier = function(OwnerAddress, NewPitchMultiplier)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPitchMultiplier: Failed To Allocate The Params");return;end;
 NewPitchMultiplier = NewPitchMultiplier or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewPitchMultiplier at +0x0
 writeFloat(_params + 0x0, NewPitchMultiplier)
 UE.CallProcessEventEx(OwnerAddress, "SetPitchMultiplier", _params);
 deAlloc(_params);
end
FNR("BL4.SetPitchMultiplier");

BL4.SetSound = function(NewSound_SoundBase)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSound: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewSound at +0x0
 writeQword(_params + 0x0, NewSound_SoundBase)
 UE.CallProcessEventEx(NewSound_SoundBase, "SetSound", _params);
 deAlloc(_params);
end
FNR("BL4.SetSound");

BL4.SetSourceBusSendPostEffect = function(SoundSourceBus, SourceBusSendLevel)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSourceBusSendPostEffect: Failed To Allocate The Params");return;end;
 SourceBusSendLevel = SourceBusSendLevel or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SoundSourceBus at +0x0, SourceBusSendLevel at +0x8
 writeQword(_params + 0x0, SoundSourceBus)
 writeFloat(_params + 0x8, SourceBusSendLevel)
 UE.CallProcessEventEx(SoundSourceBus, "SetSourceBusSendPostEffect", _params);
 deAlloc(_params);
end
FNR("BL4.SetSourceBusSendPostEffect");

BL4.SetSourceBusSendPreEffect = function(SoundSourceBus, SourceBusSendLevel)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSourceBusSendPreEffect: Failed To Allocate The Params");return;end;
 SourceBusSendLevel = SourceBusSendLevel or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SoundSourceBus at +0x0, SourceBusSendLevel at +0x8
 writeQword(_params + 0x0, SoundSourceBus)
 writeFloat(_params + 0x8, SourceBusSendLevel)
 UE.CallProcessEventEx(SoundSourceBus, "SetSourceBusSendPreEffect", _params);
 deAlloc(_params);
end
FNR("BL4.SetSourceBusSendPreEffect");

BL4.SetSubmixSend = function(Submix_SoundSubmixBase, SendLevel)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSubmixSend: Failed To Allocate The Params");return;end;
 SendLevel = SendLevel or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Submix at +0x0, SendLevel at +0x8
 writeQword(_params + 0x0, Submix_SoundSubmixBase)
 writeFloat(_params + 0x8, SendLevel)
 UE.CallProcessEventEx(Submix_SoundSubmixBase, "SetSubmixSend", _params);
 deAlloc(_params);
end
FNR("BL4.SetSubmixSend");

BL4.SetUISound = function(OwnerAddress, bInUISound)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetUISound: Failed To Allocate The Params");return;end;
 bInUISound = bInUISound or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInUISound at +0x0
 writeByte(_params + 0x0, bInUISound)
 UE.CallProcessEventEx(OwnerAddress, "SetUISound", _params);
 deAlloc(_params);
end
FNR("BL4.SetUISound");

BL4.SetVolumeMultiplier = function(OwnerAddress, NewVolumeMultiplier)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVolumeMultiplier: Failed To Allocate The Params");return;end;
 NewVolumeMultiplier = NewVolumeMultiplier or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewVolumeMultiplier at +0x0
 writeFloat(_params + 0x0, NewVolumeMultiplier)
 UE.CallProcessEventEx(OwnerAddress, "SetVolumeMultiplier", _params);
 deAlloc(_params);
end
FNR("BL4.SetVolumeMultiplier");

BL4.SetWaveParameter = function(OwnerAddress, InName, InWave_SoundWave)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetWaveParameter: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InName at +0x0, InWave at +0x8
 writeQword(_params + 0x0, InName)
 writeQword(_params + 0x8, InWave_SoundWave)
 UE.CallProcessEventEx(OwnerAddress, "SetWaveParameter", _params);
 deAlloc(_params);
end
FNR("BL4.SetWaveParameter");

BL4.StopDelayed = function(OwnerAddress, DelayTime)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StopDelayed: Failed To Allocate The Params");return;end;
 DelayTime = DelayTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: DelayTime at +0x0
 writeFloat(_params + 0x0, DelayTime)
 UE.CallProcessEventEx(OwnerAddress, "StopDelayed", _params);
 deAlloc(_params);
end
FNR("BL4.StopDelayed");

