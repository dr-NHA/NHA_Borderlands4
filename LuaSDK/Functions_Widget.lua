BL4.ForceVolatile = function(OwnerAddress, bForce)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ForceVolatile: Failed To Allocate The Params");return;end;
 bForce = bForce or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bForce at +0x0
 writeByte(_params + 0x0, bForce)
 UE.CallProcessEventEx(OwnerAddress, "ForceVolatile", _params);
 deAlloc(_params);
end
FNR("BL4.ForceVolatile");

BL4.GetAccessibleSummaryText = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAccessibleSummaryText: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAccessibleSummaryText", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAccessibleSummaryText");

BL4.GetAccessibleText = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAccessibleText: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAccessibleText", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAccessibleText");

BL4.GetCachedGeometry = function(OwnerAddress)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCachedGeometry: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCachedGeometry", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCachedGeometry");

BL4.GetClipping = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetClipping: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetClipping", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetClipping");

BL4.GetDesiredSize = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDesiredSize: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetDesiredSize", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDesiredSize");

BL4.GetGameInstance = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetGameInstance: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetGameInstance", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetGameInstance");

BL4.GetIsEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetIsEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetIsEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetIsEnabled");

BL4.GetOwningLocalPlayer = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetOwningLocalPlayer: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetOwningLocalPlayer", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetOwningLocalPlayer");

BL4.GetOwningPlayer = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetOwningPlayer: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetOwningPlayer", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetOwningPlayer");

BL4.GetPaintSpaceGeometry = function(OwnerAddress)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPaintSpaceGeometry: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetPaintSpaceGeometry", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPaintSpaceGeometry");

BL4.GetParent = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetParent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetParent", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetParent");

BL4.GetRenderOpacity = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRenderOpacity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetRenderOpacity", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRenderOpacity");

BL4.GetRenderTransformAngle = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRenderTransformAngle: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetRenderTransformAngle", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRenderTransformAngle");

BL4.GetTickSpaceGeometry = function(OwnerAddress)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTickSpaceGeometry: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetTickSpaceGeometry", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTickSpaceGeometry");

BL4.GetVisibility = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVisibility: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetVisibility", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVisibility");

BL4.HasAnyUserFocus = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.HasAnyUserFocus: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "HasAnyUserFocus", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.HasAnyUserFocus");

BL4.HasFocusedDescendants = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.HasFocusedDescendants: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "HasFocusedDescendants", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.HasFocusedDescendants");

BL4.HasKeyboardFocus = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.HasKeyboardFocus: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "HasKeyboardFocus", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.HasKeyboardFocus");

BL4.HasMouseCapture = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.HasMouseCapture: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "HasMouseCapture", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.HasMouseCapture");

BL4.HasMouseCaptureByUser = function(OwnerAddress, UserIndex, PointerIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.HasMouseCaptureByUser: Failed To Allocate The Params");return;end;
 UserIndex = UserIndex or 0
 PointerIndex = PointerIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: UserIndex at +0x0, PointerIndex at +0x4
 writeInteger(_params + 0x0, UserIndex)
 writeInteger(_params + 0x4, PointerIndex)
 UE.CallProcessEventEx(OwnerAddress, "HasMouseCaptureByUser", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.HasMouseCaptureByUser");

BL4.HasUserFocus = function(PlayerController)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.HasUserFocus: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PlayerController at +0x0
 writeQword(_params + 0x0, PlayerController)
 UE.CallProcessEventEx(PlayerController, "HasUserFocus", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.HasUserFocus");

BL4.HasUserFocusedDescendants = function(PlayerController)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.HasUserFocusedDescendants: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PlayerController at +0x0
 writeQword(_params + 0x0, PlayerController)
 UE.CallProcessEventEx(PlayerController, "HasUserFocusedDescendants", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.HasUserFocusedDescendants");

BL4.IsHovered = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsHovered: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsHovered", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsHovered");

BL4.IsInViewport = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsInViewport: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsInViewport", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsInViewport");

BL4.IsRendered = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsRendered: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsRendered", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsRendered");

BL4.IsVisible = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsVisible: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsVisible", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsVisible");

BL4.K2_AddFieldValueChangedDelegate = function(OwnerAddress, FieldId, Delegate)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_AddFieldValueChangedDelegate: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: FieldId at +0x0, Delegate at +0x8
 writeQword(_params + 0x0, FieldId)
 writeQword(_params + 0x8, Delegate)
 UE.CallProcessEventEx(OwnerAddress, "K2_AddFieldValueChangedDelegate", _params);
 deAlloc(_params);
end
FNR("BL4.K2_AddFieldValueChangedDelegate");

BL4.K2_BroadcastFieldValueChanged = function(OwnerAddress, FieldId)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_BroadcastFieldValueChanged: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: FieldId at +0x0
 writeQword(_params + 0x0, FieldId)
 UE.CallProcessEventEx(OwnerAddress, "K2_BroadcastFieldValueChanged", _params);
 deAlloc(_params);
end
FNR("BL4.K2_BroadcastFieldValueChanged");

BL4.K2_RemoveFieldValueChangedDelegate = function(OwnerAddress, FieldId, Delegate)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_RemoveFieldValueChangedDelegate: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: FieldId at +0x0, Delegate at +0x8
 writeQword(_params + 0x0, FieldId)
 writeQword(_params + 0x8, Delegate)
 UE.CallProcessEventEx(OwnerAddress, "K2_RemoveFieldValueChangedDelegate", _params);
 deAlloc(_params);
end
FNR("BL4.K2_RemoveFieldValueChangedDelegate");

BL4.SetAllNavigationRules = function(OwnerAddress, Rule, WidgetToFocus)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAllNavigationRules: Failed To Allocate The Params");return;end;
 Rule = Rule or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Rule at +0x0, WidgetToFocus at +0x4
 writeByte(_params + 0x0, Rule)
 writeQword(_params + 0x4, WidgetToFocus)
 UE.CallProcessEventEx(OwnerAddress, "SetAllNavigationRules", _params);
 deAlloc(_params);
end
FNR("BL4.SetAllNavigationRules");

BL4.SetClipping = function(OwnerAddress, InClipping)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetClipping: Failed To Allocate The Params");return;end;
 InClipping = InClipping or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InClipping at +0x0
 writeByte(_params + 0x0, InClipping)
 UE.CallProcessEventEx(OwnerAddress, "SetClipping", _params);
 deAlloc(_params);
end
FNR("BL4.SetClipping");

BL4.SetCursor = function(OwnerAddress, InCursor)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCursor: Failed To Allocate The Params");return;end;
 InCursor = InCursor or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InCursor at +0x0
 writeByte(_params + 0x0, InCursor)
 UE.CallProcessEventEx(OwnerAddress, "SetCursor", _params);
 deAlloc(_params);
end
FNR("BL4.SetCursor");

BL4.SetIsEnabled = function(OwnerAddress, bInIsEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetIsEnabled: Failed To Allocate The Params");return;end;
 bInIsEnabled = bInIsEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInIsEnabled at +0x0
 writeByte(_params + 0x0, bInIsEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetIsEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetIsEnabled");

BL4.SetNavigationRule = function(OwnerAddress, Direction, Rule, WidgetToFocus)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNavigationRule: Failed To Allocate The Params");return;end;
 Direction = Direction or 0
 Rule = Rule or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Direction at +0x0, Rule at +0x1, WidgetToFocus at +0x4
 writeByte(_params + 0x0, Direction)
 writeByte(_params + 0x1, Rule)
 writeQword(_params + 0x4, WidgetToFocus)
 UE.CallProcessEventEx(OwnerAddress, "SetNavigationRule", _params);
 deAlloc(_params);
end
FNR("BL4.SetNavigationRule");

BL4.SetNavigationRuleBase = function(OwnerAddress, Direction, Rule)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNavigationRuleBase: Failed To Allocate The Params");return;end;
 Direction = Direction or 0
 Rule = Rule or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Direction at +0x0, Rule at +0x1
 writeByte(_params + 0x0, Direction)
 writeByte(_params + 0x1, Rule)
 UE.CallProcessEventEx(OwnerAddress, "SetNavigationRuleBase", _params);
 deAlloc(_params);
end
FNR("BL4.SetNavigationRuleBase");

BL4.SetNavigationRuleCustom = function(OwnerAddress, Direction, InCustomDelegate)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNavigationRuleCustom: Failed To Allocate The Params");return;end;
 Direction = Direction or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Direction at +0x0, InCustomDelegate at +0x4
 writeByte(_params + 0x0, Direction)
 writeQword(_params + 0x4, InCustomDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetNavigationRuleCustom", _params);
 deAlloc(_params);
end
FNR("BL4.SetNavigationRuleCustom");

BL4.SetNavigationRuleCustomBoundary = function(OwnerAddress, Direction, InCustomDelegate)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNavigationRuleCustomBoundary: Failed To Allocate The Params");return;end;
 Direction = Direction or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Direction at +0x0, InCustomDelegate at +0x4
 writeByte(_params + 0x0, Direction)
 writeQword(_params + 0x4, InCustomDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetNavigationRuleCustomBoundary", _params);
 deAlloc(_params);
end
FNR("BL4.SetNavigationRuleCustomBoundary");

BL4.SetNavigationRuleExplicit = function(OwnerAddress, Direction, InWidget_Widget)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNavigationRuleExplicit: Failed To Allocate The Params");return;end;
 Direction = Direction or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Direction at +0x0, InWidget at +0x8
 writeByte(_params + 0x0, Direction)
 writeQword(_params + 0x8, InWidget_Widget)
 UE.CallProcessEventEx(OwnerAddress, "SetNavigationRuleExplicit", _params);
 deAlloc(_params);
end
FNR("BL4.SetNavigationRuleExplicit");

BL4.SetRenderOpacity = function(OwnerAddress, InOpacity)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRenderOpacity: Failed To Allocate The Params");return;end;
 InOpacity = InOpacity or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InOpacity at +0x0
 writeFloat(_params + 0x0, InOpacity)
 UE.CallProcessEventEx(OwnerAddress, "SetRenderOpacity", _params);
 deAlloc(_params);
end
FNR("BL4.SetRenderOpacity");

BL4.SetRenderScale = function(OwnerAddress, scale)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRenderScale: Failed To Allocate The Params");return;end;
 scale = scale or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: scale at +0x0
 writeDouble(_params + 0x0, (scale and scale.X) or 0)
 writeDouble(_params + 0x8, (scale and scale.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetRenderScale", _params);
 deAlloc(_params);
end
FNR("BL4.SetRenderScale");

BL4.SetRenderShear = function(OwnerAddress, Shear)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRenderShear: Failed To Allocate The Params");return;end;
 Shear = Shear or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Shear at +0x0
 writeDouble(_params + 0x0, (Shear and Shear.X) or 0)
 writeDouble(_params + 0x8, (Shear and Shear.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetRenderShear", _params);
 deAlloc(_params);
end
FNR("BL4.SetRenderShear");

BL4.SetRenderTransform = function(OwnerAddress, InTransform)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRenderTransform: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InTransform at +0x0
 writeQword(_params + 0x0, InTransform)
 UE.CallProcessEventEx(OwnerAddress, "SetRenderTransform", _params);
 deAlloc(_params);
end
FNR("BL4.SetRenderTransform");

BL4.SetRenderTransformAngle = function(OwnerAddress, Angle)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRenderTransformAngle: Failed To Allocate The Params");return;end;
 Angle = Angle or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Angle at +0x0
 writeFloat(_params + 0x0, Angle)
 UE.CallProcessEventEx(OwnerAddress, "SetRenderTransformAngle", _params);
 deAlloc(_params);
end
FNR("BL4.SetRenderTransformAngle");

BL4.SetRenderTransformPivot = function(OwnerAddress, Pivot)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRenderTransformPivot: Failed To Allocate The Params");return;end;
 Pivot = Pivot or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Pivot at +0x0
 writeDouble(_params + 0x0, (Pivot and Pivot.X) or 0)
 writeDouble(_params + 0x8, (Pivot and Pivot.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetRenderTransformPivot", _params);
 deAlloc(_params);
end
FNR("BL4.SetRenderTransformPivot");

BL4.SetRenderTranslation = function(OwnerAddress, Translation)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRenderTranslation: Failed To Allocate The Params");return;end;
 Translation = Translation or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Translation at +0x0
 writeDouble(_params + 0x0, (Translation and Translation.X) or 0)
 writeDouble(_params + 0x8, (Translation and Translation.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetRenderTranslation", _params);
 deAlloc(_params);
end
FNR("BL4.SetRenderTranslation");

BL4.SetToolTip = function(Widget)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetToolTip: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Widget at +0x0
 writeQword(_params + 0x0, Widget)
 UE.CallProcessEventEx(Widget, "SetToolTip", _params);
 deAlloc(_params);
end
FNR("BL4.SetToolTip");

BL4.SetToolTipText = function(OwnerAddress, InToolTipText)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetToolTipText: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InToolTipText at +0x0
 writeQword(_params + 0x0, InToolTipText)
 UE.CallProcessEventEx(OwnerAddress, "SetToolTipText", _params);
 deAlloc(_params);
end
FNR("BL4.SetToolTipText");

BL4.SetUserFocus = function(PlayerController)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetUserFocus: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PlayerController at +0x0
 writeQword(_params + 0x0, PlayerController)
 UE.CallProcessEventEx(PlayerController, "SetUserFocus", _params);
 deAlloc(_params);
end
FNR("BL4.SetUserFocus");

BL4.SetVisibility = function(OwnerAddress, InVisibility)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVisibility: Failed To Allocate The Params");return;end;
 InVisibility = InVisibility or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InVisibility at +0x0
 writeByte(_params + 0x0, InVisibility)
 UE.CallProcessEventEx(OwnerAddress, "SetVisibility", _params);
 deAlloc(_params);
end
FNR("BL4.SetVisibility");

