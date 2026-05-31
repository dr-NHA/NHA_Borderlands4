BL4.AddMasterSubmixEffect = function(WorldContextObject_Object, SubmixEffectPreset_SoundEffectSubmixPreset)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddMasterSubmixEffect: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, SubmixEffectPreset at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, SubmixEffectPreset_SoundEffectSubmixPreset)
 UE.CallProcessEventEx(WorldContextObject_Object, "AddMasterSubmixEffect", _params);
 deAlloc(_params);
end
FNR("BL4.AddMasterSubmixEffect");

BL4.AddSourceEffectToPresetChain = function(WorldContextObject_Object, PresetChain_SoundEffectSourcePresetChain, Entry)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddSourceEffectToPresetChain: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, PresetChain at +0x8, Entry at +0x10
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, PresetChain_SoundEffectSourcePresetChain)
 writeQword(_params + 0x10, Entry)
 UE.CallProcessEventEx(WorldContextObject_Object, "AddSourceEffectToPresetChain", _params);
 deAlloc(_params);
end
FNR("BL4.AddSourceEffectToPresetChain");

BL4.AddSubmixEffect = function(WorldContextObject_Object, SoundSubmix, SubmixEffectPreset_SoundEffectSubmixPreset)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddSubmixEffect: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, SoundSubmix at +0x8, SubmixEffectPreset at +0x10
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, SoundSubmix)
 writeQword(_params + 0x10, SubmixEffectPreset_SoundEffectSubmixPreset)
 UE.CallProcessEventEx(WorldContextObject_Object, "AddSubmixEffect", _params);
 local RET=readInteger(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddSubmixEffect");

BL4.ClearMasterSubmixEffects = function(WorldContextObject_Object)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClearMasterSubmixEffects: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "ClearMasterSubmixEffects", _params);
 deAlloc(_params);
end
FNR("BL4.ClearMasterSubmixEffects");

BL4.ClearSubmixEffectChainOverride = function(WorldContextObject_Object, SoundSubmix, FadeTimeSec)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClearSubmixEffectChainOverride: Failed To Allocate The Params");return;end;
 FadeTimeSec = FadeTimeSec or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, SoundSubmix at +0x8, FadeTimeSec at +0x10
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, SoundSubmix)
 writeFloat(_params + 0x10, FadeTimeSec)
 UE.CallProcessEventEx(WorldContextObject_Object, "ClearSubmixEffectChainOverride", _params);
 deAlloc(_params);
end
FNR("BL4.ClearSubmixEffectChainOverride");

BL4.ClearSubmixEffects = function(WorldContextObject_Object, SoundSubmix)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClearSubmixEffects: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, SoundSubmix at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, SoundSubmix)
 UE.CallProcessEventEx(WorldContextObject_Object, "ClearSubmixEffects", _params);
 deAlloc(_params);
end
FNR("BL4.ClearSubmixEffects");

BL4.Conv_AudioOutputDeviceInfoToString = function(OwnerAddress, Info)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_AudioOutputDeviceInfoToString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Info at +0x0
 writeQword(_params + 0x0, Info)
 UE.CallProcessEventEx(OwnerAddress, "Conv_AudioOutputDeviceInfoToString", _params);
 local RET=readQword(_params + 0x48);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_AudioOutputDeviceInfoToString");

BL4.GetAvailableAudioOutputDevices = function(WorldContextObject_Object, OnObtainDevicesEvent)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAvailableAudioOutputDevices: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OnObtainDevicesEvent at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OnObtainDevicesEvent)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetAvailableAudioOutputDevices", _params);
 deAlloc(_params);
end
FNR("BL4.GetAvailableAudioOutputDevices");

BL4.GetCurrentAudioOutputDeviceName = function(WorldContextObject_Object, OnObtainCurrentDeviceEvent)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCurrentAudioOutputDeviceName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OnObtainCurrentDeviceEvent at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OnObtainCurrentDeviceEvent)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetCurrentAudioOutputDeviceName", _params);
 deAlloc(_params);
end
FNR("BL4.GetCurrentAudioOutputDeviceName");

BL4.GetMagnitudeForFrequencies = function(WorldContextObject_Object, Frequencies, Magnitudes, SubmixToAnalyze_SoundSubmix)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMagnitudeForFrequencies: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Frequencies at +0x8, Magnitudes at +0x18, SubmixToAnalyze at +0x28
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Frequencies)
 writeQword(_params + 0x18, Magnitudes)
 writeQword(_params + 0x28, SubmixToAnalyze_SoundSubmix)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetMagnitudeForFrequencies", _params);
 deAlloc(_params);
end
FNR("BL4.GetMagnitudeForFrequencies");

BL4.GetNumberOfEntriesInSourceEffectChain = function(WorldContextObject_Object, PresetChain_SoundEffectSourcePresetChain)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumberOfEntriesInSourceEffectChain: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, PresetChain at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, PresetChain_SoundEffectSourcePresetChain)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetNumberOfEntriesInSourceEffectChain", _params);
 local RET=readInteger(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumberOfEntriesInSourceEffectChain");

BL4.GetPhaseForFrequencies = function(WorldContextObject_Object, Frequencies, Phases, SubmixToAnalyze_SoundSubmix)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPhaseForFrequencies: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Frequencies at +0x8, Phases at +0x18, SubmixToAnalyze at +0x28
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Frequencies)
 writeQword(_params + 0x18, Phases)
 writeQword(_params + 0x28, SubmixToAnalyze_SoundSubmix)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetPhaseForFrequencies", _params);
 deAlloc(_params);
end
FNR("BL4.GetPhaseForFrequencies");

BL4.IsAudioBusActive = function(WorldContextObject_Object, AudioBus)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsAudioBusActive: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, AudioBus at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, AudioBus)
 UE.CallProcessEventEx(WorldContextObject_Object, "IsAudioBusActive", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsAudioBusActive");

BL4.MakeFullSpectrumSpectralAnalysisBandSettings = function(OwnerAddress, InNumBands, InMinimumFrequency, InMaximumFrequency, InAttackTimeMsec, InReleaseTimeMsec)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeFullSpectrumSpectralAnalysisBandSettings: Failed To Allocate The Params");return;end;
 InNumBands = InNumBands or 0
 InMinimumFrequency = InMinimumFrequency or 0
 InMaximumFrequency = InMaximumFrequency or 0
 InAttackTimeMsec = InAttackTimeMsec or 0
 InReleaseTimeMsec = InReleaseTimeMsec or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InNumBands at +0x0, InMinimumFrequency at +0x4, InMaximumFrequency at +0x8, InAttackTimeMsec at +0xC, InReleaseTimeMsec at +0x10
 writeInteger(_params + 0x0, InNumBands)
 writeFloat(_params + 0x4, InMinimumFrequency)
 writeFloat(_params + 0x8, InMaximumFrequency)
 writeInteger(_params + 0xC, InAttackTimeMsec)
 writeInteger(_params + 0x10, InReleaseTimeMsec)
 UE.CallProcessEventEx(OwnerAddress, "MakeFullSpectrumSpectralAnalysisBandSettings", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeFullSpectrumSpectralAnalysisBandSettings");

BL4.MakeMusicalSpectralAnalysisBandSettings = function(OwnerAddress, InNumSemitones, InStartingMusicalNote, InStartingOctave, InAttackTimeMsec, InReleaseTimeMsec)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeMusicalSpectralAnalysisBandSettings: Failed To Allocate The Params");return;end;
 InNumSemitones = InNumSemitones or 0
 InStartingMusicalNote = InStartingMusicalNote or 0
 InStartingOctave = InStartingOctave or 0
 InAttackTimeMsec = InAttackTimeMsec or 0
 InReleaseTimeMsec = InReleaseTimeMsec or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InNumSemitones at +0x0, InStartingMusicalNote at +0x4, InStartingOctave at +0x8, InAttackTimeMsec at +0xC, InReleaseTimeMsec at +0x10
 writeInteger(_params + 0x0, InNumSemitones)
 writeByte(_params + 0x4, InStartingMusicalNote)
 writeInteger(_params + 0x8, InStartingOctave)
 writeInteger(_params + 0xC, InAttackTimeMsec)
 writeInteger(_params + 0x10, InReleaseTimeMsec)
 UE.CallProcessEventEx(OwnerAddress, "MakeMusicalSpectralAnalysisBandSettings", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeMusicalSpectralAnalysisBandSettings");

BL4.MakePresetSpectralAnalysisBandSettings = function(OwnerAddress, InBandPresetType, InNumBands, InAttackTimeMsec, InReleaseTimeMsec)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakePresetSpectralAnalysisBandSettings: Failed To Allocate The Params");return;end;
 InBandPresetType = InBandPresetType or 0
 InNumBands = InNumBands or 0
 InAttackTimeMsec = InAttackTimeMsec or 0
 InReleaseTimeMsec = InReleaseTimeMsec or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InBandPresetType at +0x0, InNumBands at +0x4, InAttackTimeMsec at +0x8, InReleaseTimeMsec at +0xC
 writeByte(_params + 0x0, InBandPresetType)
 writeInteger(_params + 0x4, InNumBands)
 writeInteger(_params + 0x8, InAttackTimeMsec)
 writeInteger(_params + 0xC, InReleaseTimeMsec)
 UE.CallProcessEventEx(OwnerAddress, "MakePresetSpectralAnalysisBandSettings", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakePresetSpectralAnalysisBandSettings");

BL4.PauseRecordingOutput = function(WorldContextObject_Object, SubmixToPause_SoundSubmix)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PauseRecordingOutput: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, SubmixToPause at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, SubmixToPause_SoundSubmix)
 UE.CallProcessEventEx(WorldContextObject_Object, "PauseRecordingOutput", _params);
 deAlloc(_params);
end
FNR("BL4.PauseRecordingOutput");

BL4.PrimeSoundCueForPlayback = function(SoundCue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PrimeSoundCueForPlayback: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: SoundCue at +0x0
 writeQword(_params + 0x0, SoundCue)
 UE.CallProcessEventEx(SoundCue, "PrimeSoundCueForPlayback", _params);
 deAlloc(_params);
end
FNR("BL4.PrimeSoundCueForPlayback");

BL4.PrimeSoundForPlayback = function(SoundWave, OnLoadCompletion)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PrimeSoundForPlayback: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SoundWave at +0x0, OnLoadCompletion at +0x8
 writeQword(_params + 0x0, SoundWave)
 writeQword(_params + 0x8, OnLoadCompletion)
 UE.CallProcessEventEx(SoundWave, "PrimeSoundForPlayback", _params);
 deAlloc(_params);
end
FNR("BL4.PrimeSoundForPlayback");

BL4.RegisterAudioBusToSubmix = function(WorldContextObject_Object, SoundSubmix, AudioBus)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RegisterAudioBusToSubmix: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, SoundSubmix at +0x8, AudioBus at +0x10
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, SoundSubmix)
 writeQword(_params + 0x10, AudioBus)
 UE.CallProcessEventEx(WorldContextObject_Object, "RegisterAudioBusToSubmix", _params);
 deAlloc(_params);
end
FNR("BL4.RegisterAudioBusToSubmix");

BL4.RemoveMasterSubmixEffect = function(WorldContextObject_Object, SubmixEffectPreset_SoundEffectSubmixPreset)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveMasterSubmixEffect: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, SubmixEffectPreset at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, SubmixEffectPreset_SoundEffectSubmixPreset)
 UE.CallProcessEventEx(WorldContextObject_Object, "RemoveMasterSubmixEffect", _params);
 deAlloc(_params);
end
FNR("BL4.RemoveMasterSubmixEffect");

BL4.RemoveSourceEffectFromPresetChain = function(WorldContextObject_Object, PresetChain_SoundEffectSourcePresetChain, EntryIndex)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveSourceEffectFromPresetChain: Failed To Allocate The Params");return;end;
 EntryIndex = EntryIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, PresetChain at +0x8, EntryIndex at +0x10
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, PresetChain_SoundEffectSourcePresetChain)
 writeInteger(_params + 0x10, EntryIndex)
 UE.CallProcessEventEx(WorldContextObject_Object, "RemoveSourceEffectFromPresetChain", _params);
 deAlloc(_params);
end
FNR("BL4.RemoveSourceEffectFromPresetChain");

BL4.RemoveSubmixEffect = function(WorldContextObject_Object, SoundSubmix, SubmixEffectPreset_SoundEffectSubmixPreset)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveSubmixEffect: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, SoundSubmix at +0x8, SubmixEffectPreset at +0x10
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, SoundSubmix)
 writeQword(_params + 0x10, SubmixEffectPreset_SoundEffectSubmixPreset)
 UE.CallProcessEventEx(WorldContextObject_Object, "RemoveSubmixEffect", _params);
 deAlloc(_params);
end
FNR("BL4.RemoveSubmixEffect");

BL4.RemoveSubmixEffectAtIndex = function(WorldContextObject_Object, SoundSubmix, SubmixChainIndex)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveSubmixEffectAtIndex: Failed To Allocate The Params");return;end;
 SubmixChainIndex = SubmixChainIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, SoundSubmix at +0x8, SubmixChainIndex at +0x10
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, SoundSubmix)
 writeInteger(_params + 0x10, SubmixChainIndex)
 UE.CallProcessEventEx(WorldContextObject_Object, "RemoveSubmixEffectAtIndex", _params);
 deAlloc(_params);
end
FNR("BL4.RemoveSubmixEffectAtIndex");

BL4.RemoveSubmixEffectPreset = function(WorldContextObject_Object, SoundSubmix, SubmixEffectPreset_SoundEffectSubmixPreset)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveSubmixEffectPreset: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, SoundSubmix at +0x8, SubmixEffectPreset at +0x10
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, SoundSubmix)
 writeQword(_params + 0x10, SubmixEffectPreset_SoundEffectSubmixPreset)
 UE.CallProcessEventEx(WorldContextObject_Object, "RemoveSubmixEffectPreset", _params);
 deAlloc(_params);
end
FNR("BL4.RemoveSubmixEffectPreset");

BL4.RemoveSubmixEffectPresetAtIndex = function(WorldContextObject_Object, SoundSubmix, SubmixChainIndex)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveSubmixEffectPresetAtIndex: Failed To Allocate The Params");return;end;
 SubmixChainIndex = SubmixChainIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, SoundSubmix at +0x8, SubmixChainIndex at +0x10
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, SoundSubmix)
 writeInteger(_params + 0x10, SubmixChainIndex)
 UE.CallProcessEventEx(WorldContextObject_Object, "RemoveSubmixEffectPresetAtIndex", _params);
 deAlloc(_params);
end
FNR("BL4.RemoveSubmixEffectPresetAtIndex");

BL4.ReplaceSoundEffectSubmix = function(WorldContextObject_Object, InSoundSubmix_SoundSubmix, SubmixChainIndex, SubmixEffectPreset_SoundEffectSubmixPreset)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReplaceSoundEffectSubmix: Failed To Allocate The Params");return;end;
 SubmixChainIndex = SubmixChainIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, InSoundSubmix at +0x8, SubmixChainIndex at +0x10, SubmixEffectPreset at +0x18
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, InSoundSubmix_SoundSubmix)
 writeInteger(_params + 0x10, SubmixChainIndex)
 writeQword(_params + 0x18, SubmixEffectPreset_SoundEffectSubmixPreset)
 UE.CallProcessEventEx(WorldContextObject_Object, "ReplaceSoundEffectSubmix", _params);
 deAlloc(_params);
end
FNR("BL4.ReplaceSoundEffectSubmix");

BL4.ReplaceSubmixEffect = function(WorldContextObject_Object, InSoundSubmix_SoundSubmix, SubmixChainIndex, SubmixEffectPreset_SoundEffectSubmixPreset)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReplaceSubmixEffect: Failed To Allocate The Params");return;end;
 SubmixChainIndex = SubmixChainIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, InSoundSubmix at +0x8, SubmixChainIndex at +0x10, SubmixEffectPreset at +0x18
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, InSoundSubmix_SoundSubmix)
 writeInteger(_params + 0x10, SubmixChainIndex)
 writeQword(_params + 0x18, SubmixEffectPreset_SoundEffectSubmixPreset)
 UE.CallProcessEventEx(WorldContextObject_Object, "ReplaceSubmixEffect", _params);
 deAlloc(_params);
end
FNR("BL4.ReplaceSubmixEffect");

BL4.ResumeRecordingOutput = function(WorldContextObject_Object, SubmixToPause_SoundSubmix)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ResumeRecordingOutput: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, SubmixToPause at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, SubmixToPause_SoundSubmix)
 UE.CallProcessEventEx(WorldContextObject_Object, "ResumeRecordingOutput", _params);
 deAlloc(_params);
end
FNR("BL4.ResumeRecordingOutput");

BL4.SetBypassSourceEffectChainEntry = function(WorldContextObject_Object, PresetChain_SoundEffectSourcePresetChain, EntryIndex, bBypassed)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBypassSourceEffectChainEntry: Failed To Allocate The Params");return;end;
 EntryIndex = EntryIndex or 0
 bBypassed = bBypassed or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, PresetChain at +0x8, EntryIndex at +0x10, bBypassed at +0x14
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, PresetChain_SoundEffectSourcePresetChain)
 writeInteger(_params + 0x10, EntryIndex)
 writeByte(_params + 0x14, bBypassed)
 UE.CallProcessEventEx(WorldContextObject_Object, "SetBypassSourceEffectChainEntry", _params);
 deAlloc(_params);
end
FNR("BL4.SetBypassSourceEffectChainEntry");

BL4.SetSubmixEffectChainOverride = function(WorldContextObject_Object, SoundSubmix, SubmixEffectPresetChain, FadeTimeSec)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSubmixEffectChainOverride: Failed To Allocate The Params");return;end;
 FadeTimeSec = FadeTimeSec or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, SoundSubmix at +0x8, SubmixEffectPresetChain at +0x10, FadeTimeSec at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, SoundSubmix)
 writeQword(_params + 0x10, SubmixEffectPresetChain)
 writeFloat(_params + 0x20, FadeTimeSec)
 UE.CallProcessEventEx(WorldContextObject_Object, "SetSubmixEffectChainOverride", _params);
 deAlloc(_params);
end
FNR("BL4.SetSubmixEffectChainOverride");

BL4.StartAnalyzingOutput = function(WorldContextObject_Object, SubmixToAnalyze_SoundSubmix, FFTSize, InterpolationMethod, WindowType, HopSize, SpectrumType)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StartAnalyzingOutput: Failed To Allocate The Params");return;end;
 FFTSize = FFTSize or 0
 InterpolationMethod = InterpolationMethod or 0
 WindowType = WindowType or 0
 HopSize = HopSize or 0
 SpectrumType = SpectrumType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, SubmixToAnalyze at +0x8, FFTSize at +0x10, InterpolationMethod at +0x11, WindowType at +0x12, HopSize at +0x14, SpectrumType at +0x18
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, SubmixToAnalyze_SoundSubmix)
 writeByte(_params + 0x10, FFTSize)
 writeByte(_params + 0x11, InterpolationMethod)
 writeByte(_params + 0x12, WindowType)
 writeFloat(_params + 0x14, HopSize)
 writeByte(_params + 0x18, SpectrumType)
 UE.CallProcessEventEx(WorldContextObject_Object, "StartAnalyzingOutput", _params);
 deAlloc(_params);
end
FNR("BL4.StartAnalyzingOutput");

BL4.StartAudioBus = function(WorldContextObject_Object, AudioBus)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StartAudioBus: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, AudioBus at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, AudioBus)
 UE.CallProcessEventEx(WorldContextObject_Object, "StartAudioBus", _params);
 deAlloc(_params);
end
FNR("BL4.StartAudioBus");

BL4.StartRecordingOutput = function(WorldContextObject_Object, ExpectedDuration, SubmixToRecord_SoundSubmix)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StartRecordingOutput: Failed To Allocate The Params");return;end;
 ExpectedDuration = ExpectedDuration or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, ExpectedDuration at +0x8, SubmixToRecord at +0x10
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeFloat(_params + 0x8, ExpectedDuration)
 writeQword(_params + 0x10, SubmixToRecord_SoundSubmix)
 UE.CallProcessEventEx(WorldContextObject_Object, "StartRecordingOutput", _params);
 deAlloc(_params);
end
FNR("BL4.StartRecordingOutput");

BL4.StopAnalyzingOutput = function(WorldContextObject_Object, SubmixToStopAnalyzing_SoundSubmix)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StopAnalyzingOutput: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, SubmixToStopAnalyzing at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, SubmixToStopAnalyzing_SoundSubmix)
 UE.CallProcessEventEx(WorldContextObject_Object, "StopAnalyzingOutput", _params);
 deAlloc(_params);
end
FNR("BL4.StopAnalyzingOutput");

BL4.StopAudioBus = function(WorldContextObject_Object, AudioBus)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StopAudioBus: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, AudioBus at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, AudioBus)
 UE.CallProcessEventEx(WorldContextObject_Object, "StopAudioBus", _params);
 deAlloc(_params);
end
FNR("BL4.StopAudioBus");

BL4.StopRecordingOutput = function(WorldContextObject_Object, ExportType, Name, path, SubmixToRecord_SoundSubmix, ExistingSoundWaveToOverwrite_SoundWave)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StopRecordingOutput: Failed To Allocate The Params");return;end;
 ExportType = ExportType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, ExportType at +0x8, Name at +0x10, path at +0x20, SubmixToRecord at +0x30, ExistingSoundWaveToOverwrite at +0x38
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeByte(_params + 0x8, ExportType)
 writeQword(_params + 0x10, Name)
 writeQword(_params + 0x20, path)
 writeQword(_params + 0x30, SubmixToRecord_SoundSubmix)
 writeQword(_params + 0x38, ExistingSoundWaveToOverwrite_SoundWave)
 UE.CallProcessEventEx(WorldContextObject_Object, "StopRecordingOutput", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.StopRecordingOutput");

BL4.SwapAudioOutputDevice = function(WorldContextObject_Object, NewDeviceId, OnCompletedDeviceSwap)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SwapAudioOutputDevice: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, NewDeviceId at +0x8, OnCompletedDeviceSwap at +0x18
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, NewDeviceId)
 writeQword(_params + 0x18, OnCompletedDeviceSwap)
 UE.CallProcessEventEx(WorldContextObject_Object, "SwapAudioOutputDevice", _params);
 deAlloc(_params);
end
FNR("BL4.SwapAudioOutputDevice");

BL4.TrimAudioCache = function(OwnerAddress, InMegabytesToFree)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TrimAudioCache: Failed To Allocate The Params");return;end;
 InMegabytesToFree = InMegabytesToFree or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InMegabytesToFree at +0x0
 writeFloat(_params + 0x0, InMegabytesToFree)
 UE.CallProcessEventEx(OwnerAddress, "TrimAudioCache", _params);
 local RET=readFloat(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.TrimAudioCache");

BL4.UnregisterAudioBusFromSubmix = function(WorldContextObject_Object, SoundSubmix, AudioBus)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnregisterAudioBusFromSubmix: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, SoundSubmix at +0x8, AudioBus at +0x10
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, SoundSubmix)
 writeQword(_params + 0x10, AudioBus)
 UE.CallProcessEventEx(WorldContextObject_Object, "UnregisterAudioBusFromSubmix", _params);
 deAlloc(_params);
end
FNR("BL4.UnregisterAudioBusFromSubmix");

