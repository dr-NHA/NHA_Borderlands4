BL4.GetAudioLanguage = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAudioLanguage: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAudioLanguage", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAudioLanguage");

BL4.GetBaseFOV = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBaseFOV: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetBaseFOV", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBaseFOV");

BL4.GetCameraHeadBobMultiplier = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCameraHeadBobMultiplier: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCameraHeadBobMultiplier", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCameraHeadBobMultiplier");

BL4.GetCanMantleWithForward = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCanMantleWithForward: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCanMantleWithForward", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCanMantleWithForward");

BL4.GetCensorContent = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCensorContent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCensorContent", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCensorContent");

BL4.GetCharacterSwitchPromptsEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCharacterSwitchPromptsEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCharacterSwitchPromptsEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCharacterSwitchPromptsEnabled");

BL4.GetColorBlindMode = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetColorBlindMode: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetColorBlindMode", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetColorBlindMode");

BL4.GetCompassVerticalIndicatorConfig = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCompassVerticalIndicatorConfig: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCompassVerticalIndicatorConfig", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCompassVerticalIndicatorConfig");

BL4.GetControllerADSSnap = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetControllerADSSnap: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetControllerADSSnap", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetControllerADSSnap");

BL4.GetControllerAimAssistEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetControllerAimAssistEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetControllerAimAssistEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetControllerAimAssistEnabled");

BL4.GetControllerLightingEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetControllerLightingEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetControllerLightingEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetControllerLightingEnabled");

BL4.GetControllerLookSensitivity = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetControllerLookSensitivity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetControllerLookSensitivity", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetControllerLookSensitivity");

BL4.GetCrosshairEnemyColor = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCrosshairEnemyColor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCrosshairEnemyColor", _params);
 local RET={R=readFloat(_params+0x0),G=readFloat(_params+0x4),B=readFloat(_params+0x8),A=readFloat(_params+0xC)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCrosshairEnemyColor");

BL4.GetCrosshairFriendlyColor = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCrosshairFriendlyColor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCrosshairFriendlyColor", _params);
 local RET={R=readFloat(_params+0x0),G=readFloat(_params+0x4),B=readFloat(_params+0x8),A=readFloat(_params+0xC)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCrosshairFriendlyColor");

BL4.GetCrosshairNeutralColor = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCrosshairNeutralColor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCrosshairNeutralColor", _params);
 local RET={R=readFloat(_params+0x0),G=readFloat(_params+0x4),B=readFloat(_params+0x8),A=readFloat(_params+0xC)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCrosshairNeutralColor");

BL4.GetCrosshairPosition = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCrosshairPosition: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCrosshairPosition", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCrosshairPosition");

BL4.GetCrossSaveEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCrossSaveEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCrossSaveEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCrossSaveEnabled");

BL4.GetCursorFriction = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCursorFriction: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCursorFriction", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCursorFriction");

BL4.GetCursorMaxIdleTime = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCursorMaxIdleTime: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCursorMaxIdleTime", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCursorMaxIdleTime");

BL4.GetCursorSensitivity = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCursorSensitivity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCursorSensitivity", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCursorSensitivity");

BL4.GetCursorShowIdleFlash = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCursorShowIdleFlash: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCursorShowIdleFlash", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCursorShowIdleFlash");

BL4.GetCursorXAxisInvert = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCursorXAxisInvert: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCursorXAxisInvert", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCursorXAxisInvert");

BL4.GetCursorYAxisInvert = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCursorYAxisInvert: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCursorYAxisInvert", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCursorYAxisInvert");

BL4.GetDashEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDashEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetDashEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDashEnabled");

BL4.GetDisplayDamageNumbers = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDisplayDamageNumbers: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetDisplayDamageNumbers", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDisplayDamageNumbers");

BL4.GetEnableJcmsControl = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetEnableJcmsControl: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetEnableJcmsControl", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetEnableJcmsControl");

BL4.GetFavoriteFriendsNotificationsEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetFavoriteFriendsNotificationsEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetFavoriteFriendsNotificationsEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetFavoriteFriendsNotificationsEnabled");

BL4.GetFriendSyncEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetFriendSyncEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetFriendSyncEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetFriendSyncEnabled");

BL4.GetGrapplePitchCorrection = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetGrapplePitchCorrection: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetGrapplePitchCorrection", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetGrapplePitchCorrection");

BL4.GetHasSeenHUDTutorial = function(OwnerAddress, InHUDTutorial)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHasSeenHUDTutorial: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InHUDTutorial at +0x0
 writeQword(_params + 0x0, InHUDTutorial)
 UE.CallProcessEventEx(OwnerAddress, "GetHasSeenHUDTutorial", _params);
 local RET=readByte(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHasSeenHUDTutorial");

BL4.GetHasSeenMenuTutorialSequence = function(OwnerAddress, InMenuTutorial)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHasSeenMenuTutorialSequence: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InMenuTutorial at +0x0
 writeQword(_params + 0x0, InMenuTutorial)
 UE.CallProcessEventEx(OwnerAddress, "GetHasSeenMenuTutorialSequence", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHasSeenMenuTutorialSequence");

BL4.GetHidePromotionalContentEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHidePromotionalContentEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetHidePromotionalContentEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHidePromotionalContentEnabled");

BL4.GetHighContrastCrosshairActive = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHighContrastCrosshairActive: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetHighContrastCrosshairActive", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHighContrastCrosshairActive");

BL4.GetHighContrastHUDActive = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHighContrastHUDActive: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetHighContrastHUDActive", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHighContrastHUDActive");

BL4.GetHorizontalADSSensitivity = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHorizontalADSSensitivity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetHorizontalADSSensitivity", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHorizontalADSSensitivity");

BL4.GetHorizontalJcmsADSSensitivity = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHorizontalJcmsADSSensitivity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetHorizontalJcmsADSSensitivity", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHorizontalJcmsADSSensitivity");

BL4.GetHorizontalJcmsLookSensitivity = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHorizontalJcmsLookSensitivity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetHorizontalJcmsLookSensitivity", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHorizontalJcmsLookSensitivity");

BL4.GetHorizontalLookSensitivity = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHorizontalLookSensitivity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetHorizontalLookSensitivity", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHorizontalLookSensitivity");

BL4.GetHorizontalMotionControlsADSSensitivity = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHorizontalMotionControlsADSSensitivity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetHorizontalMotionControlsADSSensitivity", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHorizontalMotionControlsADSSensitivity");

BL4.GetHorizontalMotionControlsLookSensitivity = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHorizontalMotionControlsLookSensitivity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetHorizontalMotionControlsLookSensitivity", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHorizontalMotionControlsLookSensitivity");

BL4.GetHorizontalSafeAreaRatio = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHorizontalSafeAreaRatio: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetHorizontalSafeAreaRatio", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHorizontalSafeAreaRatio");

BL4.GetHUDFontScaling = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHUDFontScaling: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetHUDFontScaling", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHUDFontScaling");

BL4.GetHUDTutorialsEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHUDTutorialsEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetHUDTutorialsEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHUDTutorialsEnabled");

BL4.GetIsControllerAimRecenteringEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetIsControllerAimRecenteringEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetIsControllerAimRecenteringEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetIsControllerAimRecenteringEnabled");

BL4.GetLeftStickAxialDeadZoneInner = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLeftStickAxialDeadZoneInner: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetLeftStickAxialDeadZoneInner", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLeftStickAxialDeadZoneInner");

BL4.GetLeftStickAxialDeadZoneOuter = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLeftStickAxialDeadZoneOuter: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetLeftStickAxialDeadZoneOuter", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLeftStickAxialDeadZoneOuter");

BL4.GetLeftStickRadialDeadZoneInner = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLeftStickRadialDeadZoneInner: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetLeftStickRadialDeadZoneInner", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLeftStickRadialDeadZoneInner");

BL4.GetLeftStickRadialDeadZoneOuter = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLeftStickRadialDeadZoneOuter: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetLeftStickRadialDeadZoneOuter", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLeftStickRadialDeadZoneOuter");

BL4.GetLookXAxisInvert_Gamepad = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLookXAxisInvert_Gamepad: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetLookXAxisInvert_Gamepad", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLookXAxisInvert_Gamepad");

BL4.GetLookXAxisInvert_KBM = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLookXAxisInvert_KBM: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetLookXAxisInvert_KBM", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLookXAxisInvert_KBM");

BL4.GetLookYAxisInvert_Gamepad = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLookYAxisInvert_Gamepad: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetLookYAxisInvert_Gamepad", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLookYAxisInvert_Gamepad");

BL4.GetLookYAxisInvert_KBM = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLookYAxisInvert_KBM: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetLookYAxisInvert_KBM", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLookYAxisInvert_KBM");

BL4.GetMapViewerZoomSpeed = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMapViewerZoomSpeed: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetMapViewerZoomSpeed", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMapViewerZoomSpeed");

BL4.GetMatchmakingAutoRegionSelectEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMatchmakingAutoRegionSelectEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetMatchmakingAutoRegionSelectEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMatchmakingAutoRegionSelectEnabled");

BL4.GetMatchmakingRegionPreferences = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMatchmakingRegionPreferences: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetMatchmakingRegionPreferences", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMatchmakingRegionPreferences");

BL4.GetMenuFontScaling = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMenuFontScaling: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetMenuFontScaling", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMenuFontScaling");

BL4.GetMenuTutorialsEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMenuTutorialsEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetMenuTutorialsEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMenuTutorialsEnabled");

BL4.GetMotionControlsSetting = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMotionControlsSetting: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetMotionControlsSetting", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMotionControlsSetting");

BL4.GetMouseADSSnap = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMouseADSSnap: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetMouseADSSnap", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMouseADSSnap");

BL4.GetMouseLookSensitivity = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMouseLookSensitivity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetMouseLookSensitivity", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMouseLookSensitivity");

BL4.GetMoveXAxisInvert_Gamepad = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMoveXAxisInvert_Gamepad: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetMoveXAxisInvert_Gamepad", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMoveXAxisInvert_Gamepad");

BL4.GetMoveXAxisInvert_KBM = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMoveXAxisInvert_KBM: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetMoveXAxisInvert_KBM", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMoveXAxisInvert_KBM");

BL4.GetMoveYAxisInvert_Gamepad = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMoveYAxisInvert_Gamepad: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetMoveYAxisInvert_Gamepad", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMoveYAxisInvert_Gamepad");

BL4.GetMoveYAxisInvert_KBM = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMoveYAxisInvert_KBM: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetMoveYAxisInvert_KBM", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMoveYAxisInvert_KBM");

BL4.GetOnFootGamepadStickPreset = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetOnFootGamepadStickPreset: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetOnFootGamepadStickPreset", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetOnFootGamepadStickPreset");

BL4.GetProfanityFilterEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetProfanityFilterEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetProfanityFilterEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetProfanityFilterEnabled");

BL4.GetPushToTalkEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPushToTalkEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetPushToTalkEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPushToTalkEnabled");

BL4.GetRadarDisplayMode = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRadarDisplayMode: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetRadarDisplayMode", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRadarDisplayMode");

BL4.GetRightStickAxialDeadZoneInner = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRightStickAxialDeadZoneInner: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetRightStickAxialDeadZoneInner", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRightStickAxialDeadZoneInner");

BL4.GetRightStickAxialDeadZoneOuter = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRightStickAxialDeadZoneOuter: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetRightStickAxialDeadZoneOuter", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRightStickAxialDeadZoneOuter");

BL4.GetRightStickRadialDeadZoneInner = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRightStickRadialDeadZoneInner: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetRightStickRadialDeadZoneInner", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRightStickRadialDeadZoneInner");

BL4.GetRightStickRadialDeadZoneOuter = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRightStickRadialDeadZoneOuter: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetRightStickRadialDeadZoneOuter", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRightStickRadialDeadZoneOuter");

BL4.GetShiftProfileVisibility = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetShiftProfileVisibility: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetShiftProfileVisibility", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetShiftProfileVisibility");

BL4.GetShowChallengeNotifications = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetShowChallengeNotifications: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetShowChallengeNotifications", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetShowChallengeNotifications");

BL4.GetShowVaultCardNotifications = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetShowVaultCardNotifications: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetShowVaultCardNotifications", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetShowVaultCardNotifications");

BL4.GetStreamerModeLocalEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetStreamerModeLocalEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetStreamerModeLocalEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetStreamerModeLocalEnabled");

BL4.GetStreamerModeRemoteEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetStreamerModeRemoteEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetStreamerModeRemoteEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetStreamerModeRemoteEnabled");

BL4.GetSubtitleBackgroundColor = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSubtitleBackgroundColor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetSubtitleBackgroundColor", _params);
 local RET={R=readFloat(_params+0x0),G=readFloat(_params+0x4),B=readFloat(_params+0x8),A=readFloat(_params+0xC)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSubtitleBackgroundColor");

BL4.GetSubtitleBackgroundEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSubtitleBackgroundEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetSubtitleBackgroundEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSubtitleBackgroundEnabled");

BL4.GetSubtitleBackgroundOpacity = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSubtitleBackgroundOpacity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetSubtitleBackgroundOpacity", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSubtitleBackgroundOpacity");

BL4.GetSubtitleColor = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSubtitleColor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetSubtitleColor", _params);
 local RET={R=readFloat(_params+0x0),G=readFloat(_params+0x4),B=readFloat(_params+0x8),A=readFloat(_params+0xC)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSubtitleColor");

BL4.GetSubtitlesEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSubtitlesEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetSubtitlesEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSubtitlesEnabled");

BL4.GetSubtitleSpeakerColor = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSubtitleSpeakerColor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetSubtitleSpeakerColor", _params);
 local RET={R=readFloat(_params+0x0),G=readFloat(_params+0x4),B=readFloat(_params+0x8),A=readFloat(_params+0xC)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSubtitleSpeakerColor");

BL4.GetSubtitlesSpeakerEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSubtitlesSpeakerEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetSubtitlesSpeakerEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSubtitlesSpeakerEnabled");

BL4.GetSubtitleTextOpacity = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSubtitleTextOpacity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetSubtitleTextOpacity", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSubtitleTextOpacity");

BL4.GetSubtitleTextSize = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSubtitleTextSize: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetSubtitleTextSize", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSubtitleTextSize");

BL4.GetTextChatEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTextChatEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetTextChatEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTextChatEnabled");

BL4.GetToggleCrouch = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetToggleCrouch: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetToggleCrouch", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetToggleCrouch");

BL4.GetToggleSprint = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetToggleSprint: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetToggleSprint", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetToggleSprint");

BL4.GetToggleZoom = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetToggleZoom: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetToggleZoom", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetToggleZoom");

BL4.GetTouchScreenForGameplayEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTouchScreenForGameplayEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetTouchScreenForGameplayEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTouchScreenForGameplayEnabled");

BL4.GetUseBoldSubtitlesEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetUseBoldSubtitlesEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetUseBoldSubtitlesEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetUseBoldSubtitlesEnabled");

BL4.GetUseToggleGlideGamepad = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetUseToggleGlideGamepad: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetUseToggleGlideGamepad", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetUseToggleGlideGamepad");

BL4.GetUseToggleGlideKBM = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetUseToggleGlideKBM: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetUseToggleGlideKBM", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetUseToggleGlideKBM");

BL4.GetVehicleFOV = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVehicleFOV: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetVehicleFOV", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVehicleFOV");

BL4.GetVehicleGamepadStickPreset = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVehicleGamepadStickPreset: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetVehicleGamepadStickPreset", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVehicleGamepadStickPreset");

BL4.GetVerticalADSSensitivity = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVerticalADSSensitivity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetVerticalADSSensitivity", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVerticalADSSensitivity");

BL4.GetVerticalJcmsADSSensitivity = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVerticalJcmsADSSensitivity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetVerticalJcmsADSSensitivity", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVerticalJcmsADSSensitivity");

BL4.GetVerticalJcmsLookSensitivity = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVerticalJcmsLookSensitivity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetVerticalJcmsLookSensitivity", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVerticalJcmsLookSensitivity");

BL4.GetVerticalLookSensitivity = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVerticalLookSensitivity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetVerticalLookSensitivity", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVerticalLookSensitivity");

BL4.GetVerticalMotionControlsADSSensitivity = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVerticalMotionControlsADSSensitivity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetVerticalMotionControlsADSSensitivity", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVerticalMotionControlsADSSensitivity");

BL4.GetVerticalMotionControlsLookSensitivity = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVerticalMotionControlsLookSensitivity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetVerticalMotionControlsLookSensitivity", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVerticalMotionControlsLookSensitivity");

BL4.GetVerticalSafeAreaRatio = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVerticalSafeAreaRatio: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetVerticalSafeAreaRatio", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVerticalSafeAreaRatio");

BL4.GetVoiceChatEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVoiceChatEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetVoiceChatEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVoiceChatEnabled");

BL4.GetVoiceChatVolume = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVoiceChatVolume: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetVoiceChatVolume", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVoiceChatVolume");

BL4.SetAudioLanguage = function(OwnerAddress, InAudioLanguage)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAudioLanguage: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InAudioLanguage at +0x0
 writeQword(_params + 0x0, InAudioLanguage)
 UE.CallProcessEventEx(OwnerAddress, "SetAudioLanguage", _params);
 deAlloc(_params);
end
FNR("BL4.SetAudioLanguage");

BL4.SetAudioPreset = function(OwnerAddress, Mode)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAudioPreset: Failed To Allocate The Params");return;end;
 Mode = Mode or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Mode at +0x0
 writeByte(_params + 0x0, Mode)
 UE.CallProcessEventEx(OwnerAddress, "SetAudioPreset", _params);
 deAlloc(_params);
end
FNR("BL4.SetAudioPreset");

BL4.SetBaseFOV = function(OwnerAddress, InBaseFOV)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBaseFOV: Failed To Allocate The Params");return;end;
 InBaseFOV = InBaseFOV or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InBaseFOV at +0x0
 writeFloat(_params + 0x0, InBaseFOV)
 UE.CallProcessEventEx(OwnerAddress, "SetBaseFOV", _params);
 deAlloc(_params);
end
FNR("BL4.SetBaseFOV");

BL4.SetBossMusicTrim = function(OwnerAddress, InNewValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBossMusicTrim: Failed To Allocate The Params");return;end;
 InNewValue = InNewValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InNewValue at +0x0
 writeFloat(_params + 0x0, InNewValue)
 UE.CallProcessEventEx(OwnerAddress, "SetBossMusicTrim", _params);
 deAlloc(_params);
end
FNR("BL4.SetBossMusicTrim");

BL4.SetCameraHeadBobMultiplier = function(OwnerAddress, InCameraHeadBobMultiplier)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCameraHeadBobMultiplier: Failed To Allocate The Params");return;end;
 InCameraHeadBobMultiplier = InCameraHeadBobMultiplier or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InCameraHeadBobMultiplier at +0x0
 writeFloat(_params + 0x0, InCameraHeadBobMultiplier)
 UE.CallProcessEventEx(OwnerAddress, "SetCameraHeadBobMultiplier", _params);
 deAlloc(_params);
end
FNR("BL4.SetCameraHeadBobMultiplier");

BL4.SetCanMantleWithForward = function(OwnerAddress, bInCanMantleWithForward)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCanMantleWithForward: Failed To Allocate The Params");return;end;
 bInCanMantleWithForward = bInCanMantleWithForward or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInCanMantleWithForward at +0x0
 writeByte(_params + 0x0, bInCanMantleWithForward)
 UE.CallProcessEventEx(OwnerAddress, "SetCanMantleWithForward", _params);
 deAlloc(_params);
end
FNR("BL4.SetCanMantleWithForward");

BL4.SetCensorContent = function(OwnerAddress, bInCensorContent)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCensorContent: Failed To Allocate The Params");return;end;
 bInCensorContent = bInCensorContent or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInCensorContent at +0x0
 writeByte(_params + 0x0, bInCensorContent)
 UE.CallProcessEventEx(OwnerAddress, "SetCensorContent", _params);
 deAlloc(_params);
end
FNR("BL4.SetCensorContent");

BL4.SetCharacterSwitchPromptsEnabled = function(OwnerAddress, bInCharacterSwitchPromptsEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCharacterSwitchPromptsEnabled: Failed To Allocate The Params");return;end;
 bInCharacterSwitchPromptsEnabled = bInCharacterSwitchPromptsEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInCharacterSwitchPromptsEnabled at +0x0
 writeByte(_params + 0x0, bInCharacterSwitchPromptsEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetCharacterSwitchPromptsEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetCharacterSwitchPromptsEnabled");

BL4.SetCinematicMusicVolume = function(OwnerAddress, InNewValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCinematicMusicVolume: Failed To Allocate The Params");return;end;
 InNewValue = InNewValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InNewValue at +0x0
 writeFloat(_params + 0x0, InNewValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCinematicMusicVolume", _params);
 deAlloc(_params);
end
FNR("BL4.SetCinematicMusicVolume");

BL4.SetClaptrapVolume = function(OwnerAddress, InNewValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetClaptrapVolume: Failed To Allocate The Params");return;end;
 InNewValue = InNewValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InNewValue at +0x0
 writeFloat(_params + 0x0, InNewValue)
 UE.CallProcessEventEx(OwnerAddress, "SetClaptrapVolume", _params);
 deAlloc(_params);
end
FNR("BL4.SetClaptrapVolume");

BL4.SetColorBlindMode = function(OwnerAddress, InColorBlindMode)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetColorBlindMode: Failed To Allocate The Params");return;end;
 InColorBlindMode = InColorBlindMode or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InColorBlindMode at +0x0
 writeByte(_params + 0x0, InColorBlindMode)
 UE.CallProcessEventEx(OwnerAddress, "SetColorBlindMode", _params);
 deAlloc(_params);
end
FNR("BL4.SetColorBlindMode");

BL4.SetCombatVoiceVolume = function(OwnerAddress, InNewValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCombatVoiceVolume: Failed To Allocate The Params");return;end;
 InNewValue = InNewValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InNewValue at +0x0
 writeFloat(_params + 0x0, InNewValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCombatVoiceVolume", _params);
 deAlloc(_params);
end
FNR("BL4.SetCombatVoiceVolume");

BL4.SetCompassVerticalIndicatorConfig = function(OwnerAddress, InConfig)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCompassVerticalIndicatorConfig: Failed To Allocate The Params");return;end;
 InConfig = InConfig or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InConfig at +0x0
 writeInteger(_params + 0x0, InConfig)
 UE.CallProcessEventEx(OwnerAddress, "SetCompassVerticalIndicatorConfig", _params);
 deAlloc(_params);
end
FNR("BL4.SetCompassVerticalIndicatorConfig");

BL4.SetControllerADSSnap = function(OwnerAddress, bInControllerADSSnap)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControllerADSSnap: Failed To Allocate The Params");return;end;
 bInControllerADSSnap = bInControllerADSSnap or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInControllerADSSnap at +0x0
 writeByte(_params + 0x0, bInControllerADSSnap)
 UE.CallProcessEventEx(OwnerAddress, "SetControllerADSSnap", _params);
 deAlloc(_params);
end
FNR("BL4.SetControllerADSSnap");

BL4.SetControllerAimAssistEnabled = function(OwnerAddress, bInControllerAimAssistEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControllerAimAssistEnabled: Failed To Allocate The Params");return;end;
 bInControllerAimAssistEnabled = bInControllerAimAssistEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInControllerAimAssistEnabled at +0x0
 writeByte(_params + 0x0, bInControllerAimAssistEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetControllerAimAssistEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetControllerAimAssistEnabled");

BL4.SetControllerLightingEnabled = function(OwnerAddress, bEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControllerLightingEnabled: Failed To Allocate The Params");return;end;
 bEnabled = bEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnabled at +0x0
 writeByte(_params + 0x0, bEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetControllerLightingEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetControllerLightingEnabled");

BL4.SetControllerLookSensitivity = function(OwnerAddress, InControllerLookSensitivity)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControllerLookSensitivity: Failed To Allocate The Params");return;end;
 InControllerLookSensitivity = InControllerLookSensitivity or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InControllerLookSensitivity at +0x0
 writeFloat(_params + 0x0, InControllerLookSensitivity)
 UE.CallProcessEventEx(OwnerAddress, "SetControllerLookSensitivity", _params);
 deAlloc(_params);
end
FNR("BL4.SetControllerLookSensitivity");

BL4.SetCrosshairEnemyColor = function(OwnerAddress, InEnemyColor)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCrosshairEnemyColor: Failed To Allocate The Params");return;end;
 InEnemyColor = InEnemyColor or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InEnemyColor at +0x0
 writeFloat(_params + 0x0, (InEnemyColor and InEnemyColor.R) or 0)
 writeFloat(_params + 0x4, (InEnemyColor and InEnemyColor.G) or 0)
 writeFloat(_params + 0x8, (InEnemyColor and InEnemyColor.B) or 0)
 writeFloat(_params + 0xC, (InEnemyColor and InEnemyColor.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetCrosshairEnemyColor", _params);
 deAlloc(_params);
end
FNR("BL4.SetCrosshairEnemyColor");

BL4.SetCrosshairFriendlyColor = function(OwnerAddress, InFriendlyColor)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCrosshairFriendlyColor: Failed To Allocate The Params");return;end;
 InFriendlyColor = InFriendlyColor or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InFriendlyColor at +0x0
 writeFloat(_params + 0x0, (InFriendlyColor and InFriendlyColor.R) or 0)
 writeFloat(_params + 0x4, (InFriendlyColor and InFriendlyColor.G) or 0)
 writeFloat(_params + 0x8, (InFriendlyColor and InFriendlyColor.B) or 0)
 writeFloat(_params + 0xC, (InFriendlyColor and InFriendlyColor.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetCrosshairFriendlyColor", _params);
 deAlloc(_params);
end
FNR("BL4.SetCrosshairFriendlyColor");

BL4.SetCrosshairNeutralColor = function(OwnerAddress, InNeutralColor)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCrosshairNeutralColor: Failed To Allocate The Params");return;end;
 InNeutralColor = InNeutralColor or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InNeutralColor at +0x0
 writeFloat(_params + 0x0, (InNeutralColor and InNeutralColor.R) or 0)
 writeFloat(_params + 0x4, (InNeutralColor and InNeutralColor.G) or 0)
 writeFloat(_params + 0x8, (InNeutralColor and InNeutralColor.B) or 0)
 writeFloat(_params + 0xC, (InNeutralColor and InNeutralColor.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetCrosshairNeutralColor", _params);
 deAlloc(_params);
end
FNR("BL4.SetCrosshairNeutralColor");

BL4.SetCrosshairPosition = function(OwnerAddress, InCrosshairPosition)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCrosshairPosition: Failed To Allocate The Params");return;end;
 InCrosshairPosition = InCrosshairPosition or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InCrosshairPosition at +0x0
 writeInteger(_params + 0x0, InCrosshairPosition)
 UE.CallProcessEventEx(OwnerAddress, "SetCrosshairPosition", _params);
 deAlloc(_params);
end
FNR("BL4.SetCrosshairPosition");

BL4.SetCrossSaveEnabled = function(OwnerAddress, bEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCrossSaveEnabled: Failed To Allocate The Params");return;end;
 bEnabled = bEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnabled at +0x0
 writeByte(_params + 0x0, bEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetCrossSaveEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetCrossSaveEnabled");

BL4.SetCursorFriction = function(OwnerAddress, InCursorFriction)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCursorFriction: Failed To Allocate The Params");return;end;
 InCursorFriction = InCursorFriction or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InCursorFriction at +0x0
 writeFloat(_params + 0x0, InCursorFriction)
 UE.CallProcessEventEx(OwnerAddress, "SetCursorFriction", _params);
 deAlloc(_params);
end
FNR("BL4.SetCursorFriction");

BL4.SetCursorMaxIdleTime = function(OwnerAddress, InCursorMaxIdleTime)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCursorMaxIdleTime: Failed To Allocate The Params");return;end;
 InCursorMaxIdleTime = InCursorMaxIdleTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InCursorMaxIdleTime at +0x0
 writeFloat(_params + 0x0, InCursorMaxIdleTime)
 UE.CallProcessEventEx(OwnerAddress, "SetCursorMaxIdleTime", _params);
 deAlloc(_params);
end
FNR("BL4.SetCursorMaxIdleTime");

BL4.SetCursorSensitivity = function(OwnerAddress, InCursorSensitivity)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCursorSensitivity: Failed To Allocate The Params");return;end;
 InCursorSensitivity = InCursorSensitivity or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InCursorSensitivity at +0x0
 writeFloat(_params + 0x0, InCursorSensitivity)
 UE.CallProcessEventEx(OwnerAddress, "SetCursorSensitivity", _params);
 deAlloc(_params);
end
FNR("BL4.SetCursorSensitivity");

BL4.SetCursorShowIdleFlash = function(OwnerAddress, bInCursorShowIdleFlash)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCursorShowIdleFlash: Failed To Allocate The Params");return;end;
 bInCursorShowIdleFlash = bInCursorShowIdleFlash or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInCursorShowIdleFlash at +0x0
 writeByte(_params + 0x0, bInCursorShowIdleFlash)
 UE.CallProcessEventEx(OwnerAddress, "SetCursorShowIdleFlash", _params);
 deAlloc(_params);
end
FNR("BL4.SetCursorShowIdleFlash");

BL4.SetCursorXAxisInvert = function(OwnerAddress, bInCursorXAxisInvert)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCursorXAxisInvert: Failed To Allocate The Params");return;end;
 bInCursorXAxisInvert = bInCursorXAxisInvert or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInCursorXAxisInvert at +0x0
 writeByte(_params + 0x0, bInCursorXAxisInvert)
 UE.CallProcessEventEx(OwnerAddress, "SetCursorXAxisInvert", _params);
 deAlloc(_params);
end
FNR("BL4.SetCursorXAxisInvert");

BL4.SetCursorYAxisInvert = function(OwnerAddress, bInCursorYAxisInvert)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCursorYAxisInvert: Failed To Allocate The Params");return;end;
 bInCursorYAxisInvert = bInCursorYAxisInvert or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInCursorYAxisInvert at +0x0
 writeByte(_params + 0x0, bInCursorYAxisInvert)
 UE.CallProcessEventEx(OwnerAddress, "SetCursorYAxisInvert", _params);
 deAlloc(_params);
end
FNR("BL4.SetCursorYAxisInvert");

BL4.SetDashEnabled = function(OwnerAddress, bInEnableDash)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDashEnabled: Failed To Allocate The Params");return;end;
 bInEnableDash = bInEnableDash or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInEnableDash at +0x0
 writeByte(_params + 0x0, bInEnableDash)
 UE.CallProcessEventEx(OwnerAddress, "SetDashEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetDashEnabled");

BL4.SetDisplayDamageNumbers = function(OwnerAddress, bEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDisplayDamageNumbers: Failed To Allocate The Params");return;end;
 bEnabled = bEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnabled at +0x0
 writeByte(_params + 0x0, bEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetDisplayDamageNumbers", _params);
 deAlloc(_params);
end
FNR("BL4.SetDisplayDamageNumbers");

BL4.SetEchoPathVisibilityDurationType = function(OwnerAddress, InType)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetEchoPathVisibilityDurationType: Failed To Allocate The Params");return;end;
 InType = InType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InType at +0x0
 writeInteger(_params + 0x0, InType)
 UE.CallProcessEventEx(OwnerAddress, "SetEchoPathVisibilityDurationType", _params);
 deAlloc(_params);
end
FNR("BL4.SetEchoPathVisibilityDurationType");

BL4.SetEnableJcmsControl = function(OwnerAddress, InEnable)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetEnableJcmsControl: Failed To Allocate The Params");return;end;
 InEnable = InEnable or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InEnable at +0x0
 writeByte(_params + 0x0, InEnable)
 UE.CallProcessEventEx(OwnerAddress, "SetEnableJcmsControl", _params);
 deAlloc(_params);
end
FNR("BL4.SetEnableJcmsControl");

BL4.SetEQMode = function(OwnerAddress, Mode)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetEQMode: Failed To Allocate The Params");return;end;
 Mode = Mode or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Mode at +0x0
 writeByte(_params + 0x0, Mode)
 UE.CallProcessEventEx(OwnerAddress, "SetEQMode", _params);
 deAlloc(_params);
end
FNR("BL4.SetEQMode");

BL4.SetExplosionsTrim = function(OwnerAddress, InNewValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetExplosionsTrim: Failed To Allocate The Params");return;end;
 InNewValue = InNewValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InNewValue at +0x0
 writeFloat(_params + 0x0, InNewValue)
 UE.CallProcessEventEx(OwnerAddress, "SetExplosionsTrim", _params);
 deAlloc(_params);
end
FNR("BL4.SetExplosionsTrim");

BL4.SetFavoriteFriendsNotificationsEnabled = function(OwnerAddress, bEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetFavoriteFriendsNotificationsEnabled: Failed To Allocate The Params");return;end;
 bEnabled = bEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnabled at +0x0
 writeByte(_params + 0x0, bEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetFavoriteFriendsNotificationsEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetFavoriteFriendsNotificationsEnabled");

BL4.SetForceMono = function(OwnerAddress, bIsMono)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetForceMono: Failed To Allocate The Params");return;end;
 bIsMono = bIsMono or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bIsMono at +0x0
 writeByte(_params + 0x0, bIsMono)
 UE.CallProcessEventEx(OwnerAddress, "SetForceMono", _params);
 deAlloc(_params);
end
FNR("BL4.SetForceMono");

BL4.SetFriendSyncEnabled = function(OwnerAddress, bInFriendSyncEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetFriendSyncEnabled: Failed To Allocate The Params");return;end;
 bInFriendSyncEnabled = bInFriendSyncEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInFriendSyncEnabled at +0x0
 writeByte(_params + 0x0, bInFriendSyncEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetFriendSyncEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetFriendSyncEnabled");

BL4.SetGameMusicVolume = function(OwnerAddress, InNewValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetGameMusicVolume: Failed To Allocate The Params");return;end;
 InNewValue = InNewValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InNewValue at +0x0
 writeFloat(_params + 0x0, InNewValue)
 UE.CallProcessEventEx(OwnerAddress, "SetGameMusicVolume", _params);
 deAlloc(_params);
end
FNR("BL4.SetGameMusicVolume");

BL4.SetGrapplePitchCorrection = function(OwnerAddress, bInGrapplePitchCorrection)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetGrapplePitchCorrection: Failed To Allocate The Params");return;end;
 bInGrapplePitchCorrection = bInGrapplePitchCorrection or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInGrapplePitchCorrection at +0x0
 writeByte(_params + 0x0, bInGrapplePitchCorrection)
 UE.CallProcessEventEx(OwnerAddress, "SetGrapplePitchCorrection", _params);
 deAlloc(_params);
end
FNR("BL4.SetGrapplePitchCorrection");

BL4.SetHasSeenHUDTutorial = function(OwnerAddress, InHUDTutorial)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetHasSeenHUDTutorial: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InHUDTutorial at +0x0
 writeQword(_params + 0x0, InHUDTutorial)
 UE.CallProcessEventEx(OwnerAddress, "SetHasSeenHUDTutorial", _params);
 deAlloc(_params);
end
FNR("BL4.SetHasSeenHUDTutorial");

BL4.SetHasSeenMenuTutorialSequence = function(OwnerAddress, InMenuTutorial)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetHasSeenMenuTutorialSequence: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InMenuTutorial at +0x0
 writeQword(_params + 0x0, InMenuTutorial)
 UE.CallProcessEventEx(OwnerAddress, "SetHasSeenMenuTutorialSequence", _params);
 deAlloc(_params);
end
FNR("BL4.SetHasSeenMenuTutorialSequence");

BL4.SetHidePromotionalContentEnabled = function(OwnerAddress, bEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetHidePromotionalContentEnabled: Failed To Allocate The Params");return;end;
 bEnabled = bEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnabled at +0x0
 writeByte(_params + 0x0, bEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetHidePromotionalContentEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetHidePromotionalContentEnabled");

BL4.SetHighContrastCrosshairActive = function(OwnerAddress, bInHighContrastCrosshairActive)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetHighContrastCrosshairActive: Failed To Allocate The Params");return;end;
 bInHighContrastCrosshairActive = bInHighContrastCrosshairActive or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInHighContrastCrosshairActive at +0x0
 writeByte(_params + 0x0, bInHighContrastCrosshairActive)
 UE.CallProcessEventEx(OwnerAddress, "SetHighContrastCrosshairActive", _params);
 deAlloc(_params);
end
FNR("BL4.SetHighContrastCrosshairActive");

BL4.SetHighContrastHUDActive = function(OwnerAddress, bInHighContrastHUDActive)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetHighContrastHUDActive: Failed To Allocate The Params");return;end;
 bInHighContrastHUDActive = bInHighContrastHUDActive or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInHighContrastHUDActive at +0x0
 writeByte(_params + 0x0, bInHighContrastHUDActive)
 UE.CallProcessEventEx(OwnerAddress, "SetHighContrastHUDActive", _params);
 deAlloc(_params);
end
FNR("BL4.SetHighContrastHUDActive");

BL4.SetHorizontalADSSensitivity = function(OwnerAddress, InHorizontalADSSensitivity)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetHorizontalADSSensitivity: Failed To Allocate The Params");return;end;
 InHorizontalADSSensitivity = InHorizontalADSSensitivity or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InHorizontalADSSensitivity at +0x0
 writeFloat(_params + 0x0, InHorizontalADSSensitivity)
 UE.CallProcessEventEx(OwnerAddress, "SetHorizontalADSSensitivity", _params);
 deAlloc(_params);
end
FNR("BL4.SetHorizontalADSSensitivity");

BL4.SetHorizontalJcmsADSSensitivity = function(OwnerAddress, InHorizontalADSSensitivity)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetHorizontalJcmsADSSensitivity: Failed To Allocate The Params");return;end;
 InHorizontalADSSensitivity = InHorizontalADSSensitivity or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InHorizontalADSSensitivity at +0x0
 writeFloat(_params + 0x0, InHorizontalADSSensitivity)
 UE.CallProcessEventEx(OwnerAddress, "SetHorizontalJcmsADSSensitivity", _params);
 deAlloc(_params);
end
FNR("BL4.SetHorizontalJcmsADSSensitivity");

BL4.SetHorizontalJcmsLookSensitivity = function(OwnerAddress, InHorizontalLookSensitivity)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetHorizontalJcmsLookSensitivity: Failed To Allocate The Params");return;end;
 InHorizontalLookSensitivity = InHorizontalLookSensitivity or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InHorizontalLookSensitivity at +0x0
 writeFloat(_params + 0x0, InHorizontalLookSensitivity)
 UE.CallProcessEventEx(OwnerAddress, "SetHorizontalJcmsLookSensitivity", _params);
 deAlloc(_params);
end
FNR("BL4.SetHorizontalJcmsLookSensitivity");

BL4.SetHorizontalLookSensitivity = function(OwnerAddress, InHorizontalLookSensitivity)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetHorizontalLookSensitivity: Failed To Allocate The Params");return;end;
 InHorizontalLookSensitivity = InHorizontalLookSensitivity or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InHorizontalLookSensitivity at +0x0
 writeFloat(_params + 0x0, InHorizontalLookSensitivity)
 UE.CallProcessEventEx(OwnerAddress, "SetHorizontalLookSensitivity", _params);
 deAlloc(_params);
end
FNR("BL4.SetHorizontalLookSensitivity");

BL4.SetHorizontalMotionControlsADSSensitivity = function(OwnerAddress, InHorizontalADSSensitivity)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetHorizontalMotionControlsADSSensitivity: Failed To Allocate The Params");return;end;
 InHorizontalADSSensitivity = InHorizontalADSSensitivity or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InHorizontalADSSensitivity at +0x0
 writeFloat(_params + 0x0, InHorizontalADSSensitivity)
 UE.CallProcessEventEx(OwnerAddress, "SetHorizontalMotionControlsADSSensitivity", _params);
 deAlloc(_params);
end
FNR("BL4.SetHorizontalMotionControlsADSSensitivity");

BL4.SetHorizontalMotionControlsLookSensitivity = function(OwnerAddress, InHorizontalLookSensitivity)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetHorizontalMotionControlsLookSensitivity: Failed To Allocate The Params");return;end;
 InHorizontalLookSensitivity = InHorizontalLookSensitivity or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InHorizontalLookSensitivity at +0x0
 writeFloat(_params + 0x0, InHorizontalLookSensitivity)
 UE.CallProcessEventEx(OwnerAddress, "SetHorizontalMotionControlsLookSensitivity", _params);
 deAlloc(_params);
end
FNR("BL4.SetHorizontalMotionControlsLookSensitivity");

BL4.SetHorizontalSafeAreaRatio = function(OwnerAddress, InHorizontalSafeAreaRatio)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetHorizontalSafeAreaRatio: Failed To Allocate The Params");return;end;
 InHorizontalSafeAreaRatio = InHorizontalSafeAreaRatio or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InHorizontalSafeAreaRatio at +0x0
 writeFloat(_params + 0x0, InHorizontalSafeAreaRatio)
 UE.CallProcessEventEx(OwnerAddress, "SetHorizontalSafeAreaRatio", _params);
 deAlloc(_params);
end
FNR("BL4.SetHorizontalSafeAreaRatio");

BL4.SetHUDFontScaling = function(OwnerAddress, InFontScaling)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetHUDFontScaling: Failed To Allocate The Params");return;end;
 InFontScaling = InFontScaling or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InFontScaling at +0x0
 writeInteger(_params + 0x0, InFontScaling)
 UE.CallProcessEventEx(OwnerAddress, "SetHUDFontScaling", _params);
 deAlloc(_params);
end
FNR("BL4.SetHUDFontScaling");

BL4.SetHUDTutorialsEnabled = function(OwnerAddress, bHUDTutorialsEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetHUDTutorialsEnabled: Failed To Allocate The Params");return;end;
 bHUDTutorialsEnabled = bHUDTutorialsEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bHUDTutorialsEnabled at +0x0
 writeByte(_params + 0x0, bHUDTutorialsEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetHUDTutorialsEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetHUDTutorialsEnabled");

BL4.SetIncomingDamageTrim = function(OwnerAddress, InNewValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetIncomingDamageTrim: Failed To Allocate The Params");return;end;
 InNewValue = InNewValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InNewValue at +0x0
 writeFloat(_params + 0x0, InNewValue)
 UE.CallProcessEventEx(OwnerAddress, "SetIncomingDamageTrim", _params);
 deAlloc(_params);
end
FNR("BL4.SetIncomingDamageTrim");

BL4.SetIsControllerAimRecenteringEnabled = function(OwnerAddress, bInControllerAimRecenteringEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetIsControllerAimRecenteringEnabled: Failed To Allocate The Params");return;end;
 bInControllerAimRecenteringEnabled = bInControllerAimRecenteringEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInControllerAimRecenteringEnabled at +0x0
 writeByte(_params + 0x0, bInControllerAimRecenteringEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetIsControllerAimRecenteringEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetIsControllerAimRecenteringEnabled");

BL4.SetLeftStickAxialDeadZoneInner = function(OwnerAddress, InLeftStickAxialDeadZoneInner)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLeftStickAxialDeadZoneInner: Failed To Allocate The Params");return;end;
 InLeftStickAxialDeadZoneInner = InLeftStickAxialDeadZoneInner or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InLeftStickAxialDeadZoneInner at +0x0
 writeFloat(_params + 0x0, InLeftStickAxialDeadZoneInner)
 UE.CallProcessEventEx(OwnerAddress, "SetLeftStickAxialDeadZoneInner", _params);
 deAlloc(_params);
end
FNR("BL4.SetLeftStickAxialDeadZoneInner");

BL4.SetLeftStickAxialDeadZoneOuter = function(OwnerAddress, InLeftStickAxialDeadZoneOuter)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLeftStickAxialDeadZoneOuter: Failed To Allocate The Params");return;end;
 InLeftStickAxialDeadZoneOuter = InLeftStickAxialDeadZoneOuter or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InLeftStickAxialDeadZoneOuter at +0x0
 writeFloat(_params + 0x0, InLeftStickAxialDeadZoneOuter)
 UE.CallProcessEventEx(OwnerAddress, "SetLeftStickAxialDeadZoneOuter", _params);
 deAlloc(_params);
end
FNR("BL4.SetLeftStickAxialDeadZoneOuter");

BL4.SetLeftStickRadialDeadZoneInner = function(OwnerAddress, InLeftStickRadialDeadZoneInner)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLeftStickRadialDeadZoneInner: Failed To Allocate The Params");return;end;
 InLeftStickRadialDeadZoneInner = InLeftStickRadialDeadZoneInner or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InLeftStickRadialDeadZoneInner at +0x0
 writeFloat(_params + 0x0, InLeftStickRadialDeadZoneInner)
 UE.CallProcessEventEx(OwnerAddress, "SetLeftStickRadialDeadZoneInner", _params);
 deAlloc(_params);
end
FNR("BL4.SetLeftStickRadialDeadZoneInner");

BL4.SetLeftStickRadialDeadZoneOuter = function(OwnerAddress, InLeftStickRadialDeadZoneOuter)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLeftStickRadialDeadZoneOuter: Failed To Allocate The Params");return;end;
 InLeftStickRadialDeadZoneOuter = InLeftStickRadialDeadZoneOuter or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InLeftStickRadialDeadZoneOuter at +0x0
 writeFloat(_params + 0x0, InLeftStickRadialDeadZoneOuter)
 UE.CallProcessEventEx(OwnerAddress, "SetLeftStickRadialDeadZoneOuter", _params);
 deAlloc(_params);
end
FNR("BL4.SetLeftStickRadialDeadZoneOuter");

BL4.SetLookXAxisInvert_Gamepad = function(OwnerAddress, bInLookXAxisInvert_Gamepad)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLookXAxisInvert_Gamepad: Failed To Allocate The Params");return;end;
 bInLookXAxisInvert_Gamepad = bInLookXAxisInvert_Gamepad or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInLookXAxisInvert_Gamepad at +0x0
 writeByte(_params + 0x0, bInLookXAxisInvert_Gamepad)
 UE.CallProcessEventEx(OwnerAddress, "SetLookXAxisInvert_Gamepad", _params);
 deAlloc(_params);
end
FNR("BL4.SetLookXAxisInvert_Gamepad");

BL4.SetLookXAxisInvert_KBM = function(OwnerAddress, bInLookXAxisInvert_KBM)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLookXAxisInvert_KBM: Failed To Allocate The Params");return;end;
 bInLookXAxisInvert_KBM = bInLookXAxisInvert_KBM or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInLookXAxisInvert_KBM at +0x0
 writeByte(_params + 0x0, bInLookXAxisInvert_KBM)
 UE.CallProcessEventEx(OwnerAddress, "SetLookXAxisInvert_KBM", _params);
 deAlloc(_params);
end
FNR("BL4.SetLookXAxisInvert_KBM");

BL4.SetLookYAxisInvert_Gamepad = function(OwnerAddress, bInLookYAxisInvert_Gamepad)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLookYAxisInvert_Gamepad: Failed To Allocate The Params");return;end;
 bInLookYAxisInvert_Gamepad = bInLookYAxisInvert_Gamepad or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInLookYAxisInvert_Gamepad at +0x0
 writeByte(_params + 0x0, bInLookYAxisInvert_Gamepad)
 UE.CallProcessEventEx(OwnerAddress, "SetLookYAxisInvert_Gamepad", _params);
 deAlloc(_params);
end
FNR("BL4.SetLookYAxisInvert_Gamepad");

BL4.SetLookYAxisInvert_KBM = function(OwnerAddress, bInLookYAxisInvert_KBM)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLookYAxisInvert_KBM: Failed To Allocate The Params");return;end;
 bInLookYAxisInvert_KBM = bInLookYAxisInvert_KBM or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInLookYAxisInvert_KBM at +0x0
 writeByte(_params + 0x0, bInLookYAxisInvert_KBM)
 UE.CallProcessEventEx(OwnerAddress, "SetLookYAxisInvert_KBM", _params);
 deAlloc(_params);
end
FNR("BL4.SetLookYAxisInvert_KBM");

BL4.SetMapViewerZoomSpeed = function(OwnerAddress, InNewValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMapViewerZoomSpeed: Failed To Allocate The Params");return;end;
 InNewValue = InNewValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InNewValue at +0x0
 writeFloat(_params + 0x0, InNewValue)
 UE.CallProcessEventEx(OwnerAddress, "SetMapViewerZoomSpeed", _params);
 deAlloc(_params);
end
FNR("BL4.SetMapViewerZoomSpeed");

BL4.SetMatchmakingAutoRegionSelectEnabled = function(OwnerAddress, bEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMatchmakingAutoRegionSelectEnabled: Failed To Allocate The Params");return;end;
 bEnabled = bEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnabled at +0x0
 writeByte(_params + 0x0, bEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetMatchmakingAutoRegionSelectEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetMatchmakingAutoRegionSelectEnabled");

BL4.SetMatchmakingRegionPreferences = function(OwnerAddress, MatchmakingRegions)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMatchmakingRegionPreferences: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MatchmakingRegions at +0x0
 writeQword(_params + 0x0, MatchmakingRegions)
 UE.CallProcessEventEx(OwnerAddress, "SetMatchmakingRegionPreferences", _params);
 deAlloc(_params);
end
FNR("BL4.SetMatchmakingRegionPreferences");

BL4.SetMenuFontScaling = function(OwnerAddress, InFontScaling)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMenuFontScaling: Failed To Allocate The Params");return;end;
 InFontScaling = InFontScaling or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InFontScaling at +0x0
 writeInteger(_params + 0x0, InFontScaling)
 UE.CallProcessEventEx(OwnerAddress, "SetMenuFontScaling", _params);
 deAlloc(_params);
end
FNR("BL4.SetMenuFontScaling");

BL4.SetMenuMusicVolume = function(OwnerAddress, InNewValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMenuMusicVolume: Failed To Allocate The Params");return;end;
 InNewValue = InNewValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InNewValue at +0x0
 writeFloat(_params + 0x0, InNewValue)
 UE.CallProcessEventEx(OwnerAddress, "SetMenuMusicVolume", _params);
 deAlloc(_params);
end
FNR("BL4.SetMenuMusicVolume");

BL4.SetMenuTutorialsEnabled = function(OwnerAddress, bMenuTutorialsEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMenuTutorialsEnabled: Failed To Allocate The Params");return;end;
 bMenuTutorialsEnabled = bMenuTutorialsEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bMenuTutorialsEnabled at +0x0
 writeByte(_params + 0x0, bMenuTutorialsEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetMenuTutorialsEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetMenuTutorialsEnabled");

BL4.SetMotionControlsSetting = function(OwnerAddress, SettingIn)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMotionControlsSetting: Failed To Allocate The Params");return;end;
 SettingIn = SettingIn or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: SettingIn at +0x0
 writeByte(_params + 0x0, SettingIn)
 UE.CallProcessEventEx(OwnerAddress, "SetMotionControlsSetting", _params);
 deAlloc(_params);
end
FNR("BL4.SetMotionControlsSetting");

BL4.SetMouseADSSnap = function(OwnerAddress, bInMouseADSSnap)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMouseADSSnap: Failed To Allocate The Params");return;end;
 bInMouseADSSnap = bInMouseADSSnap or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInMouseADSSnap at +0x0
 writeByte(_params + 0x0, bInMouseADSSnap)
 UE.CallProcessEventEx(OwnerAddress, "SetMouseADSSnap", _params);
 deAlloc(_params);
end
FNR("BL4.SetMouseADSSnap");

BL4.SetMouseLookSensitivity = function(OwnerAddress, InMouseLookSensitivity)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMouseLookSensitivity: Failed To Allocate The Params");return;end;
 InMouseLookSensitivity = InMouseLookSensitivity or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InMouseLookSensitivity at +0x0
 writeFloat(_params + 0x0, InMouseLookSensitivity)
 UE.CallProcessEventEx(OwnerAddress, "SetMouseLookSensitivity", _params);
 deAlloc(_params);
end
FNR("BL4.SetMouseLookSensitivity");

BL4.SetMoveXAxisInvert_Gamepad = function(OwnerAddress, bInMoveXAxisInvert_Gamepad)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMoveXAxisInvert_Gamepad: Failed To Allocate The Params");return;end;
 bInMoveXAxisInvert_Gamepad = bInMoveXAxisInvert_Gamepad or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInMoveXAxisInvert_Gamepad at +0x0
 writeByte(_params + 0x0, bInMoveXAxisInvert_Gamepad)
 UE.CallProcessEventEx(OwnerAddress, "SetMoveXAxisInvert_Gamepad", _params);
 deAlloc(_params);
end
FNR("BL4.SetMoveXAxisInvert_Gamepad");

BL4.SetMoveXAxisInvert_KBM = function(OwnerAddress, bInMoveXAxisInvert_KBM)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMoveXAxisInvert_KBM: Failed To Allocate The Params");return;end;
 bInMoveXAxisInvert_KBM = bInMoveXAxisInvert_KBM or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInMoveXAxisInvert_KBM at +0x0
 writeByte(_params + 0x0, bInMoveXAxisInvert_KBM)
 UE.CallProcessEventEx(OwnerAddress, "SetMoveXAxisInvert_KBM", _params);
 deAlloc(_params);
end
FNR("BL4.SetMoveXAxisInvert_KBM");

BL4.SetMoveYAxisInvert_Gamepad = function(OwnerAddress, bInMoveYAxisInvert_Gamepad)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMoveYAxisInvert_Gamepad: Failed To Allocate The Params");return;end;
 bInMoveYAxisInvert_Gamepad = bInMoveYAxisInvert_Gamepad or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInMoveYAxisInvert_Gamepad at +0x0
 writeByte(_params + 0x0, bInMoveYAxisInvert_Gamepad)
 UE.CallProcessEventEx(OwnerAddress, "SetMoveYAxisInvert_Gamepad", _params);
 deAlloc(_params);
end
FNR("BL4.SetMoveYAxisInvert_Gamepad");

BL4.SetMoveYAxisInvert_KBM = function(OwnerAddress, bInMoveYAxisInvert_KBM)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMoveYAxisInvert_KBM: Failed To Allocate The Params");return;end;
 bInMoveYAxisInvert_KBM = bInMoveYAxisInvert_KBM or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInMoveYAxisInvert_KBM at +0x0
 writeByte(_params + 0x0, bInMoveYAxisInvert_KBM)
 UE.CallProcessEventEx(OwnerAddress, "SetMoveYAxisInvert_KBM", _params);
 deAlloc(_params);
end
FNR("BL4.SetMoveYAxisInvert_KBM");

BL4.SetOnFootGamepadStickPreset = function(OwnerAddress, InOnFootGamepadStickPreset)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetOnFootGamepadStickPreset: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InOnFootGamepadStickPreset at +0x0
 writeQword(_params + 0x0, InOnFootGamepadStickPreset)
 UE.CallProcessEventEx(OwnerAddress, "SetOnFootGamepadStickPreset", _params);
 deAlloc(_params);
end
FNR("BL4.SetOnFootGamepadStickPreset");

BL4.SetOutgoingDamageTrim = function(OwnerAddress, InNewValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetOutgoingDamageTrim: Failed To Allocate The Params");return;end;
 InNewValue = InNewValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InNewValue at +0x0
 writeFloat(_params + 0x0, InNewValue)
 UE.CallProcessEventEx(OwnerAddress, "SetOutgoingDamageTrim", _params);
 deAlloc(_params);
end
FNR("BL4.SetOutgoingDamageTrim");

BL4.SetPlayerCalloutsTrim = function(OwnerAddress, InNewValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPlayerCalloutsTrim: Failed To Allocate The Params");return;end;
 InNewValue = InNewValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InNewValue at +0x0
 writeFloat(_params + 0x0, InNewValue)
 UE.CallProcessEventEx(OwnerAddress, "SetPlayerCalloutsTrim", _params);
 deAlloc(_params);
end
FNR("BL4.SetPlayerCalloutsTrim");

BL4.SetPlayerEffortsTrim = function(OwnerAddress, InNewValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPlayerEffortsTrim: Failed To Allocate The Params");return;end;
 InNewValue = InNewValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InNewValue at +0x0
 writeFloat(_params + 0x0, InNewValue)
 UE.CallProcessEventEx(OwnerAddress, "SetPlayerEffortsTrim", _params);
 deAlloc(_params);
end
FNR("BL4.SetPlayerEffortsTrim");

BL4.SetPlayerIdleLinesTrim = function(OwnerAddress, InNewValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPlayerIdleLinesTrim: Failed To Allocate The Params");return;end;
 InNewValue = InNewValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InNewValue at +0x0
 writeFloat(_params + 0x0, InNewValue)
 UE.CallProcessEventEx(OwnerAddress, "SetPlayerIdleLinesTrim", _params);
 deAlloc(_params);
end
FNR("BL4.SetPlayerIdleLinesTrim");

BL4.SetPlayerVoiceVolume = function(OwnerAddress, InNewValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPlayerVoiceVolume: Failed To Allocate The Params");return;end;
 InNewValue = InNewValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InNewValue at +0x0
 writeFloat(_params + 0x0, InNewValue)
 UE.CallProcessEventEx(OwnerAddress, "SetPlayerVoiceVolume", _params);
 deAlloc(_params);
end
FNR("BL4.SetPlayerVoiceVolume");

BL4.SetPlayerWeaponTrim = function(OwnerAddress, InNewValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPlayerWeaponTrim: Failed To Allocate The Params");return;end;
 InNewValue = InNewValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InNewValue at +0x0
 writeFloat(_params + 0x0, InNewValue)
 UE.CallProcessEventEx(OwnerAddress, "SetPlayerWeaponTrim", _params);
 deAlloc(_params);
end
FNR("BL4.SetPlayerWeaponTrim");

BL4.SetProfanityFilterEnabled = function(OwnerAddress, bEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetProfanityFilterEnabled: Failed To Allocate The Params");return;end;
 bEnabled = bEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnabled at +0x0
 writeByte(_params + 0x0, bEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetProfanityFilterEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetProfanityFilterEnabled");

BL4.SetPushToTalkEnabled = function(OwnerAddress, bInPushToTalkEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPushToTalkEnabled: Failed To Allocate The Params");return;end;
 bInPushToTalkEnabled = bInPushToTalkEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInPushToTalkEnabled at +0x0
 writeByte(_params + 0x0, bInPushToTalkEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetPushToTalkEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetPushToTalkEnabled");

BL4.SetRadarDisplayMode = function(OwnerAddress, InRadarDisplayMode)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRadarDisplayMode: Failed To Allocate The Params");return;end;
 InRadarDisplayMode = InRadarDisplayMode or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InRadarDisplayMode at +0x0
 writeInteger(_params + 0x0, InRadarDisplayMode)
 UE.CallProcessEventEx(OwnerAddress, "SetRadarDisplayMode", _params);
 deAlloc(_params);
end
FNR("BL4.SetRadarDisplayMode");

BL4.SetRightStickAxialDeadZoneInner = function(OwnerAddress, InRightStickAxialDeadZoneInner)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRightStickAxialDeadZoneInner: Failed To Allocate The Params");return;end;
 InRightStickAxialDeadZoneInner = InRightStickAxialDeadZoneInner or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InRightStickAxialDeadZoneInner at +0x0
 writeFloat(_params + 0x0, InRightStickAxialDeadZoneInner)
 UE.CallProcessEventEx(OwnerAddress, "SetRightStickAxialDeadZoneInner", _params);
 deAlloc(_params);
end
FNR("BL4.SetRightStickAxialDeadZoneInner");

BL4.SetRightStickAxialDeadZoneOuter = function(OwnerAddress, InRightStickAxialDeadZoneOuter)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRightStickAxialDeadZoneOuter: Failed To Allocate The Params");return;end;
 InRightStickAxialDeadZoneOuter = InRightStickAxialDeadZoneOuter or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InRightStickAxialDeadZoneOuter at +0x0
 writeFloat(_params + 0x0, InRightStickAxialDeadZoneOuter)
 UE.CallProcessEventEx(OwnerAddress, "SetRightStickAxialDeadZoneOuter", _params);
 deAlloc(_params);
end
FNR("BL4.SetRightStickAxialDeadZoneOuter");

BL4.SetRightStickRadialDeadZoneInner = function(OwnerAddress, InRightStickRadialDeadZoneInner)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRightStickRadialDeadZoneInner: Failed To Allocate The Params");return;end;
 InRightStickRadialDeadZoneInner = InRightStickRadialDeadZoneInner or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InRightStickRadialDeadZoneInner at +0x0
 writeFloat(_params + 0x0, InRightStickRadialDeadZoneInner)
 UE.CallProcessEventEx(OwnerAddress, "SetRightStickRadialDeadZoneInner", _params);
 deAlloc(_params);
end
FNR("BL4.SetRightStickRadialDeadZoneInner");

BL4.SetRightStickRadialDeadZoneOuter = function(OwnerAddress, InRightStickRadialDeadZoneOuter)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRightStickRadialDeadZoneOuter: Failed To Allocate The Params");return;end;
 InRightStickRadialDeadZoneOuter = InRightStickRadialDeadZoneOuter or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InRightStickRadialDeadZoneOuter at +0x0
 writeFloat(_params + 0x0, InRightStickRadialDeadZoneOuter)
 UE.CallProcessEventEx(OwnerAddress, "SetRightStickRadialDeadZoneOuter", _params);
 deAlloc(_params);
end
FNR("BL4.SetRightStickRadialDeadZoneOuter");

BL4.SetShiftProfileVisibility = function(OwnerAddress, bInProfileVisibility)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetShiftProfileVisibility: Failed To Allocate The Params");return;end;
 bInProfileVisibility = bInProfileVisibility or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInProfileVisibility at +0x0
 writeByte(_params + 0x0, bInProfileVisibility)
 UE.CallProcessEventEx(OwnerAddress, "SetShiftProfileVisibility", _params);
 deAlloc(_params);
end
FNR("BL4.SetShiftProfileVisibility");

BL4.SetShowChallengeNotifications = function(OwnerAddress, bInShowChallengeNotifications)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetShowChallengeNotifications: Failed To Allocate The Params");return;end;
 bInShowChallengeNotifications = bInShowChallengeNotifications or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInShowChallengeNotifications at +0x0
 writeByte(_params + 0x0, bInShowChallengeNotifications)
 UE.CallProcessEventEx(OwnerAddress, "SetShowChallengeNotifications", _params);
 deAlloc(_params);
end
FNR("BL4.SetShowChallengeNotifications");

BL4.SetShowVaultCardNotifications = function(OwnerAddress, bInShowVaultCardNotifications)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetShowVaultCardNotifications: Failed To Allocate The Params");return;end;
 bInShowVaultCardNotifications = bInShowVaultCardNotifications or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInShowVaultCardNotifications at +0x0
 writeByte(_params + 0x0, bInShowVaultCardNotifications)
 UE.CallProcessEventEx(OwnerAddress, "SetShowVaultCardNotifications", _params);
 deAlloc(_params);
end
FNR("BL4.SetShowVaultCardNotifications");

BL4.SetStreamerModeLocalEnabled = function(OwnerAddress, bEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetStreamerModeLocalEnabled: Failed To Allocate The Params");return;end;
 bEnabled = bEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnabled at +0x0
 writeByte(_params + 0x0, bEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetStreamerModeLocalEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetStreamerModeLocalEnabled");

BL4.SetStreamerModeRemoteEnabled = function(OwnerAddress, bEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetStreamerModeRemoteEnabled: Failed To Allocate The Params");return;end;
 bEnabled = bEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnabled at +0x0
 writeByte(_params + 0x0, bEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetStreamerModeRemoteEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetStreamerModeRemoteEnabled");

BL4.SetSubtitleBackgroundColor = function(OwnerAddress, InSubtitleBackgroundColor)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSubtitleBackgroundColor: Failed To Allocate The Params");return;end;
 InSubtitleBackgroundColor = InSubtitleBackgroundColor or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSubtitleBackgroundColor at +0x0
 writeFloat(_params + 0x0, (InSubtitleBackgroundColor and InSubtitleBackgroundColor.R) or 0)
 writeFloat(_params + 0x4, (InSubtitleBackgroundColor and InSubtitleBackgroundColor.G) or 0)
 writeFloat(_params + 0x8, (InSubtitleBackgroundColor and InSubtitleBackgroundColor.B) or 0)
 writeFloat(_params + 0xC, (InSubtitleBackgroundColor and InSubtitleBackgroundColor.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetSubtitleBackgroundColor", _params);
 deAlloc(_params);
end
FNR("BL4.SetSubtitleBackgroundColor");

BL4.SetSubtitleBackgroundEnabled = function(OwnerAddress, bInSubtitleBackgroundEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSubtitleBackgroundEnabled: Failed To Allocate The Params");return;end;
 bInSubtitleBackgroundEnabled = bInSubtitleBackgroundEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInSubtitleBackgroundEnabled at +0x0
 writeByte(_params + 0x0, bInSubtitleBackgroundEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetSubtitleBackgroundEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetSubtitleBackgroundEnabled");

BL4.SetSubtitleBackgroundOpacity = function(OwnerAddress, InSubtitleBackgroundOpacity)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSubtitleBackgroundOpacity: Failed To Allocate The Params");return;end;
 InSubtitleBackgroundOpacity = InSubtitleBackgroundOpacity or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InSubtitleBackgroundOpacity at +0x0
 writeInteger(_params + 0x0, InSubtitleBackgroundOpacity)
 UE.CallProcessEventEx(OwnerAddress, "SetSubtitleBackgroundOpacity", _params);
 deAlloc(_params);
end
FNR("BL4.SetSubtitleBackgroundOpacity");

BL4.SetSubtitleColor = function(OwnerAddress, InSubtitleColor)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSubtitleColor: Failed To Allocate The Params");return;end;
 InSubtitleColor = InSubtitleColor or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSubtitleColor at +0x0
 writeFloat(_params + 0x0, (InSubtitleColor and InSubtitleColor.R) or 0)
 writeFloat(_params + 0x4, (InSubtitleColor and InSubtitleColor.G) or 0)
 writeFloat(_params + 0x8, (InSubtitleColor and InSubtitleColor.B) or 0)
 writeFloat(_params + 0xC, (InSubtitleColor and InSubtitleColor.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetSubtitleColor", _params);
 deAlloc(_params);
end
FNR("BL4.SetSubtitleColor");

BL4.SetSubtitlesEnabled = function(OwnerAddress, bInSubtitlesEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSubtitlesEnabled: Failed To Allocate The Params");return;end;
 bInSubtitlesEnabled = bInSubtitlesEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInSubtitlesEnabled at +0x0
 writeByte(_params + 0x0, bInSubtitlesEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetSubtitlesEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetSubtitlesEnabled");

BL4.SetSubtitleSpeakerColor = function(OwnerAddress, InSpeakerColor)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSubtitleSpeakerColor: Failed To Allocate The Params");return;end;
 InSpeakerColor = InSpeakerColor or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSpeakerColor at +0x0
 writeFloat(_params + 0x0, (InSpeakerColor and InSpeakerColor.R) or 0)
 writeFloat(_params + 0x4, (InSpeakerColor and InSpeakerColor.G) or 0)
 writeFloat(_params + 0x8, (InSpeakerColor and InSpeakerColor.B) or 0)
 writeFloat(_params + 0xC, (InSpeakerColor and InSpeakerColor.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetSubtitleSpeakerColor", _params);
 deAlloc(_params);
end
FNR("BL4.SetSubtitleSpeakerColor");

BL4.SetSubtitleSpeakerEnabled = function(OwnerAddress, bInSubtitleSpeakerEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSubtitleSpeakerEnabled: Failed To Allocate The Params");return;end;
 bInSubtitleSpeakerEnabled = bInSubtitleSpeakerEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInSubtitleSpeakerEnabled at +0x0
 writeByte(_params + 0x0, bInSubtitleSpeakerEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetSubtitleSpeakerEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetSubtitleSpeakerEnabled");

BL4.SetSubtitleTextOpacity = function(OwnerAddress, bInSubtitleTextOpacity)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSubtitleTextOpacity: Failed To Allocate The Params");return;end;
 bInSubtitleTextOpacity = bInSubtitleTextOpacity or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInSubtitleTextOpacity at +0x0
 writeFloat(_params + 0x0, bInSubtitleTextOpacity)
 UE.CallProcessEventEx(OwnerAddress, "SetSubtitleTextOpacity", _params);
 deAlloc(_params);
end
FNR("BL4.SetSubtitleTextOpacity");

BL4.SetSubtitleTextSize = function(OwnerAddress, InSubtitleTextSize)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSubtitleTextSize: Failed To Allocate The Params");return;end;
 InSubtitleTextSize = InSubtitleTextSize or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InSubtitleTextSize at +0x0
 writeInteger(_params + 0x0, InSubtitleTextSize)
 UE.CallProcessEventEx(OwnerAddress, "SetSubtitleTextSize", _params);
 deAlloc(_params);
end
FNR("BL4.SetSubtitleTextSize");

BL4.SetTextChatEnabled = function(OwnerAddress, bInTextChatEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTextChatEnabled: Failed To Allocate The Params");return;end;
 bInTextChatEnabled = bInTextChatEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInTextChatEnabled at +0x0
 writeByte(_params + 0x0, bInTextChatEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetTextChatEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetTextChatEnabled");

BL4.SetToggleCrouch = function(OwnerAddress, bInToggleCrouch)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetToggleCrouch: Failed To Allocate The Params");return;end;
 bInToggleCrouch = bInToggleCrouch or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInToggleCrouch at +0x0
 writeByte(_params + 0x0, bInToggleCrouch)
 UE.CallProcessEventEx(OwnerAddress, "SetToggleCrouch", _params);
 deAlloc(_params);
end
FNR("BL4.SetToggleCrouch");

BL4.SetToggleSprint = function(OwnerAddress, bInToggleSprint)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetToggleSprint: Failed To Allocate The Params");return;end;
 bInToggleSprint = bInToggleSprint or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInToggleSprint at +0x0
 writeByte(_params + 0x0, bInToggleSprint)
 UE.CallProcessEventEx(OwnerAddress, "SetToggleSprint", _params);
 deAlloc(_params);
end
FNR("BL4.SetToggleSprint");

BL4.SetToggleZoom = function(OwnerAddress, bInToggleZoom)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetToggleZoom: Failed To Allocate The Params");return;end;
 bInToggleZoom = bInToggleZoom or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInToggleZoom at +0x0
 writeByte(_params + 0x0, bInToggleZoom)
 UE.CallProcessEventEx(OwnerAddress, "SetToggleZoom", _params);
 deAlloc(_params);
end
FNR("BL4.SetToggleZoom");

BL4.SetTouchScreenForGameplayEnabled = function(OwnerAddress, bInAimMouseAndTouchEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTouchScreenForGameplayEnabled: Failed To Allocate The Params");return;end;
 bInAimMouseAndTouchEnabled = bInAimMouseAndTouchEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInAimMouseAndTouchEnabled at +0x0
 writeByte(_params + 0x0, bInAimMouseAndTouchEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetTouchScreenForGameplayEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetTouchScreenForGameplayEnabled");

BL4.SetUITrim = function(OwnerAddress, InNewValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetUITrim: Failed To Allocate The Params");return;end;
 InNewValue = InNewValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InNewValue at +0x0
 writeFloat(_params + 0x0, InNewValue)
 UE.CallProcessEventEx(OwnerAddress, "SetUITrim", _params);
 deAlloc(_params);
end
FNR("BL4.SetUITrim");

BL4.SetUseBoldSubtitlesEnabled = function(OwnerAddress, bInUseBoldSubtitles)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetUseBoldSubtitlesEnabled: Failed To Allocate The Params");return;end;
 bInUseBoldSubtitles = bInUseBoldSubtitles or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInUseBoldSubtitles at +0x0
 writeByte(_params + 0x0, bInUseBoldSubtitles)
 UE.CallProcessEventEx(OwnerAddress, "SetUseBoldSubtitlesEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetUseBoldSubtitlesEnabled");

BL4.SetUseControllerSpeaker = function(OwnerAddress, bShouldUse)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetUseControllerSpeaker: Failed To Allocate The Params");return;end;
 bShouldUse = bShouldUse or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bShouldUse at +0x0
 writeByte(_params + 0x0, bShouldUse)
 UE.CallProcessEventEx(OwnerAddress, "SetUseControllerSpeaker", _params);
 deAlloc(_params);
end
FNR("BL4.SetUseControllerSpeaker");

BL4.SetUseToggleGlideGamepad = function(OwnerAddress, bInUseToggleGlideGamepad)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetUseToggleGlideGamepad: Failed To Allocate The Params");return;end;
 bInUseToggleGlideGamepad = bInUseToggleGlideGamepad or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInUseToggleGlideGamepad at +0x0
 writeByte(_params + 0x0, bInUseToggleGlideGamepad)
 UE.CallProcessEventEx(OwnerAddress, "SetUseToggleGlideGamepad", _params);
 deAlloc(_params);
end
FNR("BL4.SetUseToggleGlideGamepad");

BL4.SetUseToggleGlideKBM = function(OwnerAddress, bInUseToggleGlideKBM)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetUseToggleGlideKBM: Failed To Allocate The Params");return;end;
 bInUseToggleGlideKBM = bInUseToggleGlideKBM or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInUseToggleGlideKBM at +0x0
 writeByte(_params + 0x0, bInUseToggleGlideKBM)
 UE.CallProcessEventEx(OwnerAddress, "SetUseToggleGlideKBM", _params);
 deAlloc(_params);
end
FNR("BL4.SetUseToggleGlideKBM");

BL4.SetVehicleFOV = function(OwnerAddress, InVehicleFOV)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVehicleFOV: Failed To Allocate The Params");return;end;
 InVehicleFOV = InVehicleFOV or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InVehicleFOV at +0x0
 writeFloat(_params + 0x0, InVehicleFOV)
 UE.CallProcessEventEx(OwnerAddress, "SetVehicleFOV", _params);
 deAlloc(_params);
end
FNR("BL4.SetVehicleFOV");

BL4.SetVehicleGamepadStickPreset = function(OwnerAddress, InVehicleGamepadStickPreset)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVehicleGamepadStickPreset: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVehicleGamepadStickPreset at +0x0
 writeQword(_params + 0x0, InVehicleGamepadStickPreset)
 UE.CallProcessEventEx(OwnerAddress, "SetVehicleGamepadStickPreset", _params);
 deAlloc(_params);
end
FNR("BL4.SetVehicleGamepadStickPreset");

BL4.SetVerticalADSSensitivity = function(OwnerAddress, InVerticalADSSensitivity)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVerticalADSSensitivity: Failed To Allocate The Params");return;end;
 InVerticalADSSensitivity = InVerticalADSSensitivity or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InVerticalADSSensitivity at +0x0
 writeFloat(_params + 0x0, InVerticalADSSensitivity)
 UE.CallProcessEventEx(OwnerAddress, "SetVerticalADSSensitivity", _params);
 deAlloc(_params);
end
FNR("BL4.SetVerticalADSSensitivity");

BL4.SetVerticalJcmsADSSensitivity = function(OwnerAddress, InVerticalADSSensitivity)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVerticalJcmsADSSensitivity: Failed To Allocate The Params");return;end;
 InVerticalADSSensitivity = InVerticalADSSensitivity or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InVerticalADSSensitivity at +0x0
 writeFloat(_params + 0x0, InVerticalADSSensitivity)
 UE.CallProcessEventEx(OwnerAddress, "SetVerticalJcmsADSSensitivity", _params);
 deAlloc(_params);
end
FNR("BL4.SetVerticalJcmsADSSensitivity");

BL4.SetVerticalJcmsLookSensitivity = function(OwnerAddress, InVerticalLookSensitivity)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVerticalJcmsLookSensitivity: Failed To Allocate The Params");return;end;
 InVerticalLookSensitivity = InVerticalLookSensitivity or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InVerticalLookSensitivity at +0x0
 writeFloat(_params + 0x0, InVerticalLookSensitivity)
 UE.CallProcessEventEx(OwnerAddress, "SetVerticalJcmsLookSensitivity", _params);
 deAlloc(_params);
end
FNR("BL4.SetVerticalJcmsLookSensitivity");

BL4.SetVerticalLookSensitivity = function(OwnerAddress, InVerticalLookSensitivity)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVerticalLookSensitivity: Failed To Allocate The Params");return;end;
 InVerticalLookSensitivity = InVerticalLookSensitivity or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InVerticalLookSensitivity at +0x0
 writeFloat(_params + 0x0, InVerticalLookSensitivity)
 UE.CallProcessEventEx(OwnerAddress, "SetVerticalLookSensitivity", _params);
 deAlloc(_params);
end
FNR("BL4.SetVerticalLookSensitivity");

BL4.SetVerticalMotionControlsADSSensitivity = function(OwnerAddress, InVerticalADSSensitivity)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVerticalMotionControlsADSSensitivity: Failed To Allocate The Params");return;end;
 InVerticalADSSensitivity = InVerticalADSSensitivity or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InVerticalADSSensitivity at +0x0
 writeFloat(_params + 0x0, InVerticalADSSensitivity)
 UE.CallProcessEventEx(OwnerAddress, "SetVerticalMotionControlsADSSensitivity", _params);
 deAlloc(_params);
end
FNR("BL4.SetVerticalMotionControlsADSSensitivity");

BL4.SetVerticalMotionControlsLookSensitivity = function(OwnerAddress, InVerticalLookSensitivity)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVerticalMotionControlsLookSensitivity: Failed To Allocate The Params");return;end;
 InVerticalLookSensitivity = InVerticalLookSensitivity or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InVerticalLookSensitivity at +0x0
 writeFloat(_params + 0x0, InVerticalLookSensitivity)
 UE.CallProcessEventEx(OwnerAddress, "SetVerticalMotionControlsLookSensitivity", _params);
 deAlloc(_params);
end
FNR("BL4.SetVerticalMotionControlsLookSensitivity");

BL4.SetVerticalSafeAreaRatio = function(OwnerAddress, InVerticalSafeAreaRatio)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVerticalSafeAreaRatio: Failed To Allocate The Params");return;end;
 InVerticalSafeAreaRatio = InVerticalSafeAreaRatio or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InVerticalSafeAreaRatio at +0x0
 writeFloat(_params + 0x0, InVerticalSafeAreaRatio)
 UE.CallProcessEventEx(OwnerAddress, "SetVerticalSafeAreaRatio", _params);
 deAlloc(_params);
end
FNR("BL4.SetVerticalSafeAreaRatio");

BL4.SetVoiceChatEnabled = function(OwnerAddress, bInVoiceChatEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVoiceChatEnabled: Failed To Allocate The Params");return;end;
 bInVoiceChatEnabled = bInVoiceChatEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInVoiceChatEnabled at +0x0
 writeByte(_params + 0x0, bInVoiceChatEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetVoiceChatEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetVoiceChatEnabled");

BL4.SetVoiceChatVolume = function(OwnerAddress, InVoiceChatVolume)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVoiceChatVolume: Failed To Allocate The Params");return;end;
 InVoiceChatVolume = InVoiceChatVolume or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InVoiceChatVolume at +0x0
 writeFloat(_params + 0x0, InVoiceChatVolume)
 UE.CallProcessEventEx(OwnerAddress, "SetVoiceChatVolume", _params);
 deAlloc(_params);
end
FNR("BL4.SetVoiceChatVolume");

