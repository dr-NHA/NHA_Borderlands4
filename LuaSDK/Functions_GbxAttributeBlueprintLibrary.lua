BL4.AddModifierToGbxAttribute = function(OwnerAddress, attribute, ContextSource_Object, ModifierType, modifiervalue, bAutoRefresh, ModifierActionResult)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddModifierToGbxAttribute: Failed To Allocate The Params");return;end;
 ModifierType = ModifierType or 0
 modifiervalue = modifiervalue or 0
 bAutoRefresh = bAutoRefresh or false
 ModifierActionResult = ModifierActionResult or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0, ContextSource at +0x18, ModifierType at +0x20, modifiervalue at +0x24, bAutoRefresh at +0x28, ModifierActionResult at +0x29
 writeQword(_params + 0x0, attribute)
 writeQword(_params + 0x18, ContextSource_Object)
 writeByte(_params + 0x20, ModifierType)
 writeFloat(_params + 0x24, modifiervalue)
 writeByte(_params + 0x28, bAutoRefresh)
 writeByte(_params + 0x29, ModifierActionResult)
 UE.CallProcessEventEx(OwnerAddress, "AddModifierToGbxAttribute", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddModifierToGbxAttribute");

BL4.BindEventToOnAttributeChanged = function(OwnerAddress, AttributeDef, ContextSource_Object, Delegate)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BindEventToOnAttributeChanged: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeDef at +0x0, ContextSource at +0x8, Delegate at +0x10
 writeQword(_params + 0x0, AttributeDef)
 writeQword(_params + 0x8, ContextSource_Object)
 writeQword(_params + 0x10, Delegate)
 UE.CallProcessEventEx(OwnerAddress, "BindEventToOnAttributeChanged", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BindEventToOnAttributeChanged");

BL4.BindEventToOnFloatAttributeChanged = function(OwnerAddress, attribute, Delegate)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BindEventToOnFloatAttributeChanged: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0, Delegate at +0xC
 writeQword(_params + 0x0, attribute)
 writeQword(_params + 0xC, Delegate)
 UE.CallProcessEventEx(OwnerAddress, "BindEventToOnFloatAttributeChanged", _params);
 deAlloc(_params);
end
FNR("BL4.BindEventToOnFloatAttributeChanged");

BL4.BindEventToOnIntegerAttributeChanged = function(OwnerAddress, attribute, Delegate)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BindEventToOnIntegerAttributeChanged: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0, Delegate at +0xC
 writeQword(_params + 0x0, attribute)
 writeQword(_params + 0xC, Delegate)
 UE.CallProcessEventEx(OwnerAddress, "BindEventToOnIntegerAttributeChanged", _params);
 deAlloc(_params);
end
FNR("BL4.BindEventToOnIntegerAttributeChanged");

BL4.BreakGbxAttributeFloat = function(OwnerAddress, attribute, Value, BaseValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakGbxAttributeFloat: Failed To Allocate The Params");return;end;
 Value = Value or 0
 BaseValue = BaseValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0, Value at +0xC, BaseValue at +0x10
 writeQword(_params + 0x0, attribute)
 writeFloat(_params + 0xC, Value)
 writeFloat(_params + 0x10, BaseValue)
 UE.CallProcessEventEx(OwnerAddress, "BreakGbxAttributeFloat", _params);
 deAlloc(_params);
end
FNR("BL4.BreakGbxAttributeFloat");

BL4.BreakGbxAttributeInteger = function(OwnerAddress, attribute, Value, BaseValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakGbxAttributeInteger: Failed To Allocate The Params");return;end;
 Value = Value or 0
 BaseValue = BaseValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0, Value at +0xC, BaseValue at +0x10
 writeQword(_params + 0x0, attribute)
 writeInteger(_params + 0xC, Value)
 writeInteger(_params + 0x10, BaseValue)
 UE.CallProcessEventEx(OwnerAddress, "BreakGbxAttributeInteger", _params);
 deAlloc(_params);
end
FNR("BL4.BreakGbxAttributeInteger");

BL4.Conv_GbxAttributeFloatToFloat = function(OwnerAddress, attribute)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_GbxAttributeFloatToFloat: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0
 writeQword(_params + 0x0, attribute)
 UE.CallProcessEventEx(OwnerAddress, "Conv_GbxAttributeFloatToFloat", _params);
 local RET=readFloat(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_GbxAttributeFloatToFloat");

BL4.Conv_GbxAttributeFloatToString = function(OwnerAddress, attribute)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_GbxAttributeFloatToString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0
 writeQword(_params + 0x0, attribute)
 UE.CallProcessEventEx(OwnerAddress, "Conv_GbxAttributeFloatToString", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_GbxAttributeFloatToString");

BL4.Conv_GbxAttributeIntegerToInteger = function(OwnerAddress, attribute)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_GbxAttributeIntegerToInteger: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0
 writeQword(_params + 0x0, attribute)
 UE.CallProcessEventEx(OwnerAddress, "Conv_GbxAttributeIntegerToInteger", _params);
 local RET=readInteger(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_GbxAttributeIntegerToInteger");

BL4.Conv_GbxAttributeIntegerToString = function(OwnerAddress, attribute)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_GbxAttributeIntegerToString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0
 writeQword(_params + 0x0, attribute)
 UE.CallProcessEventEx(OwnerAddress, "Conv_GbxAttributeIntegerToString", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_GbxAttributeIntegerToString");

BL4.Conv_GbxAttributeModifierHandleToString = function(OwnerAddress, attribute)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_GbxAttributeModifierHandleToString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0
 writeQword(_params + 0x0, attribute)
 UE.CallProcessEventEx(OwnerAddress, "Conv_GbxAttributeModifierHandleToString", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_GbxAttributeModifierHandleToString");

BL4.EqualEqual_GbxAttributeFloat = function(OwnerAddress, A, B)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_GbxAttributeFloat: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0xC
 writeQword(_params + 0x0, A)
 writeQword(_params + 0xC, B)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_GbxAttributeFloat", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_GbxAttributeFloat");

BL4.EqualEqual_GbxAttributeFloatValue = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_GbxAttributeFloatValue: Failed To Allocate The Params");return;end;
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0xC
 writeQword(_params + 0x0, A)
 writeFloat(_params + 0xC, B)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_GbxAttributeFloatValue", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_GbxAttributeFloatValue");

BL4.EqualEqual_GbxAttributeInteger = function(OwnerAddress, A, B)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_GbxAttributeInteger: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0xC
 writeQword(_params + 0x0, A)
 writeQword(_params + 0xC, B)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_GbxAttributeInteger", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_GbxAttributeInteger");

BL4.EqualEqual_GbxAttributeIntegerValue = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_GbxAttributeIntegerValue: Failed To Allocate The Params");return;end;
 B = B or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0xC
 writeQword(_params + 0x0, A)
 writeInteger(_params + 0xC, B)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_GbxAttributeIntegerValue", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_GbxAttributeIntegerValue");

BL4.GetAttributeAsActor = function(OwnerAddress, attribute, ContextSource_Object, Class, DefaultValue_Actor)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAttributeAsActor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0, ContextSource at +0x18, Class at +0x20, DefaultValue at +0x28
 writeQword(_params + 0x0, attribute)
 writeQword(_params + 0x18, ContextSource_Object)
 writeQword(_params + 0x20, Class)
 writeQword(_params + 0x28, DefaultValue_Actor)
 UE.CallProcessEventEx(OwnerAddress, "GetAttributeAsActor", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAttributeAsActor");

BL4.GetAttributeAsBool = function(OwnerAddress, attribute, ContextSource_Object, DefaultValue)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAttributeAsBool: Failed To Allocate The Params");return;end;
 DefaultValue = DefaultValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0, ContextSource at +0x18, DefaultValue at +0x20
 writeQword(_params + 0x0, attribute)
 writeQword(_params + 0x18, ContextSource_Object)
 writeByte(_params + 0x20, DefaultValue)
 UE.CallProcessEventEx(OwnerAddress, "GetAttributeAsBool", _params);
 local RET=readByte(_params + 0x21);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAttributeAsBool");

BL4.GetAttributeAsFloat = function(OwnerAddress, attribute, ContextSource_Object, DefaultValue)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAttributeAsFloat: Failed To Allocate The Params");return;end;
 DefaultValue = DefaultValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0, ContextSource at +0x18, DefaultValue at +0x20
 writeQword(_params + 0x0, attribute)
 writeQword(_params + 0x18, ContextSource_Object)
 writeFloat(_params + 0x20, DefaultValue)
 UE.CallProcessEventEx(OwnerAddress, "GetAttributeAsFloat", _params);
 local RET=readFloat(_params + 0x24);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAttributeAsFloat");

BL4.GetAttributeAsInt = function(OwnerAddress, attribute, ContextSource_Object, DefaultValue)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAttributeAsInt: Failed To Allocate The Params");return;end;
 DefaultValue = DefaultValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0, ContextSource at +0x18, DefaultValue at +0x20
 writeQword(_params + 0x0, attribute)
 writeQword(_params + 0x18, ContextSource_Object)
 writeInteger(_params + 0x20, DefaultValue)
 UE.CallProcessEventEx(OwnerAddress, "GetAttributeAsInt", _params);
 local RET=readInteger(_params + 0x24);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAttributeAsInt");

BL4.GetAttributeAsNumericRange = function(OwnerAddress, attribute, ContextSource_Object, DefaultValue)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAttributeAsNumericRange: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0, ContextSource at +0x18, DefaultValue at +0x20
 writeQword(_params + 0x0, attribute)
 writeQword(_params + 0x18, ContextSource_Object)
 writeQword(_params + 0x20, DefaultValue)
 UE.CallProcessEventEx(OwnerAddress, "GetAttributeAsNumericRange", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAttributeAsNumericRange");

BL4.GetAttributeAsObject = function(OwnerAddress, attribute, ContextSource_Object, Class, DefaultValue_Object)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAttributeAsObject: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0, ContextSource at +0x18, Class at +0x20, DefaultValue at +0x28
 writeQword(_params + 0x0, attribute)
 writeQword(_params + 0x18, ContextSource_Object)
 writeQword(_params + 0x20, Class)
 writeQword(_params + 0x28, DefaultValue_Object)
 UE.CallProcessEventEx(OwnerAddress, "GetAttributeAsObject", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAttributeAsObject");

BL4.GetAttributeAsRotator = function(OwnerAddress, attribute, ContextSource_Object, DefaultValue)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAttributeAsRotator: Failed To Allocate The Params");return;end;
 DefaultValue = DefaultValue or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0, ContextSource at +0x18, DefaultValue at +0x20
 writeQword(_params + 0x0, attribute)
 writeQword(_params + 0x18, ContextSource_Object)
 writeDouble(_params + 0x20, (DefaultValue and DefaultValue.Pitch) or 0)
 writeDouble(_params + 0x28, (DefaultValue and DefaultValue.Yaw) or 0)
 writeDouble(_params + 0x30, (DefaultValue and DefaultValue.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetAttributeAsRotator", _params);
 local RET={Pitch=readFloat(_params+0x38),Yaw=readFloat(_params+0x40),Roll=readFloat(_params+0x48)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAttributeAsRotator");

BL4.GetAttributeAsVector = function(OwnerAddress, attribute, ContextSource_Object, DefaultValue)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAttributeAsVector: Failed To Allocate The Params");return;end;
 DefaultValue = DefaultValue or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0, ContextSource at +0x18, DefaultValue at +0x20
 writeQword(_params + 0x0, attribute)
 writeQword(_params + 0x18, ContextSource_Object)
 writeDouble(_params + 0x20, (DefaultValue and DefaultValue.X) or 0)
 writeDouble(_params + 0x28, (DefaultValue and DefaultValue.Y) or 0)
 writeDouble(_params + 0x30, (DefaultValue and DefaultValue.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetAttributeAsVector", _params);
 local RET={X=readFloat(_params+0x38),Y=readFloat(_params+0x40),Z=readFloat(_params+0x48)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAttributeAsVector");

BL4.GetSummary_GbxAttributeInit = function(OwnerAddress, Init)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSummary_GbxAttributeInit: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Init at +0x0
 writeQword(_params + 0x0, Init)
 UE.CallProcessEventEx(OwnerAddress, "GetSummary_GbxAttributeInit", _params);
 local RET=readQword(_params + 0x50);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSummary_GbxAttributeInit");

BL4.GetSummary_GbxWeightedAttributeInit = function(OwnerAddress, Init)
 local _paramsSize = 0xC8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSummary_GbxWeightedAttributeInit: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Init at +0x0
 writeQword(_params + 0x0, Init)
 UE.CallProcessEventEx(OwnerAddress, "GetSummary_GbxWeightedAttributeInit", _params);
 local RET=readQword(_params + 0xB8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSummary_GbxWeightedAttributeInit");

BL4.GetValueOfAttribute = function(OwnerAddress, AttributeDef, ContextSource_Object, DefaultValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetValueOfAttribute: Failed To Allocate The Params");return;end;
 DefaultValue = DefaultValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeDef at +0x0, ContextSource at +0x8, DefaultValue at +0x10
 writeQword(_params + 0x0, AttributeDef)
 writeQword(_params + 0x8, ContextSource_Object)
 writeFloat(_params + 0x10, DefaultValue)
 UE.CallProcessEventEx(OwnerAddress, "GetValueOfAttribute", _params);
 local RET=readFloat(_params + 0x14);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetValueOfAttribute");

BL4.GetValueOfAttributeAsBoolean = function(OwnerAddress, AttributeDef, ContextSource_Object, DefaultValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetValueOfAttributeAsBoolean: Failed To Allocate The Params");return;end;
 DefaultValue = DefaultValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeDef at +0x0, ContextSource at +0x8, DefaultValue at +0x10
 writeQword(_params + 0x0, AttributeDef)
 writeQword(_params + 0x8, ContextSource_Object)
 writeByte(_params + 0x10, DefaultValue)
 UE.CallProcessEventEx(OwnerAddress, "GetValueOfAttributeAsBoolean", _params);
 local RET=readByte(_params + 0x11);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetValueOfAttributeAsBoolean");

BL4.GetValueOfAttributeAsInteger = function(OwnerAddress, AttributeDef, ContextSource_Object, DefaultValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetValueOfAttributeAsInteger: Failed To Allocate The Params");return;end;
 DefaultValue = DefaultValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeDef at +0x0, ContextSource at +0x8, DefaultValue at +0x10
 writeQword(_params + 0x0, AttributeDef)
 writeQword(_params + 0x8, ContextSource_Object)
 writeInteger(_params + 0x10, DefaultValue)
 UE.CallProcessEventEx(OwnerAddress, "GetValueOfAttributeAsInteger", _params);
 local RET=readInteger(_params + 0x14);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetValueOfAttributeAsInteger");

BL4.MakeGbxAttributeFloat = function(OwnerAddress, BaseValue)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeGbxAttributeFloat: Failed To Allocate The Params");return;end;
 BaseValue = BaseValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BaseValue at +0x0
 writeFloat(_params + 0x0, BaseValue)
 UE.CallProcessEventEx(OwnerAddress, "MakeGbxAttributeFloat", _params);
 local RET=readQword(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeGbxAttributeFloat");

BL4.MakeGbxAttributeInteger = function(OwnerAddress, BaseValue)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeGbxAttributeInteger: Failed To Allocate The Params");return;end;
 BaseValue = BaseValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BaseValue at +0x0
 writeInteger(_params + 0x0, BaseValue)
 UE.CallProcessEventEx(OwnerAddress, "MakeGbxAttributeInteger", _params);
 local RET=readQword(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeGbxAttributeInteger");

BL4.RefreshBindingToOnAttributeChangedEvent = function(OwnerAddress, BindingHandle, ContextSource_Object)
 local _paramsSize = 0xB8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RefreshBindingToOnAttributeChangedEvent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BindingHandle at +0x0, ContextSource at +0x58
 writeQword(_params + 0x0, BindingHandle)
 writeQword(_params + 0x58, ContextSource_Object)
 UE.CallProcessEventEx(OwnerAddress, "RefreshBindingToOnAttributeChangedEvent", _params);
 local RET=readQword(_params + 0x60);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RefreshBindingToOnAttributeChangedEvent");

BL4.RemoveAttributeModifier = function(OwnerAddress, ModifierHandle)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveAttributeModifier: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ModifierHandle at +0x0
 writeQword(_params + 0x0, ModifierHandle)
 UE.CallProcessEventEx(OwnerAddress, "RemoveAttributeModifier", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RemoveAttributeModifier");

BL4.RemoveModifierFromGbxAttribute = function(OwnerAddress, ModifierHandle, ModifierActionResult)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveModifierFromGbxAttribute: Failed To Allocate The Params");return;end;
 ModifierActionResult = ModifierActionResult or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ModifierHandle at +0x0, ModifierActionResult at +0x10
 writeQword(_params + 0x0, ModifierHandle)
 writeByte(_params + 0x10, ModifierActionResult)
 UE.CallProcessEventEx(OwnerAddress, "RemoveModifierFromGbxAttribute", _params);
 deAlloc(_params);
end
FNR("BL4.RemoveModifierFromGbxAttribute");

BL4.RemoveMultipleAttributeModifiers = function(OwnerAddress, ModifierHandles)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveMultipleAttributeModifiers: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ModifierHandles at +0x0
 writeQword(_params + 0x0, ModifierHandles)
 UE.CallProcessEventEx(OwnerAddress, "RemoveMultipleAttributeModifiers", _params);
 deAlloc(_params);
end
FNR("BL4.RemoveMultipleAttributeModifiers");

BL4.ResetAttributeBaseValue = function(OwnerAddress, attribute, ContextSource_Object)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ResetAttributeBaseValue: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0, ContextSource at +0x18
 writeQword(_params + 0x0, attribute)
 writeQword(_params + 0x18, ContextSource_Object)
 UE.CallProcessEventEx(OwnerAddress, "ResetAttributeBaseValue", _params);
 deAlloc(_params);
end
FNR("BL4.ResetAttributeBaseValue");

BL4.SetAttributeByPercentage = function(ContextSource_Object, attribute, MaxAttribute, Percentage, MaxPercentage)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAttributeByPercentage: Failed To Allocate The Params");return;end;
 Percentage = Percentage or 0
 MaxPercentage = MaxPercentage or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ContextSource at +0x0, attribute at +0x8, MaxAttribute at +0x20, Percentage at +0x38, MaxPercentage at +0x3C
 writeQword(_params + 0x0, ContextSource_Object)
 writeQword(_params + 0x8, attribute)
 writeQword(_params + 0x20, MaxAttribute)
 writeFloat(_params + 0x38, Percentage)
 writeFloat(_params + 0x3C, MaxPercentage)
 UE.CallProcessEventEx(ContextSource_Object, "SetAttributeByPercentage", _params);
 deAlloc(_params);
end
FNR("BL4.SetAttributeByPercentage");

BL4.SetAttributeToActor = function(OwnerAddress, attribute, ContextSource_Object, Value_Actor)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAttributeToActor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0, ContextSource at +0x18, Value at +0x20
 writeQword(_params + 0x0, attribute)
 writeQword(_params + 0x18, ContextSource_Object)
 writeQword(_params + 0x20, Value_Actor)
 UE.CallProcessEventEx(OwnerAddress, "SetAttributeToActor", _params);
 deAlloc(_params);
end
FNR("BL4.SetAttributeToActor");

BL4.SetAttributeToBool = function(OwnerAddress, attribute, ContextSource_Object, Value)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAttributeToBool: Failed To Allocate The Params");return;end;
 Value = Value or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0, ContextSource at +0x18, Value at +0x20
 writeQword(_params + 0x0, attribute)
 writeQword(_params + 0x18, ContextSource_Object)
 writeByte(_params + 0x20, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetAttributeToBool", _params);
 deAlloc(_params);
end
FNR("BL4.SetAttributeToBool");

BL4.SetAttributeToFloat = function(OwnerAddress, attribute, ContextSource_Object, Value)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAttributeToFloat: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0, ContextSource at +0x18, Value at +0x20
 writeQword(_params + 0x0, attribute)
 writeQword(_params + 0x18, ContextSource_Object)
 writeFloat(_params + 0x20, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetAttributeToFloat", _params);
 deAlloc(_params);
end
FNR("BL4.SetAttributeToFloat");

BL4.SetAttributeToInt = function(OwnerAddress, attribute, ContextSource_Object, Value)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAttributeToInt: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0, ContextSource at +0x18, Value at +0x20
 writeQword(_params + 0x0, attribute)
 writeQword(_params + 0x18, ContextSource_Object)
 writeInteger(_params + 0x20, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetAttributeToInt", _params);
 deAlloc(_params);
end
FNR("BL4.SetAttributeToInt");

BL4.SetAttributeToNumericRange = function(OwnerAddress, attribute, ContextSource_Object, Value)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAttributeToNumericRange: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0, ContextSource at +0x18, Value at +0x20
 writeQword(_params + 0x0, attribute)
 writeQword(_params + 0x18, ContextSource_Object)
 writeQword(_params + 0x20, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetAttributeToNumericRange", _params);
 deAlloc(_params);
end
FNR("BL4.SetAttributeToNumericRange");

BL4.SetAttributeToObject = function(OwnerAddress, attribute, ContextSource_Object, Value_Object)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAttributeToObject: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0, ContextSource at +0x18, Value at +0x20
 writeQword(_params + 0x0, attribute)
 writeQword(_params + 0x18, ContextSource_Object)
 writeQword(_params + 0x20, Value_Object)
 UE.CallProcessEventEx(OwnerAddress, "SetAttributeToObject", _params);
 deAlloc(_params);
end
FNR("BL4.SetAttributeToObject");

BL4.SetAttributeToRotator = function(OwnerAddress, attribute, ContextSource_Object, Value)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAttributeToRotator: Failed To Allocate The Params");return;end;
 Value = Value or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0, ContextSource at +0x18, Value at +0x20
 writeQword(_params + 0x0, attribute)
 writeQword(_params + 0x18, ContextSource_Object)
 writeDouble(_params + 0x20, (Value and Value.Pitch) or 0)
 writeDouble(_params + 0x28, (Value and Value.Yaw) or 0)
 writeDouble(_params + 0x30, (Value and Value.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetAttributeToRotator", _params);
 deAlloc(_params);
end
FNR("BL4.SetAttributeToRotator");

BL4.SetAttributeToVector = function(OwnerAddress, attribute, ContextSource_Object, Value)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAttributeToVector: Failed To Allocate The Params");return;end;
 Value = Value or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0, ContextSource at +0x18, Value at +0x20
 writeQword(_params + 0x0, attribute)
 writeQword(_params + 0x18, ContextSource_Object)
 writeDouble(_params + 0x20, (Value and Value.X) or 0)
 writeDouble(_params + 0x28, (Value and Value.Y) or 0)
 writeDouble(_params + 0x30, (Value and Value.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetAttributeToVector", _params);
 deAlloc(_params);
end
FNR("BL4.SetAttributeToVector");

BL4.UnbindAllEventsFromOnFloatAttributeChanged = function(OwnerAddress, attribute)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnbindAllEventsFromOnFloatAttributeChanged: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0
 writeQword(_params + 0x0, attribute)
 UE.CallProcessEventEx(OwnerAddress, "UnbindAllEventsFromOnFloatAttributeChanged", _params);
 deAlloc(_params);
end
FNR("BL4.UnbindAllEventsFromOnFloatAttributeChanged");

BL4.UnbindAllEventsFromOnIntegerAttributeChanged = function(OwnerAddress, attribute)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnbindAllEventsFromOnIntegerAttributeChanged: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0
 writeQword(_params + 0x0, attribute)
 UE.CallProcessEventEx(OwnerAddress, "UnbindAllEventsFromOnIntegerAttributeChanged", _params);
 deAlloc(_params);
end
FNR("BL4.UnbindAllEventsFromOnIntegerAttributeChanged");

BL4.UnbindEventFromOnFloatAttributeChanged = function(OwnerAddress, attribute, Delegate)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnbindEventFromOnFloatAttributeChanged: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0, Delegate at +0xC
 writeQword(_params + 0x0, attribute)
 writeQword(_params + 0xC, Delegate)
 UE.CallProcessEventEx(OwnerAddress, "UnbindEventFromOnFloatAttributeChanged", _params);
 deAlloc(_params);
end
FNR("BL4.UnbindEventFromOnFloatAttributeChanged");

BL4.UnbindEventFromOnIntegerAttributeChanged = function(OwnerAddress, attribute, Delegate)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnbindEventFromOnIntegerAttributeChanged: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: attribute at +0x0, Delegate at +0xC
 writeQword(_params + 0x0, attribute)
 writeQword(_params + 0xC, Delegate)
 UE.CallProcessEventEx(OwnerAddress, "UnbindEventFromOnIntegerAttributeChanged", _params);
 deAlloc(_params);
end
FNR("BL4.UnbindEventFromOnIntegerAttributeChanged");

BL4.UnbindFromOnAttributeChanged = function(OwnerAddress, BindingHandle)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnbindFromOnAttributeChanged: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BindingHandle at +0x0
 writeQword(_params + 0x0, BindingHandle)
 UE.CallProcessEventEx(OwnerAddress, "UnbindFromOnAttributeChanged", _params);
 deAlloc(_params);
end
FNR("BL4.UnbindFromOnAttributeChanged");

