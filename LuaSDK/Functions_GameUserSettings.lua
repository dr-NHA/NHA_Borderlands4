BL4.ApplyResolutionSettings = function(OwnerAddress, bCheckForCommandLineOverrides)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ApplyResolutionSettings: Failed To Allocate The Params");return;end;
 bCheckForCommandLineOverrides = bCheckForCommandLineOverrides or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bCheckForCommandLineOverrides at +0x0
 writeByte(_params + 0x0, bCheckForCommandLineOverrides)
 UE.CallProcessEventEx(OwnerAddress, "ApplyResolutionSettings", _params);
 deAlloc(_params);
end
FNR("BL4.ApplyResolutionSettings");

BL4.ApplySettings = function(OwnerAddress, bCheckForCommandLineOverrides)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ApplySettings: Failed To Allocate The Params");return;end;
 bCheckForCommandLineOverrides = bCheckForCommandLineOverrides or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bCheckForCommandLineOverrides at +0x0
 writeByte(_params + 0x0, bCheckForCommandLineOverrides)
 UE.CallProcessEventEx(OwnerAddress, "ApplySettings", _params);
 deAlloc(_params);
end
FNR("BL4.ApplySettings");

BL4.EnableHDRDisplayOutput = function(OwnerAddress, bEnable, DisplayNits)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EnableHDRDisplayOutput: Failed To Allocate The Params");return;end;
 bEnable = bEnable or false
 DisplayNits = DisplayNits or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnable at +0x0, DisplayNits at +0x4
 writeByte(_params + 0x0, bEnable)
 writeInteger(_params + 0x4, DisplayNits)
 UE.CallProcessEventEx(OwnerAddress, "EnableHDRDisplayOutput", _params);
 deAlloc(_params);
end
FNR("BL4.EnableHDRDisplayOutput");

BL4.GetAntiAliasingQuality = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAntiAliasingQuality: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAntiAliasingQuality", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAntiAliasingQuality");

BL4.GetAudioQualityLevel = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAudioQualityLevel: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAudioQualityLevel", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAudioQualityLevel");

BL4.GetCurrentHDRDisplayNits = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCurrentHDRDisplayNits: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCurrentHDRDisplayNits", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCurrentHDRDisplayNits");

BL4.GetDefaultResolution = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDefaultResolution: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetDefaultResolution", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDefaultResolution");

BL4.GetDefaultResolutionScale = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDefaultResolutionScale: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetDefaultResolutionScale", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDefaultResolutionScale");

BL4.GetDefaultWindowMode = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDefaultWindowMode: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetDefaultWindowMode", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDefaultWindowMode");

BL4.GetDefaultWindowPosition = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDefaultWindowPosition: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetDefaultWindowPosition", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDefaultWindowPosition");

BL4.GetDesktopResolution = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDesktopResolution: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetDesktopResolution", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDesktopResolution");

BL4.GetFoliageQuality = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetFoliageQuality: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetFoliageQuality", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetFoliageQuality");

BL4.GetFramePace = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetFramePace: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetFramePace", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetFramePace");

BL4.GetFrameRateLimit = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetFrameRateLimit: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetFrameRateLimit", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetFrameRateLimit");

BL4.GetFullscreenMode = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetFullscreenMode: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetFullscreenMode", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetFullscreenMode");

BL4.GetGameUserSettings = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetGameUserSettings: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetGameUserSettings", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetGameUserSettings");

BL4.GetGlobalIlluminationQuality = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetGlobalIlluminationQuality: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetGlobalIlluminationQuality", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetGlobalIlluminationQuality");

BL4.GetIsFramerateLimited = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetIsFramerateLimited: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetIsFramerateLimited", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetIsFramerateLimited");

BL4.GetLastConfirmedFullscreenMode = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLastConfirmedFullscreenMode: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetLastConfirmedFullscreenMode", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLastConfirmedFullscreenMode");

BL4.GetLastConfirmedScreenResolution = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLastConfirmedScreenResolution: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetLastConfirmedScreenResolution", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLastConfirmedScreenResolution");

BL4.GetOverallScalabilityLevel = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetOverallScalabilityLevel: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetOverallScalabilityLevel", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetOverallScalabilityLevel");

BL4.GetPostProcessingQuality = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPostProcessingQuality: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetPostProcessingQuality", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPostProcessingQuality");

BL4.GetPreferredFullscreenMode = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPreferredFullscreenMode: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetPreferredFullscreenMode", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPreferredFullscreenMode");

BL4.GetRecommendedResolutionScale = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRecommendedResolutionScale: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetRecommendedResolutionScale", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRecommendedResolutionScale");

BL4.GetReflectionQuality = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetReflectionQuality: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetReflectionQuality", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetReflectionQuality");

BL4.GetResolutionScaleInformationEx = function(OwnerAddress, CurrentScaleNormalized, CurrentScaleValue, MinScaleValue, MaxScaleValue)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetResolutionScaleInformationEx: Failed To Allocate The Params");return;end;
 CurrentScaleNormalized = CurrentScaleNormalized or 0
 CurrentScaleValue = CurrentScaleValue or 0
 MinScaleValue = MinScaleValue or 0
 MaxScaleValue = MaxScaleValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CurrentScaleNormalized at +0x0, CurrentScaleValue at +0x4, MinScaleValue at +0x8, MaxScaleValue at +0xC
 writeFloat(_params + 0x0, CurrentScaleNormalized)
 writeFloat(_params + 0x4, CurrentScaleValue)
 writeFloat(_params + 0x8, MinScaleValue)
 writeFloat(_params + 0xC, MaxScaleValue)
 UE.CallProcessEventEx(OwnerAddress, "GetResolutionScaleInformationEx", _params);
 deAlloc(_params);
end
FNR("BL4.GetResolutionScaleInformationEx");

BL4.GetResolutionScaleNormalized = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetResolutionScaleNormalized: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetResolutionScaleNormalized", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetResolutionScaleNormalized");

BL4.GetScreenResolution = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetScreenResolution: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetScreenResolution", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetScreenResolution");

BL4.GetShadingQuality = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetShadingQuality: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetShadingQuality", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetShadingQuality");

BL4.GetShadowQuality = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetShadowQuality: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetShadowQuality", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetShadowQuality");

BL4.GetSyncInterval = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSyncInterval: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetSyncInterval", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSyncInterval");

BL4.GetTextureQuality = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTextureQuality: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetTextureQuality", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTextureQuality");

BL4.GetViewDistanceQuality = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetViewDistanceQuality: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetViewDistanceQuality", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetViewDistanceQuality");

BL4.GetVisualEffectQuality = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVisualEffectQuality: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetVisualEffectQuality", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVisualEffectQuality");

BL4.IsDirty = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsDirty: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsDirty", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsDirty");

BL4.IsDynamicResolutionDirty = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsDynamicResolutionDirty: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsDynamicResolutionDirty", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsDynamicResolutionDirty");

BL4.IsDynamicResolutionEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsDynamicResolutionEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsDynamicResolutionEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsDynamicResolutionEnabled");

BL4.IsFullscreenModeDirty = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsFullscreenModeDirty: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsFullscreenModeDirty", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsFullscreenModeDirty");

BL4.IsHDREnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsHDREnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsHDREnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsHDREnabled");

BL4.IsScreenResolutionDirty = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsScreenResolutionDirty: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsScreenResolutionDirty", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsScreenResolutionDirty");

BL4.IsVSyncDirty = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsVSyncDirty: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsVSyncDirty", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsVSyncDirty");

BL4.IsVSyncEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsVSyncEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsVSyncEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsVSyncEnabled");

BL4.LoadSettings = function(OwnerAddress, bForceReload)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LoadSettings: Failed To Allocate The Params");return;end;
 bForceReload = bForceReload or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bForceReload at +0x0
 writeByte(_params + 0x0, bForceReload)
 UE.CallProcessEventEx(OwnerAddress, "LoadSettings", _params);
 deAlloc(_params);
end
FNR("BL4.LoadSettings");

BL4.RunHardwareBenchmark = function(OwnerAddress, WorkScale, CPUMultiplier, GPUMultiplier)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RunHardwareBenchmark: Failed To Allocate The Params");return;end;
 WorkScale = WorkScale or 0
 CPUMultiplier = CPUMultiplier or 0
 GPUMultiplier = GPUMultiplier or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorkScale at +0x0, CPUMultiplier at +0x4, GPUMultiplier at +0x8
 writeInteger(_params + 0x0, WorkScale)
 writeFloat(_params + 0x4, CPUMultiplier)
 writeFloat(_params + 0x8, GPUMultiplier)
 UE.CallProcessEventEx(OwnerAddress, "RunHardwareBenchmark", _params);
 deAlloc(_params);
end
FNR("BL4.RunHardwareBenchmark");

BL4.SetAntiAliasingQuality = function(OwnerAddress, Value)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAntiAliasingQuality: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeInteger(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetAntiAliasingQuality", _params);
 deAlloc(_params);
end
FNR("BL4.SetAntiAliasingQuality");

BL4.SetAudioQualityLevel = function(OwnerAddress, QualityLevel)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAudioQualityLevel: Failed To Allocate The Params");return;end;
 QualityLevel = QualityLevel or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: QualityLevel at +0x0
 writeInteger(_params + 0x0, QualityLevel)
 UE.CallProcessEventEx(OwnerAddress, "SetAudioQualityLevel", _params);
 deAlloc(_params);
end
FNR("BL4.SetAudioQualityLevel");

BL4.SetDynamicResolutionEnabled = function(OwnerAddress, bEnable)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDynamicResolutionEnabled: Failed To Allocate The Params");return;end;
 bEnable = bEnable or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnable at +0x0
 writeByte(_params + 0x0, bEnable)
 UE.CallProcessEventEx(OwnerAddress, "SetDynamicResolutionEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetDynamicResolutionEnabled");

BL4.SetFoliageQuality = function(OwnerAddress, Value)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetFoliageQuality: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeInteger(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetFoliageQuality", _params);
 deAlloc(_params);
end
FNR("BL4.SetFoliageQuality");

BL4.SetFrameRateLimit = function(OwnerAddress, NewLimit)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetFrameRateLimit: Failed To Allocate The Params");return;end;
 NewLimit = NewLimit or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewLimit at +0x0
 writeFloat(_params + 0x0, NewLimit)
 UE.CallProcessEventEx(OwnerAddress, "SetFrameRateLimit", _params);
 deAlloc(_params);
end
FNR("BL4.SetFrameRateLimit");

BL4.SetFullscreenMode = function(OwnerAddress, InFullscreenMode)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetFullscreenMode: Failed To Allocate The Params");return;end;
 InFullscreenMode = InFullscreenMode or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InFullscreenMode at +0x0
 writeByte(_params + 0x0, InFullscreenMode)
 UE.CallProcessEventEx(OwnerAddress, "SetFullscreenMode", _params);
 deAlloc(_params);
end
FNR("BL4.SetFullscreenMode");

BL4.SetGlobalIlluminationQuality = function(OwnerAddress, Value)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetGlobalIlluminationQuality: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeInteger(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetGlobalIlluminationQuality", _params);
 deAlloc(_params);
end
FNR("BL4.SetGlobalIlluminationQuality");

BL4.SetIsFramerateLimited = function(OwnerAddress, bLimitFrameRate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetIsFramerateLimited: Failed To Allocate The Params");return;end;
 bLimitFrameRate = bLimitFrameRate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bLimitFrameRate at +0x0
 writeByte(_params + 0x0, bLimitFrameRate)
 UE.CallProcessEventEx(OwnerAddress, "SetIsFramerateLimited", _params);
 deAlloc(_params);
end
FNR("BL4.SetIsFramerateLimited");

BL4.SetOverallScalabilityLevel = function(OwnerAddress, Value)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetOverallScalabilityLevel: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeInteger(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetOverallScalabilityLevel", _params);
 deAlloc(_params);
end
FNR("BL4.SetOverallScalabilityLevel");

BL4.SetPostProcessingQuality = function(OwnerAddress, Value)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPostProcessingQuality: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeInteger(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetPostProcessingQuality", _params);
 deAlloc(_params);
end
FNR("BL4.SetPostProcessingQuality");

BL4.SetReflectionQuality = function(OwnerAddress, Value)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetReflectionQuality: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeInteger(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetReflectionQuality", _params);
 deAlloc(_params);
end
FNR("BL4.SetReflectionQuality");

BL4.SetResolutionScaleNormalized = function(OwnerAddress, NewScaleNormalized)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetResolutionScaleNormalized: Failed To Allocate The Params");return;end;
 NewScaleNormalized = NewScaleNormalized or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewScaleNormalized at +0x0
 writeFloat(_params + 0x0, NewScaleNormalized)
 UE.CallProcessEventEx(OwnerAddress, "SetResolutionScaleNormalized", _params);
 deAlloc(_params);
end
FNR("BL4.SetResolutionScaleNormalized");

BL4.SetResolutionScaleValueEx = function(OwnerAddress, NewScaleValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetResolutionScaleValueEx: Failed To Allocate The Params");return;end;
 NewScaleValue = NewScaleValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewScaleValue at +0x0
 writeFloat(_params + 0x0, NewScaleValue)
 UE.CallProcessEventEx(OwnerAddress, "SetResolutionScaleValueEx", _params);
 deAlloc(_params);
end
FNR("BL4.SetResolutionScaleValueEx");

BL4.SetScreenResolution = function(OwnerAddress, resolution)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetScreenResolution: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: resolution at +0x0
 writeQword(_params + 0x0, resolution)
 UE.CallProcessEventEx(OwnerAddress, "SetScreenResolution", _params);
 deAlloc(_params);
end
FNR("BL4.SetScreenResolution");

BL4.SetShadingQuality = function(OwnerAddress, Value)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetShadingQuality: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeInteger(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetShadingQuality", _params);
 deAlloc(_params);
end
FNR("BL4.SetShadingQuality");

BL4.SetShadowQuality = function(OwnerAddress, Value)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetShadowQuality: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeInteger(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetShadowQuality", _params);
 deAlloc(_params);
end
FNR("BL4.SetShadowQuality");

BL4.SetTextureQuality = function(OwnerAddress, Value)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTextureQuality: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeInteger(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetTextureQuality", _params);
 deAlloc(_params);
end
FNR("BL4.SetTextureQuality");

BL4.SetViewDistanceQuality = function(OwnerAddress, Value)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetViewDistanceQuality: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeInteger(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetViewDistanceQuality", _params);
 deAlloc(_params);
end
FNR("BL4.SetViewDistanceQuality");

BL4.SetVisualEffectQuality = function(OwnerAddress, Value)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVisualEffectQuality: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeInteger(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetVisualEffectQuality", _params);
 deAlloc(_params);
end
FNR("BL4.SetVisualEffectQuality");

BL4.SetVSyncEnabled = function(OwnerAddress, bEnable)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVSyncEnabled: Failed To Allocate The Params");return;end;
 bEnable = bEnable or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnable at +0x0
 writeByte(_params + 0x0, bEnable)
 UE.CallProcessEventEx(OwnerAddress, "SetVSyncEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetVSyncEnabled");

BL4.SupportsHDRDisplayOutput = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SupportsHDRDisplayOutput: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "SupportsHDRDisplayOutput", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SupportsHDRDisplayOutput");

