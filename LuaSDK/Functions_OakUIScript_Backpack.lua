BL4.BackpackSlotFocused = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BackpackSlotFocused: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "BackpackSlotFocused", _params);
 deAlloc(_params);
end
FNR("BL4.BackpackSlotFocused");

BL4.BackpackSlotUnfocused = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BackpackSlotUnfocused: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "BackpackSlotUnfocused", _params);
 deAlloc(_params);
end
FNR("BL4.BackpackSlotUnfocused");

BL4.BuyItem = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BuyItem: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "BuyItem", _params);
 deAlloc(_params);
end
FNR("BL4.BuyItem");

BL4.ClickAssaultRifle = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClickAssaultRifle: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "ClickAssaultRifle", _params);
 deAlloc(_params);
end
FNR("BL4.ClickAssaultRifle");

BL4.ClickClassMod = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClickClassMod: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "ClickClassMod", _params);
 deAlloc(_params);
end
FNR("BL4.ClickClassMod");

BL4.ClickEnhancement = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClickEnhancement: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "ClickEnhancement", _params);
 deAlloc(_params);
end
FNR("BL4.ClickEnhancement");

BL4.ClickGadget = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClickGadget: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "ClickGadget", _params);
 deAlloc(_params);
end
FNR("BL4.ClickGadget");

BL4.ClickGrenade = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClickGrenade: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "ClickGrenade", _params);
 deAlloc(_params);
end
FNR("BL4.ClickGrenade");

BL4.ClickHeavyWeapon = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClickHeavyWeapon: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "ClickHeavyWeapon", _params);
 deAlloc(_params);
end
FNR("BL4.ClickHeavyWeapon");

BL4.ClickPistol = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClickPistol: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "ClickPistol", _params);
 deAlloc(_params);
end
FNR("BL4.ClickPistol");

BL4.ClickRepKit = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClickRepKit: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "ClickRepKit", _params);
 deAlloc(_params);
end
FNR("BL4.ClickRepKit");

BL4.ClickShield = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClickShield: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "ClickShield", _params);
 deAlloc(_params);
end
FNR("BL4.ClickShield");

BL4.ClickShotgun = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClickShotgun: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "ClickShotgun", _params);
 deAlloc(_params);
end
FNR("BL4.ClickShotgun");

BL4.ClickSMG = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClickSMG: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "ClickSMG", _params);
 deAlloc(_params);
end
FNR("BL4.ClickSMG");

BL4.ClickSniper = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClickSniper: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "ClickSniper", _params);
 deAlloc(_params);
end
FNR("BL4.ClickSniper");

BL4.CloseBackpack = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CloseBackpack: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "CloseBackpack", _params);
 deAlloc(_params);
end
FNR("BL4.CloseBackpack");

BL4.ClosePlayerStats = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClosePlayerStats: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "ClosePlayerStats", _params);
 deAlloc(_params);
end
FNR("BL4.ClosePlayerStats");

BL4.CloseRewardCenter = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CloseRewardCenter: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "CloseRewardCenter", _params);
 deAlloc(_params);
end
FNR("BL4.CloseRewardCenter");

BL4.CompareStart = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CompareStart: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "CompareStart", _params);
 deAlloc(_params);
end
FNR("BL4.CompareStart");

BL4.CompareStop = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CompareStop: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "CompareStop", _params);
 deAlloc(_params);
end
FNR("BL4.CompareStop");

BL4.DropItem = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DropItem: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "DropItem", _params);
 deAlloc(_params);
end
FNR("BL4.DropItem");

BL4.EquipAssaultRifle = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EquipAssaultRifle: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "EquipAssaultRifle", _params);
 deAlloc(_params);
end
FNR("BL4.EquipAssaultRifle");

BL4.EquipClassMod = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EquipClassMod: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "EquipClassMod", _params);
 deAlloc(_params);
end
FNR("BL4.EquipClassMod");

BL4.EquipEnhancement = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EquipEnhancement: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "EquipEnhancement", _params);
 deAlloc(_params);
end
FNR("BL4.EquipEnhancement");

BL4.EquipGadget = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EquipGadget: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "EquipGadget", _params);
 deAlloc(_params);
end
FNR("BL4.EquipGadget");

BL4.EquipGrenade = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EquipGrenade: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "EquipGrenade", _params);
 deAlloc(_params);
end
FNR("BL4.EquipGrenade");

BL4.EquipHeavyWeapon = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EquipHeavyWeapon: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "EquipHeavyWeapon", _params);
 deAlloc(_params);
end
FNR("BL4.EquipHeavyWeapon");

BL4.EquipItem = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EquipItem: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "EquipItem", _params);
 deAlloc(_params);
end
FNR("BL4.EquipItem");

BL4.EquipPistol = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EquipPistol: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "EquipPistol", _params);
 deAlloc(_params);
end
FNR("BL4.EquipPistol");

BL4.EquipRepKit = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EquipRepKit: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "EquipRepKit", _params);
 deAlloc(_params);
end
FNR("BL4.EquipRepKit");

BL4.EquipShield = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EquipShield: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "EquipShield", _params);
 deAlloc(_params);
end
FNR("BL4.EquipShield");

BL4.EquipShotgun = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EquipShotgun: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "EquipShotgun", _params);
 deAlloc(_params);
end
FNR("BL4.EquipShotgun");

BL4.EquipSMG = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EquipSMG: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "EquipSMG", _params);
 deAlloc(_params);
end
FNR("BL4.EquipSMG");

BL4.EquipSniper = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EquipSniper: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "EquipSniper", _params);
 deAlloc(_params);
end
FNR("BL4.EquipSniper");

BL4.Error = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Error: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "Error", _params);
 deAlloc(_params);
end
FNR("BL4.Error");

BL4.FirmwareTransferComplete = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FirmwareTransferComplete: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "FirmwareTransferComplete", _params);
 deAlloc(_params);
end
FNR("BL4.FirmwareTransferComplete");

BL4.GearSlotFocused = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GearSlotFocused: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "GearSlotFocused", _params);
 deAlloc(_params);
end
FNR("BL4.GearSlotFocused");

BL4.GearSlotUnfocused = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GearSlotUnfocused: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "GearSlotUnfocused", _params);
 deAlloc(_params);
end
FNR("BL4.GearSlotUnfocused");

BL4.MarkItem = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MarkItem: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "MarkItem", _params);
 deAlloc(_params);
end
FNR("BL4.MarkItem");

BL4.MarkItemBank = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MarkItemBank: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "MarkItemBank", _params);
 deAlloc(_params);
end
FNR("BL4.MarkItemBank");

BL4.MarkItemFavorite = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MarkItemFavorite: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "MarkItemFavorite", _params);
 deAlloc(_params);
end
FNR("BL4.MarkItemFavorite");

BL4.MarkItemTrash = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MarkItemTrash: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "MarkItemTrash", _params);
 deAlloc(_params);
end
FNR("BL4.MarkItemTrash");

BL4.OpenBackpack = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OpenBackpack: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "OpenBackpack", _params);
 deAlloc(_params);
end
FNR("BL4.OpenBackpack");

BL4.OpenLegendaryReward = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OpenLegendaryReward: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "OpenLegendaryReward", _params);
 deAlloc(_params);
end
FNR("BL4.OpenLegendaryReward");

BL4.OpenPlayerStats = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OpenPlayerStats: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "OpenPlayerStats", _params);
 deAlloc(_params);
end
FNR("BL4.OpenPlayerStats");

BL4.OpenReward = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OpenReward: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "OpenReward", _params);
 deAlloc(_params);
end
FNR("BL4.OpenReward");

BL4.OpenRewardCenter = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OpenRewardCenter: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "OpenRewardCenter", _params);
 deAlloc(_params);
end
FNR("BL4.OpenRewardCenter");

BL4.PutItemInTransferSlot = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PutItemInTransferSlot: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "PutItemInTransferSlot", _params);
 deAlloc(_params);
end
FNR("BL4.PutItemInTransferSlot");

BL4.RemoveItemFromTransferSlot = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveItemFromTransferSlot: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "RemoveItemFromTransferSlot", _params);
 deAlloc(_params);
end
FNR("BL4.RemoveItemFromTransferSlot");

BL4.SellItem = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SellItem: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "SellItem", _params);
 deAlloc(_params);
end
FNR("BL4.SellItem");

BL4.StartEchoLogsMenuTutorial = function(WorldContextObject_Object, OwningWidgetDef)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StartEchoLogsMenuTutorial: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 UE.CallProcessEventEx(WorldContextObject_Object, "StartEchoLogsMenuTutorial", _params);
 deAlloc(_params);
end
FNR("BL4.StartEchoLogsMenuTutorial");

BL4.StartEquipMenuTutorial = function(WorldContextObject_Object, OwningWidgetDef)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StartEquipMenuTutorial: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 UE.CallProcessEventEx(WorldContextObject_Object, "StartEquipMenuTutorial", _params);
 deAlloc(_params);
end
FNR("BL4.StartEquipMenuTutorial");

BL4.StartEquippedFirmwareTutorial = function(WorldContextObject_Object, OwningWidgetDef)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StartEquippedFirmwareTutorial: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 UE.CallProcessEventEx(WorldContextObject_Object, "StartEquippedFirmwareTutorial", _params);
 deAlloc(_params);
end
FNR("BL4.StartEquippedFirmwareTutorial");

BL4.StartFirmwareTransferTutorial = function(WorldContextObject_Object, OwningWidgetDef)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StartFirmwareTransferTutorial: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 UE.CallProcessEventEx(WorldContextObject_Object, "StartFirmwareTransferTutorial", _params);
 deAlloc(_params);
end
FNR("BL4.StartFirmwareTransferTutorial");

BL4.StartLostLootTutorial = function(WorldContextObject_Object, OwningWidgetDef)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StartLostLootTutorial: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 UE.CallProcessEventEx(WorldContextObject_Object, "StartLostLootTutorial", _params);
 deAlloc(_params);
end
FNR("BL4.StartLostLootTutorial");

BL4.StartRewardCenterTutorial = function(WorldContextObject_Object, OwningWidgetDef)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StartRewardCenterTutorial: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 UE.CallProcessEventEx(WorldContextObject_Object, "StartRewardCenterTutorial", _params);
 deAlloc(_params);
end
FNR("BL4.StartRewardCenterTutorial");

BL4.StartVendingMachineTutorial = function(WorldContextObject_Object, OwningWidgetDef)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StartVendingMachineTutorial: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 UE.CallProcessEventEx(WorldContextObject_Object, "StartVendingMachineTutorial", _params);
 deAlloc(_params);
end
FNR("BL4.StartVendingMachineTutorial");

BL4.TakeItem = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TakeItem: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "TakeItem", _params);
 deAlloc(_params);
end
FNR("BL4.TakeItem");

BL4.TrashItem = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TrashItem: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "TrashItem", _params);
 deAlloc(_params);
end
FNR("BL4.TrashItem");

BL4.UnequipItem = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnequipItem: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "UnequipItem", _params);
 deAlloc(_params);
end
FNR("BL4.UnequipItem");

BL4.WeaponSlotFocused = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.WeaponSlotFocused: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "WeaponSlotFocused", _params);
 deAlloc(_params);
end
FNR("BL4.WeaponSlotFocused");

BL4.WeaponSlotUnfocused = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.WeaponSlotUnfocused: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "WeaponSlotUnfocused", _params);
 deAlloc(_params);
end
FNR("BL4.WeaponSlotUnfocused");

