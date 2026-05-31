BL4.ClearBlackboardValue = function(OwnerAddress, BlackboardKey, OwnerContext_Object)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClearBlackboardValue: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 UE.CallProcessEventEx(OwnerAddress, "ClearBlackboardValue", _params);
 deAlloc(_params);
end
FNR("BL4.ClearBlackboardValue");

BL4.Conv_BlackboardEntryRef_Name = function(OwnerAddress, BlackboardKey)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_BlackboardEntryRef_Name: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0
 writeQword(_params + 0x0, BlackboardKey)
 UE.CallProcessEventEx(OwnerAddress, "Conv_BlackboardEntryRef_Name", _params);
 local RET=readQword(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_BlackboardEntryRef_Name");

BL4.Conv_BlackboardEntryRef_String = function(OwnerAddress, BlackboardKey)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_BlackboardEntryRef_String: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0
 writeQword(_params + 0x0, BlackboardKey)
 UE.CallProcessEventEx(OwnerAddress, "Conv_BlackboardEntryRef_String", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_BlackboardEntryRef_String");

BL4.EqualEqual_GbxBlackboardEntryRef = function(OwnerAddress, A, B)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_GbxBlackboardEntryRef: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0xC
 writeQword(_params + 0x0, A)
 writeQword(_params + 0xC, B)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_GbxBlackboardEntryRef", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_GbxBlackboardEntryRef");

BL4.GetBlackboardActor = function(OwnerAddress, BlackboardKey, OwnerContext_Object, Class, bReportIfMissing)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardActor: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, Class at +0x18, bReportIfMissing at +0x20
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeQword(_params + 0x18, Class)
 writeByte(_params + 0x20, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardActor", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardActor");

BL4.GetBlackboardActorPure = function(OwnerAddress, BlackboardKey, OwnerContext_Object, Class, bReportIfMissing)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardActorPure: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, Class at +0x18, bReportIfMissing at +0x20
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeQword(_params + 0x18, Class)
 writeByte(_params + 0x20, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardActorPure", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardActorPure");

BL4.GetBlackboardAsset = function(OwnerAddress, BlackboardKey, OwnerContext_Object, bReportIfMissing)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardAsset: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, bReportIfMissing at +0x18
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeByte(_params + 0x18, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardAsset", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardAsset");

BL4.GetBlackboardAssetPure = function(OwnerAddress, BlackboardKey, OwnerContext_Object, bReportIfMissing)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardAssetPure: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, bReportIfMissing at +0x18
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeByte(_params + 0x18, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardAssetPure", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardAssetPure");

BL4.GetBlackboardBool = function(OwnerAddress, BlackboardKey, OwnerContext_Object, bReportIfMissing)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardBool: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, bReportIfMissing at +0x18
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeByte(_params + 0x18, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardBool", _params);
 local RET=readByte(_params + 0x19);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardBool");

BL4.GetBlackboardBoolPure = function(OwnerAddress, BlackboardKey, OwnerContext_Object, bReportIfMissing)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardBoolPure: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, bReportIfMissing at +0x18
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeByte(_params + 0x18, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardBoolPure", _params);
 local RET=readByte(_params + 0x19);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardBoolPure");

BL4.GetBlackboardDouble = function(OwnerAddress, BlackboardKey, OwnerContext_Object, bReportIfMissing)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardDouble: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, bReportIfMissing at +0x18
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeByte(_params + 0x18, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardDouble", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardDouble");

BL4.GetBlackboardDoublePure = function(OwnerAddress, BlackboardKey, OwnerContext_Object, bReportIfMissing)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardDoublePure: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, bReportIfMissing at +0x18
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeByte(_params + 0x18, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardDoublePure", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardDoublePure");

BL4.GetBlackboardFloat = function(OwnerAddress, BlackboardKey, OwnerContext_Object, bReportIfMissing)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardFloat: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, bReportIfMissing at +0x18
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeByte(_params + 0x18, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardFloat", _params);
 local RET=readFloat(_params + 0x1C);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardFloat");

BL4.GetBlackboardFloatPure = function(OwnerAddress, BlackboardKey, OwnerContext_Object, bReportIfMissing)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardFloatPure: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, bReportIfMissing at +0x18
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeByte(_params + 0x18, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardFloatPure", _params);
 local RET=readFloat(_params + 0x1C);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardFloatPure");

BL4.GetBlackboardGbxDef = function(OwnerAddress, BlackboardKey, OwnerContext_Object, bReportIfMissing)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardGbxDef: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, bReportIfMissing at +0x18
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeByte(_params + 0x18, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardGbxDef", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardGbxDef");

BL4.GetBlackboardGbxDefPure = function(OwnerAddress, BlackboardKey, OwnerContext_Object, bReportIfMissing)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardGbxDefPure: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, bReportIfMissing at +0x18
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeByte(_params + 0x18, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardGbxDefPure", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardGbxDefPure");

BL4.GetBlackboardHitResult = function(OwnerAddress, BlackboardKey, HitResult, OwnerContext_Object, bReportIfMissing)
 local _paramsSize = 0x120
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardHitResult: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, HitResult at +0x10, OwnerContext at +0x110, bReportIfMissing at +0x118
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, HitResult)
 writeQword(_params + 0x110, OwnerContext_Object)
 writeByte(_params + 0x118, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardHitResult", _params);
 deAlloc(_params);
end
FNR("BL4.GetBlackboardHitResult");

BL4.GetBlackboardHitResultPure = function(OwnerAddress, BlackboardKey, HitResult, OwnerContext_Object, bReportIfMissing)
 local _paramsSize = 0x120
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardHitResultPure: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, HitResult at +0x10, OwnerContext at +0x110, bReportIfMissing at +0x118
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, HitResult)
 writeQword(_params + 0x110, OwnerContext_Object)
 writeByte(_params + 0x118, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardHitResultPure", _params);
 deAlloc(_params);
end
FNR("BL4.GetBlackboardHitResultPure");

BL4.GetBlackboardInt = function(OwnerAddress, BlackboardKey, OwnerContext_Object, bReportIfMissing)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardInt: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, bReportIfMissing at +0x18
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeByte(_params + 0x18, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardInt", _params);
 local RET=readInteger(_params + 0x1C);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardInt");

BL4.GetBlackboardIntPure = function(OwnerAddress, BlackboardKey, OwnerContext_Object, bReportIfMissing)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardIntPure: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, bReportIfMissing at +0x18
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeByte(_params + 0x18, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardIntPure", _params);
 local RET=readInteger(_params + 0x1C);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardIntPure");

BL4.GetBlackboardName = function(OwnerAddress, BlackboardKey, OwnerContext_Object, bReportIfMissing)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardName: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, bReportIfMissing at +0x18
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeByte(_params + 0x18, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardName", _params);
 local RET=readQword(_params + 0x1C);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardName");

BL4.GetBlackboardNamePure = function(OwnerAddress, BlackboardKey, OwnerContext_Object, bReportIfMissing)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardNamePure: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, bReportIfMissing at +0x18
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeByte(_params + 0x18, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardNamePure", _params);
 local RET=readQword(_params + 0x1C);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardNamePure");

BL4.GetBlackboardNumericRange = function(OwnerAddress, BlackboardKey, OwnerContext_Object, bReportIfMissing)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardNumericRange: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, bReportIfMissing at +0x20
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeByte(_params + 0x20, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardNumericRange", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardNumericRange");

BL4.GetBlackboardNumericRangePure = function(OwnerAddress, BlackboardKey, OwnerContext_Object, bReportIfMissing)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardNumericRangePure: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, bReportIfMissing at +0x20
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeByte(_params + 0x20, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardNumericRangePure", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardNumericRangePure");

BL4.GetBlackboardObject = function(OwnerAddress, BlackboardKey, OwnerContext_Object, Class, bReportIfMissing)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardObject: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, Class at +0x18, bReportIfMissing at +0x20
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeQword(_params + 0x18, Class)
 writeByte(_params + 0x20, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardObject", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardObject");

BL4.GetBlackboardObjectPure = function(OwnerAddress, BlackboardKey, OwnerContext_Object, Class, bReportIfMissing)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardObjectPure: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, Class at +0x18, bReportIfMissing at +0x20
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeQword(_params + 0x18, Class)
 writeByte(_params + 0x20, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardObjectPure", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardObjectPure");

BL4.GetBlackboardParam = function(OwnerAddress, BlackboardKey, OwnerContext_Object, bReportIfMissing)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardParam: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, bReportIfMissing at +0x18
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeByte(_params + 0x18, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardParam", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardParam");

BL4.GetBlackboardParamPure = function(OwnerAddress, BlackboardKey, OwnerContext_Object, bReportIfMissing)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardParamPure: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, bReportIfMissing at +0x18
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeByte(_params + 0x18, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardParamPure", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardParamPure");

BL4.GetBlackboardRotator = function(OwnerAddress, BlackboardKey, OwnerContext_Object, bReportIfMissing)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardRotator: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, bReportIfMissing at +0x18
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeByte(_params + 0x18, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardRotator", _params);
 local RET={Pitch=readFloat(_params+0x20),Yaw=readFloat(_params+0x28),Roll=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardRotator");

BL4.GetBlackboardRotatorPure = function(OwnerAddress, BlackboardKey, OwnerContext_Object, bReportIfMissing)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardRotatorPure: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, bReportIfMissing at +0x18
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeByte(_params + 0x18, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardRotatorPure", _params);
 local RET={Pitch=readFloat(_params+0x20),Yaw=readFloat(_params+0x28),Roll=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardRotatorPure");

BL4.GetBlackboardSceneComponent = function(OwnerAddress, BlackboardKey, OwnerContext_Object, Class, bReportIfMissing)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardSceneComponent: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, Class at +0x18, bReportIfMissing at +0x20
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeQword(_params + 0x18, Class)
 writeByte(_params + 0x20, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardSceneComponent", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardSceneComponent");

BL4.GetBlackboardSceneComponentPure = function(OwnerAddress, BlackboardKey, OwnerContext_Object, Class, bReportIfMissing)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardSceneComponentPure: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, Class at +0x18, bReportIfMissing at +0x20
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeQword(_params + 0x18, Class)
 writeByte(_params + 0x20, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardSceneComponentPure", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardSceneComponentPure");

BL4.GetBlackboardString = function(OwnerAddress, BlackboardKey, OwnerContext_Object, bReportIfMissing)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardString: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, bReportIfMissing at +0x18
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeByte(_params + 0x18, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardString", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardString");

BL4.GetBlackboardStringPure = function(OwnerAddress, BlackboardKey, OwnerContext_Object, bReportIfMissing)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardStringPure: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, bReportIfMissing at +0x18
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeByte(_params + 0x18, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardStringPure", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardStringPure");

BL4.GetBlackboardText = function(OwnerAddress, BlackboardKey, OwnerContext_Object, bReportIfMissing)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardText: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, bReportIfMissing at +0x18
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeByte(_params + 0x18, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardText", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardText");

BL4.GetBlackboardTextPure = function(OwnerAddress, BlackboardKey, OwnerContext_Object, bReportIfMissing)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardTextPure: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, bReportIfMissing at +0x18
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeByte(_params + 0x18, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardTextPure", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardTextPure");

BL4.GetBlackboardVector = function(OwnerAddress, BlackboardKey, OwnerContext_Object, bReportIfMissing)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardVector: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, bReportIfMissing at +0x18
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeByte(_params + 0x18, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardVector", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardVector");

BL4.GetBlackboardVectorPure = function(OwnerAddress, BlackboardKey, OwnerContext_Object, bReportIfMissing)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlackboardVectorPure: Failed To Allocate The Params");return;end;
 bReportIfMissing = bReportIfMissing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, OwnerContext at +0x10, bReportIfMissing at +0x18
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, OwnerContext_Object)
 writeByte(_params + 0x18, bReportIfMissing)
 UE.CallProcessEventEx(OwnerAddress, "GetBlackboardVectorPure", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlackboardVectorPure");

BL4.NotEqual_GbxBlackboardEntryRef = function(OwnerAddress, A, B)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_GbxBlackboardEntryRef: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0xC
 writeQword(_params + 0x0, A)
 writeQword(_params + 0xC, B)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_GbxBlackboardEntryRef", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_GbxBlackboardEntryRef");

BL4.SetBlackboardActor = function(OwnerAddress, BlackboardKey, Value_Actor, OwnerContext_Object)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBlackboardActor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, Value at +0x10, OwnerContext at +0x18
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, Value_Actor)
 writeQword(_params + 0x18, OwnerContext_Object)
 UE.CallProcessEventEx(OwnerAddress, "SetBlackboardActor", _params);
 deAlloc(_params);
end
FNR("BL4.SetBlackboardActor");

BL4.SetBlackboardAsset = function(OwnerAddress, BlackboardKey, Value_Object, OwnerContext_Object)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBlackboardAsset: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, Value at +0x10, OwnerContext at +0x38
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, Value_Object)
 writeQword(_params + 0x38, OwnerContext_Object)
 UE.CallProcessEventEx(OwnerAddress, "SetBlackboardAsset", _params);
 deAlloc(_params);
end
FNR("BL4.SetBlackboardAsset");

BL4.SetBlackboardBool = function(OwnerAddress, BlackboardKey, Value, OwnerContext_Object)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBlackboardBool: Failed To Allocate The Params");return;end;
 Value = Value or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, Value at +0xC, OwnerContext at +0x10
 writeQword(_params + 0x0, BlackboardKey)
 writeByte(_params + 0xC, Value)
 writeQword(_params + 0x10, OwnerContext_Object)
 UE.CallProcessEventEx(OwnerAddress, "SetBlackboardBool", _params);
 deAlloc(_params);
end
FNR("BL4.SetBlackboardBool");

BL4.SetBlackboardDouble = function(OwnerAddress, BlackboardKey, Value, OwnerContext_Object)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBlackboardDouble: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, Value at +0x10, OwnerContext at +0x18
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, Value)
 writeQword(_params + 0x18, OwnerContext_Object)
 UE.CallProcessEventEx(OwnerAddress, "SetBlackboardDouble", _params);
 deAlloc(_params);
end
FNR("BL4.SetBlackboardDouble");

BL4.SetBlackboardFloat = function(OwnerAddress, BlackboardKey, Value, OwnerContext_Object)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBlackboardFloat: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, Value at +0xC, OwnerContext at +0x10
 writeQword(_params + 0x0, BlackboardKey)
 writeFloat(_params + 0xC, Value)
 writeQword(_params + 0x10, OwnerContext_Object)
 UE.CallProcessEventEx(OwnerAddress, "SetBlackboardFloat", _params);
 deAlloc(_params);
end
FNR("BL4.SetBlackboardFloat");

BL4.SetBlackboardFromDataTable = function(OwnerAddress, BlackboardKey, Value, OwnerContext_Object)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBlackboardFromDataTable: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, Value at +0x10, OwnerContext at +0x38
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, Value)
 writeQword(_params + 0x38, OwnerContext_Object)
 UE.CallProcessEventEx(OwnerAddress, "SetBlackboardFromDataTable", _params);
 deAlloc(_params);
end
FNR("BL4.SetBlackboardFromDataTable");

BL4.SetBlackboardGbxDef = function(OwnerAddress, BlackboardKey, Value, OwnerContext_Object)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBlackboardGbxDef: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, Value at +0x10, OwnerContext at +0x28
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, Value)
 writeQword(_params + 0x28, OwnerContext_Object)
 UE.CallProcessEventEx(OwnerAddress, "SetBlackboardGbxDef", _params);
 deAlloc(_params);
end
FNR("BL4.SetBlackboardGbxDef");

BL4.SetBlackboardHitResult = function(OwnerAddress, BlackboardKey, Value, OwnerContext_Object)
 local _paramsSize = 0x118
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBlackboardHitResult: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, Value at +0x10, OwnerContext at +0x110
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, Value)
 writeQword(_params + 0x110, OwnerContext_Object)
 UE.CallProcessEventEx(OwnerAddress, "SetBlackboardHitResult", _params);
 deAlloc(_params);
end
FNR("BL4.SetBlackboardHitResult");

BL4.SetBlackboardInt = function(OwnerAddress, BlackboardKey, Value, OwnerContext_Object)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBlackboardInt: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, Value at +0xC, OwnerContext at +0x10
 writeQword(_params + 0x0, BlackboardKey)
 writeInteger(_params + 0xC, Value)
 writeQword(_params + 0x10, OwnerContext_Object)
 UE.CallProcessEventEx(OwnerAddress, "SetBlackboardInt", _params);
 deAlloc(_params);
end
FNR("BL4.SetBlackboardInt");

BL4.SetBlackboardName = function(OwnerAddress, BlackboardKey, Value, OwnerContext_Object)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBlackboardName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, Value at +0xC, OwnerContext at +0x18
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0xC, Value)
 writeQword(_params + 0x18, OwnerContext_Object)
 UE.CallProcessEventEx(OwnerAddress, "SetBlackboardName", _params);
 deAlloc(_params);
end
FNR("BL4.SetBlackboardName");

BL4.SetBlackboardNumericRange = function(OwnerAddress, BlackboardKey, Value, OwnerContext_Object)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBlackboardNumericRange: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, Value at +0xC, OwnerContext at +0x18
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0xC, Value)
 writeQword(_params + 0x18, OwnerContext_Object)
 UE.CallProcessEventEx(OwnerAddress, "SetBlackboardNumericRange", _params);
 deAlloc(_params);
end
FNR("BL4.SetBlackboardNumericRange");

BL4.SetBlackboardObject = function(OwnerAddress, BlackboardKey, Value_Object, OwnerContext_Object)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBlackboardObject: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, Value at +0x10, OwnerContext at +0x18
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, Value_Object)
 writeQword(_params + 0x18, OwnerContext_Object)
 UE.CallProcessEventEx(OwnerAddress, "SetBlackboardObject", _params);
 deAlloc(_params);
end
FNR("BL4.SetBlackboardObject");

BL4.SetBlackboardParam = function(OwnerAddress, BlackboardKey, Value, OwnerContext_Object)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBlackboardParam: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, Value at +0x10, OwnerContext at +0x48
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, Value)
 writeQword(_params + 0x48, OwnerContext_Object)
 UE.CallProcessEventEx(OwnerAddress, "SetBlackboardParam", _params);
 deAlloc(_params);
end
FNR("BL4.SetBlackboardParam");

BL4.SetBlackboardRotator = function(OwnerAddress, BlackboardKey, Value, OwnerContext_Object)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBlackboardRotator: Failed To Allocate The Params");return;end;
 Value = Value or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, Value at +0x10, OwnerContext at +0x28
 writeQword(_params + 0x0, BlackboardKey)
 writeDouble(_params + 0x10, (Value and Value.Pitch) or 0)
 writeDouble(_params + 0x18, (Value and Value.Yaw) or 0)
 writeDouble(_params + 0x20, (Value and Value.Roll) or 0)
 writeQword(_params + 0x28, OwnerContext_Object)
 UE.CallProcessEventEx(OwnerAddress, "SetBlackboardRotator", _params);
 deAlloc(_params);
end
FNR("BL4.SetBlackboardRotator");

BL4.SetBlackboardSceneComponent = function(OwnerAddress, BlackboardKey, Value_SceneComponent, OwnerContext_Object)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBlackboardSceneComponent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, Value at +0x10, OwnerContext at +0x18
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, Value_SceneComponent)
 writeQword(_params + 0x18, OwnerContext_Object)
 UE.CallProcessEventEx(OwnerAddress, "SetBlackboardSceneComponent", _params);
 deAlloc(_params);
end
FNR("BL4.SetBlackboardSceneComponent");

BL4.SetBlackboardString = function(OwnerAddress, BlackboardKey, Value, OwnerContext_Object)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBlackboardString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, Value at +0x10, OwnerContext at +0x20
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, Value)
 writeQword(_params + 0x20, OwnerContext_Object)
 UE.CallProcessEventEx(OwnerAddress, "SetBlackboardString", _params);
 deAlloc(_params);
end
FNR("BL4.SetBlackboardString");

BL4.SetBlackboardText = function(OwnerAddress, BlackboardKey, Value, OwnerContext_Object)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBlackboardText: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, Value at +0x10, OwnerContext at +0x20
 writeQword(_params + 0x0, BlackboardKey)
 writeQword(_params + 0x10, Value)
 writeQword(_params + 0x20, OwnerContext_Object)
 UE.CallProcessEventEx(OwnerAddress, "SetBlackboardText", _params);
 deAlloc(_params);
end
FNR("BL4.SetBlackboardText");

BL4.SetBlackboardVector = function(OwnerAddress, BlackboardKey, Value, OwnerContext_Object)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBlackboardVector: Failed To Allocate The Params");return;end;
 Value = Value or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlackboardKey at +0x0, Value at +0x10, OwnerContext at +0x28
 writeQword(_params + 0x0, BlackboardKey)
 writeDouble(_params + 0x10, (Value and Value.X) or 0)
 writeDouble(_params + 0x18, (Value and Value.Y) or 0)
 writeDouble(_params + 0x20, (Value and Value.Z) or 0)
 writeQword(_params + 0x28, OwnerContext_Object)
 UE.CallProcessEventEx(OwnerAddress, "SetBlackboardVector", _params);
 deAlloc(_params);
end
FNR("BL4.SetBlackboardVector");

