BL4.AddExtension = function(InExtensionType_Class)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddExtension: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InExtensionType at +0x0
 writeQword(_params + 0x0, InExtensionType_Class)
 UE.CallProcessEventEx(InExtensionType_Class, "AddExtension", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddExtension");

BL4.AddToPlayerScreen = function(OwnerAddress, ZOrder)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddToPlayerScreen: Failed To Allocate The Params");return;end;
 ZOrder = ZOrder or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: ZOrder at +0x0
 writeInteger(_params + 0x0, ZOrder)
 UE.CallProcessEventEx(OwnerAddress, "AddToPlayerScreen", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddToPlayerScreen");

BL4.AddToViewport = function(OwnerAddress, ZOrder)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddToViewport: Failed To Allocate The Params");return;end;
 ZOrder = ZOrder or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: ZOrder at +0x0
 writeInteger(_params + 0x0, ZOrder)
 UE.CallProcessEventEx(OwnerAddress, "AddToViewport", _params);
 deAlloc(_params);
end
FNR("BL4.AddToViewport");

BL4.BindToAnimationEvent = function(Animation_WidgetAnimation, Delegate, AnimationEvent, UserTag)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BindToAnimationEvent: Failed To Allocate The Params");return;end;
 AnimationEvent = AnimationEvent or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Animation at +0x0, Delegate at +0x8, AnimationEvent at +0x18, UserTag at +0x1C
 writeQword(_params + 0x0, Animation_WidgetAnimation)
 writeQword(_params + 0x8, Delegate)
 writeByte(_params + 0x18, AnimationEvent)
 writeQword(_params + 0x1C, UserTag)
 UE.CallProcessEventEx(Animation_WidgetAnimation, "BindToAnimationEvent", _params);
 deAlloc(_params);
end
FNR("BL4.BindToAnimationEvent");

BL4.BindToAnimationFinished = function(Animation_WidgetAnimation, Delegate)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BindToAnimationFinished: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Animation at +0x0, Delegate at +0x8
 writeQword(_params + 0x0, Animation_WidgetAnimation)
 writeQword(_params + 0x8, Delegate)
 UE.CallProcessEventEx(Animation_WidgetAnimation, "BindToAnimationFinished", _params);
 deAlloc(_params);
end
FNR("BL4.BindToAnimationFinished");

BL4.BindToAnimationStarted = function(Animation_WidgetAnimation, Delegate)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BindToAnimationStarted: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Animation at +0x0, Delegate at +0x8
 writeQword(_params + 0x0, Animation_WidgetAnimation)
 writeQword(_params + 0x8, Delegate)
 UE.CallProcessEventEx(Animation_WidgetAnimation, "BindToAnimationStarted", _params);
 deAlloc(_params);
end
FNR("BL4.BindToAnimationStarted");

BL4.GetAlignmentInViewport = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAlignmentInViewport: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAlignmentInViewport", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAlignmentInViewport");

BL4.GetAnchorsInViewport = function(OwnerAddress)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAnchorsInViewport: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAnchorsInViewport", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAnchorsInViewport");

BL4.GetAnimationCurrentTime = function(InAnimation_WidgetAnimation)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAnimationCurrentTime: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InAnimation at +0x0
 writeQword(_params + 0x0, InAnimation_WidgetAnimation)
 UE.CallProcessEventEx(InAnimation_WidgetAnimation, "GetAnimationCurrentTime", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAnimationCurrentTime");

BL4.GetExtension = function(ExtensionType_Class)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetExtension: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExtensionType at +0x0
 writeQword(_params + 0x0, ExtensionType_Class)
 UE.CallProcessEventEx(ExtensionType_Class, "GetExtension", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetExtension");

BL4.GetExtensions = function(ExtensionType_Class)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetExtensions: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExtensionType at +0x0
 writeQword(_params + 0x0, ExtensionType_Class)
 UE.CallProcessEventEx(ExtensionType_Class, "GetExtensions", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetExtensions");

BL4.GetIsVisible = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetIsVisible: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetIsVisible", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetIsVisible");

BL4.GetOwningPlayerCameraManager = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetOwningPlayerCameraManager: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetOwningPlayerCameraManager", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetOwningPlayerCameraManager");

BL4.GetOwningPlayerPawn = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetOwningPlayerPawn: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetOwningPlayerPawn", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetOwningPlayerPawn");

BL4.IsAnimationPlaying = function(InAnimation_WidgetAnimation)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsAnimationPlaying: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InAnimation at +0x0
 writeQword(_params + 0x0, InAnimation_WidgetAnimation)
 UE.CallProcessEventEx(InAnimation_WidgetAnimation, "IsAnimationPlaying", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsAnimationPlaying");

BL4.IsAnimationPlayingForward = function(InAnimation_WidgetAnimation)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsAnimationPlayingForward: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InAnimation at +0x0
 writeQword(_params + 0x0, InAnimation_WidgetAnimation)
 UE.CallProcessEventEx(InAnimation_WidgetAnimation, "IsAnimationPlayingForward", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsAnimationPlayingForward");

BL4.IsAnyAnimationPlaying = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsAnyAnimationPlaying: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsAnyAnimationPlaying", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsAnyAnimationPlaying");

BL4.IsInteractable = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsInteractable: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsInteractable", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsInteractable");

BL4.IsListeningForInputAction = function(OwnerAddress, ActionName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsListeningForInputAction: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ActionName at +0x0
 writeQword(_params + 0x0, ActionName)
 UE.CallProcessEventEx(OwnerAddress, "IsListeningForInputAction", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsListeningForInputAction");

BL4.IsPlayingAnimation = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsPlayingAnimation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsPlayingAnimation", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsPlayingAnimation");

BL4.ListenForInputAction = function(OwnerAddress, ActionName, EventType, bConsume, Callback)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ListenForInputAction: Failed To Allocate The Params");return;end;
 EventType = EventType or 0
 bConsume = bConsume or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ActionName at +0x0, EventType at +0x8, bConsume at +0x9, Callback at +0xC
 writeQword(_params + 0x0, ActionName)
 writeByte(_params + 0x8, EventType)
 writeByte(_params + 0x9, bConsume)
 writeQword(_params + 0xC, Callback)
 UE.CallProcessEventEx(OwnerAddress, "ListenForInputAction", _params);
 deAlloc(_params);
end
FNR("BL4.ListenForInputAction");

BL4.OnAddedToFocusPath = function(OwnerAddress, InFocusEvent)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnAddedToFocusPath: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InFocusEvent at +0x0
 writeQword(_params + 0x0, InFocusEvent)
 UE.CallProcessEventEx(OwnerAddress, "OnAddedToFocusPath", _params);
 deAlloc(_params);
end
FNR("BL4.OnAddedToFocusPath");

BL4.OnAnalogValueChanged = function(OwnerAddress, MyGeometry, InAnalogInputEvent)
 local _paramsSize = 0x138
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnAnalogValueChanged: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MyGeometry at +0x0, InAnalogInputEvent at +0x38
 writeQword(_params + 0x0, MyGeometry)
 writeQword(_params + 0x38, InAnalogInputEvent)
 UE.CallProcessEventEx(OwnerAddress, "OnAnalogValueChanged", _params);
 local RET=readQword(_params + 0x80);
 deAlloc(_params);
 return RET;
end
FNR("BL4.OnAnalogValueChanged");

BL4.OnAnimationFinished = function(Animation_WidgetAnimation)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnAnimationFinished: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Animation at +0x0
 writeQword(_params + 0x0, Animation_WidgetAnimation)
 UE.CallProcessEventEx(Animation_WidgetAnimation, "OnAnimationFinished", _params);
 deAlloc(_params);
end
FNR("BL4.OnAnimationFinished");

BL4.OnAnimationStarted = function(Animation_WidgetAnimation)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnAnimationStarted: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Animation at +0x0
 writeQword(_params + 0x0, Animation_WidgetAnimation)
 UE.CallProcessEventEx(Animation_WidgetAnimation, "OnAnimationStarted", _params);
 deAlloc(_params);
end
FNR("BL4.OnAnimationStarted");

BL4.OnDragCancelled = function(OwnerAddress, PointerEvent, Operation_DragDropOperation)
 local _paramsSize = 0x80
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnDragCancelled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PointerEvent at +0x0, Operation at +0x78
 writeQword(_params + 0x0, PointerEvent)
 writeQword(_params + 0x78, Operation_DragDropOperation)
 UE.CallProcessEventEx(OwnerAddress, "OnDragCancelled", _params);
 deAlloc(_params);
end
FNR("BL4.OnDragCancelled");

BL4.OnDragDetected = function(OwnerAddress, MyGeometry, PointerEvent, Operation_DragDropOperation)
 local _paramsSize = 0xB8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnDragDetected: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MyGeometry at +0x0, PointerEvent at +0x38, Operation at +0xB0
 writeQword(_params + 0x0, MyGeometry)
 writeQword(_params + 0x38, PointerEvent)
 writeQword(_params + 0xB0, Operation_DragDropOperation)
 UE.CallProcessEventEx(OwnerAddress, "OnDragDetected", _params);
 deAlloc(_params);
end
FNR("BL4.OnDragDetected");

BL4.OnDragEnter = function(OwnerAddress, MyGeometry, PointerEvent, Operation_DragDropOperation)
 local _paramsSize = 0xB8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnDragEnter: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MyGeometry at +0x0, PointerEvent at +0x38, Operation at +0xB0
 writeQword(_params + 0x0, MyGeometry)
 writeQword(_params + 0x38, PointerEvent)
 writeQword(_params + 0xB0, Operation_DragDropOperation)
 UE.CallProcessEventEx(OwnerAddress, "OnDragEnter", _params);
 deAlloc(_params);
end
FNR("BL4.OnDragEnter");

BL4.OnDragLeave = function(OwnerAddress, PointerEvent, Operation_DragDropOperation)
 local _paramsSize = 0x80
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnDragLeave: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PointerEvent at +0x0, Operation at +0x78
 writeQword(_params + 0x0, PointerEvent)
 writeQword(_params + 0x78, Operation_DragDropOperation)
 UE.CallProcessEventEx(OwnerAddress, "OnDragLeave", _params);
 deAlloc(_params);
end
FNR("BL4.OnDragLeave");

BL4.OnDragOver = function(OwnerAddress, MyGeometry, PointerEvent, Operation_DragDropOperation)
 local _paramsSize = 0xC0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnDragOver: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MyGeometry at +0x0, PointerEvent at +0x38, Operation at +0xB0
 writeQword(_params + 0x0, MyGeometry)
 writeQword(_params + 0x38, PointerEvent)
 writeQword(_params + 0xB0, Operation_DragDropOperation)
 UE.CallProcessEventEx(OwnerAddress, "OnDragOver", _params);
 local RET=readByte(_params + 0xB8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.OnDragOver");

BL4.OnDrop = function(OwnerAddress, MyGeometry, PointerEvent, Operation_DragDropOperation)
 local _paramsSize = 0xC0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnDrop: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MyGeometry at +0x0, PointerEvent at +0x38, Operation at +0xB0
 writeQword(_params + 0x0, MyGeometry)
 writeQword(_params + 0x38, PointerEvent)
 writeQword(_params + 0xB0, Operation_DragDropOperation)
 UE.CallProcessEventEx(OwnerAddress, "OnDrop", _params);
 local RET=readByte(_params + 0xB8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.OnDrop");

BL4.OnFocusLost = function(OwnerAddress, InFocusEvent)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnFocusLost: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InFocusEvent at +0x0
 writeQword(_params + 0x0, InFocusEvent)
 UE.CallProcessEventEx(OwnerAddress, "OnFocusLost", _params);
 deAlloc(_params);
end
FNR("BL4.OnFocusLost");

BL4.OnFocusReceived = function(OwnerAddress, MyGeometry, InFocusEvent)
 local _paramsSize = 0xF8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnFocusReceived: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MyGeometry at +0x0, InFocusEvent at +0x38
 writeQword(_params + 0x0, MyGeometry)
 writeQword(_params + 0x38, InFocusEvent)
 UE.CallProcessEventEx(OwnerAddress, "OnFocusReceived", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.OnFocusReceived");

BL4.OnKeyChar = function(OwnerAddress, MyGeometry, InCharacterEvent)
 local _paramsSize = 0x118
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnKeyChar: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MyGeometry at +0x0, InCharacterEvent at +0x38
 writeQword(_params + 0x0, MyGeometry)
 writeQword(_params + 0x38, InCharacterEvent)
 UE.CallProcessEventEx(OwnerAddress, "OnKeyChar", _params);
 local RET=readQword(_params + 0x60);
 deAlloc(_params);
 return RET;
end
FNR("BL4.OnKeyChar");

BL4.OnKeyDown = function(OwnerAddress, MyGeometry, InKeyEvent)
 local _paramsSize = 0x130
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnKeyDown: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MyGeometry at +0x0, InKeyEvent at +0x38
 writeQword(_params + 0x0, MyGeometry)
 writeQword(_params + 0x38, InKeyEvent)
 UE.CallProcessEventEx(OwnerAddress, "OnKeyDown", _params);
 local RET=readQword(_params + 0x78);
 deAlloc(_params);
 return RET;
end
FNR("BL4.OnKeyDown");

BL4.OnKeyUp = function(OwnerAddress, MyGeometry, InKeyEvent)
 local _paramsSize = 0x130
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnKeyUp: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MyGeometry at +0x0, InKeyEvent at +0x38
 writeQword(_params + 0x0, MyGeometry)
 writeQword(_params + 0x38, InKeyEvent)
 UE.CallProcessEventEx(OwnerAddress, "OnKeyUp", _params);
 local RET=readQword(_params + 0x78);
 deAlloc(_params);
 return RET;
end
FNR("BL4.OnKeyUp");

BL4.OnMotionDetected = function(OwnerAddress, MyGeometry, InMotionEvent)
 local _paramsSize = 0x170
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnMotionDetected: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MyGeometry at +0x0, InMotionEvent at +0x38
 writeQword(_params + 0x0, MyGeometry)
 writeQword(_params + 0x38, InMotionEvent)
 UE.CallProcessEventEx(OwnerAddress, "OnMotionDetected", _params);
 local RET=readQword(_params + 0xB8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.OnMotionDetected");

BL4.OnMouseButtonDoubleClick = function(OwnerAddress, InMyGeometry, InMouseEvent)
 local _paramsSize = 0x168
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnMouseButtonDoubleClick: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InMyGeometry at +0x0, InMouseEvent at +0x38
 writeQword(_params + 0x0, InMyGeometry)
 writeQword(_params + 0x38, InMouseEvent)
 UE.CallProcessEventEx(OwnerAddress, "OnMouseButtonDoubleClick", _params);
 local RET=readQword(_params + 0xB0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.OnMouseButtonDoubleClick");

BL4.OnMouseButtonDown = function(OwnerAddress, MyGeometry, MouseEvent)
 local _paramsSize = 0x168
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnMouseButtonDown: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MyGeometry at +0x0, MouseEvent at +0x38
 writeQword(_params + 0x0, MyGeometry)
 writeQword(_params + 0x38, MouseEvent)
 UE.CallProcessEventEx(OwnerAddress, "OnMouseButtonDown", _params);
 local RET=readQword(_params + 0xB0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.OnMouseButtonDown");

BL4.OnMouseButtonUp = function(OwnerAddress, MyGeometry, MouseEvent)
 local _paramsSize = 0x168
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnMouseButtonUp: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MyGeometry at +0x0, MouseEvent at +0x38
 writeQword(_params + 0x0, MyGeometry)
 writeQword(_params + 0x38, MouseEvent)
 UE.CallProcessEventEx(OwnerAddress, "OnMouseButtonUp", _params);
 local RET=readQword(_params + 0xB0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.OnMouseButtonUp");

BL4.OnMouseEnter = function(OwnerAddress, MyGeometry, MouseEvent)
 local _paramsSize = 0xB0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnMouseEnter: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MyGeometry at +0x0, MouseEvent at +0x38
 writeQword(_params + 0x0, MyGeometry)
 writeQword(_params + 0x38, MouseEvent)
 UE.CallProcessEventEx(OwnerAddress, "OnMouseEnter", _params);
 deAlloc(_params);
end
FNR("BL4.OnMouseEnter");

BL4.OnMouseLeave = function(OwnerAddress, MouseEvent)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnMouseLeave: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MouseEvent at +0x0
 writeQword(_params + 0x0, MouseEvent)
 UE.CallProcessEventEx(OwnerAddress, "OnMouseLeave", _params);
 deAlloc(_params);
end
FNR("BL4.OnMouseLeave");

BL4.OnMouseMove = function(OwnerAddress, MyGeometry, MouseEvent)
 local _paramsSize = 0x168
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnMouseMove: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MyGeometry at +0x0, MouseEvent at +0x38
 writeQword(_params + 0x0, MyGeometry)
 writeQword(_params + 0x38, MouseEvent)
 UE.CallProcessEventEx(OwnerAddress, "OnMouseMove", _params);
 local RET=readQword(_params + 0xB0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.OnMouseMove");

BL4.OnMouseWheel = function(OwnerAddress, MyGeometry, MouseEvent)
 local _paramsSize = 0x168
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnMouseWheel: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MyGeometry at +0x0, MouseEvent at +0x38
 writeQword(_params + 0x0, MyGeometry)
 writeQword(_params + 0x38, MouseEvent)
 UE.CallProcessEventEx(OwnerAddress, "OnMouseWheel", _params);
 local RET=readQword(_params + 0xB0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.OnMouseWheel");

BL4.OnPaint = function(OwnerAddress, Context)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnPaint: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0
 writeQword(_params + 0x0, Context)
 UE.CallProcessEventEx(OwnerAddress, "OnPaint", _params);
 deAlloc(_params);
end
FNR("BL4.OnPaint");

BL4.OnPreviewKeyDown = function(OwnerAddress, MyGeometry, InKeyEvent)
 local _paramsSize = 0x130
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnPreviewKeyDown: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MyGeometry at +0x0, InKeyEvent at +0x38
 writeQword(_params + 0x0, MyGeometry)
 writeQword(_params + 0x38, InKeyEvent)
 UE.CallProcessEventEx(OwnerAddress, "OnPreviewKeyDown", _params);
 local RET=readQword(_params + 0x78);
 deAlloc(_params);
 return RET;
end
FNR("BL4.OnPreviewKeyDown");

BL4.OnPreviewMouseButtonDown = function(OwnerAddress, MyGeometry, MouseEvent)
 local _paramsSize = 0x168
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnPreviewMouseButtonDown: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MyGeometry at +0x0, MouseEvent at +0x38
 writeQword(_params + 0x0, MyGeometry)
 writeQword(_params + 0x38, MouseEvent)
 UE.CallProcessEventEx(OwnerAddress, "OnPreviewMouseButtonDown", _params);
 local RET=readQword(_params + 0xB0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.OnPreviewMouseButtonDown");

BL4.OnRemovedFromFocusPath = function(OwnerAddress, InFocusEvent)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnRemovedFromFocusPath: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InFocusEvent at +0x0
 writeQword(_params + 0x0, InFocusEvent)
 UE.CallProcessEventEx(OwnerAddress, "OnRemovedFromFocusPath", _params);
 deAlloc(_params);
end
FNR("BL4.OnRemovedFromFocusPath");

BL4.OnTouchEnded = function(OwnerAddress, MyGeometry, InTouchEvent)
 local _paramsSize = 0x168
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnTouchEnded: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MyGeometry at +0x0, InTouchEvent at +0x38
 writeQword(_params + 0x0, MyGeometry)
 writeQword(_params + 0x38, InTouchEvent)
 UE.CallProcessEventEx(OwnerAddress, "OnTouchEnded", _params);
 local RET=readQword(_params + 0xB0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.OnTouchEnded");

BL4.OnTouchForceChanged = function(OwnerAddress, MyGeometry, InTouchEvent)
 local _paramsSize = 0x168
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnTouchForceChanged: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MyGeometry at +0x0, InTouchEvent at +0x38
 writeQword(_params + 0x0, MyGeometry)
 writeQword(_params + 0x38, InTouchEvent)
 UE.CallProcessEventEx(OwnerAddress, "OnTouchForceChanged", _params);
 local RET=readQword(_params + 0xB0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.OnTouchForceChanged");

BL4.OnTouchGesture = function(OwnerAddress, MyGeometry, GestureEvent)
 local _paramsSize = 0x168
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnTouchGesture: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MyGeometry at +0x0, GestureEvent at +0x38
 writeQword(_params + 0x0, MyGeometry)
 writeQword(_params + 0x38, GestureEvent)
 UE.CallProcessEventEx(OwnerAddress, "OnTouchGesture", _params);
 local RET=readQword(_params + 0xB0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.OnTouchGesture");

BL4.OnTouchMoved = function(OwnerAddress, MyGeometry, InTouchEvent)
 local _paramsSize = 0x168
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnTouchMoved: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MyGeometry at +0x0, InTouchEvent at +0x38
 writeQword(_params + 0x0, MyGeometry)
 writeQword(_params + 0x38, InTouchEvent)
 UE.CallProcessEventEx(OwnerAddress, "OnTouchMoved", _params);
 local RET=readQword(_params + 0xB0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.OnTouchMoved");

BL4.OnTouchStarted = function(OwnerAddress, MyGeometry, InTouchEvent)
 local _paramsSize = 0x168
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnTouchStarted: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MyGeometry at +0x0, InTouchEvent at +0x38
 writeQword(_params + 0x0, MyGeometry)
 writeQword(_params + 0x38, InTouchEvent)
 UE.CallProcessEventEx(OwnerAddress, "OnTouchStarted", _params);
 local RET=readQword(_params + 0xB0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.OnTouchStarted");

BL4.PauseAnimation = function(InAnimation_WidgetAnimation)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PauseAnimation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InAnimation at +0x0
 writeQword(_params + 0x0, InAnimation_WidgetAnimation)
 UE.CallProcessEventEx(InAnimation_WidgetAnimation, "PauseAnimation", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.PauseAnimation");

BL4.PlayAnimation = function(InAnimation_WidgetAnimation, StartAtTime, NumLoopsToPlay, PlayMode, PlaybackSpeed, bRestoreState)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PlayAnimation: Failed To Allocate The Params");return;end;
 StartAtTime = StartAtTime or 0
 NumLoopsToPlay = NumLoopsToPlay or 0
 PlayMode = PlayMode or 0
 PlaybackSpeed = PlaybackSpeed or 0
 bRestoreState = bRestoreState or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InAnimation at +0x0, StartAtTime at +0x8, NumLoopsToPlay at +0xC, PlayMode at +0x10, PlaybackSpeed at +0x14, bRestoreState at +0x18
 writeQword(_params + 0x0, InAnimation_WidgetAnimation)
 writeFloat(_params + 0x8, StartAtTime)
 writeInteger(_params + 0xC, NumLoopsToPlay)
 writeByte(_params + 0x10, PlayMode)
 writeFloat(_params + 0x14, PlaybackSpeed)
 writeByte(_params + 0x18, bRestoreState)
 UE.CallProcessEventEx(InAnimation_WidgetAnimation, "PlayAnimation", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.PlayAnimation");

BL4.PlayAnimationForward = function(InAnimation_WidgetAnimation, PlaybackSpeed, bRestoreState)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PlayAnimationForward: Failed To Allocate The Params");return;end;
 PlaybackSpeed = PlaybackSpeed or 0
 bRestoreState = bRestoreState or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InAnimation at +0x0, PlaybackSpeed at +0x8, bRestoreState at +0xC
 writeQword(_params + 0x0, InAnimation_WidgetAnimation)
 writeFloat(_params + 0x8, PlaybackSpeed)
 writeByte(_params + 0xC, bRestoreState)
 UE.CallProcessEventEx(InAnimation_WidgetAnimation, "PlayAnimationForward", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.PlayAnimationForward");

BL4.PlayAnimationReverse = function(InAnimation_WidgetAnimation, PlaybackSpeed, bRestoreState)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PlayAnimationReverse: Failed To Allocate The Params");return;end;
 PlaybackSpeed = PlaybackSpeed or 0
 bRestoreState = bRestoreState or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InAnimation at +0x0, PlaybackSpeed at +0x8, bRestoreState at +0xC
 writeQword(_params + 0x0, InAnimation_WidgetAnimation)
 writeFloat(_params + 0x8, PlaybackSpeed)
 writeByte(_params + 0xC, bRestoreState)
 UE.CallProcessEventEx(InAnimation_WidgetAnimation, "PlayAnimationReverse", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.PlayAnimationReverse");

BL4.PlayAnimationTimeRange = function(InAnimation_WidgetAnimation, StartAtTime, EndAtTime, NumLoopsToPlay, PlayMode, PlaybackSpeed, bRestoreState)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PlayAnimationTimeRange: Failed To Allocate The Params");return;end;
 StartAtTime = StartAtTime or 0
 EndAtTime = EndAtTime or 0
 NumLoopsToPlay = NumLoopsToPlay or 0
 PlayMode = PlayMode or 0
 PlaybackSpeed = PlaybackSpeed or 0
 bRestoreState = bRestoreState or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InAnimation at +0x0, StartAtTime at +0x8, EndAtTime at +0xC, NumLoopsToPlay at +0x10, PlayMode at +0x14, PlaybackSpeed at +0x18, bRestoreState at +0x1C
 writeQword(_params + 0x0, InAnimation_WidgetAnimation)
 writeFloat(_params + 0x8, StartAtTime)
 writeFloat(_params + 0xC, EndAtTime)
 writeInteger(_params + 0x10, NumLoopsToPlay)
 writeByte(_params + 0x14, PlayMode)
 writeFloat(_params + 0x18, PlaybackSpeed)
 writeByte(_params + 0x1C, bRestoreState)
 UE.CallProcessEventEx(InAnimation_WidgetAnimation, "PlayAnimationTimeRange", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.PlayAnimationTimeRange");

BL4.PlaySound = function(SoundToPlay_SoundBase)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PlaySound: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: SoundToPlay at +0x0
 writeQword(_params + 0x0, SoundToPlay_SoundBase)
 UE.CallProcessEventEx(SoundToPlay_SoundBase, "PlaySound", _params);
 deAlloc(_params);
end
FNR("BL4.PlaySound");

BL4.PreConstruct = function(OwnerAddress, IsDesignTime)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PreConstruct: Failed To Allocate The Params");return;end;
 IsDesignTime = IsDesignTime or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: IsDesignTime at +0x0
 writeByte(_params + 0x0, IsDesignTime)
 UE.CallProcessEventEx(OwnerAddress, "PreConstruct", _params);
 deAlloc(_params);
end
FNR("BL4.PreConstruct");

BL4.QueuePauseAnimation = function(InAnimation_WidgetAnimation)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.QueuePauseAnimation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InAnimation at +0x0
 writeQword(_params + 0x0, InAnimation_WidgetAnimation)
 UE.CallProcessEventEx(InAnimation_WidgetAnimation, "QueuePauseAnimation", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.QueuePauseAnimation");

BL4.QueuePlayAnimation = function(InAnimation_WidgetAnimation, StartAtTime, NumLoopsToPlay, PlayMode, PlaybackSpeed, bRestoreState)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.QueuePlayAnimation: Failed To Allocate The Params");return;end;
 StartAtTime = StartAtTime or 0
 NumLoopsToPlay = NumLoopsToPlay or 0
 PlayMode = PlayMode or 0
 PlaybackSpeed = PlaybackSpeed or 0
 bRestoreState = bRestoreState or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InAnimation at +0x0, StartAtTime at +0x8, NumLoopsToPlay at +0xC, PlayMode at +0x10, PlaybackSpeed at +0x14, bRestoreState at +0x18
 writeQword(_params + 0x0, InAnimation_WidgetAnimation)
 writeFloat(_params + 0x8, StartAtTime)
 writeInteger(_params + 0xC, NumLoopsToPlay)
 writeByte(_params + 0x10, PlayMode)
 writeFloat(_params + 0x14, PlaybackSpeed)
 writeByte(_params + 0x18, bRestoreState)
 UE.CallProcessEventEx(InAnimation_WidgetAnimation, "QueuePlayAnimation", _params);
 deAlloc(_params);
end
FNR("BL4.QueuePlayAnimation");

BL4.QueuePlayAnimationForward = function(InAnimation_WidgetAnimation, PlaybackSpeed, bRestoreState)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.QueuePlayAnimationForward: Failed To Allocate The Params");return;end;
 PlaybackSpeed = PlaybackSpeed or 0
 bRestoreState = bRestoreState or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InAnimation at +0x0, PlaybackSpeed at +0x8, bRestoreState at +0xC
 writeQword(_params + 0x0, InAnimation_WidgetAnimation)
 writeFloat(_params + 0x8, PlaybackSpeed)
 writeByte(_params + 0xC, bRestoreState)
 UE.CallProcessEventEx(InAnimation_WidgetAnimation, "QueuePlayAnimationForward", _params);
 deAlloc(_params);
end
FNR("BL4.QueuePlayAnimationForward");

BL4.QueuePlayAnimationReverse = function(InAnimation_WidgetAnimation, PlaybackSpeed, bRestoreState)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.QueuePlayAnimationReverse: Failed To Allocate The Params");return;end;
 PlaybackSpeed = PlaybackSpeed or 0
 bRestoreState = bRestoreState or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InAnimation at +0x0, PlaybackSpeed at +0x8, bRestoreState at +0xC
 writeQword(_params + 0x0, InAnimation_WidgetAnimation)
 writeFloat(_params + 0x8, PlaybackSpeed)
 writeByte(_params + 0xC, bRestoreState)
 UE.CallProcessEventEx(InAnimation_WidgetAnimation, "QueuePlayAnimationReverse", _params);
 deAlloc(_params);
end
FNR("BL4.QueuePlayAnimationReverse");

BL4.QueuePlayAnimationTimeRange = function(InAnimation_WidgetAnimation, StartAtTime, EndAtTime, NumLoopsToPlay, PlayMode, PlaybackSpeed, bRestoreState)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.QueuePlayAnimationTimeRange: Failed To Allocate The Params");return;end;
 StartAtTime = StartAtTime or 0
 EndAtTime = EndAtTime or 0
 NumLoopsToPlay = NumLoopsToPlay or 0
 PlayMode = PlayMode or 0
 PlaybackSpeed = PlaybackSpeed or 0
 bRestoreState = bRestoreState or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InAnimation at +0x0, StartAtTime at +0x8, EndAtTime at +0xC, NumLoopsToPlay at +0x10, PlayMode at +0x14, PlaybackSpeed at +0x18, bRestoreState at +0x1C
 writeQword(_params + 0x0, InAnimation_WidgetAnimation)
 writeFloat(_params + 0x8, StartAtTime)
 writeFloat(_params + 0xC, EndAtTime)
 writeInteger(_params + 0x10, NumLoopsToPlay)
 writeByte(_params + 0x14, PlayMode)
 writeFloat(_params + 0x18, PlaybackSpeed)
 writeByte(_params + 0x1C, bRestoreState)
 UE.CallProcessEventEx(InAnimation_WidgetAnimation, "QueuePlayAnimationTimeRange", _params);
 deAlloc(_params);
end
FNR("BL4.QueuePlayAnimationTimeRange");

BL4.QueueStopAnimation = function(InAnimation_WidgetAnimation)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.QueueStopAnimation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InAnimation at +0x0
 writeQword(_params + 0x0, InAnimation_WidgetAnimation)
 UE.CallProcessEventEx(InAnimation_WidgetAnimation, "QueueStopAnimation", _params);
 deAlloc(_params);
end
FNR("BL4.QueueStopAnimation");

BL4.RemoveExtension = function(InExtension_UserWidgetExtension)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveExtension: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InExtension at +0x0
 writeQword(_params + 0x0, InExtension_UserWidgetExtension)
 UE.CallProcessEventEx(InExtension_UserWidgetExtension, "RemoveExtension", _params);
 deAlloc(_params);
end
FNR("BL4.RemoveExtension");

BL4.RemoveExtensions = function(InExtensionType_Class)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveExtensions: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InExtensionType at +0x0
 writeQword(_params + 0x0, InExtensionType_Class)
 UE.CallProcessEventEx(InExtensionType_Class, "RemoveExtensions", _params);
 deAlloc(_params);
end
FNR("BL4.RemoveExtensions");

BL4.ReverseAnimation = function(InAnimation_WidgetAnimation)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReverseAnimation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InAnimation at +0x0
 writeQword(_params + 0x0, InAnimation_WidgetAnimation)
 UE.CallProcessEventEx(InAnimation_WidgetAnimation, "ReverseAnimation", _params);
 deAlloc(_params);
end
FNR("BL4.ReverseAnimation");

BL4.SetAlignmentInViewport = function(OwnerAddress, Alignment)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAlignmentInViewport: Failed To Allocate The Params");return;end;
 Alignment = Alignment or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Alignment at +0x0
 writeDouble(_params + 0x0, (Alignment and Alignment.X) or 0)
 writeDouble(_params + 0x8, (Alignment and Alignment.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetAlignmentInViewport", _params);
 deAlloc(_params);
end
FNR("BL4.SetAlignmentInViewport");

BL4.SetAnchorsInViewport = function(OwnerAddress, Anchors)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAnchorsInViewport: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Anchors at +0x0
 writeQword(_params + 0x0, Anchors)
 UE.CallProcessEventEx(OwnerAddress, "SetAnchorsInViewport", _params);
 deAlloc(_params);
end
FNR("BL4.SetAnchorsInViewport");

BL4.SetAnimationCurrentTime = function(InAnimation_WidgetAnimation, InTime)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAnimationCurrentTime: Failed To Allocate The Params");return;end;
 InTime = InTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InAnimation at +0x0, InTime at +0x8
 writeQword(_params + 0x0, InAnimation_WidgetAnimation)
 writeFloat(_params + 0x8, InTime)
 UE.CallProcessEventEx(InAnimation_WidgetAnimation, "SetAnimationCurrentTime", _params);
 deAlloc(_params);
end
FNR("BL4.SetAnimationCurrentTime");

BL4.SetColorAndOpacity = function(OwnerAddress, InColorAndOpacity)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetColorAndOpacity: Failed To Allocate The Params");return;end;
 InColorAndOpacity = InColorAndOpacity or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InColorAndOpacity at +0x0
 writeFloat(_params + 0x0, (InColorAndOpacity and InColorAndOpacity.R) or 0)
 writeFloat(_params + 0x4, (InColorAndOpacity and InColorAndOpacity.G) or 0)
 writeFloat(_params + 0x8, (InColorAndOpacity and InColorAndOpacity.B) or 0)
 writeFloat(_params + 0xC, (InColorAndOpacity and InColorAndOpacity.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetColorAndOpacity", _params);
 deAlloc(_params);
end
FNR("BL4.SetColorAndOpacity");

BL4.SetDesiredSizeInViewport = function(OwnerAddress, Size)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDesiredSizeInViewport: Failed To Allocate The Params");return;end;
 Size = Size or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Size at +0x0
 writeDouble(_params + 0x0, (Size and Size.X) or 0)
 writeDouble(_params + 0x8, (Size and Size.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetDesiredSizeInViewport", _params);
 deAlloc(_params);
end
FNR("BL4.SetDesiredSizeInViewport");

BL4.SetForegroundColor = function(OwnerAddress, InForegroundColor)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetForegroundColor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InForegroundColor at +0x0
 writeQword(_params + 0x0, InForegroundColor)
 UE.CallProcessEventEx(OwnerAddress, "SetForegroundColor", _params);
 deAlloc(_params);
end
FNR("BL4.SetForegroundColor");

BL4.SetInputActionBlocking = function(OwnerAddress, bShouldBlock)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetInputActionBlocking: Failed To Allocate The Params");return;end;
 bShouldBlock = bShouldBlock or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bShouldBlock at +0x0
 writeByte(_params + 0x0, bShouldBlock)
 UE.CallProcessEventEx(OwnerAddress, "SetInputActionBlocking", _params);
 deAlloc(_params);
end
FNR("BL4.SetInputActionBlocking");

BL4.SetInputActionPriority = function(OwnerAddress, NewPriority)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetInputActionPriority: Failed To Allocate The Params");return;end;
 NewPriority = NewPriority or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewPriority at +0x0
 writeInteger(_params + 0x0, NewPriority)
 UE.CallProcessEventEx(OwnerAddress, "SetInputActionPriority", _params);
 deAlloc(_params);
end
FNR("BL4.SetInputActionPriority");

BL4.SetNumLoopsToPlay = function(InAnimation_WidgetAnimation, NumLoopsToPlay)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNumLoopsToPlay: Failed To Allocate The Params");return;end;
 NumLoopsToPlay = NumLoopsToPlay or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InAnimation at +0x0, NumLoopsToPlay at +0x8
 writeQword(_params + 0x0, InAnimation_WidgetAnimation)
 writeInteger(_params + 0x8, NumLoopsToPlay)
 UE.CallProcessEventEx(InAnimation_WidgetAnimation, "SetNumLoopsToPlay", _params);
 deAlloc(_params);
end
FNR("BL4.SetNumLoopsToPlay");

BL4.SetOwningPlayer = function(LocalPlayerController_PlayerController)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetOwningPlayer: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: LocalPlayerController at +0x0
 writeQword(_params + 0x0, LocalPlayerController_PlayerController)
 UE.CallProcessEventEx(LocalPlayerController_PlayerController, "SetOwningPlayer", _params);
 deAlloc(_params);
end
FNR("BL4.SetOwningPlayer");

BL4.SetPadding = function(OwnerAddress, InPadding)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPadding: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InPadding at +0x0
 writeQword(_params + 0x0, InPadding)
 UE.CallProcessEventEx(OwnerAddress, "SetPadding", _params);
 deAlloc(_params);
end
FNR("BL4.SetPadding");

BL4.SetPlaybackSpeed = function(InAnimation_WidgetAnimation, PlaybackSpeed)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPlaybackSpeed: Failed To Allocate The Params");return;end;
 PlaybackSpeed = PlaybackSpeed or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InAnimation at +0x0, PlaybackSpeed at +0x8
 writeQword(_params + 0x0, InAnimation_WidgetAnimation)
 writeFloat(_params + 0x8, PlaybackSpeed)
 UE.CallProcessEventEx(InAnimation_WidgetAnimation, "SetPlaybackSpeed", _params);
 deAlloc(_params);
end
FNR("BL4.SetPlaybackSpeed");

BL4.SetPositionInViewport = function(OwnerAddress, position, bRemoveDPIScale)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPositionInViewport: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 bRemoveDPIScale = bRemoveDPIScale or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: position at +0x0, bRemoveDPIScale at +0x10
 writeDouble(_params + 0x0, (position and position.X) or 0)
 writeDouble(_params + 0x8, (position and position.Y) or 0)
 writeByte(_params + 0x10, bRemoveDPIScale)
 UE.CallProcessEventEx(OwnerAddress, "SetPositionInViewport", _params);
 deAlloc(_params);
end
FNR("BL4.SetPositionInViewport");

BL4.StopAnimation = function(InAnimation_WidgetAnimation)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StopAnimation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InAnimation at +0x0
 writeQword(_params + 0x0, InAnimation_WidgetAnimation)
 UE.CallProcessEventEx(InAnimation_WidgetAnimation, "StopAnimation", _params);
 deAlloc(_params);
end
FNR("BL4.StopAnimation");

BL4.StopListeningForInputAction = function(OwnerAddress, ActionName, EventType)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StopListeningForInputAction: Failed To Allocate The Params");return;end;
 EventType = EventType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ActionName at +0x0, EventType at +0x8
 writeQword(_params + 0x0, ActionName)
 writeByte(_params + 0x8, EventType)
 UE.CallProcessEventEx(OwnerAddress, "StopListeningForInputAction", _params);
 deAlloc(_params);
end
FNR("BL4.StopListeningForInputAction");

BL4.Tick = function(OwnerAddress, MyGeometry, InDeltaTime)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Tick: Failed To Allocate The Params");return;end;
 InDeltaTime = InDeltaTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MyGeometry at +0x0, InDeltaTime at +0x38
 writeQword(_params + 0x0, MyGeometry)
 writeFloat(_params + 0x38, InDeltaTime)
 UE.CallProcessEventEx(OwnerAddress, "Tick", _params);
 deAlloc(_params);
end
FNR("BL4.Tick");

BL4.UnbindAllFromAnimationFinished = function(Animation_WidgetAnimation)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnbindAllFromAnimationFinished: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Animation at +0x0
 writeQword(_params + 0x0, Animation_WidgetAnimation)
 UE.CallProcessEventEx(Animation_WidgetAnimation, "UnbindAllFromAnimationFinished", _params);
 deAlloc(_params);
end
FNR("BL4.UnbindAllFromAnimationFinished");

BL4.UnbindAllFromAnimationStarted = function(Animation_WidgetAnimation)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnbindAllFromAnimationStarted: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Animation at +0x0
 writeQword(_params + 0x0, Animation_WidgetAnimation)
 UE.CallProcessEventEx(Animation_WidgetAnimation, "UnbindAllFromAnimationStarted", _params);
 deAlloc(_params);
end
FNR("BL4.UnbindAllFromAnimationStarted");

BL4.UnbindFromAnimationFinished = function(Animation_WidgetAnimation, Delegate)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnbindFromAnimationFinished: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Animation at +0x0, Delegate at +0x8
 writeQword(_params + 0x0, Animation_WidgetAnimation)
 writeQword(_params + 0x8, Delegate)
 UE.CallProcessEventEx(Animation_WidgetAnimation, "UnbindFromAnimationFinished", _params);
 deAlloc(_params);
end
FNR("BL4.UnbindFromAnimationFinished");

BL4.UnbindFromAnimationStarted = function(Animation_WidgetAnimation, Delegate)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnbindFromAnimationStarted: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Animation at +0x0, Delegate at +0x8
 writeQword(_params + 0x0, Animation_WidgetAnimation)
 writeQword(_params + 0x8, Delegate)
 UE.CallProcessEventEx(Animation_WidgetAnimation, "UnbindFromAnimationStarted", _params);
 deAlloc(_params);
end
FNR("BL4.UnbindFromAnimationStarted");

