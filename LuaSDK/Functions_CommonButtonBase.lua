BL4.BP_OnInputMethodChanged = function(OwnerAddress, CurrentInputType)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BP_OnInputMethodChanged: Failed To Allocate The Params");return;end;
 CurrentInputType = CurrentInputType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: CurrentInputType at +0x0
 writeByte(_params + 0x0, CurrentInputType)
 UE.CallProcessEventEx(OwnerAddress, "BP_OnInputMethodChanged", _params);
 deAlloc(_params);
end
FNR("BL4.BP_OnInputMethodChanged");

BL4.BP_OnLockedChanged = function(OwnerAddress, bIsLocked)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BP_OnLockedChanged: Failed To Allocate The Params");return;end;
 bIsLocked = bIsLocked or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bIsLocked at +0x0
 writeByte(_params + 0x0, bIsLocked)
 UE.CallProcessEventEx(OwnerAddress, "BP_OnLockedChanged", _params);
 deAlloc(_params);
end
FNR("BL4.BP_OnLockedChanged");

BL4.DisableButtonWithReason = function(OwnerAddress, DisabledReason)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DisableButtonWithReason: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DisabledReason at +0x0
 writeQword(_params + 0x0, DisabledReason)
 UE.CallProcessEventEx(OwnerAddress, "DisableButtonWithReason", _params);
 deAlloc(_params);
end
FNR("BL4.DisableButtonWithReason");

BL4.GetConvertInputActionToHold = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetConvertInputActionToHold: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetConvertInputActionToHold", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetConvertInputActionToHold");

BL4.GetCurrentButtonPadding = function(OwnerAddress, OutButtonPadding)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCurrentButtonPadding: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OutButtonPadding at +0x0
 writeQword(_params + 0x0, OutButtonPadding)
 UE.CallProcessEventEx(OwnerAddress, "GetCurrentButtonPadding", _params);
 deAlloc(_params);
end
FNR("BL4.GetCurrentButtonPadding");

BL4.GetCurrentCustomPadding = function(OwnerAddress, OutCustomPadding)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCurrentCustomPadding: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OutCustomPadding at +0x0
 writeQword(_params + 0x0, OutCustomPadding)
 UE.CallProcessEventEx(OwnerAddress, "GetCurrentCustomPadding", _params);
 deAlloc(_params);
end
FNR("BL4.GetCurrentCustomPadding");

BL4.GetCurrentTextStyle = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCurrentTextStyle: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCurrentTextStyle", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCurrentTextStyle");

BL4.GetCurrentTextStyleClass = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCurrentTextStyleClass: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCurrentTextStyleClass", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCurrentTextStyleClass");

BL4.GetEnhancedInputAction = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetEnhancedInputAction: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetEnhancedInputAction", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetEnhancedInputAction");

BL4.GetInputAction = function(OwnerAddress, InputActionRow)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInputAction: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InputActionRow at +0x0
 writeQword(_params + 0x0, InputActionRow)
 UE.CallProcessEventEx(OwnerAddress, "GetInputAction", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInputAction");

BL4.GetIsFocusable = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetIsFocusable: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetIsFocusable", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetIsFocusable");

BL4.GetLocked = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLocked: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetLocked", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLocked");

BL4.GetRequiredHoldTime = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRequiredHoldTime: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetRequiredHoldTime", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRequiredHoldTime");

BL4.GetRequiresHold = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRequiresHold: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetRequiresHold", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRequiresHold");

BL4.GetSelected = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSelected: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetSelected", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSelected");

BL4.GetShouldSelectUponReceivingFocus = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetShouldSelectUponReceivingFocus: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetShouldSelectUponReceivingFocus", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetShouldSelectUponReceivingFocus");

BL4.GetSingleMaterialStyleMID = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSingleMaterialStyleMID: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetSingleMaterialStyleMID", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSingleMaterialStyleMID");

BL4.GetStyle = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetStyle: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetStyle", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetStyle");

BL4.HandleTriggeringActionCommited = function(OwnerAddress, bPassThrough)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.HandleTriggeringActionCommited: Failed To Allocate The Params");return;end;
 bPassThrough = bPassThrough or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bPassThrough at +0x0
 writeByte(_params + 0x0, bPassThrough)
 UE.CallProcessEventEx(OwnerAddress, "HandleTriggeringActionCommited", _params);
 deAlloc(_params);
end
FNR("BL4.HandleTriggeringActionCommited");

BL4.IsInteractionEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsInteractionEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsInteractionEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsInteractionEnabled");

BL4.IsPressed = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsPressed: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsPressed", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsPressed");

BL4.NativeOnActionProgress = function(OwnerAddress, HeldPercent)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NativeOnActionProgress: Failed To Allocate The Params");return;end;
 HeldPercent = HeldPercent or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: HeldPercent at +0x0
 writeFloat(_params + 0x0, HeldPercent)
 UE.CallProcessEventEx(OwnerAddress, "NativeOnActionProgress", _params);
 deAlloc(_params);
end
FNR("BL4.NativeOnActionProgress");

BL4.NativeOnHoldProgress = function(OwnerAddress, DeltaTime)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NativeOnHoldProgress: Failed To Allocate The Params");return;end;
 DeltaTime = DeltaTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: DeltaTime at +0x0
 writeFloat(_params + 0x0, DeltaTime)
 UE.CallProcessEventEx(OwnerAddress, "NativeOnHoldProgress", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NativeOnHoldProgress");

BL4.NativeOnHoldProgressRollback = function(OwnerAddress, DeltaTime)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NativeOnHoldProgressRollback: Failed To Allocate The Params");return;end;
 DeltaTime = DeltaTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: DeltaTime at +0x0
 writeFloat(_params + 0x0, DeltaTime)
 UE.CallProcessEventEx(OwnerAddress, "NativeOnHoldProgressRollback", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NativeOnHoldProgressRollback");

BL4.OnActionProgress = function(OwnerAddress, HeldPercent)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnActionProgress: Failed To Allocate The Params");return;end;
 HeldPercent = HeldPercent or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: HeldPercent at +0x0
 writeFloat(_params + 0x0, HeldPercent)
 UE.CallProcessEventEx(OwnerAddress, "OnActionProgress", _params);
 deAlloc(_params);
end
FNR("BL4.OnActionProgress");

BL4.OnInputMethodChanged = function(OwnerAddress, CurrentInputType)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnInputMethodChanged: Failed To Allocate The Params");return;end;
 CurrentInputType = CurrentInputType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: CurrentInputType at +0x0
 writeByte(_params + 0x0, CurrentInputType)
 UE.CallProcessEventEx(OwnerAddress, "OnInputMethodChanged", _params);
 deAlloc(_params);
end
FNR("BL4.OnInputMethodChanged");

BL4.OnTriggeredInputActionChanged = function(OwnerAddress, NewTriggeredAction)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnTriggeredInputActionChanged: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewTriggeredAction at +0x0
 writeQword(_params + 0x0, NewTriggeredAction)
 UE.CallProcessEventEx(OwnerAddress, "OnTriggeredInputActionChanged", _params);
 deAlloc(_params);
end
FNR("BL4.OnTriggeredInputActionChanged");

BL4.OnTriggeringEnhancedInputActionChanged = function(InInputAction_InputAction)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnTriggeringEnhancedInputActionChanged: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InInputAction at +0x0
 writeQword(_params + 0x0, InInputAction_InputAction)
 UE.CallProcessEventEx(InInputAction_InputAction, "OnTriggeringEnhancedInputActionChanged", _params);
 deAlloc(_params);
end
FNR("BL4.OnTriggeringEnhancedInputActionChanged");

BL4.OnTriggeringInputActionChanged = function(OwnerAddress, NewTriggeredAction)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnTriggeringInputActionChanged: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewTriggeredAction at +0x0
 writeQword(_params + 0x0, NewTriggeredAction)
 UE.CallProcessEventEx(OwnerAddress, "OnTriggeringInputActionChanged", _params);
 deAlloc(_params);
end
FNR("BL4.OnTriggeringInputActionChanged");

BL4.SetClickMethod = function(OwnerAddress, InClickMethod)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetClickMethod: Failed To Allocate The Params");return;end;
 InClickMethod = InClickMethod or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InClickMethod at +0x0
 writeByte(_params + 0x0, InClickMethod)
 UE.CallProcessEventEx(OwnerAddress, "SetClickMethod", _params);
 deAlloc(_params);
end
FNR("BL4.SetClickMethod");

BL4.SetHideInputAction = function(OwnerAddress, bInHideInputAction)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetHideInputAction: Failed To Allocate The Params");return;end;
 bInHideInputAction = bInHideInputAction or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInHideInputAction at +0x0
 writeByte(_params + 0x0, bInHideInputAction)
 UE.CallProcessEventEx(OwnerAddress, "SetHideInputAction", _params);
 deAlloc(_params);
end
FNR("BL4.SetHideInputAction");

BL4.SetHoveredSoundOverride = function(Sound_SoundBase)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetHoveredSoundOverride: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Sound at +0x0
 writeQword(_params + 0x0, Sound_SoundBase)
 UE.CallProcessEventEx(Sound_SoundBase, "SetHoveredSoundOverride", _params);
 deAlloc(_params);
end
FNR("BL4.SetHoveredSoundOverride");

BL4.SetInputActionProgressMaterial = function(OwnerAddress, InProgressMaterialBrush, InProgressMaterialParam)
 local _paramsSize = 0xB8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetInputActionProgressMaterial: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InProgressMaterialBrush at +0x0, InProgressMaterialParam at +0xB0
 writeQword(_params + 0x0, InProgressMaterialBrush)
 writeQword(_params + 0xB0, InProgressMaterialParam)
 UE.CallProcessEventEx(OwnerAddress, "SetInputActionProgressMaterial", _params);
 deAlloc(_params);
end
FNR("BL4.SetInputActionProgressMaterial");

BL4.SetIsFocusable = function(OwnerAddress, bInIsFocusable)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetIsFocusable: Failed To Allocate The Params");return;end;
 bInIsFocusable = bInIsFocusable or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInIsFocusable at +0x0
 writeByte(_params + 0x0, bInIsFocusable)
 UE.CallProcessEventEx(OwnerAddress, "SetIsFocusable", _params);
 deAlloc(_params);
end
FNR("BL4.SetIsFocusable");

BL4.SetIsInteractableWhenSelected = function(OwnerAddress, bInInteractableWhenSelected)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetIsInteractableWhenSelected: Failed To Allocate The Params");return;end;
 bInInteractableWhenSelected = bInInteractableWhenSelected or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInInteractableWhenSelected at +0x0
 writeByte(_params + 0x0, bInInteractableWhenSelected)
 UE.CallProcessEventEx(OwnerAddress, "SetIsInteractableWhenSelected", _params);
 deAlloc(_params);
end
FNR("BL4.SetIsInteractableWhenSelected");

BL4.SetIsInteractionEnabled = function(OwnerAddress, bInIsInteractionEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetIsInteractionEnabled: Failed To Allocate The Params");return;end;
 bInIsInteractionEnabled = bInIsInteractionEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInIsInteractionEnabled at +0x0
 writeByte(_params + 0x0, bInIsInteractionEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetIsInteractionEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetIsInteractionEnabled");

BL4.SetIsLocked = function(OwnerAddress, bInIsLocked)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetIsLocked: Failed To Allocate The Params");return;end;
 bInIsLocked = bInIsLocked or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInIsLocked at +0x0
 writeByte(_params + 0x0, bInIsLocked)
 UE.CallProcessEventEx(OwnerAddress, "SetIsLocked", _params);
 deAlloc(_params);
end
FNR("BL4.SetIsLocked");

BL4.SetIsSelectable = function(OwnerAddress, bInIsSelectable)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetIsSelectable: Failed To Allocate The Params");return;end;
 bInIsSelectable = bInIsSelectable or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInIsSelectable at +0x0
 writeByte(_params + 0x0, bInIsSelectable)
 UE.CallProcessEventEx(OwnerAddress, "SetIsSelectable", _params);
 deAlloc(_params);
end
FNR("BL4.SetIsSelectable");

BL4.SetIsSelected = function(OwnerAddress, InSelected, bGiveClickFeedback)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetIsSelected: Failed To Allocate The Params");return;end;
 InSelected = InSelected or false
 bGiveClickFeedback = bGiveClickFeedback or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InSelected at +0x0, bGiveClickFeedback at +0x1
 writeByte(_params + 0x0, InSelected)
 writeByte(_params + 0x1, bGiveClickFeedback)
 UE.CallProcessEventEx(OwnerAddress, "SetIsSelected", _params);
 deAlloc(_params);
end
FNR("BL4.SetIsSelected");

BL4.SetIsToggleable = function(OwnerAddress, bInIsToggleable)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetIsToggleable: Failed To Allocate The Params");return;end;
 bInIsToggleable = bInIsToggleable or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInIsToggleable at +0x0
 writeByte(_params + 0x0, bInIsToggleable)
 UE.CallProcessEventEx(OwnerAddress, "SetIsToggleable", _params);
 deAlloc(_params);
end
FNR("BL4.SetIsToggleable");

BL4.SetLockedHoveredSoundOverride = function(Sound_SoundBase)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLockedHoveredSoundOverride: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Sound at +0x0
 writeQword(_params + 0x0, Sound_SoundBase)
 UE.CallProcessEventEx(Sound_SoundBase, "SetLockedHoveredSoundOverride", _params);
 deAlloc(_params);
end
FNR("BL4.SetLockedHoveredSoundOverride");

BL4.SetLockedPressedSoundOverride = function(Sound_SoundBase)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLockedPressedSoundOverride: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Sound at +0x0
 writeQword(_params + 0x0, Sound_SoundBase)
 UE.CallProcessEventEx(Sound_SoundBase, "SetLockedPressedSoundOverride", _params);
 deAlloc(_params);
end
FNR("BL4.SetLockedPressedSoundOverride");

BL4.SetMinDimensions = function(OwnerAddress, InMinWidth, InMinHeight)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMinDimensions: Failed To Allocate The Params");return;end;
 InMinWidth = InMinWidth or 0
 InMinHeight = InMinHeight or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InMinWidth at +0x0, InMinHeight at +0x4
 writeInteger(_params + 0x0, InMinWidth)
 writeInteger(_params + 0x4, InMinHeight)
 UE.CallProcessEventEx(OwnerAddress, "SetMinDimensions", _params);
 deAlloc(_params);
end
FNR("BL4.SetMinDimensions");

BL4.SetPressedSoundOverride = function(Sound_SoundBase)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPressedSoundOverride: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Sound at +0x0
 writeQword(_params + 0x0, Sound_SoundBase)
 UE.CallProcessEventEx(Sound_SoundBase, "SetPressedSoundOverride", _params);
 deAlloc(_params);
end
FNR("BL4.SetPressedSoundOverride");

BL4.SetPressMethod = function(OwnerAddress, InPressMethod)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPressMethod: Failed To Allocate The Params");return;end;
 InPressMethod = InPressMethod or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InPressMethod at +0x0
 writeByte(_params + 0x0, InPressMethod)
 UE.CallProcessEventEx(OwnerAddress, "SetPressMethod", _params);
 deAlloc(_params);
end
FNR("BL4.SetPressMethod");

BL4.SetRequiresHold = function(OwnerAddress, bInRequiresHold)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRequiresHold: Failed To Allocate The Params");return;end;
 bInRequiresHold = bInRequiresHold or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInRequiresHold at +0x0
 writeByte(_params + 0x0, bInRequiresHold)
 UE.CallProcessEventEx(OwnerAddress, "SetRequiresHold", _params);
 deAlloc(_params);
end
FNR("BL4.SetRequiresHold");

BL4.SetSelectedHoveredSoundOverride = function(Sound_SoundBase)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSelectedHoveredSoundOverride: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Sound at +0x0
 writeQword(_params + 0x0, Sound_SoundBase)
 UE.CallProcessEventEx(Sound_SoundBase, "SetSelectedHoveredSoundOverride", _params);
 deAlloc(_params);
end
FNR("BL4.SetSelectedHoveredSoundOverride");

BL4.SetSelectedInternal = function(OwnerAddress, bInSelected, bAllowSound, bBroadcast)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSelectedInternal: Failed To Allocate The Params");return;end;
 bInSelected = bInSelected or false
 bAllowSound = bAllowSound or false
 bBroadcast = bBroadcast or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInSelected at +0x0, bAllowSound at +0x1, bBroadcast at +0x2
 writeByte(_params + 0x0, bInSelected)
 writeByte(_params + 0x1, bAllowSound)
 writeByte(_params + 0x2, bBroadcast)
 UE.CallProcessEventEx(OwnerAddress, "SetSelectedInternal", _params);
 deAlloc(_params);
end
FNR("BL4.SetSelectedInternal");

BL4.SetSelectedPressedSoundOverride = function(Sound_SoundBase)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSelectedPressedSoundOverride: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Sound at +0x0
 writeQword(_params + 0x0, Sound_SoundBase)
 UE.CallProcessEventEx(Sound_SoundBase, "SetSelectedPressedSoundOverride", _params);
 deAlloc(_params);
end
FNR("BL4.SetSelectedPressedSoundOverride");

BL4.SetShouldSelectUponReceivingFocus = function(OwnerAddress, bInShouldSelectUponReceivingFocus)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetShouldSelectUponReceivingFocus: Failed To Allocate The Params");return;end;
 bInShouldSelectUponReceivingFocus = bInShouldSelectUponReceivingFocus or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInShouldSelectUponReceivingFocus at +0x0
 writeByte(_params + 0x0, bInShouldSelectUponReceivingFocus)
 UE.CallProcessEventEx(OwnerAddress, "SetShouldSelectUponReceivingFocus", _params);
 deAlloc(_params);
end
FNR("BL4.SetShouldSelectUponReceivingFocus");

BL4.SetShouldUseFallbackDefaultInputAction = function(OwnerAddress, bInShouldUseFallbackDefaultInputAction)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetShouldUseFallbackDefaultInputAction: Failed To Allocate The Params");return;end;
 bInShouldUseFallbackDefaultInputAction = bInShouldUseFallbackDefaultInputAction or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInShouldUseFallbackDefaultInputAction at +0x0
 writeByte(_params + 0x0, bInShouldUseFallbackDefaultInputAction)
 UE.CallProcessEventEx(OwnerAddress, "SetShouldUseFallbackDefaultInputAction", _params);
 deAlloc(_params);
end
FNR("BL4.SetShouldUseFallbackDefaultInputAction");

BL4.SetStyle = function(InStyle_Class)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetStyle: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InStyle at +0x0
 writeQword(_params + 0x0, InStyle_Class)
 UE.CallProcessEventEx(InStyle_Class, "SetStyle", _params);
 deAlloc(_params);
end
FNR("BL4.SetStyle");

BL4.SetTouchMethod = function(OwnerAddress, InTouchMethod)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTouchMethod: Failed To Allocate The Params");return;end;
 InTouchMethod = InTouchMethod or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InTouchMethod at +0x0
 writeByte(_params + 0x0, InTouchMethod)
 UE.CallProcessEventEx(OwnerAddress, "SetTouchMethod", _params);
 deAlloc(_params);
end
FNR("BL4.SetTouchMethod");

BL4.SetTriggeredInputAction = function(OwnerAddress, InputActionRow)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTriggeredInputAction: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InputActionRow at +0x0
 writeQword(_params + 0x0, InputActionRow)
 UE.CallProcessEventEx(OwnerAddress, "SetTriggeredInputAction", _params);
 deAlloc(_params);
end
FNR("BL4.SetTriggeredInputAction");

BL4.SetTriggeringEnhancedInputAction = function(InInputAction_InputAction)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTriggeringEnhancedInputAction: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InInputAction at +0x0
 writeQword(_params + 0x0, InInputAction_InputAction)
 UE.CallProcessEventEx(InInputAction_InputAction, "SetTriggeringEnhancedInputAction", _params);
 deAlloc(_params);
end
FNR("BL4.SetTriggeringEnhancedInputAction");

BL4.SetTriggeringInputAction = function(OwnerAddress, InputActionRow)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTriggeringInputAction: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InputActionRow at +0x0
 writeQword(_params + 0x0, InputActionRow)
 UE.CallProcessEventEx(OwnerAddress, "SetTriggeringInputAction", _params);
 deAlloc(_params);
end
FNR("BL4.SetTriggeringInputAction");

BL4.UpdateHoldData = function(OwnerAddress, CurrentInputType)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UpdateHoldData: Failed To Allocate The Params");return;end;
 CurrentInputType = CurrentInputType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: CurrentInputType at +0x0
 writeByte(_params + 0x0, CurrentInputType)
 UE.CallProcessEventEx(OwnerAddress, "UpdateHoldData", _params);
 deAlloc(_params);
end
FNR("BL4.UpdateHoldData");

