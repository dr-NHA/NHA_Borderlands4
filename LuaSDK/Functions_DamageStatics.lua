BL4.Add_DamageSourceContainers = function(OwnerAddress, A, B)
 local _paramsSize = 0xC0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Add_DamageSourceContainers: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x40
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x40, B)
 UE.CallProcessEventEx(OwnerAddress, "Add_DamageSourceContainers", _params);
 local RET=readQword(_params + 0x80);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Add_DamageSourceContainers");

BL4.AddHealthPool = function(Context_Actor, HealthType, Segments, bChoosePoolAutomatically, Pool, bRefillAllHealth, RefillPercent)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddHealthPool: Failed To Allocate The Params");return;end;
 bChoosePoolAutomatically = bChoosePoolAutomatically or false
 bRefillAllHealth = bRefillAllHealth or false
 RefillPercent = RefillPercent or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, HealthType at +0x8, Segments at +0x20, bChoosePoolAutomatically at +0x30, Pool at +0x38, bRefillAllHealth at +0x50, RefillPercent at +0x54
 writeQword(_params + 0x0, Context_Actor)
 writeQword(_params + 0x8, HealthType)
 writeQword(_params + 0x20, Segments)
 writeByte(_params + 0x30, bChoosePoolAutomatically)
 writeQword(_params + 0x38, Pool)
 writeByte(_params + 0x50, bRefillAllHealth)
 writeFloat(_params + 0x54, RefillPercent)
 UE.CallProcessEventEx(Context_Actor, "AddHealthPool", _params);
 local RET=readInteger(_params + 0x58);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddHealthPool");

BL4.BindHealthPoolSegmentStateEvent = function(Context_Actor, layer, State, Delegate)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BindHealthPoolSegmentStateEvent: Failed To Allocate The Params");return;end;
 layer = layer or 0
 State = State or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, layer at +0x8, State at +0xC, Delegate at +0x10
 writeQword(_params + 0x0, Context_Actor)
 writeInteger(_params + 0x8, layer)
 writeByte(_params + 0xC, State)
 writeQword(_params + 0x10, Delegate)
 UE.CallProcessEventEx(Context_Actor, "BindHealthPoolSegmentStateEvent", _params);
 deAlloc(_params);
end
FNR("BL4.BindHealthPoolSegmentStateEvent");

BL4.BindHealthPoolStateEvent = function(Context_Actor, layer, State, Delegate)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BindHealthPoolStateEvent: Failed To Allocate The Params");return;end;
 layer = layer or 0
 State = State or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, layer at +0x8, State at +0xC, Delegate at +0x10
 writeQword(_params + 0x0, Context_Actor)
 writeInteger(_params + 0x8, layer)
 writeByte(_params + 0xC, State)
 writeQword(_params + 0x10, Delegate)
 UE.CallProcessEventEx(Context_Actor, "BindHealthPoolStateEvent", _params);
 deAlloc(_params);
end
FNR("BL4.BindHealthPoolStateEvent");

BL4.CauseDamage = function(DamageCauser_Actor, DamageInstigator_Pawn, DamageData, DamageTarget_Actor, DamageOverride, TargetedHitInfo, DamageTypeOverride, DamageSourceOverride, bAppendDamageSource, SourceActorOverride_Actor, SourceLocationOverride, SourceRotationOverride, SourceSocketOverride, DamageRadiusOverride, DamageExtentOverride, ImpactForceOverride, SourceEffectOverride, ImpactEffectOverride, DurationOverride, DamageTags, bInheritTimeDilation, bServerAuthorityOverride)
 local _paramsSize = 0x2A0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CauseDamage: Failed To Allocate The Params");return;end;
 DamageOverride = DamageOverride or 0
 bAppendDamageSource = bAppendDamageSource or false
 SourceLocationOverride = SourceLocationOverride or {X=0,Y=0,Z=0}
 SourceRotationOverride = SourceRotationOverride or {Pitch=0,Yaw=0,Roll=0}
 DamageRadiusOverride = DamageRadiusOverride or 0
 DamageExtentOverride = DamageExtentOverride or {X=0,Y=0,Z=0}
 DurationOverride = DurationOverride or 0
 bInheritTimeDilation = bInheritTimeDilation or false
 bServerAuthorityOverride = bServerAuthorityOverride or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DamageCauser at +0x0, DamageInstigator at +0x8, DamageData at +0x10, DamageTarget at +0x28, DamageOverride at +0x30, TargetedHitInfo at +0x38, DamageTypeOverride at +0x138, DamageSourceOverride at +0x150, bAppendDamageSource at +0x190, SourceActorOverride at +0x198, SourceLocationOverride at +0x1A0, SourceRotationOverride at +0x1B8, SourceSocketOverride at +0x1D0, DamageRadiusOverride at +0x1D8, DamageExtentOverride at +0x1E0, ImpactForceOverride at +0x1F8, SourceEffectOverride at +0x240, ImpactEffectOverride at +0x258, DurationOverride at +0x270, DamageTags at +0x278, bInheritTimeDilation at +0x298, bServerAuthorityOverride at +0x299
 writeQword(_params + 0x0, DamageCauser_Actor)
 writeQword(_params + 0x8, DamageInstigator_Pawn)
 writeQword(_params + 0x10, DamageData)
 writeQword(_params + 0x28, DamageTarget_Actor)
 writeFloat(_params + 0x30, DamageOverride)
 writeQword(_params + 0x38, TargetedHitInfo)
 writeQword(_params + 0x138, DamageTypeOverride)
 writeQword(_params + 0x150, DamageSourceOverride)
 writeByte(_params + 0x190, bAppendDamageSource)
 writeQword(_params + 0x198, SourceActorOverride_Actor)
 writeDouble(_params + 0x1A0, (SourceLocationOverride and SourceLocationOverride.X) or 0)
 writeDouble(_params + 0x1A8, (SourceLocationOverride and SourceLocationOverride.Y) or 0)
 writeDouble(_params + 0x1B0, (SourceLocationOverride and SourceLocationOverride.Z) or 0)
 writeDouble(_params + 0x1B8, (SourceRotationOverride and SourceRotationOverride.Pitch) or 0)
 writeDouble(_params + 0x1C0, (SourceRotationOverride and SourceRotationOverride.Yaw) or 0)
 writeDouble(_params + 0x1C8, (SourceRotationOverride and SourceRotationOverride.Roll) or 0)
 writeQword(_params + 0x1D0, SourceSocketOverride)
 writeFloat(_params + 0x1D8, DamageRadiusOverride)
 writeDouble(_params + 0x1E0, (DamageExtentOverride and DamageExtentOverride.X) or 0)
 writeDouble(_params + 0x1E8, (DamageExtentOverride and DamageExtentOverride.Y) or 0)
 writeDouble(_params + 0x1F0, (DamageExtentOverride and DamageExtentOverride.Z) or 0)
 writeQword(_params + 0x1F8, ImpactForceOverride)
 writeQword(_params + 0x240, SourceEffectOverride)
 writeQword(_params + 0x258, ImpactEffectOverride)
 writeFloat(_params + 0x270, DurationOverride)
 writeQword(_params + 0x278, DamageTags)
 writeByte(_params + 0x298, bInheritTimeDilation)
 writeByte(_params + 0x299, bServerAuthorityOverride)
 UE.CallProcessEventEx(DamageCauser_Actor, "CauseDamage", _params);
 deAlloc(_params);
end
FNR("BL4.CauseDamage");

BL4.Conv_DamageSource_DamageSourceContainer = function(OwnerAddress, DamageSource)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_DamageSource_DamageSourceContainer: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DamageSource at +0x0
 writeQword(_params + 0x0, DamageSource)
 UE.CallProcessEventEx(OwnerAddress, "Conv_DamageSource_DamageSourceContainer", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_DamageSource_DamageSourceContainer");

BL4.Conv_DamageSourceContainer_DamageSource = function(OwnerAddress, Container)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_DamageSourceContainer_DamageSource: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Container at +0x0
 writeQword(_params + 0x0, Container)
 UE.CallProcessEventEx(OwnerAddress, "Conv_DamageSourceContainer_DamageSource", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_DamageSourceContainer_DamageSource");

BL4.Conv_DamageSourceContainer_GameDataHandle = function(OwnerAddress, Container)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_DamageSourceContainer_GameDataHandle: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Container at +0x0
 writeQword(_params + 0x0, Container)
 UE.CallProcessEventEx(OwnerAddress, "Conv_DamageSourceContainer_GameDataHandle", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_DamageSourceContainer_GameDataHandle");

BL4.Conv_DamageSourceContainer_String = function(OwnerAddress, Container)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_DamageSourceContainer_String: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Container at +0x0
 writeQword(_params + 0x0, Container)
 UE.CallProcessEventEx(OwnerAddress, "Conv_DamageSourceContainer_String", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_DamageSourceContainer_String");

BL4.Conv_FloatToForceSelection = function(OwnerAddress, ForceSelection)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_FloatToForceSelection: Failed To Allocate The Params");return;end;
 ForceSelection = ForceSelection or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ForceSelection at +0x0
 writeFloat(_params + 0x0, ForceSelection)
 UE.CallProcessEventEx(OwnerAddress, "Conv_FloatToForceSelection", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_FloatToForceSelection");

BL4.Conv_ForceSelectionToFloat = function(OwnerAddress, ForceSelection)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_ForceSelectionToFloat: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ForceSelection at +0x0
 writeQword(_params + 0x0, ForceSelection)
 UE.CallProcessEventEx(OwnerAddress, "Conv_ForceSelectionToFloat", _params);
 local RET=readFloat(_params + 0x48);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_ForceSelectionToFloat");

BL4.EqualEqual_DamageSourceContainer = function(OwnerAddress, A, B)
 local _paramsSize = 0x88
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_DamageSourceContainer: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x40
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x40, B)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_DamageSourceContainer", _params);
 local RET=readByte(_params + 0x80);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_DamageSourceContainer");

BL4.EqualEqual_DamageSourceContainerDamageSource = function(OwnerAddress, A, B)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_DamageSourceContainerDamageSource: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x40
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x40, B)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_DamageSourceContainerDamageSource", _params);
 local RET=readByte(_params + 0x58);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_DamageSourceContainerDamageSource");

BL4.GetCustomDamageNumberEvents = function(OwnerAddress, OutNames)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomDamageNumberEvents: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OutNames at +0x0
 writeQword(_params + 0x0, OutNames)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomDamageNumberEvents", _params);
 deAlloc(_params);
end
FNR("BL4.GetCustomDamageNumberEvents");

BL4.GetDamageSourceContainerTags = function(OwnerAddress, Container)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDamageSourceContainerTags: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Container at +0x0
 writeQword(_params + 0x0, Container)
 UE.CallProcessEventEx(OwnerAddress, "GetDamageSourceContainerTags", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDamageSourceContainerTags");

BL4.GetDamageSourceTags = function(OwnerAddress, DamageSource)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDamageSourceTags: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DamageSource at +0x0
 writeQword(_params + 0x0, DamageSource)
 UE.CallProcessEventEx(OwnerAddress, "GetDamageSourceTags", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDamageSourceTags");

BL4.GetDeathDetails = function(OwnerContext_Object, Details)
 local _paramsSize = 0x150
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDeathDetails: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OwnerContext at +0x0, Details at +0x8
 writeQword(_params + 0x0, OwnerContext_Object)
 writeQword(_params + 0x8, Details)
 UE.CallProcessEventEx(OwnerContext_Object, "GetDeathDetails", _params);
 local RET=readByte(_params + 0x148);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDeathDetails");

BL4.GetHealthPoolLayerOfType = function(Context_Actor, HealthType, bTopDown)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHealthPoolLayerOfType: Failed To Allocate The Params");return;end;
 bTopDown = bTopDown or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, HealthType at +0x8, bTopDown at +0x20
 writeQword(_params + 0x0, Context_Actor)
 writeQword(_params + 0x8, HealthType)
 writeByte(_params + 0x20, bTopDown)
 UE.CallProcessEventEx(Context_Actor, "GetHealthPoolLayerOfType", _params);
 local RET=readInteger(_params + 0x24);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHealthPoolLayerOfType");

BL4.GetHealthPoolPercent = function(Context_Actor, layer)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHealthPoolPercent: Failed To Allocate The Params");return;end;
 layer = layer or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, layer at +0x8
 writeQword(_params + 0x0, Context_Actor)
 writeInteger(_params + 0x8, layer)
 UE.CallProcessEventEx(Context_Actor, "GetHealthPoolPercent", _params);
 local RET=readFloat(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHealthPoolPercent");

BL4.GetHitRegionHealthPercent = function(Context_Actor, Name, def)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHitRegionHealthPercent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, Name at +0x8, def at +0x10
 writeQword(_params + 0x0, Context_Actor)
 writeQword(_params + 0x8, Name)
 writeQword(_params + 0x10, def)
 UE.CallProcessEventEx(Context_Actor, "GetHitRegionHealthPercent", _params);
 local RET=readFloat(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHitRegionHealthPercent");

BL4.GetNumHealthSlots = function(Context_Actor, bNonDepleted)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumHealthSlots: Failed To Allocate The Params");return;end;
 bNonDepleted = bNonDepleted or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, bNonDepleted at +0x8
 writeQword(_params + 0x0, Context_Actor)
 writeByte(_params + 0x8, bNonDepleted)
 UE.CallProcessEventEx(Context_Actor, "GetNumHealthSlots", _params);
 local RET=readInteger(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumHealthSlots");

BL4.GetSummary_ForceSelection = function(OwnerAddress, ForceSelection)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSummary_ForceSelection: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ForceSelection at +0x0
 writeQword(_params + 0x0, ForceSelection)
 UE.CallProcessEventEx(OwnerAddress, "GetSummary_ForceSelection", _params);
 local RET=readQword(_params + 0x48);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSummary_ForceSelection");

BL4.HasDamageSource = function(OwnerAddress, Container, DamageSource, bExactMatch)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.HasDamageSource: Failed To Allocate The Params");return;end;
 bExactMatch = bExactMatch or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Container at +0x0, DamageSource at +0x40, bExactMatch at +0x58
 writeQword(_params + 0x0, Container)
 writeQword(_params + 0x40, DamageSource)
 writeByte(_params + 0x58, bExactMatch)
 UE.CallProcessEventEx(OwnerAddress, "HasDamageSource", _params);
 local RET=readByte(_params + 0x59);
 deAlloc(_params);
 return RET;
end
FNR("BL4.HasDamageSource");

BL4.IsActorDamageable = function(Actor, bImplementsInterfaceOnly)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsActorDamageable: Failed To Allocate The Params");return;end;
 bImplementsInterfaceOnly = bImplementsInterfaceOnly or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Actor at +0x0, bImplementsInterfaceOnly at +0x8
 writeQword(_params + 0x0, Actor)
 writeByte(_params + 0x8, bImplementsInterfaceOnly)
 UE.CallProcessEventEx(Actor, "IsActorDamageable", _params);
 local RET=readByte(_params + 0x9);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsActorDamageable");

BL4.IsInGodMode = function(OwnerContext_Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsInGodMode: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OwnerContext at +0x0
 writeQword(_params + 0x0, OwnerContext_Object)
 UE.CallProcessEventEx(OwnerContext_Object, "IsInGodMode", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsInGodMode");

BL4.IsInGodOrDemigodMode = function(OwnerContext_Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsInGodOrDemigodMode: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OwnerContext at +0x0
 writeQword(_params + 0x0, OwnerContext_Object)
 UE.CallProcessEventEx(OwnerContext_Object, "IsInGodOrDemigodMode", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsInGodOrDemigodMode");

BL4.IsStructAllowedForValueResolver = function(Object, ScriptStruct)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsStructAllowedForValueResolver: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, ScriptStruct at +0x8
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, ScriptStruct)
 UE.CallProcessEventEx(Object, "IsStructAllowedForValueResolver", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsStructAllowedForValueResolver");

BL4.LockBlockStickies = function(Actor, reason, Block)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LockBlockStickies: Failed To Allocate The Params");return;end;
 Block = Block or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Actor at +0x0, reason at +0x8, Block at +0x10
 writeQword(_params + 0x0, Actor)
 writeQword(_params + 0x8, reason)
 writeByte(_params + 0x10, Block)
 UE.CallProcessEventEx(Actor, "LockBlockStickies", _params);
 deAlloc(_params);
end
FNR("BL4.LockBlockStickies");

BL4.LockDemigod = function(Actor, reason, Block)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LockDemigod: Failed To Allocate The Params");return;end;
 Block = Block or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Actor at +0x0, reason at +0x8, Block at +0x10
 writeQword(_params + 0x0, Actor)
 writeQword(_params + 0x8, reason)
 writeByte(_params + 0x10, Block)
 UE.CallProcessEventEx(Actor, "LockDemigod", _params);
 deAlloc(_params);
end
FNR("BL4.LockDemigod");

BL4.LockGod = function(Actor, reason, Block)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LockGod: Failed To Allocate The Params");return;end;
 Block = Block or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Actor at +0x0, reason at +0x8, Block at +0x10
 writeQword(_params + 0x0, Actor)
 writeQword(_params + 0x8, reason)
 writeByte(_params + 0x10, Block)
 UE.CallProcessEventEx(Actor, "LockGod", _params);
 deAlloc(_params);
end
FNR("BL4.LockGod");

BL4.MakeDamageTags = function(OwnerAddress, tags)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeDamageTags: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: tags at +0x0
 writeQword(_params + 0x0, tags)
 UE.CallProcessEventEx(OwnerAddress, "MakeDamageTags", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeDamageTags");

BL4.MakeDamageTagsFromTag = function(OwnerAddress, SingleTag)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeDamageTagsFromTag: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SingleTag at +0x0
 writeQword(_params + 0x0, SingleTag)
 UE.CallProcessEventEx(OwnerAddress, "MakeDamageTagsFromTag", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeDamageTagsFromTag");

BL4.MakePipelineDamageInput = function(DamageCauser_Actor, DamageReceiver_Actor, DamageType, DamageSource, HitInfo, HitLocation, HitDirection, HitForceDirection, HitForceMagnitude, DamageTags)
 local _paramsSize = 0x530
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakePipelineDamageInput: Failed To Allocate The Params");return;end;
 HitLocation = HitLocation or {X=0,Y=0,Z=0}
 HitDirection = HitDirection or {X=0,Y=0,Z=0}
 HitForceDirection = HitForceDirection or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DamageCauser at +0x0, DamageReceiver at +0x8, DamageType at +0x10, DamageSource at +0x28, HitInfo at +0x68, HitLocation at +0x168, HitDirection at +0x180, HitForceDirection at +0x198, HitForceMagnitude at +0x1B0, DamageTags at +0x1F8
 writeQword(_params + 0x0, DamageCauser_Actor)
 writeQword(_params + 0x8, DamageReceiver_Actor)
 writeQword(_params + 0x10, DamageType)
 writeQword(_params + 0x28, DamageSource)
 writeQword(_params + 0x68, HitInfo)
 writeDouble(_params + 0x168, (HitLocation and HitLocation.X) or 0)
 writeDouble(_params + 0x170, (HitLocation and HitLocation.Y) or 0)
 writeDouble(_params + 0x178, (HitLocation and HitLocation.Z) or 0)
 writeDouble(_params + 0x180, (HitDirection and HitDirection.X) or 0)
 writeDouble(_params + 0x188, (HitDirection and HitDirection.Y) or 0)
 writeDouble(_params + 0x190, (HitDirection and HitDirection.Z) or 0)
 writeDouble(_params + 0x198, (HitForceDirection and HitForceDirection.X) or 0)
 writeDouble(_params + 0x1A0, (HitForceDirection and HitForceDirection.Y) or 0)
 writeDouble(_params + 0x1A8, (HitForceDirection and HitForceDirection.Z) or 0)
 writeQword(_params + 0x1B0, HitForceMagnitude)
 writeQword(_params + 0x1F8, DamageTags)
 UE.CallProcessEventEx(DamageCauser_Actor, "MakePipelineDamageInput", _params);
 local RET=readQword(_params + 0x220);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakePipelineDamageInput");

BL4.NotEqual_DamageSourceContainer = function(OwnerAddress, A, B)
 local _paramsSize = 0x88
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_DamageSourceContainer: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x40
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x40, B)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_DamageSourceContainer", _params);
 local RET=readByte(_params + 0x80);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_DamageSourceContainer");

BL4.NotEqual_DamageSourceContainerDamageSource = function(OwnerAddress, A, B)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_DamageSourceContainerDamageSource: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x40
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x40, B)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_DamageSourceContainerDamageSource", _params);
 local RET=readByte(_params + 0x58);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_DamageSourceContainerDamageSource");

BL4.RefillHealthPercent = function(Context_Actor, HealthType, Percent, MaxPercent)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RefillHealthPercent: Failed To Allocate The Params");return;end;
 Percent = Percent or 0
 MaxPercent = MaxPercent or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, HealthType at +0x8, Percent at +0x20, MaxPercent at +0x24
 writeQword(_params + 0x0, Context_Actor)
 writeQword(_params + 0x8, HealthType)
 writeFloat(_params + 0x20, Percent)
 writeFloat(_params + 0x24, MaxPercent)
 UE.CallProcessEventEx(Context_Actor, "RefillHealthPercent", _params);
 deAlloc(_params);
end
FNR("BL4.RefillHealthPercent");

BL4.RefillHealthPercentOvertime = function(Context_Actor, HealthType, Percent, MaxPercent, Duration, TickRate)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RefillHealthPercentOvertime: Failed To Allocate The Params");return;end;
 Percent = Percent or 0
 MaxPercent = MaxPercent or 0
 Duration = Duration or 0
 TickRate = TickRate or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, HealthType at +0x8, Percent at +0x20, MaxPercent at +0x24, Duration at +0x28, TickRate at +0x2C
 writeQword(_params + 0x0, Context_Actor)
 writeQword(_params + 0x8, HealthType)
 writeFloat(_params + 0x20, Percent)
 writeFloat(_params + 0x24, MaxPercent)
 writeFloat(_params + 0x28, Duration)
 writeFloat(_params + 0x2C, TickRate)
 UE.CallProcessEventEx(Context_Actor, "RefillHealthPercentOvertime", _params);
 local RET=readInteger(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RefillHealthPercentOvertime");

BL4.RefillHitRegionHealth = function(Context_Actor, Name, def, Percent, MaxPercent)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RefillHitRegionHealth: Failed To Allocate The Params");return;end;
 Percent = Percent or 0
 MaxPercent = MaxPercent or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, Name at +0x8, def at +0x10, Percent at +0x28, MaxPercent at +0x2C
 writeQword(_params + 0x0, Context_Actor)
 writeQword(_params + 0x8, Name)
 writeQword(_params + 0x10, def)
 writeFloat(_params + 0x28, Percent)
 writeFloat(_params + 0x2C, MaxPercent)
 UE.CallProcessEventEx(Context_Actor, "RefillHitRegionHealth", _params);
 deAlloc(_params);
end
FNR("BL4.RefillHitRegionHealth");

BL4.RegisterDamageableModifier = function(Damageable_Actor, Modifier, owner_Object, ContextOverride_Object)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RegisterDamageableModifier: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Damageable at +0x0, Modifier at +0x8, owner at +0x20, ContextOverride at +0x28
 writeQword(_params + 0x0, Damageable_Actor)
 writeQword(_params + 0x8, Modifier)
 writeQword(_params + 0x20, owner_Object)
 writeQword(_params + 0x28, ContextOverride_Object)
 UE.CallProcessEventEx(Damageable_Actor, "RegisterDamageableModifier", _params);
 deAlloc(_params);
end
FNR("BL4.RegisterDamageableModifier");

BL4.RegisterDamageCauserModifier = function(DamageCauser_Actor, Modifier, owner_Object, ContextOverride_Object)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RegisterDamageCauserModifier: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DamageCauser at +0x0, Modifier at +0x8, owner at +0x20, ContextOverride at +0x28
 writeQword(_params + 0x0, DamageCauser_Actor)
 writeQword(_params + 0x8, Modifier)
 writeQword(_params + 0x20, owner_Object)
 writeQword(_params + 0x28, ContextOverride_Object)
 UE.CallProcessEventEx(DamageCauser_Actor, "RegisterDamageCauserModifier", _params);
 deAlloc(_params);
end
FNR("BL4.RegisterDamageCauserModifier");

BL4.RemoveHealthPool = function(Context_Actor, HealthType, Pool)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveHealthPool: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, HealthType at +0x8, Pool at +0x20
 writeQword(_params + 0x0, Context_Actor)
 writeQword(_params + 0x8, HealthType)
 writeQword(_params + 0x20, Pool)
 UE.CallProcessEventEx(Context_Actor, "RemoveHealthPool", _params);
 local RET=readByte(_params + 0x38);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RemoveHealthPool");

BL4.ResetHealthAndDamage = function(Context_Actor)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ResetHealthAndDamage: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0
 writeQword(_params + 0x0, Context_Actor)
 UE.CallProcessEventEx(Context_Actor, "ResetHealthAndDamage", _params);
 deAlloc(_params);
end
FNR("BL4.ResetHealthAndDamage");

BL4.ShouldBlockDamageLineOfSight = function(HitComponent_PrimitiveComponent)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ShouldBlockDamageLineOfSight: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: HitComponent at +0x0
 writeQword(_params + 0x0, HitComponent_PrimitiveComponent)
 UE.CallProcessEventEx(HitComponent_PrimitiveComponent, "ShouldBlockDamageLineOfSight", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ShouldBlockDamageLineOfSight");

BL4.StartHealthRegen = function(Context_Actor, Duration, RegenRate, bStopWhenFull, TickRate, HealthTags)
 local _paramsSize = 0x90
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StartHealthRegen: Failed To Allocate The Params");return;end;
 Duration = Duration or 0
 bStopWhenFull = bStopWhenFull or false
 TickRate = TickRate or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, Duration at +0x8, RegenRate at +0x10, bStopWhenFull at +0x60, TickRate at +0x64, HealthTags at +0x68
 writeQword(_params + 0x0, Context_Actor)
 writeFloat(_params + 0x8, Duration)
 writeQword(_params + 0x10, RegenRate)
 writeByte(_params + 0x60, bStopWhenFull)
 writeFloat(_params + 0x64, TickRate)
 writeQword(_params + 0x68, HealthTags)
 UE.CallProcessEventEx(Context_Actor, "StartHealthRegen", _params);
 local RET=readInteger(_params + 0x88);
 deAlloc(_params);
 return RET;
end
FNR("BL4.StartHealthRegen");

BL4.StopCausingAllDamage = function(DamageContextSource_Actor)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StopCausingAllDamage: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: DamageContextSource at +0x0
 writeQword(_params + 0x0, DamageContextSource_Actor)
 UE.CallProcessEventEx(DamageContextSource_Actor, "StopCausingAllDamage", _params);
 deAlloc(_params);
end
FNR("BL4.StopCausingAllDamage");

BL4.StopCausingAllDamageToTarget = function(DamageTarget_Actor)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StopCausingAllDamageToTarget: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: DamageTarget at +0x0
 writeQword(_params + 0x0, DamageTarget_Actor)
 UE.CallProcessEventEx(DamageTarget_Actor, "StopCausingAllDamageToTarget", _params);
 deAlloc(_params);
end
FNR("BL4.StopCausingAllDamageToTarget");

BL4.StopCausingDamage = function(DamageContextSource_Actor, DamageData)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StopCausingDamage: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DamageContextSource at +0x0, DamageData at +0x8
 writeQword(_params + 0x0, DamageContextSource_Actor)
 writeQword(_params + 0x8, DamageData)
 UE.CallProcessEventEx(DamageContextSource_Actor, "StopCausingDamage", _params);
 deAlloc(_params);
end
FNR("BL4.StopCausingDamage");

BL4.StopCausingDamageToTarget = function(DamageContextSource_Actor, DamageTarget_Actor, DamageData)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StopCausingDamageToTarget: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DamageContextSource at +0x0, DamageTarget at +0x8, DamageData at +0x10
 writeQword(_params + 0x0, DamageContextSource_Actor)
 writeQword(_params + 0x8, DamageTarget_Actor)
 writeQword(_params + 0x10, DamageData)
 UE.CallProcessEventEx(DamageContextSource_Actor, "StopCausingDamageToTarget", _params);
 deAlloc(_params);
end
FNR("BL4.StopCausingDamageToTarget");

BL4.StopHealthRegen = function(Context_Actor, ID)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StopHealthRegen: Failed To Allocate The Params");return;end;
 ID = ID or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, ID at +0x8
 writeQword(_params + 0x0, Context_Actor)
 writeInteger(_params + 0x8, ID)
 UE.CallProcessEventEx(Context_Actor, "StopHealthRegen", _params);
 deAlloc(_params);
end
FNR("BL4.StopHealthRegen");

BL4.SubscribeToHealthDepletedEvent = function(OwnerContext_Object, Delegate)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SubscribeToHealthDepletedEvent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OwnerContext at +0x0, Delegate at +0x8
 writeQword(_params + 0x0, OwnerContext_Object)
 writeQword(_params + 0x8, Delegate)
 UE.CallProcessEventEx(OwnerContext_Object, "SubscribeToHealthDepletedEvent", _params);
 deAlloc(_params);
end
FNR("BL4.SubscribeToHealthDepletedEvent");

BL4.SubscribeToTakeDamageEvent = function(OwnerContext_Object, Delegate)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SubscribeToTakeDamageEvent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OwnerContext at +0x0, Delegate at +0x8
 writeQword(_params + 0x0, OwnerContext_Object)
 writeQword(_params + 0x8, Delegate)
 UE.CallProcessEventEx(OwnerContext_Object, "SubscribeToTakeDamageEvent", _params);
 deAlloc(_params);
end
FNR("BL4.SubscribeToTakeDamageEvent");

BL4.TriggerGore = function(Goreable_Actor, BoneName, DamageSeverity, HitDirection, HitForce)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TriggerGore: Failed To Allocate The Params");return;end;
 DamageSeverity = DamageSeverity or 0
 HitDirection = HitDirection or {X=0,Y=0,Z=0}
 HitForce = HitForce or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Goreable at +0x0, BoneName at +0x8, DamageSeverity at +0x10, HitDirection at +0x18, HitForce at +0x30
 writeQword(_params + 0x0, Goreable_Actor)
 writeQword(_params + 0x8, BoneName)
 writeFloat(_params + 0x10, DamageSeverity)
 writeDouble(_params + 0x18, (HitDirection and HitDirection.X) or 0)
 writeDouble(_params + 0x20, (HitDirection and HitDirection.Y) or 0)
 writeDouble(_params + 0x28, (HitDirection and HitDirection.Z) or 0)
 writeDouble(_params + 0x30, (HitForce and HitForce.X) or 0)
 writeDouble(_params + 0x38, (HitForce and HitForce.Y) or 0)
 writeDouble(_params + 0x40, (HitForce and HitForce.Z) or 0)
 UE.CallProcessEventEx(Goreable_Actor, "TriggerGore", _params);
 deAlloc(_params);
end
FNR("BL4.TriggerGore");

BL4.TryWaterExplosion = function(instigator_Actor, SourceActor_Actor, Radius)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TryWaterExplosion: Failed To Allocate The Params");return;end;
 Radius = Radius or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: instigator at +0x0, SourceActor at +0x8, Radius at +0x10
 writeQword(_params + 0x0, instigator_Actor)
 writeQword(_params + 0x8, SourceActor_Actor)
 writeFloat(_params + 0x10, Radius)
 UE.CallProcessEventEx(instigator_Actor, "TryWaterExplosion", _params);
 deAlloc(_params);
end
FNR("BL4.TryWaterExplosion");

BL4.UnbindHealthPoolSegmentStateEvent = function(Context_Actor, layer, State, DelegateHandle)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnbindHealthPoolSegmentStateEvent: Failed To Allocate The Params");return;end;
 layer = layer or 0
 State = State or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, layer at +0x8, State at +0xC, DelegateHandle at +0x10
 writeQword(_params + 0x0, Context_Actor)
 writeInteger(_params + 0x8, layer)
 writeByte(_params + 0xC, State)
 writeQword(_params + 0x10, DelegateHandle)
 UE.CallProcessEventEx(Context_Actor, "UnbindHealthPoolSegmentStateEvent", _params);
 deAlloc(_params);
end
FNR("BL4.UnbindHealthPoolSegmentStateEvent");

BL4.UnbindHealthPoolStateEvent = function(Context_Actor, layer, State, DelegateHandle)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnbindHealthPoolStateEvent: Failed To Allocate The Params");return;end;
 layer = layer or 0
 State = State or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, layer at +0x8, State at +0xC, DelegateHandle at +0x10
 writeQword(_params + 0x0, Context_Actor)
 writeInteger(_params + 0x8, layer)
 writeByte(_params + 0xC, State)
 writeQword(_params + 0x10, DelegateHandle)
 UE.CallProcessEventEx(Context_Actor, "UnbindHealthPoolStateEvent", _params);
 deAlloc(_params);
end
FNR("BL4.UnbindHealthPoolStateEvent");

BL4.UnregisterDamageableModifier = function(Damageable_Actor, Modifier, owner_Object)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnregisterDamageableModifier: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Damageable at +0x0, Modifier at +0x8, owner at +0x20
 writeQword(_params + 0x0, Damageable_Actor)
 writeQword(_params + 0x8, Modifier)
 writeQword(_params + 0x20, owner_Object)
 UE.CallProcessEventEx(Damageable_Actor, "UnregisterDamageableModifier", _params);
 deAlloc(_params);
end
FNR("BL4.UnregisterDamageableModifier");

BL4.UnregisterDamageCauserModifier = function(DamageCauser_Actor, Modifier, owner_Object)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnregisterDamageCauserModifier: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DamageCauser at +0x0, Modifier at +0x8, owner at +0x20
 writeQword(_params + 0x0, DamageCauser_Actor)
 writeQword(_params + 0x8, Modifier)
 writeQword(_params + 0x20, owner_Object)
 UE.CallProcessEventEx(DamageCauser_Actor, "UnregisterDamageCauserModifier", _params);
 deAlloc(_params);
end
FNR("BL4.UnregisterDamageCauserModifier");

BL4.UnsubscribeFromHealthDepletedEvent = function(OwnerContext_Object, Delegate)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnsubscribeFromHealthDepletedEvent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OwnerContext at +0x0, Delegate at +0x8
 writeQword(_params + 0x0, OwnerContext_Object)
 writeQword(_params + 0x8, Delegate)
 UE.CallProcessEventEx(OwnerContext_Object, "UnsubscribeFromHealthDepletedEvent", _params);
 deAlloc(_params);
end
FNR("BL4.UnsubscribeFromHealthDepletedEvent");

BL4.UnsubscribeFromTakeDamageEvent = function(OwnerContext_Object, Delegate)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnsubscribeFromTakeDamageEvent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OwnerContext at +0x0, Delegate at +0x8
 writeQword(_params + 0x0, OwnerContext_Object)
 writeQword(_params + 0x8, Delegate)
 UE.CallProcessEventEx(OwnerContext_Object, "UnsubscribeFromTakeDamageEvent", _params);
 deAlloc(_params);
end
FNR("BL4.UnsubscribeFromTakeDamageEvent");

