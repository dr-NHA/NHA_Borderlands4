BL4.EqualEqual_InputChordInputChord = function(OwnerAddress, A, B)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_InputChordInputChord: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x20
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x20, B)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_InputChordInputChord", _params);
 local RET=readByte(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_InputChordInputChord");

BL4.EqualEqual_KeyKey = function(OwnerAddress, A, B)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_KeyKey: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x18
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x18, B)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_KeyKey", _params);
 local RET=readByte(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_KeyKey");

BL4.GetAnalogValue = function(OwnerAddress, Input)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAnalogValue: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Input at +0x0
 writeQword(_params + 0x0, Input)
 UE.CallProcessEventEx(OwnerAddress, "GetAnalogValue", _params);
 local RET=readFloat(_params + 0x48);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAnalogValue");

BL4.GetKey = function(OwnerAddress, Input)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetKey: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Input at +0x0
 writeQword(_params + 0x0, Input)
 UE.CallProcessEventEx(OwnerAddress, "GetKey", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetKey");

BL4.GetModifierKeysState = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetModifierKeysState: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetModifierKeysState", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetModifierKeysState");

BL4.GetUserIndex = function(OwnerAddress, Input)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetUserIndex: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Input at +0x0
 writeQword(_params + 0x0, Input)
 UE.CallProcessEventEx(OwnerAddress, "GetUserIndex", _params);
 local RET=readInteger(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetUserIndex");

BL4.InputChord_GetDisplayName = function(OwnerAddress, Key)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InputChord_GetDisplayName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Key at +0x0
 writeQword(_params + 0x0, Key)
 UE.CallProcessEventEx(OwnerAddress, "InputChord_GetDisplayName", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.InputChord_GetDisplayName");

BL4.InputEvent_IsAltDown = function(OwnerAddress, Input)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InputEvent_IsAltDown: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Input at +0x0
 writeQword(_params + 0x0, Input)
 UE.CallProcessEventEx(OwnerAddress, "InputEvent_IsAltDown", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.InputEvent_IsAltDown");

BL4.InputEvent_IsCommandDown = function(OwnerAddress, Input)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InputEvent_IsCommandDown: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Input at +0x0
 writeQword(_params + 0x0, Input)
 UE.CallProcessEventEx(OwnerAddress, "InputEvent_IsCommandDown", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.InputEvent_IsCommandDown");

BL4.InputEvent_IsControlDown = function(OwnerAddress, Input)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InputEvent_IsControlDown: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Input at +0x0
 writeQword(_params + 0x0, Input)
 UE.CallProcessEventEx(OwnerAddress, "InputEvent_IsControlDown", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.InputEvent_IsControlDown");

BL4.InputEvent_IsLeftAltDown = function(OwnerAddress, Input)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InputEvent_IsLeftAltDown: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Input at +0x0
 writeQword(_params + 0x0, Input)
 UE.CallProcessEventEx(OwnerAddress, "InputEvent_IsLeftAltDown", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.InputEvent_IsLeftAltDown");

BL4.InputEvent_IsLeftCommandDown = function(OwnerAddress, Input)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InputEvent_IsLeftCommandDown: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Input at +0x0
 writeQword(_params + 0x0, Input)
 UE.CallProcessEventEx(OwnerAddress, "InputEvent_IsLeftCommandDown", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.InputEvent_IsLeftCommandDown");

BL4.InputEvent_IsLeftControlDown = function(OwnerAddress, Input)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InputEvent_IsLeftControlDown: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Input at +0x0
 writeQword(_params + 0x0, Input)
 UE.CallProcessEventEx(OwnerAddress, "InputEvent_IsLeftControlDown", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.InputEvent_IsLeftControlDown");

BL4.InputEvent_IsLeftShiftDown = function(OwnerAddress, Input)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InputEvent_IsLeftShiftDown: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Input at +0x0
 writeQword(_params + 0x0, Input)
 UE.CallProcessEventEx(OwnerAddress, "InputEvent_IsLeftShiftDown", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.InputEvent_IsLeftShiftDown");

BL4.InputEvent_IsRepeat = function(OwnerAddress, Input)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InputEvent_IsRepeat: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Input at +0x0
 writeQword(_params + 0x0, Input)
 UE.CallProcessEventEx(OwnerAddress, "InputEvent_IsRepeat", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.InputEvent_IsRepeat");

BL4.InputEvent_IsRightAltDown = function(OwnerAddress, Input)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InputEvent_IsRightAltDown: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Input at +0x0
 writeQword(_params + 0x0, Input)
 UE.CallProcessEventEx(OwnerAddress, "InputEvent_IsRightAltDown", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.InputEvent_IsRightAltDown");

BL4.InputEvent_IsRightCommandDown = function(OwnerAddress, Input)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InputEvent_IsRightCommandDown: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Input at +0x0
 writeQword(_params + 0x0, Input)
 UE.CallProcessEventEx(OwnerAddress, "InputEvent_IsRightCommandDown", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.InputEvent_IsRightCommandDown");

BL4.InputEvent_IsRightControlDown = function(OwnerAddress, Input)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InputEvent_IsRightControlDown: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Input at +0x0
 writeQword(_params + 0x0, Input)
 UE.CallProcessEventEx(OwnerAddress, "InputEvent_IsRightControlDown", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.InputEvent_IsRightControlDown");

BL4.InputEvent_IsRightShiftDown = function(OwnerAddress, Input)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InputEvent_IsRightShiftDown: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Input at +0x0
 writeQword(_params + 0x0, Input)
 UE.CallProcessEventEx(OwnerAddress, "InputEvent_IsRightShiftDown", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.InputEvent_IsRightShiftDown");

BL4.InputEvent_IsShiftDown = function(OwnerAddress, Input)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InputEvent_IsShiftDown: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Input at +0x0
 writeQword(_params + 0x0, Input)
 UE.CallProcessEventEx(OwnerAddress, "InputEvent_IsShiftDown", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.InputEvent_IsShiftDown");

BL4.Key_GetDisplayName = function(OwnerAddress, Key, bLongDisplayName)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Key_GetDisplayName: Failed To Allocate The Params");return;end;
 bLongDisplayName = bLongDisplayName or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Key at +0x0, bLongDisplayName at +0x18
 writeQword(_params + 0x0, Key)
 writeByte(_params + 0x18, bLongDisplayName)
 UE.CallProcessEventEx(OwnerAddress, "Key_GetDisplayName", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Key_GetDisplayName");

BL4.Key_GetNavigationAction = function(OwnerAddress, InKey)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Key_GetNavigationAction: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0
 writeQword(_params + 0x0, InKey)
 UE.CallProcessEventEx(OwnerAddress, "Key_GetNavigationAction", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Key_GetNavigationAction");

BL4.Key_GetNavigationActionFromKey = function(OwnerAddress, InKeyEvent)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Key_GetNavigationActionFromKey: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKeyEvent at +0x0
 writeQword(_params + 0x0, InKeyEvent)
 UE.CallProcessEventEx(OwnerAddress, "Key_GetNavigationActionFromKey", _params);
 local RET=readByte(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Key_GetNavigationActionFromKey");

BL4.Key_GetNavigationDirectionFromAnalog = function(OwnerAddress, InAnalogEvent)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Key_GetNavigationDirectionFromAnalog: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InAnalogEvent at +0x0
 writeQword(_params + 0x0, InAnalogEvent)
 UE.CallProcessEventEx(OwnerAddress, "Key_GetNavigationDirectionFromAnalog", _params);
 local RET=readByte(_params + 0x48);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Key_GetNavigationDirectionFromAnalog");

BL4.Key_GetNavigationDirectionFromKey = function(OwnerAddress, InKeyEvent)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Key_GetNavigationDirectionFromKey: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKeyEvent at +0x0
 writeQword(_params + 0x0, InKeyEvent)
 UE.CallProcessEventEx(OwnerAddress, "Key_GetNavigationDirectionFromKey", _params);
 local RET=readByte(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Key_GetNavigationDirectionFromKey");

BL4.Key_IsAnalog = function(OwnerAddress, Key)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Key_IsAnalog: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Key at +0x0
 writeQword(_params + 0x0, Key)
 UE.CallProcessEventEx(OwnerAddress, "Key_IsAnalog", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Key_IsAnalog");

BL4.Key_IsAxis1D = function(OwnerAddress, Key)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Key_IsAxis1D: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Key at +0x0
 writeQword(_params + 0x0, Key)
 UE.CallProcessEventEx(OwnerAddress, "Key_IsAxis1D", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Key_IsAxis1D");

BL4.Key_IsAxis2D = function(OwnerAddress, Key)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Key_IsAxis2D: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Key at +0x0
 writeQword(_params + 0x0, Key)
 UE.CallProcessEventEx(OwnerAddress, "Key_IsAxis2D", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Key_IsAxis2D");

BL4.Key_IsAxis3D = function(OwnerAddress, Key)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Key_IsAxis3D: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Key at +0x0
 writeQword(_params + 0x0, Key)
 UE.CallProcessEventEx(OwnerAddress, "Key_IsAxis3D", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Key_IsAxis3D");

BL4.Key_IsButtonAxis = function(OwnerAddress, Key)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Key_IsButtonAxis: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Key at +0x0
 writeQword(_params + 0x0, Key)
 UE.CallProcessEventEx(OwnerAddress, "Key_IsButtonAxis", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Key_IsButtonAxis");

BL4.Key_IsDigital = function(OwnerAddress, Key)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Key_IsDigital: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Key at +0x0
 writeQword(_params + 0x0, Key)
 UE.CallProcessEventEx(OwnerAddress, "Key_IsDigital", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Key_IsDigital");

BL4.Key_IsGamepadKey = function(OwnerAddress, Key)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Key_IsGamepadKey: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Key at +0x0
 writeQword(_params + 0x0, Key)
 UE.CallProcessEventEx(OwnerAddress, "Key_IsGamepadKey", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Key_IsGamepadKey");

BL4.Key_IsKeyboardKey = function(OwnerAddress, Key)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Key_IsKeyboardKey: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Key at +0x0
 writeQword(_params + 0x0, Key)
 UE.CallProcessEventEx(OwnerAddress, "Key_IsKeyboardKey", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Key_IsKeyboardKey");

BL4.Key_IsModifierKey = function(OwnerAddress, Key)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Key_IsModifierKey: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Key at +0x0
 writeQword(_params + 0x0, Key)
 UE.CallProcessEventEx(OwnerAddress, "Key_IsModifierKey", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Key_IsModifierKey");

BL4.Key_IsMouseButton = function(OwnerAddress, Key)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Key_IsMouseButton: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Key at +0x0
 writeQword(_params + 0x0, Key)
 UE.CallProcessEventEx(OwnerAddress, "Key_IsMouseButton", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Key_IsMouseButton");

BL4.Key_IsValid = function(OwnerAddress, Key)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Key_IsValid: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Key at +0x0
 writeQword(_params + 0x0, Key)
 UE.CallProcessEventEx(OwnerAddress, "Key_IsValid", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Key_IsValid");

BL4.Key_IsVectorAxis = function(OwnerAddress, Key)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Key_IsVectorAxis: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Key at +0x0
 writeQword(_params + 0x0, Key)
 UE.CallProcessEventEx(OwnerAddress, "Key_IsVectorAxis", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Key_IsVectorAxis");

BL4.ModifierKeysState_IsAltDown = function(OwnerAddress, KeysState)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ModifierKeysState_IsAltDown: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: KeysState at +0x0
 writeQword(_params + 0x0, KeysState)
 UE.CallProcessEventEx(OwnerAddress, "ModifierKeysState_IsAltDown", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ModifierKeysState_IsAltDown");

BL4.ModifierKeysState_IsCommandDown = function(OwnerAddress, KeysState)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ModifierKeysState_IsCommandDown: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: KeysState at +0x0
 writeQword(_params + 0x0, KeysState)
 UE.CallProcessEventEx(OwnerAddress, "ModifierKeysState_IsCommandDown", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ModifierKeysState_IsCommandDown");

BL4.ModifierKeysState_IsControlDown = function(OwnerAddress, KeysState)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ModifierKeysState_IsControlDown: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: KeysState at +0x0
 writeQword(_params + 0x0, KeysState)
 UE.CallProcessEventEx(OwnerAddress, "ModifierKeysState_IsControlDown", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ModifierKeysState_IsControlDown");

BL4.ModifierKeysState_IsShiftDown = function(OwnerAddress, KeysState)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ModifierKeysState_IsShiftDown: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: KeysState at +0x0
 writeQword(_params + 0x0, KeysState)
 UE.CallProcessEventEx(OwnerAddress, "ModifierKeysState_IsShiftDown", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ModifierKeysState_IsShiftDown");

BL4.PointerEvent_GetCursorDelta = function(OwnerAddress, Input)
 local _paramsSize = 0x88
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PointerEvent_GetCursorDelta: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Input at +0x0
 writeQword(_params + 0x0, Input)
 UE.CallProcessEventEx(OwnerAddress, "PointerEvent_GetCursorDelta", _params);
 local RET={X=readFloat(_params+0x78),Y=readFloat(_params+0x80)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.PointerEvent_GetCursorDelta");

BL4.PointerEvent_GetEffectingButton = function(OwnerAddress, Input)
 local _paramsSize = 0x90
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PointerEvent_GetEffectingButton: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Input at +0x0
 writeQword(_params + 0x0, Input)
 UE.CallProcessEventEx(OwnerAddress, "PointerEvent_GetEffectingButton", _params);
 local RET=readQword(_params + 0x78);
 deAlloc(_params);
 return RET;
end
FNR("BL4.PointerEvent_GetEffectingButton");

BL4.PointerEvent_GetGestureDelta = function(OwnerAddress, Input)
 local _paramsSize = 0x88
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PointerEvent_GetGestureDelta: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Input at +0x0
 writeQword(_params + 0x0, Input)
 UE.CallProcessEventEx(OwnerAddress, "PointerEvent_GetGestureDelta", _params);
 local RET={X=readFloat(_params+0x78),Y=readFloat(_params+0x80)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.PointerEvent_GetGestureDelta");

BL4.PointerEvent_GetGestureType = function(OwnerAddress, Input)
 local _paramsSize = 0x80
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PointerEvent_GetGestureType: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Input at +0x0
 writeQword(_params + 0x0, Input)
 UE.CallProcessEventEx(OwnerAddress, "PointerEvent_GetGestureType", _params);
 local RET=readByte(_params + 0x78);
 deAlloc(_params);
 return RET;
end
FNR("BL4.PointerEvent_GetGestureType");

BL4.PointerEvent_GetLastScreenSpacePosition = function(OwnerAddress, Input)
 local _paramsSize = 0x88
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PointerEvent_GetLastScreenSpacePosition: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Input at +0x0
 writeQword(_params + 0x0, Input)
 UE.CallProcessEventEx(OwnerAddress, "PointerEvent_GetLastScreenSpacePosition", _params);
 local RET={X=readFloat(_params+0x78),Y=readFloat(_params+0x80)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.PointerEvent_GetLastScreenSpacePosition");

BL4.PointerEvent_GetPointerIndex = function(OwnerAddress, Input)
 local _paramsSize = 0x80
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PointerEvent_GetPointerIndex: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Input at +0x0
 writeQword(_params + 0x0, Input)
 UE.CallProcessEventEx(OwnerAddress, "PointerEvent_GetPointerIndex", _params);
 local RET=readInteger(_params + 0x78);
 deAlloc(_params);
 return RET;
end
FNR("BL4.PointerEvent_GetPointerIndex");

BL4.PointerEvent_GetScreenSpacePosition = function(OwnerAddress, Input)
 local _paramsSize = 0x88
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PointerEvent_GetScreenSpacePosition: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Input at +0x0
 writeQword(_params + 0x0, Input)
 UE.CallProcessEventEx(OwnerAddress, "PointerEvent_GetScreenSpacePosition", _params);
 local RET={X=readFloat(_params+0x78),Y=readFloat(_params+0x80)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.PointerEvent_GetScreenSpacePosition");

BL4.PointerEvent_GetTouchpadIndex = function(OwnerAddress, Input)
 local _paramsSize = 0x80
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PointerEvent_GetTouchpadIndex: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Input at +0x0
 writeQword(_params + 0x0, Input)
 UE.CallProcessEventEx(OwnerAddress, "PointerEvent_GetTouchpadIndex", _params);
 local RET=readInteger(_params + 0x78);
 deAlloc(_params);
 return RET;
end
FNR("BL4.PointerEvent_GetTouchpadIndex");

BL4.PointerEvent_GetUserIndex = function(OwnerAddress, Input)
 local _paramsSize = 0x80
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PointerEvent_GetUserIndex: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Input at +0x0
 writeQword(_params + 0x0, Input)
 UE.CallProcessEventEx(OwnerAddress, "PointerEvent_GetUserIndex", _params);
 local RET=readInteger(_params + 0x78);
 deAlloc(_params);
 return RET;
end
FNR("BL4.PointerEvent_GetUserIndex");

BL4.PointerEvent_GetWheelDelta = function(OwnerAddress, Input)
 local _paramsSize = 0x80
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PointerEvent_GetWheelDelta: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Input at +0x0
 writeQword(_params + 0x0, Input)
 UE.CallProcessEventEx(OwnerAddress, "PointerEvent_GetWheelDelta", _params);
 local RET=readFloat(_params + 0x78);
 deAlloc(_params);
 return RET;
end
FNR("BL4.PointerEvent_GetWheelDelta");

BL4.PointerEvent_IsMouseButtonDown = function(OwnerAddress, Input, MouseButton)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PointerEvent_IsMouseButtonDown: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Input at +0x0, MouseButton at +0x78
 writeQword(_params + 0x0, Input)
 writeQword(_params + 0x78, MouseButton)
 UE.CallProcessEventEx(OwnerAddress, "PointerEvent_IsMouseButtonDown", _params);
 local RET=readByte(_params + 0x90);
 deAlloc(_params);
 return RET;
end
FNR("BL4.PointerEvent_IsMouseButtonDown");

BL4.PointerEvent_IsTouchEvent = function(OwnerAddress, Input)
 local _paramsSize = 0x80
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PointerEvent_IsTouchEvent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Input at +0x0
 writeQword(_params + 0x0, Input)
 UE.CallProcessEventEx(OwnerAddress, "PointerEvent_IsTouchEvent", _params);
 local RET=readByte(_params + 0x78);
 deAlloc(_params);
 return RET;
end
FNR("BL4.PointerEvent_IsTouchEvent");

