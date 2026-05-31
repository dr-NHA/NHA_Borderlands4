BL4.AsCurrency_Float = function(OwnerAddress, Value, RoundingMode, bAlwaysSign, bUseGrouping, MinimumIntegralDigits, MaximumIntegralDigits, MinimumFractionalDigits, MaximumFractionalDigits, CurrencyCode)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AsCurrency_Float: Failed To Allocate The Params");return;end;
 Value = Value or 0
 RoundingMode = RoundingMode or 0
 bAlwaysSign = bAlwaysSign or false
 bUseGrouping = bUseGrouping or false
 MinimumIntegralDigits = MinimumIntegralDigits or 0
 MaximumIntegralDigits = MaximumIntegralDigits or 0
 MinimumFractionalDigits = MinimumFractionalDigits or 0
 MaximumFractionalDigits = MaximumFractionalDigits or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0, RoundingMode at +0x4, bAlwaysSign at +0x5, bUseGrouping at +0x6, MinimumIntegralDigits at +0x8, MaximumIntegralDigits at +0xC, MinimumFractionalDigits at +0x10, MaximumFractionalDigits at +0x14, CurrencyCode at +0x18
 writeFloat(_params + 0x0, Value)
 writeByte(_params + 0x4, RoundingMode)
 writeByte(_params + 0x5, bAlwaysSign)
 writeByte(_params + 0x6, bUseGrouping)
 writeInteger(_params + 0x8, MinimumIntegralDigits)
 writeInteger(_params + 0xC, MaximumIntegralDigits)
 writeInteger(_params + 0x10, MinimumFractionalDigits)
 writeInteger(_params + 0x14, MaximumFractionalDigits)
 writeQword(_params + 0x18, CurrencyCode)
 UE.CallProcessEventEx(OwnerAddress, "AsCurrency_Float", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AsCurrency_Float");

BL4.AsCurrency_Integer = function(OwnerAddress, Value, RoundingMode, bAlwaysSign, bUseGrouping, MinimumIntegralDigits, MaximumIntegralDigits, MinimumFractionalDigits, MaximumFractionalDigits, CurrencyCode)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AsCurrency_Integer: Failed To Allocate The Params");return;end;
 Value = Value or 0
 RoundingMode = RoundingMode or 0
 bAlwaysSign = bAlwaysSign or false
 bUseGrouping = bUseGrouping or false
 MinimumIntegralDigits = MinimumIntegralDigits or 0
 MaximumIntegralDigits = MaximumIntegralDigits or 0
 MinimumFractionalDigits = MinimumFractionalDigits or 0
 MaximumFractionalDigits = MaximumFractionalDigits or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0, RoundingMode at +0x4, bAlwaysSign at +0x5, bUseGrouping at +0x6, MinimumIntegralDigits at +0x8, MaximumIntegralDigits at +0xC, MinimumFractionalDigits at +0x10, MaximumFractionalDigits at +0x14, CurrencyCode at +0x18
 writeInteger(_params + 0x0, Value)
 writeByte(_params + 0x4, RoundingMode)
 writeByte(_params + 0x5, bAlwaysSign)
 writeByte(_params + 0x6, bUseGrouping)
 writeInteger(_params + 0x8, MinimumIntegralDigits)
 writeInteger(_params + 0xC, MaximumIntegralDigits)
 writeInteger(_params + 0x10, MinimumFractionalDigits)
 writeInteger(_params + 0x14, MaximumFractionalDigits)
 writeQword(_params + 0x18, CurrencyCode)
 UE.CallProcessEventEx(OwnerAddress, "AsCurrency_Integer", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AsCurrency_Integer");

BL4.AsCurrencyBase = function(OwnerAddress, BaseValue, CurrencyCode)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AsCurrencyBase: Failed To Allocate The Params");return;end;
 BaseValue = BaseValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BaseValue at +0x0, CurrencyCode at +0x8
 writeInteger(_params + 0x0, BaseValue)
 writeQword(_params + 0x8, CurrencyCode)
 UE.CallProcessEventEx(OwnerAddress, "AsCurrencyBase", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AsCurrencyBase");

BL4.AsDate_DateTime = function(OwnerAddress, InDateTime, InDateStyle)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AsDate_DateTime: Failed To Allocate The Params");return;end;
 InDateStyle = InDateStyle or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InDateTime at +0x0, InDateStyle at +0x8
 writeQword(_params + 0x0, InDateTime)
 writeByte(_params + 0x8, InDateStyle)
 UE.CallProcessEventEx(OwnerAddress, "AsDate_DateTime", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AsDate_DateTime");

BL4.AsDateTime_DateTime = function(OwnerAddress, In, InDateStyle, InTimeStyle)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AsDateTime_DateTime: Failed To Allocate The Params");return;end;
 InDateStyle = InDateStyle or 0
 InTimeStyle = InTimeStyle or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: In at +0x0, InDateStyle at +0x8, InTimeStyle at +0x9
 writeQword(_params + 0x0, In)
 writeByte(_params + 0x8, InDateStyle)
 writeByte(_params + 0x9, InTimeStyle)
 UE.CallProcessEventEx(OwnerAddress, "AsDateTime_DateTime", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AsDateTime_DateTime");

BL4.AsMemory = function(OwnerAddress, NumBytes, UnitStandard, bUseGrouping, MinimumIntegralDigits, MaximumIntegralDigits, MinimumFractionalDigits, MaximumFractionalDigits)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AsMemory: Failed To Allocate The Params");return;end;
 UnitStandard = UnitStandard or 0
 bUseGrouping = bUseGrouping or false
 MinimumIntegralDigits = MinimumIntegralDigits or 0
 MaximumIntegralDigits = MaximumIntegralDigits or 0
 MinimumFractionalDigits = MinimumFractionalDigits or 0
 MaximumFractionalDigits = MaximumFractionalDigits or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NumBytes at +0x0, UnitStandard at +0x8, bUseGrouping at +0x9, MinimumIntegralDigits at +0xC, MaximumIntegralDigits at +0x10, MinimumFractionalDigits at +0x14, MaximumFractionalDigits at +0x18
 writeQword(_params + 0x0, NumBytes)
 writeByte(_params + 0x8, UnitStandard)
 writeByte(_params + 0x9, bUseGrouping)
 writeInteger(_params + 0xC, MinimumIntegralDigits)
 writeInteger(_params + 0x10, MaximumIntegralDigits)
 writeInteger(_params + 0x14, MinimumFractionalDigits)
 writeInteger(_params + 0x18, MaximumFractionalDigits)
 UE.CallProcessEventEx(OwnerAddress, "AsMemory", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AsMemory");

BL4.AsPercent_Float = function(OwnerAddress, Value, RoundingMode, bAlwaysSign, bUseGrouping, MinimumIntegralDigits, MaximumIntegralDigits, MinimumFractionalDigits, MaximumFractionalDigits)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AsPercent_Float: Failed To Allocate The Params");return;end;
 Value = Value or 0
 RoundingMode = RoundingMode or 0
 bAlwaysSign = bAlwaysSign or false
 bUseGrouping = bUseGrouping or false
 MinimumIntegralDigits = MinimumIntegralDigits or 0
 MaximumIntegralDigits = MaximumIntegralDigits or 0
 MinimumFractionalDigits = MinimumFractionalDigits or 0
 MaximumFractionalDigits = MaximumFractionalDigits or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0, RoundingMode at +0x4, bAlwaysSign at +0x5, bUseGrouping at +0x6, MinimumIntegralDigits at +0x8, MaximumIntegralDigits at +0xC, MinimumFractionalDigits at +0x10, MaximumFractionalDigits at +0x14
 writeFloat(_params + 0x0, Value)
 writeByte(_params + 0x4, RoundingMode)
 writeByte(_params + 0x5, bAlwaysSign)
 writeByte(_params + 0x6, bUseGrouping)
 writeInteger(_params + 0x8, MinimumIntegralDigits)
 writeInteger(_params + 0xC, MaximumIntegralDigits)
 writeInteger(_params + 0x10, MinimumFractionalDigits)
 writeInteger(_params + 0x14, MaximumFractionalDigits)
 UE.CallProcessEventEx(OwnerAddress, "AsPercent_Float", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AsPercent_Float");

BL4.AsTime_DateTime = function(OwnerAddress, In, InTimeStyle)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AsTime_DateTime: Failed To Allocate The Params");return;end;
 InTimeStyle = InTimeStyle or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: In at +0x0, InTimeStyle at +0x8
 writeQword(_params + 0x0, In)
 writeByte(_params + 0x8, InTimeStyle)
 UE.CallProcessEventEx(OwnerAddress, "AsTime_DateTime", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AsTime_DateTime");

BL4.AsTimespan_Timespan = function(OwnerAddress, InTimespan)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AsTimespan_Timespan: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InTimespan at +0x0
 writeQword(_params + 0x0, InTimespan)
 UE.CallProcessEventEx(OwnerAddress, "AsTimespan_Timespan", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AsTimespan_Timespan");

BL4.AsTimeZoneDate_DateTime = function(OwnerAddress, InDateTime, InTimeZone, InDateStyle)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AsTimeZoneDate_DateTime: Failed To Allocate The Params");return;end;
 InDateStyle = InDateStyle or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InDateTime at +0x0, InTimeZone at +0x8, InDateStyle at +0x18
 writeQword(_params + 0x0, InDateTime)
 writeQword(_params + 0x8, InTimeZone)
 writeByte(_params + 0x18, InDateStyle)
 UE.CallProcessEventEx(OwnerAddress, "AsTimeZoneDate_DateTime", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AsTimeZoneDate_DateTime");

BL4.AsTimeZoneDateTime_DateTime = function(OwnerAddress, InDateTime, InTimeZone, InDateStyle, InTimeStyle)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AsTimeZoneDateTime_DateTime: Failed To Allocate The Params");return;end;
 InDateStyle = InDateStyle or 0
 InTimeStyle = InTimeStyle or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InDateTime at +0x0, InTimeZone at +0x8, InDateStyle at +0x18, InTimeStyle at +0x19
 writeQword(_params + 0x0, InDateTime)
 writeQword(_params + 0x8, InTimeZone)
 writeByte(_params + 0x18, InDateStyle)
 writeByte(_params + 0x19, InTimeStyle)
 UE.CallProcessEventEx(OwnerAddress, "AsTimeZoneDateTime_DateTime", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AsTimeZoneDateTime_DateTime");

BL4.AsTimeZoneTime_DateTime = function(OwnerAddress, InDateTime, InTimeZone, InTimeStyle)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AsTimeZoneTime_DateTime: Failed To Allocate The Params");return;end;
 InTimeStyle = InTimeStyle or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InDateTime at +0x0, InTimeZone at +0x8, InTimeStyle at +0x18
 writeQword(_params + 0x0, InDateTime)
 writeQword(_params + 0x8, InTimeZone)
 writeByte(_params + 0x18, InTimeStyle)
 UE.CallProcessEventEx(OwnerAddress, "AsTimeZoneTime_DateTime", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AsTimeZoneTime_DateTime");

BL4.Conv_BoolToText = function(OwnerAddress, InBool)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_BoolToText: Failed To Allocate The Params");return;end;
 InBool = InBool or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InBool at +0x0
 writeByte(_params + 0x0, InBool)
 UE.CallProcessEventEx(OwnerAddress, "Conv_BoolToText", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_BoolToText");

BL4.Conv_ByteToText = function(OwnerAddress, Value)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_ByteToText: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeByte(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "Conv_ByteToText", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_ByteToText");

BL4.Conv_ColorToText = function(OwnerAddress, InColor)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_ColorToText: Failed To Allocate The Params");return;end;
 InColor = InColor or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InColor at +0x0
 writeFloat(_params + 0x0, (InColor and InColor.R) or 0)
 writeFloat(_params + 0x4, (InColor and InColor.G) or 0)
 writeFloat(_params + 0x8, (InColor and InColor.B) or 0)
 writeFloat(_params + 0xC, (InColor and InColor.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Conv_ColorToText", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_ColorToText");

BL4.Conv_DoubleToText = function(OwnerAddress, Value, RoundingMode, bAlwaysSign, bUseGrouping, MinimumIntegralDigits, MaximumIntegralDigits, MinimumFractionalDigits, MaximumFractionalDigits)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_DoubleToText: Failed To Allocate The Params");return;end;
 RoundingMode = RoundingMode or 0
 bAlwaysSign = bAlwaysSign or false
 bUseGrouping = bUseGrouping or false
 MinimumIntegralDigits = MinimumIntegralDigits or 0
 MaximumIntegralDigits = MaximumIntegralDigits or 0
 MinimumFractionalDigits = MinimumFractionalDigits or 0
 MaximumFractionalDigits = MaximumFractionalDigits or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0, RoundingMode at +0x8, bAlwaysSign at +0x9, bUseGrouping at +0xA, MinimumIntegralDigits at +0xC, MaximumIntegralDigits at +0x10, MinimumFractionalDigits at +0x14, MaximumFractionalDigits at +0x18
 writeQword(_params + 0x0, Value)
 writeByte(_params + 0x8, RoundingMode)
 writeByte(_params + 0x9, bAlwaysSign)
 writeByte(_params + 0xA, bUseGrouping)
 writeInteger(_params + 0xC, MinimumIntegralDigits)
 writeInteger(_params + 0x10, MaximumIntegralDigits)
 writeInteger(_params + 0x14, MinimumFractionalDigits)
 writeInteger(_params + 0x18, MaximumFractionalDigits)
 UE.CallProcessEventEx(OwnerAddress, "Conv_DoubleToText", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_DoubleToText");

BL4.Conv_Int64ToText = function(OwnerAddress, Value, bAlwaysSign, bUseGrouping, MinimumIntegralDigits, MaximumIntegralDigits)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_Int64ToText: Failed To Allocate The Params");return;end;
 bAlwaysSign = bAlwaysSign or false
 bUseGrouping = bUseGrouping or false
 MinimumIntegralDigits = MinimumIntegralDigits or 0
 MaximumIntegralDigits = MaximumIntegralDigits or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0, bAlwaysSign at +0x8, bUseGrouping at +0x9, MinimumIntegralDigits at +0xC, MaximumIntegralDigits at +0x10
 writeQword(_params + 0x0, Value)
 writeByte(_params + 0x8, bAlwaysSign)
 writeByte(_params + 0x9, bUseGrouping)
 writeInteger(_params + 0xC, MinimumIntegralDigits)
 writeInteger(_params + 0x10, MaximumIntegralDigits)
 UE.CallProcessEventEx(OwnerAddress, "Conv_Int64ToText", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_Int64ToText");

BL4.Conv_IntToText = function(OwnerAddress, Value, bAlwaysSign, bUseGrouping, MinimumIntegralDigits, MaximumIntegralDigits)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_IntToText: Failed To Allocate The Params");return;end;
 Value = Value or 0
 bAlwaysSign = bAlwaysSign or false
 bUseGrouping = bUseGrouping or false
 MinimumIntegralDigits = MinimumIntegralDigits or 0
 MaximumIntegralDigits = MaximumIntegralDigits or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0, bAlwaysSign at +0x4, bUseGrouping at +0x5, MinimumIntegralDigits at +0x8, MaximumIntegralDigits at +0xC
 writeInteger(_params + 0x0, Value)
 writeByte(_params + 0x4, bAlwaysSign)
 writeByte(_params + 0x5, bUseGrouping)
 writeInteger(_params + 0x8, MinimumIntegralDigits)
 writeInteger(_params + 0xC, MaximumIntegralDigits)
 UE.CallProcessEventEx(OwnerAddress, "Conv_IntToText", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_IntToText");

BL4.Conv_NameToText = function(OwnerAddress, InName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_NameToText: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InName at +0x0
 writeQword(_params + 0x0, InName)
 UE.CallProcessEventEx(OwnerAddress, "Conv_NameToText", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_NameToText");

BL4.Conv_NumericPropertyToText = function(OwnerAddress, Value)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_NumericPropertyToText: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeInteger(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "Conv_NumericPropertyToText", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_NumericPropertyToText");

BL4.Conv_ObjectToText = function(InObj_Object)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_ObjectToText: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InObj at +0x0
 writeQword(_params + 0x0, InObj_Object)
 UE.CallProcessEventEx(InObj_Object, "Conv_ObjectToText", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_ObjectToText");

BL4.Conv_RotatorToText = function(OwnerAddress, InRot)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_RotatorToText: Failed To Allocate The Params");return;end;
 InRot = InRot or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InRot at +0x0
 writeDouble(_params + 0x0, (InRot and InRot.Pitch) or 0)
 writeDouble(_params + 0x8, (InRot and InRot.Yaw) or 0)
 writeDouble(_params + 0x10, (InRot and InRot.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Conv_RotatorToText", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_RotatorToText");

BL4.Conv_StringToText = function(OwnerAddress, InString)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_StringToText: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InString at +0x0
 writeQword(_params + 0x0, InString)
 UE.CallProcessEventEx(OwnerAddress, "Conv_StringToText", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_StringToText");

BL4.Conv_TextToString = function(OwnerAddress, InText)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_TextToString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InText at +0x0
 writeQword(_params + 0x0, InText)
 UE.CallProcessEventEx(OwnerAddress, "Conv_TextToString", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_TextToString");

BL4.Conv_TransformToText = function(OwnerAddress, InTrans)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_TransformToText: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InTrans at +0x0
 writeQword(_params + 0x0, InTrans)
 UE.CallProcessEventEx(OwnerAddress, "Conv_TransformToText", _params);
 local RET=readQword(_params + 0x60);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_TransformToText");

BL4.Conv_Vector2dToText = function(OwnerAddress, InVec)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_Vector2dToText: Failed To Allocate The Params");return;end;
 InVec = InVec or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVec at +0x0
 writeDouble(_params + 0x0, (InVec and InVec.X) or 0)
 writeDouble(_params + 0x8, (InVec and InVec.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Conv_Vector2dToText", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_Vector2dToText");

BL4.Conv_VectorToText = function(OwnerAddress, InVec)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_VectorToText: Failed To Allocate The Params");return;end;
 InVec = InVec or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InVec at +0x0
 writeDouble(_params + 0x0, (InVec and InVec.X) or 0)
 writeDouble(_params + 0x8, (InVec and InVec.Y) or 0)
 writeDouble(_params + 0x10, (InVec and InVec.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Conv_VectorToText", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_VectorToText");

BL4.EditTextSourceString = function(TextOwner_Object, Text, SourceString)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EditTextSourceString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TextOwner at +0x0, Text at +0x8, SourceString at +0x18
 writeQword(_params + 0x0, TextOwner_Object)
 writeQword(_params + 0x8, Text)
 writeQword(_params + 0x18, SourceString)
 UE.CallProcessEventEx(TextOwner_Object, "EditTextSourceString", _params);
 local RET=readByte(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EditTextSourceString");

BL4.EqualEqual_IgnoreCase_TextText = function(OwnerAddress, A, B)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_IgnoreCase_TextText: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x10, B)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_IgnoreCase_TextText", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_IgnoreCase_TextText");

BL4.EqualEqual_TextText = function(OwnerAddress, A, B)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_TextText: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x10, B)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_TextText", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_TextText");

BL4.FindTextInLocalizationTable = function(OwnerAddress, NameSpace, Key, OutText, SourceString)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindTextInLocalizationTable: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NameSpace at +0x0, Key at +0x10, OutText at +0x20, SourceString at +0x30
 writeQword(_params + 0x0, NameSpace)
 writeQword(_params + 0x10, Key)
 writeQword(_params + 0x20, OutText)
 writeQword(_params + 0x30, SourceString)
 UE.CallProcessEventEx(OwnerAddress, "FindTextInLocalizationTable", _params);
 local RET=readByte(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindTextInLocalizationTable");

BL4.Format = function(OwnerAddress, InPattern, InArgs)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Format: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InPattern at +0x0, InArgs at +0x10
 writeQword(_params + 0x0, InPattern)
 writeQword(_params + 0x10, InArgs)
 UE.CallProcessEventEx(OwnerAddress, "Format", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Format");

BL4.GetEmptyText = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetEmptyText: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetEmptyText", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetEmptyText");

BL4.GetTextId = function(OwnerAddress, Text, OutNamespace, OutKey)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTextId: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Text at +0x0, OutNamespace at +0x10, OutKey at +0x20
 writeQword(_params + 0x0, Text)
 writeQword(_params + 0x10, OutNamespace)
 writeQword(_params + 0x20, OutKey)
 UE.CallProcessEventEx(OwnerAddress, "GetTextId", _params);
 local RET=readByte(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTextId");

BL4.GetTextSourceString = function(OwnerAddress, Text)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTextSourceString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Text at +0x0
 writeQword(_params + 0x0, Text)
 UE.CallProcessEventEx(OwnerAddress, "GetTextSourceString", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTextSourceString");

BL4.IsPolyglotDataValid = function(OwnerAddress, PolyglotData, IsValid, ErrorMessage)
 local _paramsSize = 0xC8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsPolyglotDataValid: Failed To Allocate The Params");return;end;
 IsValid = IsValid or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PolyglotData at +0x0, IsValid at +0xB0, ErrorMessage at +0xB8
 writeQword(_params + 0x0, PolyglotData)
 writeByte(_params + 0xB0, IsValid)
 writeQword(_params + 0xB8, ErrorMessage)
 UE.CallProcessEventEx(OwnerAddress, "IsPolyglotDataValid", _params);
 deAlloc(_params);
end
FNR("BL4.IsPolyglotDataValid");

BL4.MakeInvariantText = function(OwnerAddress, InString)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeInvariantText: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InString at +0x0
 writeQword(_params + 0x0, InString)
 UE.CallProcessEventEx(OwnerAddress, "MakeInvariantText", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeInvariantText");

BL4.NotEqual_IgnoreCase_TextText = function(OwnerAddress, A, B)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_IgnoreCase_TextText: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x10, B)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_IgnoreCase_TextText", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_IgnoreCase_TextText");

BL4.NotEqual_TextText = function(OwnerAddress, A, B)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_TextText: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x10, B)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_TextText", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_TextText");

BL4.PolyglotDataToText = function(OwnerAddress, PolyglotData)
 local _paramsSize = 0xC0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PolyglotDataToText: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PolyglotData at +0x0
 writeQword(_params + 0x0, PolyglotData)
 UE.CallProcessEventEx(OwnerAddress, "PolyglotDataToText", _params);
 local RET=readQword(_params + 0xB0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.PolyglotDataToText");

BL4.StringTableIdAndKeyFromText = function(OwnerAddress, Text, OutTableId, OutKey)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StringTableIdAndKeyFromText: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Text at +0x0, OutTableId at +0x10, OutKey at +0x18
 writeQword(_params + 0x0, Text)
 writeQword(_params + 0x10, OutTableId)
 writeQword(_params + 0x18, OutKey)
 UE.CallProcessEventEx(OwnerAddress, "StringTableIdAndKeyFromText", _params);
 local RET=readByte(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.StringTableIdAndKeyFromText");

BL4.TextFromStringTable = function(OwnerAddress, TableId, Key)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TextFromStringTable: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TableId at +0x0, Key at +0x8
 writeQword(_params + 0x0, TableId)
 writeQword(_params + 0x8, Key)
 UE.CallProcessEventEx(OwnerAddress, "TextFromStringTable", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.TextFromStringTable");

BL4.TextIsCultureInvariant = function(OwnerAddress, InText)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TextIsCultureInvariant: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InText at +0x0
 writeQword(_params + 0x0, InText)
 UE.CallProcessEventEx(OwnerAddress, "TextIsCultureInvariant", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.TextIsCultureInvariant");

BL4.TextIsEmpty = function(OwnerAddress, InText)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TextIsEmpty: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InText at +0x0
 writeQword(_params + 0x0, InText)
 UE.CallProcessEventEx(OwnerAddress, "TextIsEmpty", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.TextIsEmpty");

BL4.TextIsFromStringTable = function(OwnerAddress, Text)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TextIsFromStringTable: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Text at +0x0
 writeQword(_params + 0x0, Text)
 UE.CallProcessEventEx(OwnerAddress, "TextIsFromStringTable", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.TextIsFromStringTable");

BL4.TextIsTransient = function(OwnerAddress, InText)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TextIsTransient: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InText at +0x0
 writeQword(_params + 0x0, InText)
 UE.CallProcessEventEx(OwnerAddress, "TextIsTransient", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.TextIsTransient");

BL4.TextToLower = function(OwnerAddress, InText)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TextToLower: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InText at +0x0
 writeQword(_params + 0x0, InText)
 UE.CallProcessEventEx(OwnerAddress, "TextToLower", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.TextToLower");

BL4.TextToUpper = function(OwnerAddress, InText)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TextToUpper: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InText at +0x0
 writeQword(_params + 0x0, InText)
 UE.CallProcessEventEx(OwnerAddress, "TextToUpper", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.TextToUpper");

BL4.TextTrimPreceding = function(OwnerAddress, InText)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TextTrimPreceding: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InText at +0x0
 writeQword(_params + 0x0, InText)
 UE.CallProcessEventEx(OwnerAddress, "TextTrimPreceding", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.TextTrimPreceding");

BL4.TextTrimPrecedingAndTrailing = function(OwnerAddress, InText)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TextTrimPrecedingAndTrailing: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InText at +0x0
 writeQword(_params + 0x0, InText)
 UE.CallProcessEventEx(OwnerAddress, "TextTrimPrecedingAndTrailing", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.TextTrimPrecedingAndTrailing");

BL4.TextTrimTrailing = function(OwnerAddress, InText)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TextTrimTrailing: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InText at +0x0
 writeQword(_params + 0x0, InText)
 UE.CallProcessEventEx(OwnerAddress, "TextTrimTrailing", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.TextTrimTrailing");

