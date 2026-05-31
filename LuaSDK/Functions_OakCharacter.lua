BL4.AddCharacterCombatStyles = function(OwnerAddress, CombatStyles)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddCharacterCombatStyles: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CombatStyles at +0x0
 writeQword(_params + 0x0, CombatStyles)
 UE.CallProcessEventEx(OwnerAddress, "AddCharacterCombatStyles", _params);
 deAlloc(_params);
end
FNR("BL4.AddCharacterCombatStyles");

BL4.AddCharacterImmunities = function(OwnerAddress, Immunities)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddCharacterImmunities: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Immunities at +0x0
 writeQword(_params + 0x0, Immunities)
 UE.CallProcessEventEx(OwnerAddress, "AddCharacterImmunities", _params);
 deAlloc(_params);
end
FNR("BL4.AddCharacterImmunities");

BL4.AddToAdditionalLoot = function(OwnerAddress, LootToAdd)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddToAdditionalLoot: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: LootToAdd at +0x0
 writeQword(_params + 0x0, LootToAdd)
 UE.CallProcessEventEx(OwnerAddress, "AddToAdditionalLoot", _params);
 deAlloc(_params);
end
FNR("BL4.AddToAdditionalLoot");

BL4.ApplyFreezeFallDamage = function(OwnerAddress, Hit)
 local _paramsSize = 0x100
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ApplyFreezeFallDamage: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Hit at +0x0
 writeQword(_params + 0x0, Hit)
 UE.CallProcessEventEx(OwnerAddress, "ApplyFreezeFallDamage", _params);
 deAlloc(_params);
end
FNR("BL4.ApplyFreezeFallDamage");

BL4.AttachRevivingDevice = function(OwnerAddress, CustomSocket)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AttachRevivingDevice: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: CustomSocket at +0x0
 writeQword(_params + 0x0, CustomSocket)
 UE.CallProcessEventEx(OwnerAddress, "AttachRevivingDevice", _params);
 deAlloc(_params);
end
FNR("BL4.AttachRevivingDevice");

BL4.AttemptBeginGroundSlam = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AttemptBeginGroundSlam: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "AttemptBeginGroundSlam", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AttemptBeginGroundSlam");

BL4.AttemptGroundSlam = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AttemptGroundSlam: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "AttemptGroundSlam", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AttemptGroundSlam");

BL4.BroadcastLevelUp = function(OwnerAddress, NewLevel)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BroadcastLevelUp: Failed To Allocate The Params");return;end;
 NewLevel = NewLevel or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewLevel at +0x0
 writeInteger(_params + 0x0, NewLevel)
 UE.CallProcessEventEx(OwnerAddress, "BroadcastLevelUp", _params);
 deAlloc(_params);
end
FNR("BL4.BroadcastLevelUp");

BL4.BroadcastSpecializationLevelUp = function(OwnerAddress, NewLevel)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BroadcastSpecializationLevelUp: Failed To Allocate The Params");return;end;
 NewLevel = NewLevel or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewLevel at +0x0
 writeInteger(_params + 0x0, NewLevel)
 UE.CallProcessEventEx(OwnerAddress, "BroadcastSpecializationLevelUp", _params);
 deAlloc(_params);
end
FNR("BL4.BroadcastSpecializationLevelUp");

BL4.CanBeCaptured = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CanBeCaptured: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "CanBeCaptured", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CanBeCaptured");

BL4.CanBeDowned = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CanBeDowned: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "CanBeDowned", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CanBeDowned");

BL4.CanZoomWhileInjured = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CanZoomWhileInjured: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "CanZoomWhileInjured", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CanZoomWhileInjured");

BL4.ClientLockWeaponActions = function(OwnerAddress, reason, ChannelsMask, bStopActions, bClearInput)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientLockWeaponActions: Failed To Allocate The Params");return;end;
 ChannelsMask = ChannelsMask or 0
 bStopActions = bStopActions or false
 bClearInput = bClearInput or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: reason at +0x0, ChannelsMask at +0x8, bStopActions at +0xC, bClearInput at +0xD
 writeQword(_params + 0x0, reason)
 writeInteger(_params + 0x8, ChannelsMask)
 writeByte(_params + 0xC, bStopActions)
 writeByte(_params + 0xD, bClearInput)
 UE.CallProcessEventEx(OwnerAddress, "ClientLockWeaponActions", _params);
 deAlloc(_params);
end
FNR("BL4.ClientLockWeaponActions");

BL4.ClientNotifyMeleeExecutionHostLockFailed = function(ExecutionTarget_Actor)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientNotifyMeleeExecutionHostLockFailed: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: ExecutionTarget at +0x0
 writeQword(_params + 0x0, ExecutionTarget_Actor)
 UE.CallProcessEventEx(ExecutionTarget_Actor, "ClientNotifyMeleeExecutionHostLockFailed", _params);
 deAlloc(_params);
end
FNR("BL4.ClientNotifyMeleeExecutionHostLockFailed");

BL4.ClientPlayAudioEvent = function(OwnerAddress, Event)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientPlayAudioEvent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Event at +0x0
 writeQword(_params + 0x0, Event)
 UE.CallProcessEventEx(OwnerAddress, "ClientPlayAudioEvent", _params);
 deAlloc(_params);
end
FNR("BL4.ClientPlayAudioEvent");

BL4.ClientSetActiveActionSkill = function(OwnerAddress, SkillDef)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientSetActiveActionSkill: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SkillDef at +0x0
 writeQword(_params + 0x0, SkillDef)
 UE.CallProcessEventEx(OwnerAddress, "ClientSetActiveActionSkill", _params);
 deAlloc(_params);
end
FNR("BL4.ClientSetActiveActionSkill");

BL4.ClientSetActiveWeaponEquipSlot = function(OwnerAddress, EquipSlotIndex)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientSetActiveWeaponEquipSlot: Failed To Allocate The Params");return;end;
 EquipSlotIndex = EquipSlotIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: EquipSlotIndex at +0x0
 writeInteger(_params + 0x0, EquipSlotIndex)
 UE.CallProcessEventEx(OwnerAddress, "ClientSetActiveWeaponEquipSlot", _params);
 deAlloc(_params);
end
FNR("BL4.ClientSetActiveWeaponEquipSlot");

BL4.ClientStopWeaponActions = function(OwnerAddress, slot, ChannelsMask, bClearInput)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientStopWeaponActions: Failed To Allocate The Params");return;end;
 slot = slot or 0
 ChannelsMask = ChannelsMask or 0
 bClearInput = bClearInput or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: slot at +0x0, ChannelsMask at +0x4, bClearInput at +0x8
 writeInteger(_params + 0x0, slot)
 writeInteger(_params + 0x4, ChannelsMask)
 writeByte(_params + 0x8, bClearInput)
 UE.CallProcessEventEx(OwnerAddress, "ClientStopWeaponActions", _params);
 deAlloc(_params);
end
FNR("BL4.ClientStopWeaponActions");

BL4.ClientUnlockWeaponActions = function(OwnerAddress, reason, ChannelsMask)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientUnlockWeaponActions: Failed To Allocate The Params");return;end;
 ChannelsMask = ChannelsMask or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: reason at +0x0, ChannelsMask at +0x8
 writeQword(_params + 0x0, reason)
 writeInteger(_params + 0x8, ChannelsMask)
 UE.CallProcessEventEx(OwnerAddress, "ClientUnlockWeaponActions", _params);
 deAlloc(_params);
end
FNR("BL4.ClientUnlockWeaponActions");

BL4.ClientWeaponChangeDuration = function(OwnerAddress, SwapDuration, OperationType, NewWeaponType)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientWeaponChangeDuration: Failed To Allocate The Params");return;end;
 SwapDuration = SwapDuration or 0
 OperationType = OperationType or 0
 NewWeaponType = NewWeaponType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: SwapDuration at +0x0, OperationType at +0x4, NewWeaponType at +0x5
 writeFloat(_params + 0x0, SwapDuration)
 writeByte(_params + 0x4, OperationType)
 writeByte(_params + 0x5, NewWeaponType)
 UE.CallProcessEventEx(OwnerAddress, "ClientWeaponChangeDuration", _params);
 deAlloc(_params);
end
FNR("BL4.ClientWeaponChangeDuration");

BL4.DEBUG_Server_AddOvershield = function(OwnerAddress, Amount)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DEBUG_Server_AddOvershield: Failed To Allocate The Params");return;end;
 Amount = Amount or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Amount at +0x0
 writeFloat(_params + 0x0, Amount)
 UE.CallProcessEventEx(OwnerAddress, "DEBUG_Server_AddOvershield", _params);
 deAlloc(_params);
end
FNR("BL4.DEBUG_Server_AddOvershield");

BL4.DeployEcho4 = function(OwnerAddress, LocationOptions, Echo4DeployCooldown, bUseOverrideRotation, OverrideRotation)
 local _paramsSize = 0x80
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DeployEcho4: Failed To Allocate The Params");return;end;
 Echo4DeployCooldown = Echo4DeployCooldown or 0
 bUseOverrideRotation = bUseOverrideRotation or false
 OverrideRotation = OverrideRotation or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: LocationOptions at +0x0, Echo4DeployCooldown at +0x60, bUseOverrideRotation at +0x64, OverrideRotation at +0x68
 writeQword(_params + 0x0, LocationOptions)
 writeFloat(_params + 0x60, Echo4DeployCooldown)
 writeByte(_params + 0x64, bUseOverrideRotation)
 writeDouble(_params + 0x68, (OverrideRotation and OverrideRotation.Pitch) or 0)
 writeDouble(_params + 0x70, (OverrideRotation and OverrideRotation.Yaw) or 0)
 writeDouble(_params + 0x78, (OverrideRotation and OverrideRotation.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "DeployEcho4", _params);
 deAlloc(_params);
end
FNR("BL4.DeployEcho4");

BL4.Die = function(OwnerAddress, type)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Die: Failed To Allocate The Params");return;end;
 type = type or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: type at +0x0
 writeByte(_params + 0x0, type)
 UE.CallProcessEventEx(OwnerAddress, "Die", _params);
 deAlloc(_params);
end
FNR("BL4.Die");

BL4.EquipAIInventoryItem = function(OwnerAddress, Identity, bReplaceExisting)
 local _paramsSize = 0xE0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EquipAIInventoryItem: Failed To Allocate The Params");return;end;
 bReplaceExisting = bReplaceExisting or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Identity at +0x0, bReplaceExisting at +0xD8
 writeQword(_params + 0x0, Identity)
 writeByte(_params + 0xD8, bReplaceExisting)
 UE.CallProcessEventEx(OwnerAddress, "EquipAIInventoryItem", _params);
 deAlloc(_params);
end
FNR("BL4.EquipAIInventoryItem");

BL4.freeze = function(OwnerAddress, bInstant)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.freeze: Failed To Allocate The Params");return;end;
 bInstant = bInstant or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInstant at +0x0
 writeByte(_params + 0x0, bInstant)
 UE.CallProcessEventEx(OwnerAddress, "freeze", _params);
 deAlloc(_params);
end
FNR("BL4.freeze");

BL4.GetAvatarSerialNumber = function(OwnerAddress, OutSerial)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAvatarSerialNumber: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OutSerial at +0x0
 writeQword(_params + 0x0, OutSerial)
 UE.CallProcessEventEx(OwnerAddress, "GetAvatarSerialNumber", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAvatarSerialNumber");

BL4.GetCharacterArmy = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCharacterArmy: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCharacterArmy", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCharacterArmy");

BL4.GetCharacterClan = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCharacterClan: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCharacterClan", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCharacterClan");

BL4.GetCharacterClassification = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCharacterClassification: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCharacterClassification", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCharacterClassification");

BL4.GetCharacterCombatStyles = function(OwnerAddress)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCharacterCombatStyles: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCharacterCombatStyles", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCharacterCombatStyles");

BL4.GetCharacterEnemyType = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCharacterEnemyType: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCharacterEnemyType", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCharacterEnemyType");

BL4.GetCharacterImmunities = function(OwnerAddress)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCharacterImmunities: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCharacterImmunities", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCharacterImmunities");

BL4.GetCharacterLocomotionStyle = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCharacterLocomotionStyle: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCharacterLocomotionStyle", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCharacterLocomotionStyle");

BL4.GetCharacterPerchUserType = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCharacterPerchUserType: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCharacterPerchUserType", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCharacterPerchUserType");

BL4.GetCharacterRank = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCharacterRank: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCharacterRank", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCharacterRank");

BL4.GetCharacterSize = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCharacterSize: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCharacterSize", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCharacterSize");

BL4.GetGrenadeGadget = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetGrenadeGadget: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetGrenadeGadget", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetGrenadeGadget");

BL4.GetGroupTeamHandle = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetGroupTeamHandle: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetGroupTeamHandle", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetGroupTeamHandle");

BL4.GetSerialNumber = function(OwnerAddress, InChannel, OutSerial)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSerialNumber: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InChannel at +0x0, OutSerial at +0x8
 writeQword(_params + 0x0, InChannel)
 writeQword(_params + 0x8, OutSerial)
 UE.CallProcessEventEx(OwnerAddress, "GetSerialNumber", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSerialNumber");

BL4.GetShowPipOnRadar = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetShowPipOnRadar: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetShowPipOnRadar", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetShowPipOnRadar");

BL4.GetSpawnedTerminalCharacteristics = function(OwnerAddress, position, Radius, Height)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSpawnedTerminalCharacteristics: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0,Z=0}
 Radius = Radius or 0
 Height = Height or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: position at +0x0, Radius at +0x18, Height at +0x1C
 writeDouble(_params + 0x0, (position and position.X) or 0)
 writeDouble(_params + 0x8, (position and position.Y) or 0)
 writeDouble(_params + 0x10, (position and position.Z) or 0)
 writeFloat(_params + 0x18, Radius)
 writeFloat(_params + 0x1C, Height)
 UE.CallProcessEventEx(OwnerAddress, "GetSpawnedTerminalCharacteristics", _params);
 deAlloc(_params);
end
FNR("BL4.GetSpawnedTerminalCharacteristics");

BL4.GetSwimmingAreaType = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSwimmingAreaType: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetSwimmingAreaType", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSwimmingAreaType");

BL4.GetTitleCardSerialNumber = function(OwnerAddress, OutSerial)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTitleCardSerialNumber: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OutSerial at +0x0
 writeQword(_params + 0x0, OutSerial)
 UE.CallProcessEventEx(OwnerAddress, "GetTitleCardSerialNumber", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTitleCardSerialNumber");

BL4.InDownState = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InDownState: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "InDownState", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.InDownState");

BL4.InterruptEquipmentActions = function(OwnerAddress, ChannelsMask)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InterruptEquipmentActions: Failed To Allocate The Params");return;end;
 ChannelsMask = ChannelsMask or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: ChannelsMask at +0x0
 writeInteger(_params + 0x0, ChannelsMask)
 UE.CallProcessEventEx(OwnerAddress, "InterruptEquipmentActions", _params);
 deAlloc(_params);
end
FNR("BL4.InterruptEquipmentActions");

BL4.IsBeingCaptured = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsBeingCaptured: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsBeingCaptured", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsBeingCaptured");

BL4.IsBeingRevived = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsBeingRevived: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsBeingRevived", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsBeingRevived");

BL4.IsCharacterDashing = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsCharacterDashing: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsCharacterDashing", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsCharacterDashing");

BL4.IsCharacterMoving = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsCharacterMoving: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsCharacterMoving", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsCharacterMoving");

BL4.IsDead = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsDead: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsDead", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsDead");

BL4.IsHaunted = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsHaunted: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsHaunted", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsHaunted");

BL4.IsHauntedBy = function(HauntOwner_OakCharacter)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsHauntedBy: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: HauntOwner at +0x0
 writeQword(_params + 0x0, HauntOwner_OakCharacter)
 UE.CallProcessEventEx(HauntOwner_OakCharacter, "IsHauntedBy", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsHauntedBy");

BL4.IsHealthy = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsHealthy: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsHealthy", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsHealthy");

BL4.IsInjured = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsInjured: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsInjured", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsInjured");

BL4.IsPerformingAnyTypeOfGroundSlam = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsPerformingAnyTypeOfGroundSlam: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsPerformingAnyTypeOfGroundSlam", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsPerformingAnyTypeOfGroundSlam");

BL4.IsPerformingGroundSlam = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsPerformingGroundSlam: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsPerformingGroundSlam", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsPerformingGroundSlam");

BL4.IsResurrecting = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsResurrecting: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsResurrecting", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsResurrecting");

BL4.LockEquipmentActions = function(OwnerAddress, reason, ChannelsMask, bReplicate)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LockEquipmentActions: Failed To Allocate The Params");return;end;
 ChannelsMask = ChannelsMask or 0
 bReplicate = bReplicate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: reason at +0x0, ChannelsMask at +0x8, bReplicate at +0xC
 writeQword(_params + 0x0, reason)
 writeInteger(_params + 0x8, ChannelsMask)
 writeByte(_params + 0xC, bReplicate)
 UE.CallProcessEventEx(OwnerAddress, "LockEquipmentActions", _params);
 deAlloc(_params);
end
FNR("BL4.LockEquipmentActions");

BL4.LockFreeze = function(OwnerAddress, reason, Block)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LockFreeze: Failed To Allocate The Params");return;end;
 Block = Block or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: reason at +0x0, Block at +0x8
 writeQword(_params + 0x0, reason)
 writeByte(_params + 0x8, Block)
 UE.CallProcessEventEx(OwnerAddress, "LockFreeze", _params);
 deAlloc(_params);
end
FNR("BL4.LockFreeze");

BL4.LockFreezeSkirt = function(OwnerAddress, reason, Block)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LockFreezeSkirt: Failed To Allocate The Params");return;end;
 Block = Block or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: reason at +0x0, Block at +0x8
 writeQword(_params + 0x0, reason)
 writeByte(_params + 0x8, Block)
 UE.CallProcessEventEx(OwnerAddress, "LockFreezeSkirt", _params);
 deAlloc(_params);
end
FNR("BL4.LockFreezeSkirt");

BL4.NotifyCanUseRepairKit = function(OwnerAddress, bCanUse)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotifyCanUseRepairKit: Failed To Allocate The Params");return;end;
 bCanUse = bCanUse or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bCanUse at +0x0
 writeByte(_params + 0x0, bCanUse)
 UE.CallProcessEventEx(OwnerAddress, "NotifyCanUseRepairKit", _params);
 deAlloc(_params);
end
FNR("BL4.NotifyCanUseRepairKit");

BL4.OnGrappleBeamFinished = function(FinishedComponent_FXSystemComponent)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnGrappleBeamFinished: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: FinishedComponent at +0x0
 writeQword(_params + 0x0, FinishedComponent_FXSystemComponent)
 UE.CallProcessEventEx(FinishedComponent_FXSystemComponent, "OnGrappleBeamFinished", _params);
 deAlloc(_params);
end
FNR("BL4.OnGrappleBeamFinished");

BL4.OnGrappleMovementModeChanged = function(Character, PrevMovementMode, PreviousCustomMode)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnGrappleMovementModeChanged: Failed To Allocate The Params");return;end;
 PrevMovementMode = PrevMovementMode or 0
 PreviousCustomMode = PreviousCustomMode or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Character at +0x0, PrevMovementMode at +0x8, PreviousCustomMode at +0x9
 writeQword(_params + 0x0, Character)
 writeByte(_params + 0x8, PrevMovementMode)
 writeByte(_params + 0x9, PreviousCustomMode)
 UE.CallProcessEventEx(Character, "OnGrappleMovementModeChanged", _params);
 deAlloc(_params);
end
FNR("BL4.OnGrappleMovementModeChanged");

BL4.OnRep_EquipmentLocks = function(OwnerAddress, PrevLocks)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnRep_EquipmentLocks: Failed To Allocate The Params");return;end;
 PrevLocks = PrevLocks or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PrevLocks at +0x0
 writeInteger(_params + 0x0, PrevLocks)
 UE.CallProcessEventEx(OwnerAddress, "OnRep_EquipmentLocks", _params);
 deAlloc(_params);
end
FNR("BL4.OnRep_EquipmentLocks");

BL4.OnRep_ReplicatedCarrierState = function(OwnerAddress, PrevCarrierState)
 local _paramsSize = 0x80
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnRep_ReplicatedCarrierState: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PrevCarrierState at +0x0
 writeQword(_params + 0x0, PrevCarrierState)
 UE.CallProcessEventEx(OwnerAddress, "OnRep_ReplicatedCarrierState", _params);
 deAlloc(_params);
end
FNR("BL4.OnRep_ReplicatedCarrierState");

BL4.OnRep_WeaponTargetLocks = function(OwnerAddress, PrevWeaponTargetLocks)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnRep_WeaponTargetLocks: Failed To Allocate The Params");return;end;
 PrevWeaponTargetLocks = PrevWeaponTargetLocks or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PrevWeaponTargetLocks at +0x0
 writeByte(_params + 0x0, PrevWeaponTargetLocks)
 UE.CallProcessEventEx(OwnerAddress, "OnRep_WeaponTargetLocks", _params);
 deAlloc(_params);
end
FNR("BL4.OnRep_WeaponTargetLocks");

BL4.PauseDownStateTimer = function(OwnerAddress, bPaused, reason)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PauseDownStateTimer: Failed To Allocate The Params");return;end;
 bPaused = bPaused or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bPaused at +0x0, reason at +0x4
 writeByte(_params + 0x0, bPaused)
 writeQword(_params + 0x4, reason)
 UE.CallProcessEventEx(OwnerAddress, "PauseDownStateTimer", _params);
 deAlloc(_params);
end
FNR("BL4.PauseDownStateTimer");

BL4.PossessedBySkill = function(PossessingActor_Actor)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PossessedBySkill: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PossessingActor at +0x0
 writeQword(_params + 0x0, PossessingActor_Actor)
 UE.CallProcessEventEx(PossessingActor_Actor, "PossessedBySkill", _params);
 deAlloc(_params);
end
FNR("BL4.PossessedBySkill");

BL4.RegisterCompanion = function(Companion_Actor)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RegisterCompanion: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Companion at +0x0
 writeQword(_params + 0x0, Companion_Actor)
 UE.CallProcessEventEx(Companion_Actor, "RegisterCompanion", _params);
 deAlloc(_params);
end
FNR("BL4.RegisterCompanion");

BL4.RemoveCharacterCombatStyles = function(OwnerAddress, CombatStyles)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveCharacterCombatStyles: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CombatStyles at +0x0
 writeQword(_params + 0x0, CombatStyles)
 UE.CallProcessEventEx(OwnerAddress, "RemoveCharacterCombatStyles", _params);
 deAlloc(_params);
end
FNR("BL4.RemoveCharacterCombatStyles");

BL4.RemoveCharacterImmunities = function(OwnerAddress, Immunities)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveCharacterImmunities: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Immunities at +0x0
 writeQword(_params + 0x0, Immunities)
 UE.CallProcessEventEx(OwnerAddress, "RemoveCharacterImmunities", _params);
 deAlloc(_params);
end
FNR("BL4.RemoveCharacterImmunities");

BL4.ServerLockWeaponActions = function(OwnerAddress, reason, ChannelsMask, bStopActions, bClearInput)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerLockWeaponActions: Failed To Allocate The Params");return;end;
 ChannelsMask = ChannelsMask or 0
 bStopActions = bStopActions or false
 bClearInput = bClearInput or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: reason at +0x0, ChannelsMask at +0x8, bStopActions at +0xC, bClearInput at +0xD
 writeQword(_params + 0x0, reason)
 writeInteger(_params + 0x8, ChannelsMask)
 writeByte(_params + 0xC, bStopActions)
 writeByte(_params + 0xD, bClearInput)
 UE.CallProcessEventEx(OwnerAddress, "ServerLockWeaponActions", _params);
 deAlloc(_params);
end
FNR("BL4.ServerLockWeaponActions");

BL4.ServerPerformSpecificMelee = function(OwnerAddress, InMeleeDefIdentifier, InTargetActor_Actor, bInCanCloseInToTarget)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerPerformSpecificMelee: Failed To Allocate The Params");return;end;
 bInCanCloseInToTarget = bInCanCloseInToTarget or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InMeleeDefIdentifier at +0x0, InTargetActor at +0x28, bInCanCloseInToTarget at +0x30
 writeQword(_params + 0x0, InMeleeDefIdentifier)
 writeQword(_params + 0x28, InTargetActor_Actor)
 writeByte(_params + 0x30, bInCanCloseInToTarget)
 UE.CallProcessEventEx(OwnerAddress, "ServerPerformSpecificMelee", _params);
 deAlloc(_params);
end
FNR("BL4.ServerPerformSpecificMelee");

BL4.ServerSetCurrentWeapon = function(NewWeapon_Weapon, slot, PutDownType, EquipType, ClientActiveSlotIndex)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerSetCurrentWeapon: Failed To Allocate The Params");return;end;
 slot = slot or 0
 PutDownType = PutDownType or 0
 EquipType = EquipType or 0
 ClientActiveSlotIndex = ClientActiveSlotIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewWeapon at +0x0, slot at +0x8, PutDownType at +0xC, EquipType at +0xD, ClientActiveSlotIndex at +0x10
 writeQword(_params + 0x0, NewWeapon_Weapon)
 writeInteger(_params + 0x8, slot)
 writeByte(_params + 0xC, PutDownType)
 writeByte(_params + 0xD, EquipType)
 writeInteger(_params + 0x10, ClientActiveSlotIndex)
 UE.CallProcessEventEx(NewWeapon_Weapon, "ServerSetCurrentWeapon", _params);
 deAlloc(_params);
end
FNR("BL4.ServerSetCurrentWeapon");

BL4.ServerSetIsAnyMenuOpen = function(OwnerAddress, bInIsAnyMenuOpen)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerSetIsAnyMenuOpen: Failed To Allocate The Params");return;end;
 bInIsAnyMenuOpen = bInIsAnyMenuOpen or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInIsAnyMenuOpen at +0x0
 writeByte(_params + 0x0, bInIsAnyMenuOpen)
 UE.CallProcessEventEx(OwnerAddress, "ServerSetIsAnyMenuOpen", _params);
 deAlloc(_params);
end
FNR("BL4.ServerSetIsAnyMenuOpen");

BL4.ServerSetWantsWeaponLowered = function(OwnerAddress, InFlags)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerSetWantsWeaponLowered: Failed To Allocate The Params");return;end;
 InFlags = InFlags or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InFlags at +0x0
 writeByte(_params + 0x0, InFlags)
 UE.CallProcessEventEx(OwnerAddress, "ServerSetWantsWeaponLowered", _params);
 deAlloc(_params);
end
FNR("BL4.ServerSetWantsWeaponLowered");

BL4.ServerSetZoomState = function(OwnerAddress, InState, InLevel, ZoomStartOffset)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerSetZoomState: Failed To Allocate The Params");return;end;
 InState = InState or 0
 InLevel = InLevel or 0
 ZoomStartOffset = ZoomStartOffset or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InState at +0x0, InLevel at +0x1, ZoomStartOffset at +0x4
 writeByte(_params + 0x0, InState)
 writeByte(_params + 0x1, InLevel)
 writeFloat(_params + 0x4, ZoomStartOffset)
 UE.CallProcessEventEx(OwnerAddress, "ServerSetZoomState", _params);
 deAlloc(_params);
end
FNR("BL4.ServerSetZoomState");

BL4.ServerStopUsingGadget = function(OwnerAddress, bForced, bInstantly, target)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerStopUsingGadget: Failed To Allocate The Params");return;end;
 bForced = bForced or false
 bInstantly = bInstantly or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bForced at +0x0, bInstantly at +0x1, target at +0x8
 writeByte(_params + 0x0, bForced)
 writeByte(_params + 0x1, bInstantly)
 writeQword(_params + 0x8, target)
 UE.CallProcessEventEx(OwnerAddress, "ServerStopUsingGadget", _params);
 deAlloc(_params);
end
FNR("BL4.ServerStopUsingGadget");

BL4.ServerStopWeaponActions = function(OwnerAddress, slot, ChannelsMask, bClearInput)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerStopWeaponActions: Failed To Allocate The Params");return;end;
 slot = slot or 0
 ChannelsMask = ChannelsMask or 0
 bClearInput = bClearInput or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: slot at +0x0, ChannelsMask at +0x4, bClearInput at +0x8
 writeInteger(_params + 0x0, slot)
 writeInteger(_params + 0x4, ChannelsMask)
 writeByte(_params + 0x8, bClearInput)
 UE.CallProcessEventEx(OwnerAddress, "ServerStopWeaponActions", _params);
 deAlloc(_params);
end
FNR("BL4.ServerStopWeaponActions");

BL4.ServerUnlockWeaponActions = function(OwnerAddress, reason, ChannelsMask)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerUnlockWeaponActions: Failed To Allocate The Params");return;end;
 ChannelsMask = ChannelsMask or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: reason at +0x0, ChannelsMask at +0x8
 writeQword(_params + 0x0, reason)
 writeInteger(_params + 0x8, ChannelsMask)
 UE.CallProcessEventEx(OwnerAddress, "ServerUnlockWeaponActions", _params);
 deAlloc(_params);
end
FNR("BL4.ServerUnlockWeaponActions");

BL4.SetAvatarSerialNumber = function(OwnerAddress, WithSerial)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAvatarSerialNumber: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WithSerial at +0x0
 writeQword(_params + 0x0, WithSerial)
 UE.CallProcessEventEx(OwnerAddress, "SetAvatarSerialNumber", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetAvatarSerialNumber");

BL4.SetCanBeCaptured = function(OwnerAddress, bEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCanBeCaptured: Failed To Allocate The Params");return;end;
 bEnabled = bEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnabled at +0x0
 writeByte(_params + 0x0, bEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetCanBeCaptured", _params);
 deAlloc(_params);
end
FNR("BL4.SetCanBeCaptured");

BL4.SetCanBeDowned = function(OwnerAddress, bEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCanBeDowned: Failed To Allocate The Params");return;end;
 bEnabled = bEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnabled at +0x0
 writeByte(_params + 0x0, bEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetCanBeDowned", _params);
 deAlloc(_params);
end
FNR("BL4.SetCanBeDowned");

BL4.SetCharacterArmy = function(OwnerAddress, Army)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCharacterArmy: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Army at +0x0
 writeQword(_params + 0x0, Army)
 UE.CallProcessEventEx(OwnerAddress, "SetCharacterArmy", _params);
 deAlloc(_params);
end
FNR("BL4.SetCharacterArmy");

BL4.SetCharacterClan = function(OwnerAddress, Clan)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCharacterClan: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Clan at +0x0
 writeQword(_params + 0x0, Clan)
 UE.CallProcessEventEx(OwnerAddress, "SetCharacterClan", _params);
 deAlloc(_params);
end
FNR("BL4.SetCharacterClan");

BL4.SetCharacterClassification = function(OwnerAddress, Classification)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCharacterClassification: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Classification at +0x0
 writeQword(_params + 0x0, Classification)
 UE.CallProcessEventEx(OwnerAddress, "SetCharacterClassification", _params);
 deAlloc(_params);
end
FNR("BL4.SetCharacterClassification");

BL4.SetCharacterCombatStyles = function(OwnerAddress, CombatStyles)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCharacterCombatStyles: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CombatStyles at +0x0
 writeQword(_params + 0x0, CombatStyles)
 UE.CallProcessEventEx(OwnerAddress, "SetCharacterCombatStyles", _params);
 deAlloc(_params);
end
FNR("BL4.SetCharacterCombatStyles");

BL4.SetCharacterEnemyType = function(OwnerAddress, EnemyType)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCharacterEnemyType: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: EnemyType at +0x0
 writeQword(_params + 0x0, EnemyType)
 UE.CallProcessEventEx(OwnerAddress, "SetCharacterEnemyType", _params);
 deAlloc(_params);
end
FNR("BL4.SetCharacterEnemyType");

BL4.SetCharacterImmunities = function(OwnerAddress, Immunities)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCharacterImmunities: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Immunities at +0x0
 writeQword(_params + 0x0, Immunities)
 UE.CallProcessEventEx(OwnerAddress, "SetCharacterImmunities", _params);
 deAlloc(_params);
end
FNR("BL4.SetCharacterImmunities");

BL4.SetCharacterLocomotionStyle = function(OwnerAddress, LocomotionStyle)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCharacterLocomotionStyle: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: LocomotionStyle at +0x0
 writeQword(_params + 0x0, LocomotionStyle)
 UE.CallProcessEventEx(OwnerAddress, "SetCharacterLocomotionStyle", _params);
 deAlloc(_params);
end
FNR("BL4.SetCharacterLocomotionStyle");

BL4.SetCharacterPerchUserType = function(OwnerAddress, PerchUserType)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCharacterPerchUserType: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PerchUserType at +0x0
 writeQword(_params + 0x0, PerchUserType)
 UE.CallProcessEventEx(OwnerAddress, "SetCharacterPerchUserType", _params);
 deAlloc(_params);
end
FNR("BL4.SetCharacterPerchUserType");

BL4.SetCharacterRank = function(OwnerAddress, Rank)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCharacterRank: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Rank at +0x0
 writeQword(_params + 0x0, Rank)
 UE.CallProcessEventEx(OwnerAddress, "SetCharacterRank", _params);
 deAlloc(_params);
end
FNR("BL4.SetCharacterRank");

BL4.SetCharacterSize = function(OwnerAddress, Size)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCharacterSize: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Size at +0x0
 writeQword(_params + 0x0, Size)
 UE.CallProcessEventEx(OwnerAddress, "SetCharacterSize", _params);
 deAlloc(_params);
end
FNR("BL4.SetCharacterSize");

BL4.SetHeavyWeaponGadgetLock = function(OwnerAddress, bLocked, reason)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetHeavyWeaponGadgetLock: Failed To Allocate The Params");return;end;
 bLocked = bLocked or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bLocked at +0x0, reason at +0x4
 writeByte(_params + 0x0, bLocked)
 writeQword(_params + 0x4, reason)
 UE.CallProcessEventEx(OwnerAddress, "SetHeavyWeaponGadgetLock", _params);
 deAlloc(_params);
end
FNR("BL4.SetHeavyWeaponGadgetLock");

BL4.SetInventoryAugmentEffects = function(OwnerAddress, Flags, bEnabled, reason)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetInventoryAugmentEffects: Failed To Allocate The Params");return;end;
 Flags = Flags or 0
 bEnabled = bEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Flags at +0x0, bEnabled at +0x4, reason at +0x8
 writeInteger(_params + 0x0, Flags)
 writeByte(_params + 0x4, bEnabled)
 writeQword(_params + 0x8, reason)
 UE.CallProcessEventEx(OwnerAddress, "SetInventoryAugmentEffects", _params);
 deAlloc(_params);
end
FNR("BL4.SetInventoryAugmentEffects");

BL4.SetIsEntangled = function(OwnerAddress, InIsEntangled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetIsEntangled: Failed To Allocate The Params");return;end;
 InIsEntangled = InIsEntangled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InIsEntangled at +0x0
 writeByte(_params + 0x0, InIsEntangled)
 UE.CallProcessEventEx(OwnerAddress, "SetIsEntangled", _params);
 deAlloc(_params);
end
FNR("BL4.SetIsEntangled");

BL4.SetOneHandEquipLock = function(OwnerAddress, bLocked, reason)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetOneHandEquipLock: Failed To Allocate The Params");return;end;
 bLocked = bLocked or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bLocked at +0x0, reason at +0x4
 writeByte(_params + 0x0, bLocked)
 writeQword(_params + 0x4, reason)
 UE.CallProcessEventEx(OwnerAddress, "SetOneHandEquipLock", _params);
 deAlloc(_params);
end
FNR("BL4.SetOneHandEquipLock");

BL4.SetOneHandWeaponActionLock = function(OwnerAddress, bLocked, reason)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetOneHandWeaponActionLock: Failed To Allocate The Params");return;end;
 bLocked = bLocked or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bLocked at +0x0, reason at +0x4
 writeByte(_params + 0x0, bLocked)
 writeQword(_params + 0x4, reason)
 UE.CallProcessEventEx(OwnerAddress, "SetOneHandWeaponActionLock", _params);
 deAlloc(_params);
end
FNR("BL4.SetOneHandWeaponActionLock");

BL4.SetOverrideUXName = function(OwnerAddress, InName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetOverrideUXName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InName at +0x0
 writeQword(_params + 0x0, InName)
 UE.CallProcessEventEx(OwnerAddress, "SetOverrideUXName", _params);
 deAlloc(_params);
end
FNR("BL4.SetOverrideUXName");

BL4.SetRandomUXName = function(OwnerAddress, InName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRandomUXName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InName at +0x0
 writeQword(_params + 0x0, InName)
 UE.CallProcessEventEx(OwnerAddress, "SetRandomUXName", _params);
 deAlloc(_params);
end
FNR("BL4.SetRandomUXName");

BL4.SetShowPipOnRadar = function(OwnerAddress, InShowPipOnRadar)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetShowPipOnRadar: Failed To Allocate The Params");return;end;
 InShowPipOnRadar = InShowPipOnRadar or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InShowPipOnRadar at +0x0
 writeByte(_params + 0x0, InShowPipOnRadar)
 UE.CallProcessEventEx(OwnerAddress, "SetShowPipOnRadar", _params);
 deAlloc(_params);
end
FNR("BL4.SetShowPipOnRadar");

BL4.SetTitleCardSerialNumber = function(OwnerAddress, WithSerial)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTitleCardSerialNumber: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WithSerial at +0x0
 writeQword(_params + 0x0, WithSerial)
 UE.CallProcessEventEx(OwnerAddress, "SetTitleCardSerialNumber", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetTitleCardSerialNumber");

BL4.SetTwoHandWeaponActionLock = function(OwnerAddress, bLocked, reason)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTwoHandWeaponActionLock: Failed To Allocate The Params");return;end;
 bLocked = bLocked or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bLocked at +0x0, reason at +0x4
 writeByte(_params + 0x0, bLocked)
 writeQword(_params + 0x4, reason)
 UE.CallProcessEventEx(OwnerAddress, "SetTwoHandWeaponActionLock", _params);
 deAlloc(_params);
end
FNR("BL4.SetTwoHandWeaponActionLock");

BL4.SetUXName = function(OwnerAddress, InName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetUXName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InName at +0x0
 writeQword(_params + 0x0, InName)
 UE.CallProcessEventEx(OwnerAddress, "SetUXName", _params);
 deAlloc(_params);
end
FNR("BL4.SetUXName");

BL4.SetWantsToDash = function(OwnerAddress, bNewWantsToDash, InDirection)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetWantsToDash: Failed To Allocate The Params");return;end;
 bNewWantsToDash = bNewWantsToDash or false
 InDirection = InDirection or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bNewWantsToDash at +0x0, InDirection at +0x1
 writeByte(_params + 0x0, bNewWantsToDash)
 writeByte(_params + 0x1, InDirection)
 UE.CallProcessEventEx(OwnerAddress, "SetWantsToDash", _params);
 deAlloc(_params);
end
FNR("BL4.SetWantsToDash");

BL4.StartDownState = function(OwnerAddress, bInstantDeath)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StartDownState: Failed To Allocate The Params");return;end;
 bInstantDeath = bInstantDeath or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInstantDeath at +0x0
 writeByte(_params + 0x0, bInstantDeath)
 UE.CallProcessEventEx(OwnerAddress, "StartDownState", _params);
 deAlloc(_params);
end
FNR("BL4.StartDownState");

BL4.StartHaunting = function(HauntOwner_OakCharacter)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StartHaunting: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: HauntOwner at +0x0
 writeQword(_params + 0x0, HauntOwner_OakCharacter)
 UE.CallProcessEventEx(HauntOwner_OakCharacter, "StartHaunting", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.StartHaunting");

BL4.StopDownState = function(OwnerAddress, reason)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StopDownState: Failed To Allocate The Params");return;end;
 reason = reason or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: reason at +0x0
 writeByte(_params + 0x0, reason)
 UE.CallProcessEventEx(OwnerAddress, "StopDownState", _params);
 deAlloc(_params);
end
FNR("BL4.StopDownState");

BL4.StopHaunting = function(HauntOwner_OakCharacter)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StopHaunting: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: HauntOwner at +0x0
 writeQword(_params + 0x0, HauntOwner_OakCharacter)
 UE.CallProcessEventEx(HauntOwner_OakCharacter, "StopHaunting", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.StopHaunting");

BL4.SuppressDropOnDeathItemPools = function(OwnerAddress, bSuppress, LootPoolTypeToSuppress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SuppressDropOnDeathItemPools: Failed To Allocate The Params");return;end;
 bSuppress = bSuppress or false
 LootPoolTypeToSuppress = LootPoolTypeToSuppress or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bSuppress at +0x0, LootPoolTypeToSuppress at +0x1
 writeByte(_params + 0x0, bSuppress)
 writeByte(_params + 0x1, LootPoolTypeToSuppress)
 UE.CallProcessEventEx(OwnerAddress, "SuppressDropOnDeathItemPools", _params);
 deAlloc(_params);
end
FNR("BL4.SuppressDropOnDeathItemPools");

BL4.SwitchToAIWeapon = function(OwnerAddress, WeaponSlotIndex, bInstantSwitch)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SwitchToAIWeapon: Failed To Allocate The Params");return;end;
 WeaponSlotIndex = WeaponSlotIndex or 0
 bInstantSwitch = bInstantSwitch or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: WeaponSlotIndex at +0x0, bInstantSwitch at +0x4
 writeInteger(_params + 0x0, WeaponSlotIndex)
 writeByte(_params + 0x4, bInstantSwitch)
 UE.CallProcessEventEx(OwnerAddress, "SwitchToAIWeapon", _params);
 deAlloc(_params);
end
FNR("BL4.SwitchToAIWeapon");

BL4.ToggleForcedUnderwaterBuoyancy = function(OwnerAddress, bEnable, BuoyancyForce)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ToggleForcedUnderwaterBuoyancy: Failed To Allocate The Params");return;end;
 bEnable = bEnable or false
 BuoyancyForce = BuoyancyForce or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnable at +0x0, BuoyancyForce at +0x4
 writeByte(_params + 0x0, bEnable)
 writeFloat(_params + 0x4, BuoyancyForce)
 UE.CallProcessEventEx(OwnerAddress, "ToggleForcedUnderwaterBuoyancy", _params);
 deAlloc(_params);
end
FNR("BL4.ToggleForcedUnderwaterBuoyancy");

BL4.UnlockEquipmentActions = function(OwnerAddress, reason, ChannelsMask, bReplicate)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnlockEquipmentActions: Failed To Allocate The Params");return;end;
 ChannelsMask = ChannelsMask or 0
 bReplicate = bReplicate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: reason at +0x0, ChannelsMask at +0x8, bReplicate at +0xC
 writeQword(_params + 0x0, reason)
 writeInteger(_params + 0x8, ChannelsMask)
 writeByte(_params + 0xC, bReplicate)
 UE.CallProcessEventEx(OwnerAddress, "UnlockEquipmentActions", _params);
 deAlloc(_params);
end
FNR("BL4.UnlockEquipmentActions");

BL4.UnregisterCompanion = function(Companion_Actor)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnregisterCompanion: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Companion at +0x0
 writeQword(_params + 0x0, Companion_Actor)
 UE.CallProcessEventEx(Companion_Actor, "UnregisterCompanion", _params);
 deAlloc(_params);
end
FNR("BL4.UnregisterCompanion");

BL4.WeaponEquipped = function(Weapon)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.WeaponEquipped: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Weapon at +0x0
 writeQword(_params + 0x0, Weapon)
 UE.CallProcessEventEx(Weapon, "WeaponEquipped", _params);
 deAlloc(_params);
end
FNR("BL4.WeaponEquipped");

BL4.WeaponPutDown = function(Weapon)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.WeaponPutDown: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Weapon at +0x0
 writeQword(_params + 0x0, Weapon)
 UE.CallProcessEventEx(Weapon, "WeaponPutDown", _params);
 deAlloc(_params);
end
FNR("BL4.WeaponPutDown");

BL4.WeaponRestrictionChanged = function(OwnerAddress, bRestricted)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.WeaponRestrictionChanged: Failed To Allocate The Params");return;end;
 bRestricted = bRestricted or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bRestricted at +0x0
 writeByte(_params + 0x0, bRestricted)
 UE.CallProcessEventEx(OwnerAddress, "WeaponRestrictionChanged", _params);
 deAlloc(_params);
end
FNR("BL4.WeaponRestrictionChanged");

