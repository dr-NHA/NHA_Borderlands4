BL4.Blueprint_GetMainAnimInstance = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Blueprint_GetMainAnimInstance: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "Blueprint_GetMainAnimInstance", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Blueprint_GetMainAnimInstance");

BL4.Blueprint_GetSlotMontageLocalWeight = function(OwnerAddress, SlotNodeName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Blueprint_GetSlotMontageLocalWeight: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SlotNodeName at +0x0
 writeQword(_params + 0x0, SlotNodeName)
 UE.CallProcessEventEx(OwnerAddress, "Blueprint_GetSlotMontageLocalWeight", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Blueprint_GetSlotMontageLocalWeight");

BL4.BlueprintThreadSafeUpdateAnimation = function(OwnerAddress, DeltaTime)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BlueprintThreadSafeUpdateAnimation: Failed To Allocate The Params");return;end;
 DeltaTime = DeltaTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: DeltaTime at +0x0
 writeFloat(_params + 0x0, DeltaTime)
 UE.CallProcessEventEx(OwnerAddress, "BlueprintThreadSafeUpdateAnimation", _params);
 deAlloc(_params);
end
FNR("BL4.BlueprintThreadSafeUpdateAnimation");

BL4.BlueprintUpdateAnimation = function(OwnerAddress, DeltaTimeX)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BlueprintUpdateAnimation: Failed To Allocate The Params");return;end;
 DeltaTimeX = DeltaTimeX or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: DeltaTimeX at +0x0
 writeFloat(_params + 0x0, DeltaTimeX)
 UE.CallProcessEventEx(OwnerAddress, "BlueprintUpdateAnimation", _params);
 deAlloc(_params);
end
FNR("BL4.BlueprintUpdateAnimation");

BL4.CalculateDirection = function(OwnerAddress, Velocity, BaseRotation)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CalculateDirection: Failed To Allocate The Params");return;end;
 Velocity = Velocity or {X=0,Y=0,Z=0}
 BaseRotation = BaseRotation or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Velocity at +0x0, BaseRotation at +0x18
 writeDouble(_params + 0x0, (Velocity and Velocity.X) or 0)
 writeDouble(_params + 0x8, (Velocity and Velocity.Y) or 0)
 writeDouble(_params + 0x10, (Velocity and Velocity.Z) or 0)
 writeDouble(_params + 0x18, (BaseRotation and BaseRotation.Pitch) or 0)
 writeDouble(_params + 0x20, (BaseRotation and BaseRotation.Yaw) or 0)
 writeDouble(_params + 0x28, (BaseRotation and BaseRotation.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "CalculateDirection", _params);
 local RET=readFloat(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CalculateDirection");

BL4.ClearTransitionEvents = function(OwnerAddress, EventName)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClearTransitionEvents: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: EventName at +0x0
 writeQword(_params + 0x0, EventName)
 UE.CallProcessEventEx(OwnerAddress, "ClearTransitionEvents", _params);
 deAlloc(_params);
end
FNR("BL4.ClearTransitionEvents");

BL4.DynamicMontage_IsPlayingFrom = function(Animation_AnimSequenceBase)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DynamicMontage_IsPlayingFrom: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Animation at +0x0
 writeQword(_params + 0x0, Animation_AnimSequenceBase)
 UE.CallProcessEventEx(Animation_AnimSequenceBase, "DynamicMontage_IsPlayingFrom", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DynamicMontage_IsPlayingFrom");

BL4.GetActiveCurveNames = function(OwnerAddress, CurveType, OutNames)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetActiveCurveNames: Failed To Allocate The Params");return;end;
 CurveType = CurveType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CurveType at +0x0, OutNames at +0x8
 writeByte(_params + 0x0, CurveType)
 writeQword(_params + 0x8, OutNames)
 UE.CallProcessEventEx(OwnerAddress, "GetActiveCurveNames", _params);
 deAlloc(_params);
end
FNR("BL4.GetActiveCurveNames");

BL4.GetAllCurveNames = function(OwnerAddress, OutNames)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAllCurveNames: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OutNames at +0x0
 writeQword(_params + 0x0, OutNames)
 UE.CallProcessEventEx(OwnerAddress, "GetAllCurveNames", _params);
 deAlloc(_params);
end
FNR("BL4.GetAllCurveNames");

BL4.GetBlendProfileByName = function(OwnerAddress, InBlendProfileName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBlendProfileByName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InBlendProfileName at +0x0
 writeQword(_params + 0x0, InBlendProfileName)
 UE.CallProcessEventEx(OwnerAddress, "GetBlendProfileByName", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBlendProfileByName");

BL4.GetCurrentActiveMontage = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCurrentActiveMontage: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCurrentActiveMontage", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCurrentActiveMontage");

BL4.GetCurrentStateName = function(OwnerAddress, MachineIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCurrentStateName: Failed To Allocate The Params");return;end;
 MachineIndex = MachineIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MachineIndex at +0x0
 writeInteger(_params + 0x0, MachineIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetCurrentStateName", _params);
 local RET=readQword(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCurrentStateName");

BL4.GetCurveValue = function(OwnerAddress, CurveName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCurveValue: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CurveName at +0x0
 writeQword(_params + 0x0, CurveName)
 UE.CallProcessEventEx(OwnerAddress, "GetCurveValue", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCurveValue");

BL4.GetCurveValueWithDefault = function(OwnerAddress, CurveName, DefaultValue, OutValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCurveValueWithDefault: Failed To Allocate The Params");return;end;
 DefaultValue = DefaultValue or 0
 OutValue = OutValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CurveName at +0x0, DefaultValue at +0x8, OutValue at +0xC
 writeQword(_params + 0x0, CurveName)
 writeFloat(_params + 0x8, DefaultValue)
 writeFloat(_params + 0xC, OutValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCurveValueWithDefault", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCurveValueWithDefault");

BL4.GetDeltaSeconds = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDeltaSeconds: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetDeltaSeconds", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDeltaSeconds");

BL4.GetInstanceAssetPlayerLength = function(OwnerAddress, AssetPlayerIndex)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInstanceAssetPlayerLength: Failed To Allocate The Params");return;end;
 AssetPlayerIndex = AssetPlayerIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AssetPlayerIndex at +0x0
 writeInteger(_params + 0x0, AssetPlayerIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetInstanceAssetPlayerLength", _params);
 local RET=readFloat(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInstanceAssetPlayerLength");

BL4.GetInstanceAssetPlayerTime = function(OwnerAddress, AssetPlayerIndex)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInstanceAssetPlayerTime: Failed To Allocate The Params");return;end;
 AssetPlayerIndex = AssetPlayerIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AssetPlayerIndex at +0x0
 writeInteger(_params + 0x0, AssetPlayerIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetInstanceAssetPlayerTime", _params);
 local RET=readFloat(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInstanceAssetPlayerTime");

BL4.GetInstanceAssetPlayerTimeFraction = function(OwnerAddress, AssetPlayerIndex)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInstanceAssetPlayerTimeFraction: Failed To Allocate The Params");return;end;
 AssetPlayerIndex = AssetPlayerIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AssetPlayerIndex at +0x0
 writeInteger(_params + 0x0, AssetPlayerIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetInstanceAssetPlayerTimeFraction", _params);
 local RET=readFloat(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInstanceAssetPlayerTimeFraction");

BL4.GetInstanceAssetPlayerTimeFromEnd = function(OwnerAddress, AssetPlayerIndex)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInstanceAssetPlayerTimeFromEnd: Failed To Allocate The Params");return;end;
 AssetPlayerIndex = AssetPlayerIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AssetPlayerIndex at +0x0
 writeInteger(_params + 0x0, AssetPlayerIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetInstanceAssetPlayerTimeFromEnd", _params);
 local RET=readFloat(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInstanceAssetPlayerTimeFromEnd");

BL4.GetInstanceAssetPlayerTimeFromEndFraction = function(OwnerAddress, AssetPlayerIndex)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInstanceAssetPlayerTimeFromEndFraction: Failed To Allocate The Params");return;end;
 AssetPlayerIndex = AssetPlayerIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AssetPlayerIndex at +0x0
 writeInteger(_params + 0x0, AssetPlayerIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetInstanceAssetPlayerTimeFromEndFraction", _params);
 local RET=readFloat(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInstanceAssetPlayerTimeFromEndFraction");

BL4.GetInstanceCurrentStateElapsedTime = function(OwnerAddress, MachineIndex)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInstanceCurrentStateElapsedTime: Failed To Allocate The Params");return;end;
 MachineIndex = MachineIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: MachineIndex at +0x0
 writeInteger(_params + 0x0, MachineIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetInstanceCurrentStateElapsedTime", _params);
 local RET=readFloat(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInstanceCurrentStateElapsedTime");

BL4.GetInstanceMachineWeight = function(OwnerAddress, MachineIndex)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInstanceMachineWeight: Failed To Allocate The Params");return;end;
 MachineIndex = MachineIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: MachineIndex at +0x0
 writeInteger(_params + 0x0, MachineIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetInstanceMachineWeight", _params);
 local RET=readFloat(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInstanceMachineWeight");

BL4.GetInstanceStateWeight = function(OwnerAddress, MachineIndex, StateIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInstanceStateWeight: Failed To Allocate The Params");return;end;
 MachineIndex = MachineIndex or 0
 StateIndex = StateIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MachineIndex at +0x0, StateIndex at +0x4
 writeInteger(_params + 0x0, MachineIndex)
 writeInteger(_params + 0x4, StateIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetInstanceStateWeight", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInstanceStateWeight");

BL4.GetInstanceTransitionCrossfadeDuration = function(OwnerAddress, MachineIndex, TransitionIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInstanceTransitionCrossfadeDuration: Failed To Allocate The Params");return;end;
 MachineIndex = MachineIndex or 0
 TransitionIndex = TransitionIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MachineIndex at +0x0, TransitionIndex at +0x4
 writeInteger(_params + 0x0, MachineIndex)
 writeInteger(_params + 0x4, TransitionIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetInstanceTransitionCrossfadeDuration", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInstanceTransitionCrossfadeDuration");

BL4.GetInstanceTransitionTimeElapsed = function(OwnerAddress, MachineIndex, TransitionIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInstanceTransitionTimeElapsed: Failed To Allocate The Params");return;end;
 MachineIndex = MachineIndex or 0
 TransitionIndex = TransitionIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MachineIndex at +0x0, TransitionIndex at +0x4
 writeInteger(_params + 0x0, MachineIndex)
 writeInteger(_params + 0x4, TransitionIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetInstanceTransitionTimeElapsed", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInstanceTransitionTimeElapsed");

BL4.GetInstanceTransitionTimeElapsedFraction = function(OwnerAddress, MachineIndex, TransitionIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInstanceTransitionTimeElapsedFraction: Failed To Allocate The Params");return;end;
 MachineIndex = MachineIndex or 0
 TransitionIndex = TransitionIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MachineIndex at +0x0, TransitionIndex at +0x4
 writeInteger(_params + 0x0, MachineIndex)
 writeInteger(_params + 0x4, TransitionIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetInstanceTransitionTimeElapsedFraction", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInstanceTransitionTimeElapsedFraction");

BL4.GetLinkedAnimGraphInstanceByTag = function(OwnerAddress, InTag)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLinkedAnimGraphInstanceByTag: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InTag at +0x0
 writeQword(_params + 0x0, InTag)
 UE.CallProcessEventEx(OwnerAddress, "GetLinkedAnimGraphInstanceByTag", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLinkedAnimGraphInstanceByTag");

BL4.GetLinkedAnimGraphInstancesByTag = function(OwnerAddress, InTag, OutLinkedInstances)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLinkedAnimGraphInstancesByTag: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InTag at +0x0, OutLinkedInstances at +0x8
 writeQword(_params + 0x0, InTag)
 writeQword(_params + 0x8, OutLinkedInstances)
 UE.CallProcessEventEx(OwnerAddress, "GetLinkedAnimGraphInstancesByTag", _params);
 deAlloc(_params);
end
FNR("BL4.GetLinkedAnimGraphInstancesByTag");

BL4.GetLinkedAnimLayerInstanceByClass = function(InClass_Class, bCheckForChildClass)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLinkedAnimLayerInstanceByClass: Failed To Allocate The Params");return;end;
 bCheckForChildClass = bCheckForChildClass or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InClass at +0x0, bCheckForChildClass at +0x8
 writeQword(_params + 0x0, InClass_Class)
 writeByte(_params + 0x8, bCheckForChildClass)
 UE.CallProcessEventEx(InClass_Class, "GetLinkedAnimLayerInstanceByClass", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLinkedAnimLayerInstanceByClass");

BL4.GetLinkedAnimLayerInstanceByGroup = function(OwnerAddress, InGroup)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLinkedAnimLayerInstanceByGroup: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InGroup at +0x0
 writeQword(_params + 0x0, InGroup)
 UE.CallProcessEventEx(OwnerAddress, "GetLinkedAnimLayerInstanceByGroup", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLinkedAnimLayerInstanceByGroup");

BL4.GetLinkedAnimLayerInstanceByGroupAndClass = function(OwnerAddress, InGroup, InClass_Class)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLinkedAnimLayerInstanceByGroupAndClass: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InGroup at +0x0, InClass at +0x8
 writeQword(_params + 0x0, InGroup)
 writeQword(_params + 0x8, InClass_Class)
 UE.CallProcessEventEx(OwnerAddress, "GetLinkedAnimLayerInstanceByGroupAndClass", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLinkedAnimLayerInstanceByGroupAndClass");

BL4.GetLinkedAnimLayerInstancesByGroup = function(OwnerAddress, InGroup, OutLinkedInstances)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLinkedAnimLayerInstancesByGroup: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InGroup at +0x0, OutLinkedInstances at +0x8
 writeQword(_params + 0x0, InGroup)
 writeQword(_params + 0x8, OutLinkedInstances)
 UE.CallProcessEventEx(OwnerAddress, "GetLinkedAnimLayerInstancesByGroup", _params);
 deAlloc(_params);
end
FNR("BL4.GetLinkedAnimLayerInstancesByGroup");

BL4.GetOwningActor = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetOwningActor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetOwningActor", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetOwningActor");

BL4.GetOwningComponent = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetOwningComponent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetOwningComponent", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetOwningComponent");

BL4.GetPropagateNotifiesToLinkedInstances = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPropagateNotifiesToLinkedInstances: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetPropagateNotifiesToLinkedInstances", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPropagateNotifiesToLinkedInstances");

BL4.GetReceiveNotifiesFromLinkedInstances = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetReceiveNotifiesFromLinkedInstances: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetReceiveNotifiesFromLinkedInstances", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetReceiveNotifiesFromLinkedInstances");

BL4.GetRelevantAnimLength = function(OwnerAddress, MachineIndex, StateIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRelevantAnimLength: Failed To Allocate The Params");return;end;
 MachineIndex = MachineIndex or 0
 StateIndex = StateIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MachineIndex at +0x0, StateIndex at +0x4
 writeInteger(_params + 0x0, MachineIndex)
 writeInteger(_params + 0x4, StateIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetRelevantAnimLength", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRelevantAnimLength");

BL4.GetRelevantAnimTime = function(OwnerAddress, MachineIndex, StateIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRelevantAnimTime: Failed To Allocate The Params");return;end;
 MachineIndex = MachineIndex or 0
 StateIndex = StateIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MachineIndex at +0x0, StateIndex at +0x4
 writeInteger(_params + 0x0, MachineIndex)
 writeInteger(_params + 0x4, StateIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetRelevantAnimTime", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRelevantAnimTime");

BL4.GetRelevantAnimTimeFraction = function(OwnerAddress, MachineIndex, StateIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRelevantAnimTimeFraction: Failed To Allocate The Params");return;end;
 MachineIndex = MachineIndex or 0
 StateIndex = StateIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MachineIndex at +0x0, StateIndex at +0x4
 writeInteger(_params + 0x0, MachineIndex)
 writeInteger(_params + 0x4, StateIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetRelevantAnimTimeFraction", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRelevantAnimTimeFraction");

BL4.GetRelevantAnimTimeRemaining = function(OwnerAddress, MachineIndex, StateIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRelevantAnimTimeRemaining: Failed To Allocate The Params");return;end;
 MachineIndex = MachineIndex or 0
 StateIndex = StateIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MachineIndex at +0x0, StateIndex at +0x4
 writeInteger(_params + 0x0, MachineIndex)
 writeInteger(_params + 0x4, StateIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetRelevantAnimTimeRemaining", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRelevantAnimTimeRemaining");

BL4.GetRelevantAnimTimeRemainingFraction = function(OwnerAddress, MachineIndex, StateIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRelevantAnimTimeRemainingFraction: Failed To Allocate The Params");return;end;
 MachineIndex = MachineIndex or 0
 StateIndex = StateIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MachineIndex at +0x0, StateIndex at +0x4
 writeInteger(_params + 0x0, MachineIndex)
 writeInteger(_params + 0x4, StateIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetRelevantAnimTimeRemainingFraction", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRelevantAnimTimeRemainingFraction");

BL4.GetSyncGroupPosition = function(OwnerAddress, InSyncGroupName)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSyncGroupPosition: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSyncGroupName at +0x0
 writeQword(_params + 0x0, InSyncGroupName)
 UE.CallProcessEventEx(OwnerAddress, "GetSyncGroupPosition", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSyncGroupPosition");

BL4.GetTimeToClosestMarker = function(OwnerAddress, SyncGroup, MarkerName, OutMarkerTime)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTimeToClosestMarker: Failed To Allocate The Params");return;end;
 OutMarkerTime = OutMarkerTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SyncGroup at +0x0, MarkerName at +0x8, OutMarkerTime at +0x10
 writeQword(_params + 0x0, SyncGroup)
 writeQword(_params + 0x8, MarkerName)
 writeFloat(_params + 0x10, OutMarkerTime)
 UE.CallProcessEventEx(OwnerAddress, "GetTimeToClosestMarker", _params);
 local RET=readByte(_params + 0x14);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTimeToClosestMarker");

BL4.HasMarkerBeenHitThisFrame = function(OwnerAddress, SyncGroup, MarkerName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.HasMarkerBeenHitThisFrame: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SyncGroup at +0x0, MarkerName at +0x8
 writeQword(_params + 0x0, SyncGroup)
 writeQword(_params + 0x8, MarkerName)
 UE.CallProcessEventEx(OwnerAddress, "HasMarkerBeenHitThisFrame", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.HasMarkerBeenHitThisFrame");

BL4.IsAnyBlendSpaceInstancePlaying = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsAnyBlendSpaceInstancePlaying: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsAnyBlendSpaceInstancePlaying", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsAnyBlendSpaceInstancePlaying");

BL4.IsAnyMontagePlaying = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsAnyMontagePlaying: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsAnyMontagePlaying", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsAnyMontagePlaying");

BL4.IsPlayingSlotAnimation = function(Asset_AnimSequenceBase, SlotNodeName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsPlayingSlotAnimation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Asset at +0x0, SlotNodeName at +0x8
 writeQword(_params + 0x0, Asset_AnimSequenceBase)
 writeQword(_params + 0x8, SlotNodeName)
 UE.CallProcessEventEx(Asset_AnimSequenceBase, "IsPlayingSlotAnimation", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsPlayingSlotAnimation");

BL4.IsSlotActive = function(OwnerAddress, SlotNodeName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsSlotActive: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SlotNodeName at +0x0
 writeQword(_params + 0x0, SlotNodeName)
 UE.CallProcessEventEx(OwnerAddress, "IsSlotActive", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsSlotActive");

BL4.IsSyncGroupBetweenMarkers = function(OwnerAddress, InSyncGroupName, PreviousMarker, NextMarker, bRespectMarkerOrder)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsSyncGroupBetweenMarkers: Failed To Allocate The Params");return;end;
 bRespectMarkerOrder = bRespectMarkerOrder or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSyncGroupName at +0x0, PreviousMarker at +0x8, NextMarker at +0x10, bRespectMarkerOrder at +0x18
 writeQword(_params + 0x0, InSyncGroupName)
 writeQword(_params + 0x8, PreviousMarker)
 writeQword(_params + 0x10, NextMarker)
 writeByte(_params + 0x18, bRespectMarkerOrder)
 UE.CallProcessEventEx(OwnerAddress, "IsSyncGroupBetweenMarkers", _params);
 local RET=readByte(_params + 0x19);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsSyncGroupBetweenMarkers");

BL4.IsUsingMainInstanceMontageEvaluationData = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsUsingMainInstanceMontageEvaluationData: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsUsingMainInstanceMontageEvaluationData", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsUsingMainInstanceMontageEvaluationData");

BL4.LinkAnimClassLayers = function(InClass_Class)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinkAnimClassLayers: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InClass at +0x0
 writeQword(_params + 0x0, InClass_Class)
 UE.CallProcessEventEx(InClass_Class, "LinkAnimClassLayers", _params);
 deAlloc(_params);
end
FNR("BL4.LinkAnimClassLayers");

BL4.LinkAnimGraphByTag = function(OwnerAddress, InTag, InClass_Class)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LinkAnimGraphByTag: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InTag at +0x0, InClass at +0x8
 writeQword(_params + 0x0, InTag)
 writeQword(_params + 0x8, InClass_Class)
 UE.CallProcessEventEx(OwnerAddress, "LinkAnimGraphByTag", _params);
 deAlloc(_params);
end
FNR("BL4.LinkAnimGraphByTag");

BL4.LockAIResources = function(OwnerAddress, bLockMovement, LockAILogic)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LockAIResources: Failed To Allocate The Params");return;end;
 bLockMovement = bLockMovement or false
 LockAILogic = LockAILogic or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bLockMovement at +0x0, LockAILogic at +0x1
 writeByte(_params + 0x0, bLockMovement)
 writeByte(_params + 0x1, LockAILogic)
 UE.CallProcessEventEx(OwnerAddress, "LockAIResources", _params);
 deAlloc(_params);
end
FNR("BL4.LockAIResources");

BL4.Montage_GetBlendTime = function(Montage_AnimMontage)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Montage_GetBlendTime: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Montage at +0x0
 writeQword(_params + 0x0, Montage_AnimMontage)
 UE.CallProcessEventEx(Montage_AnimMontage, "Montage_GetBlendTime", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Montage_GetBlendTime");

BL4.Montage_GetCurrentSection = function(Montage_AnimMontage)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Montage_GetCurrentSection: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Montage at +0x0
 writeQword(_params + 0x0, Montage_AnimMontage)
 UE.CallProcessEventEx(Montage_AnimMontage, "Montage_GetCurrentSection", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Montage_GetCurrentSection");

BL4.Montage_GetEffectivePlayRate = function(Montage_AnimMontage)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Montage_GetEffectivePlayRate: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Montage at +0x0
 writeQword(_params + 0x0, Montage_AnimMontage)
 UE.CallProcessEventEx(Montage_AnimMontage, "Montage_GetEffectivePlayRate", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Montage_GetEffectivePlayRate");

BL4.Montage_GetIsStopped = function(Montage_AnimMontage)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Montage_GetIsStopped: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Montage at +0x0
 writeQword(_params + 0x0, Montage_AnimMontage)
 UE.CallProcessEventEx(Montage_AnimMontage, "Montage_GetIsStopped", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Montage_GetIsStopped");

BL4.Montage_GetPlayRate = function(Montage_AnimMontage)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Montage_GetPlayRate: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Montage at +0x0
 writeQword(_params + 0x0, Montage_AnimMontage)
 UE.CallProcessEventEx(Montage_AnimMontage, "Montage_GetPlayRate", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Montage_GetPlayRate");

BL4.Montage_GetPosition = function(Montage_AnimMontage)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Montage_GetPosition: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Montage at +0x0
 writeQword(_params + 0x0, Montage_AnimMontage)
 UE.CallProcessEventEx(Montage_AnimMontage, "Montage_GetPosition", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Montage_GetPosition");

BL4.Montage_IsActive = function(Montage_AnimMontage)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Montage_IsActive: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Montage at +0x0
 writeQword(_params + 0x0, Montage_AnimMontage)
 UE.CallProcessEventEx(Montage_AnimMontage, "Montage_IsActive", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Montage_IsActive");

BL4.Montage_IsPlaying = function(Montage_AnimMontage)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Montage_IsPlaying: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Montage at +0x0
 writeQword(_params + 0x0, Montage_AnimMontage)
 UE.CallProcessEventEx(Montage_AnimMontage, "Montage_IsPlaying", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Montage_IsPlaying");

BL4.Montage_JumpToSection = function(OwnerAddress, SectionName, Montage_AnimMontage)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Montage_JumpToSection: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SectionName at +0x0, Montage at +0x8
 writeQword(_params + 0x0, SectionName)
 writeQword(_params + 0x8, Montage_AnimMontage)
 UE.CallProcessEventEx(OwnerAddress, "Montage_JumpToSection", _params);
 deAlloc(_params);
end
FNR("BL4.Montage_JumpToSection");

BL4.Montage_JumpToSectionsEnd = function(OwnerAddress, SectionName, Montage_AnimMontage)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Montage_JumpToSectionsEnd: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SectionName at +0x0, Montage at +0x8
 writeQword(_params + 0x0, SectionName)
 writeQword(_params + 0x8, Montage_AnimMontage)
 UE.CallProcessEventEx(OwnerAddress, "Montage_JumpToSectionsEnd", _params);
 deAlloc(_params);
end
FNR("BL4.Montage_JumpToSectionsEnd");

BL4.Montage_Pause = function(Montage_AnimMontage)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Montage_Pause: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Montage at +0x0
 writeQword(_params + 0x0, Montage_AnimMontage)
 UE.CallProcessEventEx(Montage_AnimMontage, "Montage_Pause", _params);
 deAlloc(_params);
end
FNR("BL4.Montage_Pause");

BL4.Montage_Play = function(MontageToPlay_AnimMontage, InPlayRate, ReturnValueType, InTimeToStartMontageAt, bStopAllMontages)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Montage_Play: Failed To Allocate The Params");return;end;
 InPlayRate = InPlayRate or 0
 ReturnValueType = ReturnValueType or 0
 InTimeToStartMontageAt = InTimeToStartMontageAt or 0
 bStopAllMontages = bStopAllMontages or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MontageToPlay at +0x0, InPlayRate at +0x8, ReturnValueType at +0xC, InTimeToStartMontageAt at +0x10, bStopAllMontages at +0x14
 writeQword(_params + 0x0, MontageToPlay_AnimMontage)
 writeFloat(_params + 0x8, InPlayRate)
 writeByte(_params + 0xC, ReturnValueType)
 writeFloat(_params + 0x10, InTimeToStartMontageAt)
 writeByte(_params + 0x14, bStopAllMontages)
 UE.CallProcessEventEx(MontageToPlay_AnimMontage, "Montage_Play", _params);
 local RET=readFloat(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Montage_Play");

BL4.Montage_PlayWithBlendIn = function(MontageToPlay_AnimMontage, BlendIn, InPlayRate, ReturnValueType, InTimeToStartMontageAt, bStopAllMontages)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Montage_PlayWithBlendIn: Failed To Allocate The Params");return;end;
 InPlayRate = InPlayRate or 0
 ReturnValueType = ReturnValueType or 0
 InTimeToStartMontageAt = InTimeToStartMontageAt or 0
 bStopAllMontages = bStopAllMontages or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MontageToPlay at +0x0, BlendIn at +0x8, InPlayRate at +0x18, ReturnValueType at +0x1C, InTimeToStartMontageAt at +0x20, bStopAllMontages at +0x24
 writeQword(_params + 0x0, MontageToPlay_AnimMontage)
 writeQword(_params + 0x8, BlendIn)
 writeFloat(_params + 0x18, InPlayRate)
 writeByte(_params + 0x1C, ReturnValueType)
 writeFloat(_params + 0x20, InTimeToStartMontageAt)
 writeByte(_params + 0x24, bStopAllMontages)
 UE.CallProcessEventEx(MontageToPlay_AnimMontage, "Montage_PlayWithBlendIn", _params);
 local RET=readFloat(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Montage_PlayWithBlendIn");

BL4.Montage_PlayWithBlendSettings = function(MontageToPlay_AnimMontage, BlendInSettings, InPlayRate, ReturnValueType, InTimeToStartMontageAt, bStopAllMontages)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Montage_PlayWithBlendSettings: Failed To Allocate The Params");return;end;
 InPlayRate = InPlayRate or 0
 ReturnValueType = ReturnValueType or 0
 InTimeToStartMontageAt = InTimeToStartMontageAt or 0
 bStopAllMontages = bStopAllMontages or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MontageToPlay at +0x0, BlendInSettings at +0x8, InPlayRate at +0x28, ReturnValueType at +0x2C, InTimeToStartMontageAt at +0x30, bStopAllMontages at +0x34
 writeQword(_params + 0x0, MontageToPlay_AnimMontage)
 writeQword(_params + 0x8, BlendInSettings)
 writeFloat(_params + 0x28, InPlayRate)
 writeByte(_params + 0x2C, ReturnValueType)
 writeFloat(_params + 0x30, InTimeToStartMontageAt)
 writeByte(_params + 0x34, bStopAllMontages)
 UE.CallProcessEventEx(MontageToPlay_AnimMontage, "Montage_PlayWithBlendSettings", _params);
 local RET=readFloat(_params + 0x38);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Montage_PlayWithBlendSettings");

BL4.Montage_Resume = function(Montage_AnimMontage)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Montage_Resume: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Montage at +0x0
 writeQword(_params + 0x0, Montage_AnimMontage)
 UE.CallProcessEventEx(Montage_AnimMontage, "Montage_Resume", _params);
 deAlloc(_params);
end
FNR("BL4.Montage_Resume");

BL4.Montage_SetNextSection = function(OwnerAddress, SectionNameToChange, NextSection, Montage_AnimMontage)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Montage_SetNextSection: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SectionNameToChange at +0x0, NextSection at +0x8, Montage at +0x10
 writeQword(_params + 0x0, SectionNameToChange)
 writeQword(_params + 0x8, NextSection)
 writeQword(_params + 0x10, Montage_AnimMontage)
 UE.CallProcessEventEx(OwnerAddress, "Montage_SetNextSection", _params);
 deAlloc(_params);
end
FNR("BL4.Montage_SetNextSection");

BL4.Montage_SetPlayRate = function(Montage_AnimMontage, NewPlayRate)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Montage_SetPlayRate: Failed To Allocate The Params");return;end;
 NewPlayRate = NewPlayRate or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Montage at +0x0, NewPlayRate at +0x8
 writeQword(_params + 0x0, Montage_AnimMontage)
 writeFloat(_params + 0x8, NewPlayRate)
 UE.CallProcessEventEx(Montage_AnimMontage, "Montage_SetPlayRate", _params);
 deAlloc(_params);
end
FNR("BL4.Montage_SetPlayRate");

BL4.Montage_SetPosition = function(Montage_AnimMontage, NewPosition)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Montage_SetPosition: Failed To Allocate The Params");return;end;
 NewPosition = NewPosition or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Montage at +0x0, NewPosition at +0x8
 writeQword(_params + 0x0, Montage_AnimMontage)
 writeFloat(_params + 0x8, NewPosition)
 UE.CallProcessEventEx(Montage_AnimMontage, "Montage_SetPosition", _params);
 deAlloc(_params);
end
FNR("BL4.Montage_SetPosition");

BL4.Montage_Stop = function(OwnerAddress, InBlendOutTime, Montage_AnimMontage)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Montage_Stop: Failed To Allocate The Params");return;end;
 InBlendOutTime = InBlendOutTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InBlendOutTime at +0x0, Montage at +0x8
 writeFloat(_params + 0x0, InBlendOutTime)
 writeQword(_params + 0x8, Montage_AnimMontage)
 UE.CallProcessEventEx(OwnerAddress, "Montage_Stop", _params);
 deAlloc(_params);
end
FNR("BL4.Montage_Stop");

BL4.Montage_StopGroupByName = function(OwnerAddress, InBlendOutTime, GroupName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Montage_StopGroupByName: Failed To Allocate The Params");return;end;
 InBlendOutTime = InBlendOutTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InBlendOutTime at +0x0, GroupName at +0x4
 writeFloat(_params + 0x0, InBlendOutTime)
 writeQword(_params + 0x4, GroupName)
 UE.CallProcessEventEx(OwnerAddress, "Montage_StopGroupByName", _params);
 deAlloc(_params);
end
FNR("BL4.Montage_StopGroupByName");

BL4.Montage_StopWithBlendOut = function(OwnerAddress, BlendOut, Montage_AnimMontage)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Montage_StopWithBlendOut: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlendOut at +0x0, Montage at +0x10
 writeQword(_params + 0x0, BlendOut)
 writeQword(_params + 0x10, Montage_AnimMontage)
 UE.CallProcessEventEx(OwnerAddress, "Montage_StopWithBlendOut", _params);
 deAlloc(_params);
end
FNR("BL4.Montage_StopWithBlendOut");

BL4.Montage_StopWithBlendSettings = function(OwnerAddress, BlendOutSettings, Montage_AnimMontage)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Montage_StopWithBlendSettings: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BlendOutSettings at +0x0, Montage at +0x20
 writeQword(_params + 0x0, BlendOutSettings)
 writeQword(_params + 0x20, Montage_AnimMontage)
 UE.CallProcessEventEx(OwnerAddress, "Montage_StopWithBlendSettings", _params);
 deAlloc(_params);
end
FNR("BL4.Montage_StopWithBlendSettings");

BL4.MontageSync_Follow = function(MontageFollower_AnimMontage, OtherAnimInstance_AnimInstance, MontageLeader_AnimMontage)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MontageSync_Follow: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MontageFollower at +0x0, OtherAnimInstance at +0x8, MontageLeader at +0x10
 writeQword(_params + 0x0, MontageFollower_AnimMontage)
 writeQword(_params + 0x8, OtherAnimInstance_AnimInstance)
 writeQword(_params + 0x10, MontageLeader_AnimMontage)
 UE.CallProcessEventEx(MontageFollower_AnimMontage, "MontageSync_Follow", _params);
 deAlloc(_params);
end
FNR("BL4.MontageSync_Follow");

BL4.MontageSync_StopFollowing = function(MontageFollower_AnimMontage)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MontageSync_StopFollowing: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: MontageFollower at +0x0
 writeQword(_params + 0x0, MontageFollower_AnimMontage)
 UE.CallProcessEventEx(MontageFollower_AnimMontage, "MontageSync_StopFollowing", _params);
 deAlloc(_params);
end
FNR("BL4.MontageSync_StopFollowing");

BL4.PlaySlotAnimationAsDynamicMontage = function(Asset_AnimSequenceBase, SlotNodeName, BlendInTime, BlendOutTime, InPlayRate, LoopCount, BlendOutTriggerTime, InTimeToStartMontageAt)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PlaySlotAnimationAsDynamicMontage: Failed To Allocate The Params");return;end;
 BlendInTime = BlendInTime or 0
 BlendOutTime = BlendOutTime or 0
 InPlayRate = InPlayRate or 0
 LoopCount = LoopCount or 0
 BlendOutTriggerTime = BlendOutTriggerTime or 0
 InTimeToStartMontageAt = InTimeToStartMontageAt or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Asset at +0x0, SlotNodeName at +0x8, BlendInTime at +0x10, BlendOutTime at +0x14, InPlayRate at +0x18, LoopCount at +0x1C, BlendOutTriggerTime at +0x20, InTimeToStartMontageAt at +0x24
 writeQword(_params + 0x0, Asset_AnimSequenceBase)
 writeQword(_params + 0x8, SlotNodeName)
 writeFloat(_params + 0x10, BlendInTime)
 writeFloat(_params + 0x14, BlendOutTime)
 writeFloat(_params + 0x18, InPlayRate)
 writeInteger(_params + 0x1C, LoopCount)
 writeFloat(_params + 0x20, BlendOutTriggerTime)
 writeFloat(_params + 0x24, InTimeToStartMontageAt)
 UE.CallProcessEventEx(Asset_AnimSequenceBase, "PlaySlotAnimationAsDynamicMontage", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.PlaySlotAnimationAsDynamicMontage");

BL4.PlaySlotAnimationAsDynamicMontage_WithBlendArgs = function(Asset_AnimSequenceBase, SlotNodeName, BlendIn, BlendOut, InPlayRate, LoopCount, BlendOutTriggerTime, InTimeToStartMontageAt)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PlaySlotAnimationAsDynamicMontage_WithBlendArgs: Failed To Allocate The Params");return;end;
 InPlayRate = InPlayRate or 0
 LoopCount = LoopCount or 0
 BlendOutTriggerTime = BlendOutTriggerTime or 0
 InTimeToStartMontageAt = InTimeToStartMontageAt or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Asset at +0x0, SlotNodeName at +0x8, BlendIn at +0x10, BlendOut at +0x20, InPlayRate at +0x30, LoopCount at +0x34, BlendOutTriggerTime at +0x38, InTimeToStartMontageAt at +0x3C
 writeQword(_params + 0x0, Asset_AnimSequenceBase)
 writeQword(_params + 0x8, SlotNodeName)
 writeQword(_params + 0x10, BlendIn)
 writeQword(_params + 0x20, BlendOut)
 writeFloat(_params + 0x30, InPlayRate)
 writeInteger(_params + 0x34, LoopCount)
 writeFloat(_params + 0x38, BlendOutTriggerTime)
 writeFloat(_params + 0x3C, InTimeToStartMontageAt)
 UE.CallProcessEventEx(Asset_AnimSequenceBase, "PlaySlotAnimationAsDynamicMontage_WithBlendArgs", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.PlaySlotAnimationAsDynamicMontage_WithBlendArgs");

BL4.PlaySlotAnimationAsDynamicMontage_WithBlendSettings = function(Asset_AnimSequenceBase, SlotNodeName, BlendInSettings, BlendOutSettings, InPlayRate, LoopCount, BlendOutTriggerTime, InTimeToStartMontageAt)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PlaySlotAnimationAsDynamicMontage_WithBlendSettings: Failed To Allocate The Params");return;end;
 InPlayRate = InPlayRate or 0
 LoopCount = LoopCount or 0
 BlendOutTriggerTime = BlendOutTriggerTime or 0
 InTimeToStartMontageAt = InTimeToStartMontageAt or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Asset at +0x0, SlotNodeName at +0x8, BlendInSettings at +0x10, BlendOutSettings at +0x30, InPlayRate at +0x50, LoopCount at +0x54, BlendOutTriggerTime at +0x58, InTimeToStartMontageAt at +0x5C
 writeQword(_params + 0x0, Asset_AnimSequenceBase)
 writeQword(_params + 0x8, SlotNodeName)
 writeQword(_params + 0x10, BlendInSettings)
 writeQword(_params + 0x30, BlendOutSettings)
 writeFloat(_params + 0x50, InPlayRate)
 writeInteger(_params + 0x54, LoopCount)
 writeFloat(_params + 0x58, BlendOutTriggerTime)
 writeFloat(_params + 0x5C, InTimeToStartMontageAt)
 UE.CallProcessEventEx(Asset_AnimSequenceBase, "PlaySlotAnimationAsDynamicMontage_WithBlendSettings", _params);
 local RET=readQword(_params + 0x60);
 deAlloc(_params);
 return RET;
end
FNR("BL4.PlaySlotAnimationAsDynamicMontage_WithBlendSettings");

BL4.QueryAndMarkTransitionEvent = function(OwnerAddress, MachineIndex, TransitionIndex, EventName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.QueryAndMarkTransitionEvent: Failed To Allocate The Params");return;end;
 MachineIndex = MachineIndex or 0
 TransitionIndex = TransitionIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MachineIndex at +0x0, TransitionIndex at +0x4, EventName at +0x8
 writeInteger(_params + 0x0, MachineIndex)
 writeInteger(_params + 0x4, TransitionIndex)
 writeQword(_params + 0x8, EventName)
 UE.CallProcessEventEx(OwnerAddress, "QueryAndMarkTransitionEvent", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.QueryAndMarkTransitionEvent");

BL4.QueryTransitionEvent = function(OwnerAddress, MachineIndex, TransitionIndex, EventName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.QueryTransitionEvent: Failed To Allocate The Params");return;end;
 MachineIndex = MachineIndex or 0
 TransitionIndex = TransitionIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MachineIndex at +0x0, TransitionIndex at +0x4, EventName at +0x8
 writeInteger(_params + 0x0, MachineIndex)
 writeInteger(_params + 0x4, TransitionIndex)
 writeQword(_params + 0x8, EventName)
 UE.CallProcessEventEx(OwnerAddress, "QueryTransitionEvent", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.QueryTransitionEvent");

BL4.RemovePoseSnapshot = function(OwnerAddress, SnapshotName)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemovePoseSnapshot: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: SnapshotName at +0x0
 writeQword(_params + 0x0, SnapshotName)
 UE.CallProcessEventEx(OwnerAddress, "RemovePoseSnapshot", _params);
 deAlloc(_params);
end
FNR("BL4.RemovePoseSnapshot");

BL4.RequestSlotGroupInertialization = function(OwnerAddress, InSlotGroupName, Duration, BlendProfile)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RequestSlotGroupInertialization: Failed To Allocate The Params");return;end;
 Duration = Duration or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSlotGroupName at +0x0, Duration at +0x8, BlendProfile at +0x10
 writeQword(_params + 0x0, InSlotGroupName)
 writeFloat(_params + 0x8, Duration)
 writeQword(_params + 0x10, BlendProfile)
 UE.CallProcessEventEx(OwnerAddress, "RequestSlotGroupInertialization", _params);
 deAlloc(_params);
end
FNR("BL4.RequestSlotGroupInertialization");

BL4.RequestTransitionEvent = function(OwnerAddress, EventName, RequestTimeout, QueueMode, OverwriteMode)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RequestTransitionEvent: Failed To Allocate The Params");return;end;
 QueueMode = QueueMode or 0
 OverwriteMode = OverwriteMode or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: EventName at +0x0, RequestTimeout at +0x8, QueueMode at +0x10, OverwriteMode at +0x11
 writeQword(_params + 0x0, EventName)
 writeQword(_params + 0x8, RequestTimeout)
 writeByte(_params + 0x10, QueueMode)
 writeByte(_params + 0x11, OverwriteMode)
 UE.CallProcessEventEx(OwnerAddress, "RequestTransitionEvent", _params);
 local RET=readByte(_params + 0x12);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RequestTransitionEvent");

BL4.ResetDynamics = function(OwnerAddress, InTeleportType)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ResetDynamics: Failed To Allocate The Params");return;end;
 InTeleportType = InTeleportType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InTeleportType at +0x0
 writeByte(_params + 0x0, InTeleportType)
 UE.CallProcessEventEx(OwnerAddress, "ResetDynamics", _params);
 deAlloc(_params);
end
FNR("BL4.ResetDynamics");

BL4.SavePoseSnapshot = function(OwnerAddress, SnapshotName)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SavePoseSnapshot: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: SnapshotName at +0x0
 writeQword(_params + 0x0, SnapshotName)
 UE.CallProcessEventEx(OwnerAddress, "SavePoseSnapshot", _params);
 deAlloc(_params);
end
FNR("BL4.SavePoseSnapshot");

BL4.SetMorphTarget = function(OwnerAddress, MorphTargetName, Value)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMorphTarget: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MorphTargetName at +0x0, Value at +0x8
 writeQword(_params + 0x0, MorphTargetName)
 writeFloat(_params + 0x8, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetMorphTarget", _params);
 deAlloc(_params);
end
FNR("BL4.SetMorphTarget");

BL4.SetPropagateNotifiesToLinkedInstances = function(OwnerAddress, bSet)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPropagateNotifiesToLinkedInstances: Failed To Allocate The Params");return;end;
 bSet = bSet or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bSet at +0x0
 writeByte(_params + 0x0, bSet)
 UE.CallProcessEventEx(OwnerAddress, "SetPropagateNotifiesToLinkedInstances", _params);
 deAlloc(_params);
end
FNR("BL4.SetPropagateNotifiesToLinkedInstances");

BL4.SetReceiveNotifiesFromLinkedInstances = function(OwnerAddress, bSet)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetReceiveNotifiesFromLinkedInstances: Failed To Allocate The Params");return;end;
 bSet = bSet or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bSet at +0x0
 writeByte(_params + 0x0, bSet)
 UE.CallProcessEventEx(OwnerAddress, "SetReceiveNotifiesFromLinkedInstances", _params);
 deAlloc(_params);
end
FNR("BL4.SetReceiveNotifiesFromLinkedInstances");

BL4.SetRootMotionMode = function(OwnerAddress, Value)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRootMotionMode: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeByte(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetRootMotionMode", _params);
 deAlloc(_params);
end
FNR("BL4.SetRootMotionMode");

BL4.SetUseMainInstanceMontageEvaluationData = function(OwnerAddress, bSet)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetUseMainInstanceMontageEvaluationData: Failed To Allocate The Params");return;end;
 bSet = bSet or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bSet at +0x0
 writeByte(_params + 0x0, bSet)
 UE.CallProcessEventEx(OwnerAddress, "SetUseMainInstanceMontageEvaluationData", _params);
 deAlloc(_params);
end
FNR("BL4.SetUseMainInstanceMontageEvaluationData");

BL4.SnapshotPose = function(OwnerAddress, Snapshot)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SnapshotPose: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Snapshot at +0x0
 writeQword(_params + 0x0, Snapshot)
 UE.CallProcessEventEx(OwnerAddress, "SnapshotPose", _params);
 deAlloc(_params);
end
FNR("BL4.SnapshotPose");

BL4.StopSlotAnimation = function(OwnerAddress, InBlendOutTime, SlotNodeName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StopSlotAnimation: Failed To Allocate The Params");return;end;
 InBlendOutTime = InBlendOutTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InBlendOutTime at +0x0, SlotNodeName at +0x4
 writeFloat(_params + 0x0, InBlendOutTime)
 writeQword(_params + 0x4, SlotNodeName)
 UE.CallProcessEventEx(OwnerAddress, "StopSlotAnimation", _params);
 deAlloc(_params);
end
FNR("BL4.StopSlotAnimation");

BL4.TryGetPawnOwner = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TryGetPawnOwner: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "TryGetPawnOwner", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.TryGetPawnOwner");

BL4.UnlinkAnimClassLayers = function(InClass_Class)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnlinkAnimClassLayers: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InClass at +0x0
 writeQword(_params + 0x0, InClass_Class)
 UE.CallProcessEventEx(InClass_Class, "UnlinkAnimClassLayers", _params);
 deAlloc(_params);
end
FNR("BL4.UnlinkAnimClassLayers");

BL4.UnlockAIResources = function(OwnerAddress, bUnlockMovement, UnlockAILogic)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnlockAIResources: Failed To Allocate The Params");return;end;
 bUnlockMovement = bUnlockMovement or false
 UnlockAILogic = UnlockAILogic or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bUnlockMovement at +0x0, UnlockAILogic at +0x1
 writeByte(_params + 0x0, bUnlockMovement)
 writeByte(_params + 0x1, UnlockAILogic)
 UE.CallProcessEventEx(OwnerAddress, "UnlockAIResources", _params);
 deAlloc(_params);
end
FNR("BL4.UnlockAIResources");

BL4.WasAnimNotifyNameTriggeredInAnyState = function(OwnerAddress, NotifyName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.WasAnimNotifyNameTriggeredInAnyState: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NotifyName at +0x0
 writeQword(_params + 0x0, NotifyName)
 UE.CallProcessEventEx(OwnerAddress, "WasAnimNotifyNameTriggeredInAnyState", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.WasAnimNotifyNameTriggeredInAnyState");

BL4.WasAnimNotifyNameTriggeredInSourceState = function(OwnerAddress, MachineIndex, StateIndex, NotifyName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.WasAnimNotifyNameTriggeredInSourceState: Failed To Allocate The Params");return;end;
 MachineIndex = MachineIndex or 0
 StateIndex = StateIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MachineIndex at +0x0, StateIndex at +0x4, NotifyName at +0x8
 writeInteger(_params + 0x0, MachineIndex)
 writeInteger(_params + 0x4, StateIndex)
 writeQword(_params + 0x8, NotifyName)
 UE.CallProcessEventEx(OwnerAddress, "WasAnimNotifyNameTriggeredInSourceState", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.WasAnimNotifyNameTriggeredInSourceState");

BL4.WasAnimNotifyNameTriggeredInStateMachine = function(OwnerAddress, MachineIndex, NotifyName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.WasAnimNotifyNameTriggeredInStateMachine: Failed To Allocate The Params");return;end;
 MachineIndex = MachineIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MachineIndex at +0x0, NotifyName at +0x4
 writeInteger(_params + 0x0, MachineIndex)
 writeQword(_params + 0x4, NotifyName)
 UE.CallProcessEventEx(OwnerAddress, "WasAnimNotifyNameTriggeredInStateMachine", _params);
 local RET=readByte(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.WasAnimNotifyNameTriggeredInStateMachine");

BL4.WasAnimNotifyStateActiveInAnyState = function(AnimNotifyStateType_Class)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.WasAnimNotifyStateActiveInAnyState: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AnimNotifyStateType at +0x0
 writeQword(_params + 0x0, AnimNotifyStateType_Class)
 UE.CallProcessEventEx(AnimNotifyStateType_Class, "WasAnimNotifyStateActiveInAnyState", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.WasAnimNotifyStateActiveInAnyState");

BL4.WasAnimNotifyStateActiveInSourceState = function(OwnerAddress, MachineIndex, StateIndex, AnimNotifyStateType_Class)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.WasAnimNotifyStateActiveInSourceState: Failed To Allocate The Params");return;end;
 MachineIndex = MachineIndex or 0
 StateIndex = StateIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MachineIndex at +0x0, StateIndex at +0x4, AnimNotifyStateType at +0x8
 writeInteger(_params + 0x0, MachineIndex)
 writeInteger(_params + 0x4, StateIndex)
 writeQword(_params + 0x8, AnimNotifyStateType_Class)
 UE.CallProcessEventEx(OwnerAddress, "WasAnimNotifyStateActiveInSourceState", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.WasAnimNotifyStateActiveInSourceState");

BL4.WasAnimNotifyStateActiveInStateMachine = function(OwnerAddress, MachineIndex, AnimNotifyStateType_Class)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.WasAnimNotifyStateActiveInStateMachine: Failed To Allocate The Params");return;end;
 MachineIndex = MachineIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MachineIndex at +0x0, AnimNotifyStateType at +0x8
 writeInteger(_params + 0x0, MachineIndex)
 writeQword(_params + 0x8, AnimNotifyStateType_Class)
 UE.CallProcessEventEx(OwnerAddress, "WasAnimNotifyStateActiveInStateMachine", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.WasAnimNotifyStateActiveInStateMachine");

BL4.WasAnimNotifyTriggeredInAnyState = function(AnimNotifyType_Class)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.WasAnimNotifyTriggeredInAnyState: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AnimNotifyType at +0x0
 writeQword(_params + 0x0, AnimNotifyType_Class)
 UE.CallProcessEventEx(AnimNotifyType_Class, "WasAnimNotifyTriggeredInAnyState", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.WasAnimNotifyTriggeredInAnyState");

BL4.WasAnimNotifyTriggeredInSourceState = function(OwnerAddress, MachineIndex, StateIndex, AnimNotifyType_Class)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.WasAnimNotifyTriggeredInSourceState: Failed To Allocate The Params");return;end;
 MachineIndex = MachineIndex or 0
 StateIndex = StateIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MachineIndex at +0x0, StateIndex at +0x4, AnimNotifyType at +0x8
 writeInteger(_params + 0x0, MachineIndex)
 writeInteger(_params + 0x4, StateIndex)
 writeQword(_params + 0x8, AnimNotifyType_Class)
 UE.CallProcessEventEx(OwnerAddress, "WasAnimNotifyTriggeredInSourceState", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.WasAnimNotifyTriggeredInSourceState");

BL4.WasAnimNotifyTriggeredInStateMachine = function(OwnerAddress, MachineIndex, AnimNotifyType_Class)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.WasAnimNotifyTriggeredInStateMachine: Failed To Allocate The Params");return;end;
 MachineIndex = MachineIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MachineIndex at +0x0, AnimNotifyType at +0x8
 writeInteger(_params + 0x0, MachineIndex)
 writeQword(_params + 0x8, AnimNotifyType_Class)
 UE.CallProcessEventEx(OwnerAddress, "WasAnimNotifyTriggeredInStateMachine", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.WasAnimNotifyTriggeredInStateMachine");

