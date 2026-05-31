BL4.CameraTransition = function(OwnerAddress, NewMode, Transition, BlendTimeOverride, bTeleport, bForceResetMode)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CameraTransition: Failed To Allocate The Params");return;end;
 BlendTimeOverride = BlendTimeOverride or 0
 bTeleport = bTeleport or false
 bForceResetMode = bForceResetMode or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewMode at +0x0, Transition at +0x8, BlendTimeOverride at +0x10, bTeleport at +0x14, bForceResetMode at +0x15
 writeQword(_params + 0x0, NewMode)
 writeQword(_params + 0x8, Transition)
 writeFloat(_params + 0x10, BlendTimeOverride)
 writeByte(_params + 0x14, bTeleport)
 writeByte(_params + 0x15, bForceResetMode)
 UE.CallProcessEventEx(OwnerAddress, "CameraTransition", _params);
 deAlloc(_params);
end
FNR("BL4.CameraTransition");

BL4.CanOpenStatusMenu = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CanOpenStatusMenu: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "CanOpenStatusMenu", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CanOpenStatusMenu");

BL4.Client_PlayEchoLog = function(OwnerAddress, InEchoLog)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Client_PlayEchoLog: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InEchoLog at +0x0
 writeQword(_params + 0x0, InEchoLog)
 UE.CallProcessEventEx(OwnerAddress, "Client_PlayEchoLog", _params);
 deAlloc(_params);
end
FNR("BL4.Client_PlayEchoLog");

BL4.Client_ShowDLCLockedMessage = function(OwnerAddress, InDLCIdent)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Client_ShowDLCLockedMessage: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InDLCIdent at +0x0
 writeQword(_params + 0x0, InDLCIdent)
 UE.CallProcessEventEx(OwnerAddress, "Client_ShowDLCLockedMessage", _params);
 deAlloc(_params);
end
FNR("BL4.Client_ShowDLCLockedMessage");

BL4.Client_ShowDLCUpsellDialogue = function(OwnerAddress, InDLCIdent)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Client_ShowDLCUpsellDialogue: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InDLCIdent at +0x0
 writeQword(_params + 0x0, InDLCIdent)
 UE.CallProcessEventEx(OwnerAddress, "Client_ShowDLCUpsellDialogue", _params);
 deAlloc(_params);
end
FNR("BL4.Client_ShowDLCUpsellDialogue");

BL4.Client_UnlockEchoLog = function(OwnerAddress, InEchoLog)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Client_UnlockEchoLog: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InEchoLog at +0x0
 writeQword(_params + 0x0, InEchoLog)
 UE.CallProcessEventEx(OwnerAddress, "Client_UnlockEchoLog", _params);
 deAlloc(_params);
end
FNR("BL4.Client_UnlockEchoLog");

BL4.ClientBroadcastPersonalVehiclePermission = function(OwnerAddress, Permission)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientBroadcastPersonalVehiclePermission: Failed To Allocate The Params");return;end;
 Permission = Permission or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Permission at +0x0
 writeByte(_params + 0x0, Permission)
 UE.CallProcessEventEx(OwnerAddress, "ClientBroadcastPersonalVehiclePermission", _params);
 deAlloc(_params);
end
FNR("BL4.ClientBroadcastPersonalVehiclePermission");

BL4.ClientCallBlackMarketCooldownEvent = function(OwnerAddress, bEnded)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientCallBlackMarketCooldownEvent: Failed To Allocate The Params");return;end;
 bEnded = bEnded or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnded at +0x0
 writeByte(_params + 0x0, bEnded)
 UE.CallProcessEventEx(OwnerAddress, "ClientCallBlackMarketCooldownEvent", _params);
 deAlloc(_params);
end
FNR("BL4.ClientCallBlackMarketCooldownEvent");

BL4.ClientCallVendingMachineUsabilityFunction = function(VendingMachineActor_OakVendingMachine, FunctionType)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientCallVendingMachineUsabilityFunction: Failed To Allocate The Params");return;end;
 FunctionType = FunctionType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VendingMachineActor at +0x0, FunctionType at +0x8
 writeQword(_params + 0x0, VendingMachineActor_OakVendingMachine)
 writeByte(_params + 0x8, FunctionType)
 UE.CallProcessEventEx(VendingMachineActor_OakVendingMachine, "ClientCallVendingMachineUsabilityFunction", _params);
 deAlloc(_params);
end
FNR("BL4.ClientCallVendingMachineUsabilityFunction");

BL4.ClientCancelPing = function(OwnerAddress, PingInstigator, TargetedActor_Actor, Location)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientCancelPing: Failed To Allocate The Params");return;end;
 PingInstigator = PingInstigator or 0
 Location = Location or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PingInstigator at +0x0, TargetedActor at +0x8, Location at +0x10
 writeInteger(_params + 0x0, PingInstigator)
 writeQword(_params + 0x8, TargetedActor_Actor)
 writeDouble(_params + 0x10, (Location and Location.X) or 0)
 writeDouble(_params + 0x18, (Location and Location.Y) or 0)
 writeDouble(_params + 0x20, (Location and Location.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "ClientCancelPing", _params);
 deAlloc(_params);
end
FNR("BL4.ClientCancelPing");

BL4.ClientCreatePing = function(OwnerAddress, PingInstigator, TargetedActor_Actor, Location, PingFeedbackDefName)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientCreatePing: Failed To Allocate The Params");return;end;
 PingInstigator = PingInstigator or 0
 Location = Location or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PingInstigator at +0x0, TargetedActor at +0x8, Location at +0x10, PingFeedbackDefName at +0x28
 writeInteger(_params + 0x0, PingInstigator)
 writeQword(_params + 0x8, TargetedActor_Actor)
 writeDouble(_params + 0x10, (Location and Location.X) or 0)
 writeDouble(_params + 0x18, (Location and Location.Y) or 0)
 writeDouble(_params + 0x20, (Location and Location.Z) or 0)
 writeQword(_params + 0x28, PingFeedbackDefName)
 UE.CallProcessEventEx(OwnerAddress, "ClientCreatePing", _params);
 deAlloc(_params);
end
FNR("BL4.ClientCreatePing");

BL4.ClientDiscoveryNotifyLocationDiscoveredStateChanged = function(OwnerAddress, InLocation, InProximity, InDiscoveringPlayer_GbxPlayerState)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientDiscoveryNotifyLocationDiscoveredStateChanged: Failed To Allocate The Params");return;end;
 InProximity = InProximity or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InLocation at +0x0, InProximity at +0x30, InDiscoveringPlayer at +0x38
 writeQword(_params + 0x0, InLocation)
 writeByte(_params + 0x30, InProximity)
 writeQword(_params + 0x38, InDiscoveringPlayer_GbxPlayerState)
 UE.CallProcessEventEx(OwnerAddress, "ClientDiscoveryNotifyLocationDiscoveredStateChanged", _params);
 deAlloc(_params);
end
FNR("BL4.ClientDiscoveryNotifyLocationDiscoveredStateChanged");

BL4.ClientEntitlementDisconnect = function(OwnerAddress, MissingEntitlement, DLCIdent)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientEntitlementDisconnect: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MissingEntitlement at +0x0, DLCIdent at +0x10
 writeQword(_params + 0x0, MissingEntitlement)
 writeQword(_params + 0x10, DLCIdent)
 UE.CallProcessEventEx(OwnerAddress, "ClientEntitlementDisconnect", _params);
 deAlloc(_params);
end
FNR("BL4.ClientEntitlementDisconnect");

BL4.ClientGameHostDisconnecting = function(OwnerAddress, reason)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientGameHostDisconnecting: Failed To Allocate The Params");return;end;
 reason = reason or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: reason at +0x0
 writeByte(_params + 0x0, reason)
 UE.CallProcessEventEx(OwnerAddress, "ClientGameHostDisconnecting", _params);
 deAlloc(_params);
end
FNR("BL4.ClientGameHostDisconnecting");

BL4.ClientNotifyExitingVehicle = function(OakVehicle, reason, HealthRegenTime)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientNotifyExitingVehicle: Failed To Allocate The Params");return;end;
 reason = reason or 0
 HealthRegenTime = HealthRegenTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OakVehicle at +0x0, reason at +0x8, HealthRegenTime at +0xC
 writeQword(_params + 0x0, OakVehicle)
 writeByte(_params + 0x8, reason)
 writeFloat(_params + 0xC, HealthRegenTime)
 UE.CallProcessEventEx(OakVehicle, "ClientNotifyExitingVehicle", _params);
 deAlloc(_params);
end
FNR("BL4.ClientNotifyExitingVehicle");

BL4.ClientNotifyTeleporting = function(OwnerAddress, TeleportId, station, DestLocation, bPreTeleport, bImmediate, bPresumedLoaded, bNoInstantEffects, bTethered)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientNotifyTeleporting: Failed To Allocate The Params");return;end;
 TeleportId = TeleportId or 0
 DestLocation = DestLocation or {X=0,Y=0,Z=0}
 bPreTeleport = bPreTeleport or false
 bImmediate = bImmediate or false
 bPresumedLoaded = bPresumedLoaded or false
 bNoInstantEffects = bNoInstantEffects or false
 bTethered = bTethered or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TeleportId at +0x0, station at +0x8, DestLocation at +0x20, bPreTeleport at +0x38, bImmediate at +0x39, bPresumedLoaded at +0x3A, bNoInstantEffects at +0x3B, bTethered at +0x3C
 writeByte(_params + 0x0, TeleportId)
 writeQword(_params + 0x8, station)
 writeDouble(_params + 0x20, (DestLocation and DestLocation.X) or 0)
 writeDouble(_params + 0x28, (DestLocation and DestLocation.Y) or 0)
 writeDouble(_params + 0x30, (DestLocation and DestLocation.Z) or 0)
 writeByte(_params + 0x38, bPreTeleport)
 writeByte(_params + 0x39, bImmediate)
 writeByte(_params + 0x3A, bPresumedLoaded)
 writeByte(_params + 0x3B, bNoInstantEffects)
 writeByte(_params + 0x3C, bTethered)
 UE.CallProcessEventEx(OwnerAddress, "ClientNotifyTeleporting", _params);
 deAlloc(_params);
end
FNR("BL4.ClientNotifyTeleporting");

BL4.ClientOpenItemContainer = function(OwnerAddress, PlayerContainerName, OtherContainerName, OtherContainerOwner_Actor, TransactionType, TransactionTag, bNeedsCallbackWhenClosed)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientOpenItemContainer: Failed To Allocate The Params");return;end;
 TransactionType = TransactionType or 0
 bNeedsCallbackWhenClosed = bNeedsCallbackWhenClosed or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PlayerContainerName at +0x0, OtherContainerName at +0x8, OtherContainerOwner at +0x10, TransactionType at +0x18, TransactionTag at +0x1C, bNeedsCallbackWhenClosed at +0x24
 writeQword(_params + 0x0, PlayerContainerName)
 writeQword(_params + 0x8, OtherContainerName)
 writeQword(_params + 0x10, OtherContainerOwner_Actor)
 writeByte(_params + 0x18, TransactionType)
 writeQword(_params + 0x1C, TransactionTag)
 writeByte(_params + 0x24, bNeedsCallbackWhenClosed)
 UE.CallProcessEventEx(OwnerAddress, "ClientOpenItemContainer", _params);
 deAlloc(_params);
end
FNR("BL4.ClientOpenItemContainer");

BL4.ClientOpenMissionAcceptMenu = function(OwnerAddress, MissionGiver)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientOpenMissionAcceptMenu: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MissionGiver at +0x0
 writeQword(_params + 0x0, MissionGiver)
 UE.CallProcessEventEx(OwnerAddress, "ClientOpenMissionAcceptMenu", _params);
 deAlloc(_params);
end
FNR("BL4.ClientOpenMissionAcceptMenu");

BL4.ClientSendAllPlayersRequiredNotification = function(OwnerAddress, bPlayerAlreadyPresent)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientSendAllPlayersRequiredNotification: Failed To Allocate The Params");return;end;
 bPlayerAlreadyPresent = bPlayerAlreadyPresent or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bPlayerAlreadyPresent at +0x0
 writeByte(_params + 0x0, bPlayerAlreadyPresent)
 UE.CallProcessEventEx(OwnerAddress, "ClientSendAllPlayersRequiredNotification", _params);
 deAlloc(_params);
end
FNR("BL4.ClientSendAllPlayersRequiredNotification");

BL4.ClientStartInGameCredits = function(OwnerAddress, CreditsVersion)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientStartInGameCredits: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: CreditsVersion at +0x0
 writeQword(_params + 0x0, CreditsVersion)
 UE.CallProcessEventEx(OwnerAddress, "ClientStartInGameCredits", _params);
 deAlloc(_params);
end
FNR("BL4.ClientStartInGameCredits");

BL4.ClientStartPlatformActivity = function(OwnerAddress, ActivityID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientStartPlatformActivity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: ActivityID at +0x0
 writeQword(_params + 0x0, ActivityID)
 UE.CallProcessEventEx(OwnerAddress, "ClientStartPlatformActivity", _params);
 deAlloc(_params);
end
FNR("BL4.ClientStartPlatformActivity");

BL4.ClientStopInGameCredits = function(OwnerAddress, CreditsVersion)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientStopInGameCredits: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: CreditsVersion at +0x0
 writeQword(_params + 0x0, CreditsVersion)
 UE.CallProcessEventEx(OwnerAddress, "ClientStopInGameCredits", _params);
 deAlloc(_params);
end
FNR("BL4.ClientStopInGameCredits");

BL4.ClientStopPlatformActivity = function(OwnerAddress, ActivityID, bCompleted)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientStopPlatformActivity: Failed To Allocate The Params");return;end;
 bCompleted = bCompleted or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ActivityID at +0x0, bCompleted at +0x8
 writeQword(_params + 0x0, ActivityID)
 writeByte(_params + 0x8, bCompleted)
 UE.CallProcessEventEx(OwnerAddress, "ClientStopPlatformActivity", _params);
 deAlloc(_params);
end
FNR("BL4.ClientStopPlatformActivity");

BL4.ClientSyncVendingMachineTimer = function(VendingMachineActor_OakVendingMachine, TimeTilShuffle)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientSyncVendingMachineTimer: Failed To Allocate The Params");return;end;
 TimeTilShuffle = TimeTilShuffle or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VendingMachineActor at +0x0, TimeTilShuffle at +0x8
 writeQword(_params + 0x0, VendingMachineActor_OakVendingMachine)
 writeFloat(_params + 0x8, TimeTilShuffle)
 UE.CallProcessEventEx(VendingMachineActor_OakVendingMachine, "ClientSyncVendingMachineTimer", _params);
 deAlloc(_params);
end
FNR("BL4.ClientSyncVendingMachineTimer");

BL4.ClientTakeAllLostLoot = function(LostLootMachine_OakLostLootMachine, bTrash)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientTakeAllLostLoot: Failed To Allocate The Params");return;end;
 bTrash = bTrash or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: LostLootMachine at +0x0, bTrash at +0x8
 writeQword(_params + 0x0, LostLootMachine_OakLostLootMachine)
 writeByte(_params + 0x8, bTrash)
 UE.CallProcessEventEx(LostLootMachine_OakLostLootMachine, "ClientTakeAllLostLoot", _params);
 deAlloc(_params);
end
FNR("BL4.ClientTakeAllLostLoot");

BL4.DisplayHUDErrorNotification = function(OwnerAddress, Ident, Duration)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DisplayHUDErrorNotification: Failed To Allocate The Params");return;end;
 Duration = Duration or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Ident at +0x0, Duration at +0x8
 writeQword(_params + 0x0, Ident)
 writeFloat(_params + 0x8, Duration)
 UE.CallProcessEventEx(OwnerAddress, "DisplayHUDErrorNotification", _params);
 deAlloc(_params);
end
FNR("BL4.DisplayHUDErrorNotification");

BL4.GetOakPlayerState = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetOakPlayerState: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetOakPlayerState", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetOakPlayerState");

BL4.IsIdle = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsIdle: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsIdle", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsIdle");

BL4.Multicast_CheckpointActivated = function(OwnerAddress, Location)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Multicast_CheckpointActivated: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Location at +0x0
 writeDouble(_params + 0x0, (Location and Location.X) or 0)
 writeDouble(_params + 0x8, (Location and Location.Y) or 0)
 writeDouble(_params + 0x10, (Location and Location.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Multicast_CheckpointActivated", _params);
 deAlloc(_params);
end
FNR("BL4.Multicast_CheckpointActivated");

BL4.OnBossDimmedStateUpdatedRPC = function(Boss_Actor, bIsDimmed)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnBossDimmedStateUpdatedRPC: Failed To Allocate The Params");return;end;
 bIsDimmed = bIsDimmed or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Boss at +0x0, bIsDimmed at +0x8
 writeQword(_params + 0x0, Boss_Actor)
 writeByte(_params + 0x8, bIsDimmed)
 UE.CallProcessEventEx(Boss_Actor, "OnBossDimmedStateUpdatedRPC", _params);
 deAlloc(_params);
end
FNR("BL4.OnBossDimmedStateUpdatedRPC");

BL4.OnBossInvulnerabilityStateUpdatedRPC = function(Boss_Actor, bIsInvulnerable)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnBossInvulnerabilityStateUpdatedRPC: Failed To Allocate The Params");return;end;
 bIsInvulnerable = bIsInvulnerable or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Boss at +0x0, bIsInvulnerable at +0x8
 writeQword(_params + 0x0, Boss_Actor)
 writeByte(_params + 0x8, bIsInvulnerable)
 UE.CallProcessEventEx(Boss_Actor, "OnBossInvulnerabilityStateUpdatedRPC", _params);
 deAlloc(_params);
end
FNR("BL4.OnBossInvulnerabilityStateUpdatedRPC");

BL4.OnRep_BossState = function(OwnerAddress, PrevBossState)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnRep_BossState: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PrevBossState at +0x0
 writeQword(_params + 0x0, PrevBossState)
 UE.CallProcessEventEx(OwnerAddress, "OnRep_BossState", _params);
 deAlloc(_params);
end
FNR("BL4.OnRep_BossState");

BL4.OnVehicleSummonPermissionChecked = function(OwnerAddress, Permission)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnVehicleSummonPermissionChecked: Failed To Allocate The Params");return;end;
 Permission = Permission or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Permission at +0x0
 writeByte(_params + 0x0, Permission)
 UE.CallProcessEventEx(OwnerAddress, "OnVehicleSummonPermissionChecked", _params);
 deAlloc(_params);
end
FNR("BL4.OnVehicleSummonPermissionChecked");

BL4.OnVehicleSummonStateChanged = function(OwnerAddress, State)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnVehicleSummonStateChanged: Failed To Allocate The Params");return;end;
 State = State or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: State at +0x0
 writeByte(_params + 0x0, State)
 UE.CallProcessEventEx(OwnerAddress, "OnVehicleSummonStateChanged", _params);
 deAlloc(_params);
end
FNR("BL4.OnVehicleSummonStateChanged");

BL4.OpenStatusMenu = function(OwnerAddress, SubMenuId, SelectionObject_Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OpenStatusMenu: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SubMenuId at +0x0, SelectionObject at +0x8
 writeQword(_params + 0x0, SubMenuId)
 writeQword(_params + 0x8, SelectionObject_Object)
 UE.CallProcessEventEx(OwnerAddress, "OpenStatusMenu", _params);
 deAlloc(_params);
end
FNR("BL4.OpenStatusMenu");

BL4.RequestTeleportToPlayer = function(OwnerAddress, PlayerId)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RequestTeleportToPlayer: Failed To Allocate The Params");return;end;
 PlayerId = PlayerId or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PlayerId at +0x0
 writeInteger(_params + 0x0, PlayerId)
 UE.CallProcessEventEx(OwnerAddress, "RequestTeleportToPlayer", _params);
 deAlloc(_params);
end
FNR("BL4.RequestTeleportToPlayer");

BL4.RequestTeleportToStation = function(OwnerAddress, station, bForRespawn, bLocalOnly)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RequestTeleportToStation: Failed To Allocate The Params");return;end;
 bForRespawn = bForRespawn or false
 bLocalOnly = bLocalOnly or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: station at +0x0, bForRespawn at +0x18, bLocalOnly at +0x19
 writeQword(_params + 0x0, station)
 writeByte(_params + 0x18, bForRespawn)
 writeByte(_params + 0x19, bLocalOnly)
 UE.CallProcessEventEx(OwnerAddress, "RequestTeleportToStation", _params);
 deAlloc(_params);
end
FNR("BL4.RequestTeleportToStation");

BL4.Server_PlayEchoLog = function(OwnerAddress, InEchoLog)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Server_PlayEchoLog: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InEchoLog at +0x0
 writeQword(_params + 0x0, InEchoLog)
 UE.CallProcessEventEx(OwnerAddress, "Server_PlayEchoLog", _params);
 deAlloc(_params);
end
FNR("BL4.Server_PlayEchoLog");

BL4.ServerActivateDevPerk = function(OwnerAddress, Perk)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerActivateDevPerk: Failed To Allocate The Params");return;end;
 Perk = Perk or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Perk at +0x0
 writeByte(_params + 0x0, Perk)
 UE.CallProcessEventEx(OwnerAddress, "ServerActivateDevPerk", _params);
 deAlloc(_params);
end
FNR("BL4.ServerActivateDevPerk");

BL4.ServerActivateMission = function(OwnerAddress, mission, EntryId, bTrack, PlayerStableIndex)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerActivateMission: Failed To Allocate The Params");return;end;
 EntryId = EntryId or 0
 bTrack = bTrack or false
 PlayerStableIndex = PlayerStableIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: mission at +0x0, EntryId at +0xC, bTrack at +0x10, PlayerStableIndex at +0x12
 writeQword(_params + 0x0, mission)
 writeInteger(_params + 0xC, EntryId)
 writeByte(_params + 0x10, bTrack)
 writeWord(_params + 0x12, PlayerStableIndex)
 UE.CallProcessEventEx(OwnerAddress, "ServerActivateMission", _params);
 deAlloc(_params);
end
FNR("BL4.ServerActivateMission");

BL4.ServerCallLostLootEvent = function(OwnerAddress, EventType, LostLootMachineActor_OakLostLootMachine, Rarity)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerCallLostLootEvent: Failed To Allocate The Params");return;end;
 EventType = EventType or 0
 Rarity = Rarity or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: EventType at +0x0, LostLootMachineActor at +0x8, Rarity at +0x10
 writeByte(_params + 0x0, EventType)
 writeQword(_params + 0x8, LostLootMachineActor_OakLostLootMachine)
 writeInteger(_params + 0x10, Rarity)
 UE.CallProcessEventEx(OwnerAddress, "ServerCallLostLootEvent", _params);
 deAlloc(_params);
end
FNR("BL4.ServerCallLostLootEvent");

BL4.ServerCallVendingEvent = function(OwnerAddress, EventType, VendingMachineActor_OakVendingMachine, bBuyback)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerCallVendingEvent: Failed To Allocate The Params");return;end;
 EventType = EventType or 0
 bBuyback = bBuyback or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: EventType at +0x0, VendingMachineActor at +0x8, bBuyback at +0x10
 writeByte(_params + 0x0, EventType)
 writeQword(_params + 0x8, VendingMachineActor_OakVendingMachine)
 writeByte(_params + 0x10, bBuyback)
 UE.CallProcessEventEx(OwnerAddress, "ServerCallVendingEvent", _params);
 deAlloc(_params);
end
FNR("BL4.ServerCallVendingEvent");

BL4.ServerCameraTransition = function(OwnerAddress, NewMode, Transition, BlendTimeOverride, bTeleport, bForceResetMode)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerCameraTransition: Failed To Allocate The Params");return;end;
 BlendTimeOverride = BlendTimeOverride or 0
 bTeleport = bTeleport or false
 bForceResetMode = bForceResetMode or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewMode at +0x0, Transition at +0x8, BlendTimeOverride at +0x10, bTeleport at +0x14, bForceResetMode at +0x15
 writeQword(_params + 0x0, NewMode)
 writeQword(_params + 0x8, Transition)
 writeFloat(_params + 0x10, BlendTimeOverride)
 writeByte(_params + 0x14, bTeleport)
 writeByte(_params + 0x15, bForceResetMode)
 UE.CallProcessEventEx(OwnerAddress, "ServerCameraTransition", _params);
 deAlloc(_params);
end
FNR("BL4.ServerCameraTransition");

BL4.ServerCancelPing = function(TargetedActor_Actor, Location)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerCancelPing: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetedActor at +0x0, Location at +0x8
 writeQword(_params + 0x0, TargetedActor_Actor)
 writeDouble(_params + 0x8, (Location and Location.X) or 0)
 writeDouble(_params + 0x10, (Location and Location.Y) or 0)
 writeDouble(_params + 0x18, (Location and Location.Z) or 0)
 UE.CallProcessEventEx(TargetedActor_Actor, "ServerCancelPing", _params);
 deAlloc(_params);
end
FNR("BL4.ServerCancelPing");

BL4.ServerCreatePing = function(TargetedActor_Actor, Location, PingFeedbackDefName)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerCreatePing: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetedActor at +0x0, Location at +0x8, PingFeedbackDefName at +0x20
 writeQword(_params + 0x0, TargetedActor_Actor)
 writeDouble(_params + 0x8, (Location and Location.X) or 0)
 writeDouble(_params + 0x10, (Location and Location.Y) or 0)
 writeDouble(_params + 0x18, (Location and Location.Z) or 0)
 writeQword(_params + 0x20, PingFeedbackDefName)
 UE.CallProcessEventEx(TargetedActor_Actor, "ServerCreatePing", _params);
 deAlloc(_params);
end
FNR("BL4.ServerCreatePing");

BL4.ServerCycleTrackedMission = function(OwnerAddress, slot, bReverse)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerCycleTrackedMission: Failed To Allocate The Params");return;end;
 slot = slot or 0
 bReverse = bReverse or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: slot at +0x0, bReverse at +0x4
 writeInteger(_params + 0x0, slot)
 writeByte(_params + 0x4, bReverse)
 UE.CallProcessEventEx(OwnerAddress, "ServerCycleTrackedMission", _params);
 deAlloc(_params);
end
FNR("BL4.ServerCycleTrackedMission");

BL4.ServerDeleteJunkById = function(OwnerAddress, JunkId)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerDeleteJunkById: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: JunkId at +0x0
 writeQword(_params + 0x0, JunkId)
 UE.CallProcessEventEx(OwnerAddress, "ServerDeleteJunkById", _params);
 deAlloc(_params);
end
FNR("BL4.ServerDeleteJunkById");

BL4.ServerDiscoveryMakeNonAuthoritativeDiscovery = function(OwnerAddress, InLocation, InProximity)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerDiscoveryMakeNonAuthoritativeDiscovery: Failed To Allocate The Params");return;end;
 InProximity = InProximity or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InLocation at +0x0, InProximity at +0x30
 writeQword(_params + 0x0, InLocation)
 writeByte(_params + 0x30, InProximity)
 UE.CallProcessEventEx(OwnerAddress, "ServerDiscoveryMakeNonAuthoritativeDiscovery", _params);
 deAlloc(_params);
end
FNR("BL4.ServerDiscoveryMakeNonAuthoritativeDiscovery");

BL4.ServerIncrementChallengeForPlayer = function(OwnerAddress, ChallengeIdentString, IncrementCount)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerIncrementChallengeForPlayer: Failed To Allocate The Params");return;end;
 IncrementCount = IncrementCount or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ChallengeIdentString at +0x0, IncrementCount at +0x10
 writeQword(_params + 0x0, ChallengeIdentString)
 writeInteger(_params + 0x10, IncrementCount)
 UE.CallProcessEventEx(OwnerAddress, "ServerIncrementChallengeForPlayer", _params);
 deAlloc(_params);
end
FNR("BL4.ServerIncrementChallengeForPlayer");

BL4.ServerInterruptTravelCountdown = function(OwnerAddress, CancelReason)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerInterruptTravelCountdown: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CancelReason at +0x0
 writeQword(_params + 0x0, CancelReason)
 UE.CallProcessEventEx(OwnerAddress, "ServerInterruptTravelCountdown", _params);
 deAlloc(_params);
end
FNR("BL4.ServerInterruptTravelCountdown");

BL4.ServerIOTDBought = function(VendingMachineActor_OakVendingMachine)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerIOTDBought: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: VendingMachineActor at +0x0
 writeQword(_params + 0x0, VendingMachineActor_OakVendingMachine)
 UE.CallProcessEventEx(VendingMachineActor_OakVendingMachine, "ServerIOTDBought", _params);
 deAlloc(_params);
end
FNR("BL4.ServerIOTDBought");

BL4.ServerNotifyCharacterSelectFinished = function(OwnerAddress, bSelected)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerNotifyCharacterSelectFinished: Failed To Allocate The Params");return;end;
 bSelected = bSelected or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bSelected at +0x0
 writeByte(_params + 0x0, bSelected)
 UE.CallProcessEventEx(OwnerAddress, "ServerNotifyCharacterSelectFinished", _params);
 deAlloc(_params);
end
FNR("BL4.ServerNotifyCharacterSelectFinished");

BL4.ServerNotifyReadyForTeleport = function(OwnerAddress, TeleportId)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerNotifyReadyForTeleport: Failed To Allocate The Params");return;end;
 TeleportId = TeleportId or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: TeleportId at +0x0
 writeByte(_params + 0x0, TeleportId)
 UE.CallProcessEventEx(OwnerAddress, "ServerNotifyReadyForTeleport", _params);
 deAlloc(_params);
end
FNR("BL4.ServerNotifyReadyForTeleport");

BL4.ServerNotifyTeleportFailed = function(OwnerAddress, TeleportId)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerNotifyTeleportFailed: Failed To Allocate The Params");return;end;
 TeleportId = TeleportId or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: TeleportId at +0x0
 writeByte(_params + 0x0, TeleportId)
 UE.CallProcessEventEx(OwnerAddress, "ServerNotifyTeleportFailed", _params);
 deAlloc(_params);
end
FNR("BL4.ServerNotifyTeleportFailed");

BL4.ServerNotifyTeleportScreenActive = function(OwnerAddress, bActive)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerNotifyTeleportScreenActive: Failed To Allocate The Params");return;end;
 bActive = bActive or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bActive at +0x0
 writeByte(_params + 0x0, bActive)
 UE.CallProcessEventEx(OwnerAddress, "ServerNotifyTeleportScreenActive", _params);
 deAlloc(_params);
end
FNR("BL4.ServerNotifyTeleportScreenActive");

BL4.ServerOnItemContainerMenuClosed = function(OwnerAddress, MenuButton)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerOnItemContainerMenuClosed: Failed To Allocate The Params");return;end;
 MenuButton = MenuButton or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: MenuButton at +0x0
 writeByte(_params + 0x0, MenuButton)
 UE.CallProcessEventEx(OwnerAddress, "ServerOnItemContainerMenuClosed", _params);
 deAlloc(_params);
end
FNR("BL4.ServerOnItemContainerMenuClosed");

BL4.ServerOnRefillAmmo = function(VendingMachineActor_OakVendingMachine, CurrencyID, bInVendorMenu)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerOnRefillAmmo: Failed To Allocate The Params");return;end;
 bInVendorMenu = bInVendorMenu or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VendingMachineActor at +0x0, CurrencyID at +0x8, bInVendorMenu at +0x14
 writeQword(_params + 0x0, VendingMachineActor_OakVendingMachine)
 writeQword(_params + 0x8, CurrencyID)
 writeByte(_params + 0x14, bInVendorMenu)
 UE.CallProcessEventEx(VendingMachineActor_OakVendingMachine, "ServerOnRefillAmmo", _params);
 deAlloc(_params);
end
FNR("BL4.ServerOnRefillAmmo");

BL4.ServerPurchaseBuybackItem = function(VendingMachineActor_OakVendingMachine, ShopHandle, CurrencyID)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerPurchaseBuybackItem: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VendingMachineActor at +0x0, ShopHandle at +0x8, CurrencyID at +0xC
 writeQword(_params + 0x0, VendingMachineActor_OakVendingMachine)
 writeQword(_params + 0x8, ShopHandle)
 writeQword(_params + 0xC, CurrencyID)
 UE.CallProcessEventEx(VendingMachineActor_OakVendingMachine, "ServerPurchaseBuybackItem", _params);
 deAlloc(_params);
end
FNR("BL4.ServerPurchaseBuybackItem");

BL4.ServerPurchaseShopItem = function(VendingMachineActor_OakVendingMachine, Idx, CurrencyID, bInVendorMenu)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerPurchaseShopItem: Failed To Allocate The Params");return;end;
 Idx = Idx or 0
 bInVendorMenu = bInVendorMenu or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VendingMachineActor at +0x0, Idx at +0x8, CurrencyID at +0xC, bInVendorMenu at +0x18
 writeQword(_params + 0x0, VendingMachineActor_OakVendingMachine)
 writeInteger(_params + 0x8, Idx)
 writeQword(_params + 0xC, CurrencyID)
 writeByte(_params + 0x18, bInVendorMenu)
 UE.CallProcessEventEx(VendingMachineActor_OakVendingMachine, "ServerPurchaseShopItem", _params);
 deAlloc(_params);
end
FNR("BL4.ServerPurchaseShopItem");

BL4.ServerReportDiscoveredPoAState = function(OwnerAddress, LocationMetadataIdent, DiscoverState)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerReportDiscoveredPoAState: Failed To Allocate The Params");return;end;
 DiscoverState = DiscoverState or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: LocationMetadataIdent at +0x0, DiscoverState at +0x8
 writeQword(_params + 0x0, LocationMetadataIdent)
 writeInteger(_params + 0x8, DiscoverState)
 UE.CallProcessEventEx(OwnerAddress, "ServerReportDiscoveredPoAState", _params);
 deAlloc(_params);
end
FNR("BL4.ServerReportDiscoveredPoAState");

BL4.ServerRequestAbandonMission = function(OwnerAddress, mission)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerRequestAbandonMission: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: mission at +0x0
 writeQword(_params + 0x0, mission)
 UE.CallProcessEventEx(OwnerAddress, "ServerRequestAbandonMission", _params);
 deAlloc(_params);
end
FNR("BL4.ServerRequestAbandonMission");

BL4.ServerRequestPersonalVehicle = function(OwnerAddress, bDebugRequest)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerRequestPersonalVehicle: Failed To Allocate The Params");return;end;
 bDebugRequest = bDebugRequest or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bDebugRequest at +0x0
 writeByte(_params + 0x0, bDebugRequest)
 UE.CallProcessEventEx(OwnerAddress, "ServerRequestPersonalVehicle", _params);
 deAlloc(_params);
end
FNR("BL4.ServerRequestPersonalVehicle");

BL4.ServerRequestPlayTraitMission = function(OwnerAddress, TraitMissionDef)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerRequestPlayTraitMission: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TraitMissionDef at +0x0
 writeQword(_params + 0x0, TraitMissionDef)
 UE.CallProcessEventEx(OwnerAddress, "ServerRequestPlayTraitMission", _params);
 deAlloc(_params);
end
FNR("BL4.ServerRequestPlayTraitMission");

BL4.ServerRequestReplayMission = function(OwnerAddress, mission)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerRequestReplayMission: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: mission at +0x0
 writeQword(_params + 0x0, mission)
 UE.CallProcessEventEx(OwnerAddress, "ServerRequestReplayMission", _params);
 deAlloc(_params);
end
FNR("BL4.ServerRequestReplayMission");

BL4.ServerRequestTrackMission = function(OwnerAddress, mission, PlayerStableIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerRequestTrackMission: Failed To Allocate The Params");return;end;
 PlayerStableIndex = PlayerStableIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: mission at +0x0, PlayerStableIndex at +0xC
 writeQword(_params + 0x0, mission)
 writeWord(_params + 0xC, PlayerStableIndex)
 UE.CallProcessEventEx(OwnerAddress, "ServerRequestTrackMission", _params);
 deAlloc(_params);
end
FNR("BL4.ServerRequestTrackMission");

BL4.ServerRerollBlackMarketParts = function(VendingMachineActor_OakVendingMachine)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerRerollBlackMarketParts: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: VendingMachineActor at +0x0
 writeQword(_params + 0x0, VendingMachineActor_OakVendingMachine)
 UE.CallProcessEventEx(VendingMachineActor_OakVendingMachine, "ServerRerollBlackMarketParts", _params);
 deAlloc(_params);
end
FNR("BL4.ServerRerollBlackMarketParts");

BL4.ServerSellItem = function(VendingMachineActor_OakVendingMachine, ItemHandle, ItemContainerName, CurrencyID)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerSellItem: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VendingMachineActor at +0x0, ItemHandle at +0x8, ItemContainerName at +0xC, CurrencyID at +0x14
 writeQword(_params + 0x0, VendingMachineActor_OakVendingMachine)
 writeQword(_params + 0x8, ItemHandle)
 writeQword(_params + 0xC, ItemContainerName)
 writeQword(_params + 0x14, CurrencyID)
 UE.CallProcessEventEx(VendingMachineActor_OakVendingMachine, "ServerSellItem", _params);
 deAlloc(_params);
end
FNR("BL4.ServerSellItem");

BL4.ServerSetBestGrappleable = function(GrappleableObject_Object, GrappleTargetHash)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerSetBestGrappleable: Failed To Allocate The Params");return;end;
 GrappleTargetHash = GrappleTargetHash or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: GrappleableObject at +0x0, GrappleTargetHash at +0x8
 writeQword(_params + 0x0, GrappleableObject_Object)
 writeInteger(_params + 0x8, GrappleTargetHash)
 UE.CallProcessEventEx(GrappleableObject_Object, "ServerSetBestGrappleable", _params);
 deAlloc(_params);
end
FNR("BL4.ServerSetBestGrappleable");

BL4.ServerSetBestTarget = function(NewBestTarget_Actor)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerSetBestTarget: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewBestTarget at +0x0
 writeQword(_params + 0x0, NewBestTarget_Actor)
 UE.CallProcessEventEx(NewBestTarget_Actor, "ServerSetBestTarget", _params);
 deAlloc(_params);
end
FNR("BL4.ServerSetBestTarget");

BL4.ServerSetBulletMagnetismSettings = function(OwnerAddress, bDoBulletMagnetism)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerSetBulletMagnetismSettings: Failed To Allocate The Params");return;end;
 bDoBulletMagnetism = bDoBulletMagnetism or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bDoBulletMagnetism at +0x0
 writeByte(_params + 0x0, bDoBulletMagnetism)
 UE.CallProcessEventEx(OwnerAddress, "ServerSetBulletMagnetismSettings", _params);
 deAlloc(_params);
end
FNR("BL4.ServerSetBulletMagnetismSettings");

BL4.ServerSetCurrentVendingMachineUsable = function(VendingMachineActor_OakVendingMachine, bRemove)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerSetCurrentVendingMachineUsable: Failed To Allocate The Params");return;end;
 bRemove = bRemove or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VendingMachineActor at +0x0, bRemove at +0x8
 writeQword(_params + 0x0, VendingMachineActor_OakVendingMachine)
 writeByte(_params + 0x8, bRemove)
 UE.CallProcessEventEx(VendingMachineActor_OakVendingMachine, "ServerSetCurrentVendingMachineUsable", _params);
 deAlloc(_params);
end
FNR("BL4.ServerSetCurrentVendingMachineUsable");

BL4.ServerSetFullyAimingAtTarget = function(OwnerAddress, bInClientFullyAimingAtTarget)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerSetFullyAimingAtTarget: Failed To Allocate The Params");return;end;
 bInClientFullyAimingAtTarget = bInClientFullyAimingAtTarget or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInClientFullyAimingAtTarget at +0x0
 writeByte(_params + 0x0, bInClientFullyAimingAtTarget)
 UE.CallProcessEventEx(OwnerAddress, "ServerSetFullyAimingAtTarget", _params);
 deAlloc(_params);
end
FNR("BL4.ServerSetFullyAimingAtTarget");

BL4.ServerSetPersonalVehicleDef = function(OwnerAddress, InDef)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerSetPersonalVehicleDef: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InDef at +0x0
 writeQword(_params + 0x0, InDef)
 UE.CallProcessEventEx(OwnerAddress, "ServerSetPersonalVehicleDef", _params);
 deAlloc(_params);
end
FNR("BL4.ServerSetPersonalVehicleDef");

BL4.ServerSetRemoteCameraInfo = function(OwnerAddress, bIsFirstPerson)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerSetRemoteCameraInfo: Failed To Allocate The Params");return;end;
 bIsFirstPerson = bIsFirstPerson or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bIsFirstPerson at +0x0
 writeByte(_params + 0x0, bIsFirstPerson)
 UE.CallProcessEventEx(OwnerAddress, "ServerSetRemoteCameraInfo", _params);
 deAlloc(_params);
end
FNR("BL4.ServerSetRemoteCameraInfo");

BL4.ServerSetVehicleHoverDriveDef = function(OwnerAddress, InDef)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerSetVehicleHoverDriveDef: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InDef at +0x0
 writeQword(_params + 0x0, InDef)
 UE.CallProcessEventEx(OwnerAddress, "ServerSetVehicleHoverDriveDef", _params);
 deAlloc(_params);
end
FNR("BL4.ServerSetVehicleHoverDriveDef");

BL4.ServerStartUsing_ObjectHosted = function(Usable_Object, UseType)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerStartUsing_ObjectHosted: Failed To Allocate The Params");return;end;
 UseType = UseType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Usable at +0x0, UseType at +0x8
 writeQword(_params + 0x0, Usable_Object)
 writeByte(_params + 0x8, UseType)
 UE.CallProcessEventEx(Usable_Object, "ServerStartUsing_ObjectHosted", _params);
 deAlloc(_params);
end
FNR("BL4.ServerStartUsing_ObjectHosted");

BL4.ServerStopUsing_ObjectHosted = function(Usable_Object, UseType)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerStopUsing_ObjectHosted: Failed To Allocate The Params");return;end;
 UseType = UseType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Usable at +0x0, UseType at +0x8
 writeQword(_params + 0x0, Usable_Object)
 writeByte(_params + 0x8, UseType)
 UE.CallProcessEventEx(Usable_Object, "ServerStopUsing_ObjectHosted", _params);
 deAlloc(_params);
end
FNR("BL4.ServerStopUsing_ObjectHosted");

BL4.ServerSwitchActiveCharacterProfile = function(OwnerAddress, InProfileIndex)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerSwitchActiveCharacterProfile: Failed To Allocate The Params");return;end;
 InProfileIndex = InProfileIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InProfileIndex at +0x0
 writeInteger(_params + 0x0, InProfileIndex)
 UE.CallProcessEventEx(OwnerAddress, "ServerSwitchActiveCharacterProfile", _params);
 deAlloc(_params);
end
FNR("BL4.ServerSwitchActiveCharacterProfile");

BL4.ServerTransferFirmware = function(OwnerAddress, SourceHandle, DestinationHandle)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerTransferFirmware: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: SourceHandle at +0x0, DestinationHandle at +0x4
 writeQword(_params + 0x0, SourceHandle)
 writeQword(_params + 0x4, DestinationHandle)
 UE.CallProcessEventEx(OwnerAddress, "ServerTransferFirmware", _params);
 deAlloc(_params);
end
FNR("BL4.ServerTransferFirmware");

BL4.ServerUpdateOakCamera = function(OwnerAddress, CamLoc, CamPitchAndYaw, CompressedInputRot)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerUpdateOakCamera: Failed To Allocate The Params");return;end;
 CamPitchAndYaw = CamPitchAndYaw or 0
 CompressedInputRot = CompressedInputRot or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CamLoc at +0x0, CamPitchAndYaw at +0x18, CompressedInputRot at +0x1C
 writeQword(_params + 0x0, CamLoc)
 writeInteger(_params + 0x18, CamPitchAndYaw)
 writeInteger(_params + 0x1C, CompressedInputRot)
 UE.CallProcessEventEx(OwnerAddress, "ServerUpdateOakCamera", _params);
 deAlloc(_params);
end
FNR("BL4.ServerUpdateOakCamera");

BL4.ServerUseJunkObject = function(OwnerAddress, JunkId, bWasHeld, bAutoTrash)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerUseJunkObject: Failed To Allocate The Params");return;end;
 bWasHeld = bWasHeld or false
 bAutoTrash = bAutoTrash or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: JunkId at +0x0, bWasHeld at +0x4, bAutoTrash at +0x5
 writeQword(_params + 0x0, JunkId)
 writeByte(_params + 0x4, bWasHeld)
 writeByte(_params + 0x5, bAutoTrash)
 UE.CallProcessEventEx(OwnerAddress, "ServerUseJunkObject", _params);
 deAlloc(_params);
end
FNR("BL4.ServerUseJunkObject");

BL4.ServerUseObject = function(Usable_Object, UseType, bWasHeld)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerUseObject: Failed To Allocate The Params");return;end;
 UseType = UseType or 0
 bWasHeld = bWasHeld or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Usable at +0x0, UseType at +0x8, bWasHeld at +0x9
 writeQword(_params + 0x0, Usable_Object)
 writeByte(_params + 0x8, UseType)
 writeByte(_params + 0x9, bWasHeld)
 UE.CallProcessEventEx(Usable_Object, "ServerUseObject", _params);
 deAlloc(_params);
end
FNR("BL4.ServerUseObject");

BL4.SetCustomViewportViewFlags = function(OwnerAddress, ViewFlags, bEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomViewportViewFlags: Failed To Allocate The Params");return;end;
 ViewFlags = ViewFlags or 0
 bEnabled = bEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: ViewFlags at +0x0, bEnabled at +0x4
 writeInteger(_params + 0x0, ViewFlags)
 writeByte(_params + 0x4, bEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomViewportViewFlags", _params);
 deAlloc(_params);
end
FNR("BL4.SetCustomViewportViewFlags");

