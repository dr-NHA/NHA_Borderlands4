BL4.ActionSkillCooldown = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ActionSkillCooldown: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "ActionSkillCooldown", _params);
 deAlloc(_params);
end
FNR("BL4.ActionSkillCooldown");

BL4.ChangeTreeOne = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ChangeTreeOne: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "ChangeTreeOne", _params);
 deAlloc(_params);
end
FNR("BL4.ChangeTreeOne");

BL4.ChangeTreeThree = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ChangeTreeThree: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "ChangeTreeThree", _params);
 deAlloc(_params);
end
FNR("BL4.ChangeTreeThree");

BL4.ChangeTreeTwo = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ChangeTreeTwo: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "ChangeTreeTwo", _params);
 deAlloc(_params);
end
FNR("BL4.ChangeTreeTwo");

BL4.EquipActionSkill = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EquipActionSkill: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "EquipActionSkill", _params);
 deAlloc(_params);
end
FNR("BL4.EquipActionSkill");

BL4.EquipAugment = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EquipAugment: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "EquipAugment", _params);
 deAlloc(_params);
end
FNR("BL4.EquipAugment");

BL4.EquipCapstone = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EquipCapstone: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "EquipCapstone", _params);
 deAlloc(_params);
end
FNR("BL4.EquipCapstone");

BL4.EquipSkill = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EquipSkill: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "EquipSkill", _params);
 deAlloc(_params);
end
FNR("BL4.EquipSkill");

BL4.Focused = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Focused: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "Focused", _params);
 deAlloc(_params);
end
FNR("BL4.Focused");

BL4.InactiveNode = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InactiveNode: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "InactiveNode", _params);
 deAlloc(_params);
end
FNR("BL4.InactiveNode");

BL4.InsufficientPoints = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InsufficientPoints: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "InsufficientPoints", _params);
 deAlloc(_params);
end
FNR("BL4.InsufficientPoints");

BL4.InvestPointFour = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InvestPointFour: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "InvestPointFour", _params);
 deAlloc(_params);
end
FNR("BL4.InvestPointFour");

BL4.InvestPointMax = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InvestPointMax: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "InvestPointMax", _params);
 deAlloc(_params);
end
FNR("BL4.InvestPointMax");

BL4.InvestPointOne = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InvestPointOne: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "InvestPointOne", _params);
 deAlloc(_params);
end
FNR("BL4.InvestPointOne");

BL4.InvestPointThree = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InvestPointThree: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "InvestPointThree", _params);
 deAlloc(_params);
end
FNR("BL4.InvestPointThree");

BL4.InvestPointTwo = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InvestPointTwo: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "InvestPointTwo", _params);
 deAlloc(_params);
end
FNR("BL4.InvestPointTwo");

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

BL4.RemovePoint = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemovePoint: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "RemovePoint", _params);
 deAlloc(_params);
end
FNR("BL4.RemovePoint");

BL4.ResetPoints = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ResetPoints: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "ResetPoints", _params);
 deAlloc(_params);
end
FNR("BL4.ResetPoints");

BL4.StartTutorialAugments = function(WorldContextObject_Object, OwningWidgetDef)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StartTutorialAugments: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 UE.CallProcessEventEx(WorldContextObject_Object, "StartTutorialAugments", _params);
 deAlloc(_params);
end
FNR("BL4.StartTutorialAugments");

BL4.StartTutorialCapstones = function(WorldContextObject_Object, OwningWidgetDef)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StartTutorialCapstones: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 UE.CallProcessEventEx(WorldContextObject_Object, "StartTutorialCapstones", _params);
 deAlloc(_params);
end
FNR("BL4.StartTutorialCapstones");

BL4.StartTutorialIntro = function(WorldContextObject_Object, OwningWidgetDef)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StartTutorialIntro: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 UE.CallProcessEventEx(WorldContextObject_Object, "StartTutorialIntro", _params);
 deAlloc(_params);
end
FNR("BL4.StartTutorialIntro");

BL4.StartTutorialRespec = function(WorldContextObject_Object, OwningWidgetDef)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StartTutorialRespec: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 UE.CallProcessEventEx(WorldContextObject_Object, "StartTutorialRespec", _params);
 deAlloc(_params);
end
FNR("BL4.StartTutorialRespec");

BL4.StartTutorialSkills = function(WorldContextObject_Object, OwningWidgetDef)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StartTutorialSkills: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 UE.CallProcessEventEx(WorldContextObject_Object, "StartTutorialSkills", _params);
 deAlloc(_params);
end
FNR("BL4.StartTutorialSkills");

BL4.StartTutorialSpecializations = function(WorldContextObject_Object, OwningWidgetDef)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StartTutorialSpecializations: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 UE.CallProcessEventEx(WorldContextObject_Object, "StartTutorialSpecializations", _params);
 deAlloc(_params);
end
FNR("BL4.StartTutorialSpecializations");

BL4.UnequipActionSkill = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnequipActionSkill: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "UnequipActionSkill", _params);
 deAlloc(_params);
end
FNR("BL4.UnequipActionSkill");

BL4.UnequipAugment = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnequipAugment: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "UnequipAugment", _params);
 deAlloc(_params);
end
FNR("BL4.UnequipAugment");

BL4.UnequipCapstone = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnequipCapstone: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "UnequipCapstone", _params);
 deAlloc(_params);
end
FNR("BL4.UnequipCapstone");

BL4.UnequipSkill = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnequipSkill: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "UnequipSkill", _params);
 deAlloc(_params);
end
FNR("BL4.UnequipSkill");

BL4.Unfocused = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Unfocused: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "Unfocused", _params);
 deAlloc(_params);
end
FNR("BL4.Unfocused");

BL4.UnlockBranches = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnlockBranches: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "UnlockBranches", _params);
 deAlloc(_params);
end
FNR("BL4.UnlockBranches");

BL4.UnlockSkill = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnlockSkill: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "UnlockSkill", _params);
 deAlloc(_params);
end
FNR("BL4.UnlockSkill");

BL4.UnlockSlot = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnlockSlot: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "UnlockSlot", _params);
 deAlloc(_params);
end
FNR("BL4.UnlockSlot");

BL4.UnlockTier = function(WorldContextObject_Object, OwningWidgetDef, position)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnlockTier: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, OwningWidgetDef at +0x8, position at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, OwningWidgetDef)
 writeDouble(_params + 0x20, (position and position.X) or 0)
 writeDouble(_params + 0x28, (position and position.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "UnlockTier", _params);
 deAlloc(_params);
end
FNR("BL4.UnlockTier");

