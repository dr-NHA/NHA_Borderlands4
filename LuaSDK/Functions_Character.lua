BL4.CacheInitialMeshOffset = function(OwnerAddress, MeshRelativeLocation, MeshRelativeRotation)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CacheInitialMeshOffset: Failed To Allocate The Params");return;end;
 MeshRelativeLocation = MeshRelativeLocation or {X=0,Y=0,Z=0}
 MeshRelativeRotation = MeshRelativeRotation or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MeshRelativeLocation at +0x0, MeshRelativeRotation at +0x18
 writeDouble(_params + 0x0, (MeshRelativeLocation and MeshRelativeLocation.X) or 0)
 writeDouble(_params + 0x8, (MeshRelativeLocation and MeshRelativeLocation.Y) or 0)
 writeDouble(_params + 0x10, (MeshRelativeLocation and MeshRelativeLocation.Z) or 0)
 writeDouble(_params + 0x18, (MeshRelativeRotation and MeshRelativeRotation.Pitch) or 0)
 writeDouble(_params + 0x20, (MeshRelativeRotation and MeshRelativeRotation.Yaw) or 0)
 writeDouble(_params + 0x28, (MeshRelativeRotation and MeshRelativeRotation.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "CacheInitialMeshOffset", _params);
 deAlloc(_params);
end
FNR("BL4.CacheInitialMeshOffset");

BL4.CanCrouch = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CanCrouch: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "CanCrouch", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CanCrouch");

BL4.CanJump = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CanJump: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "CanJump", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CanJump");

BL4.CanJumpInternal = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CanJumpInternal: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "CanJumpInternal", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CanJumpInternal");

BL4.ClientAckGoodMove = function(OwnerAddress, Timestamp)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientAckGoodMove: Failed To Allocate The Params");return;end;
 Timestamp = Timestamp or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Timestamp at +0x0
 writeFloat(_params + 0x0, Timestamp)
 UE.CallProcessEventEx(OwnerAddress, "ClientAckGoodMove", _params);
 deAlloc(_params);
end
FNR("BL4.ClientAckGoodMove");

BL4.ClientAdjustPosition = function(OwnerAddress, Timestamp, NewLoc, NewVel, NewBase_PrimitiveComponent, NewBaseBoneName, bHasBase, bBaseRelativePosition, ServerMovementMode)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientAdjustPosition: Failed To Allocate The Params");return;end;
 Timestamp = Timestamp or 0
 NewLoc = NewLoc or {X=0,Y=0,Z=0}
 NewVel = NewVel or {X=0,Y=0,Z=0}
 bHasBase = bHasBase or false
 bBaseRelativePosition = bBaseRelativePosition or false
 ServerMovementMode = ServerMovementMode or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Timestamp at +0x0, NewLoc at +0x8, NewVel at +0x20, NewBase at +0x38, NewBaseBoneName at +0x40, bHasBase at +0x48, bBaseRelativePosition at +0x49, ServerMovementMode at +0x4A
 writeFloat(_params + 0x0, Timestamp)
 writeDouble(_params + 0x8, (NewLoc and NewLoc.X) or 0)
 writeDouble(_params + 0x10, (NewLoc and NewLoc.Y) or 0)
 writeDouble(_params + 0x18, (NewLoc and NewLoc.Z) or 0)
 writeDouble(_params + 0x20, (NewVel and NewVel.X) or 0)
 writeDouble(_params + 0x28, (NewVel and NewVel.Y) or 0)
 writeDouble(_params + 0x30, (NewVel and NewVel.Z) or 0)
 writeQword(_params + 0x38, NewBase_PrimitiveComponent)
 writeQword(_params + 0x40, NewBaseBoneName)
 writeByte(_params + 0x48, bHasBase)
 writeByte(_params + 0x49, bBaseRelativePosition)
 writeByte(_params + 0x4A, ServerMovementMode)
 UE.CallProcessEventEx(OwnerAddress, "ClientAdjustPosition", _params);
 deAlloc(_params);
end
FNR("BL4.ClientAdjustPosition");

BL4.ClientAdjustRootMotionPosition = function(OwnerAddress, Timestamp, ServerMontageTrackPosition, ServerLoc, ServerRotation, ServerVelZ, ServerBase_PrimitiveComponent, ServerBoneName, bHasBase, bBaseRelativePosition, ServerMovementMode)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientAdjustRootMotionPosition: Failed To Allocate The Params");return;end;
 Timestamp = Timestamp or 0
 ServerMontageTrackPosition = ServerMontageTrackPosition or 0
 ServerLoc = ServerLoc or {X=0,Y=0,Z=0}
 ServerVelZ = ServerVelZ or 0
 bHasBase = bHasBase or false
 bBaseRelativePosition = bBaseRelativePosition or false
 ServerMovementMode = ServerMovementMode or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Timestamp at +0x0, ServerMontageTrackPosition at +0x4, ServerLoc at +0x8, ServerRotation at +0x20, ServerVelZ at +0x38, ServerBase at +0x40, ServerBoneName at +0x48, bHasBase at +0x50, bBaseRelativePosition at +0x51, ServerMovementMode at +0x52
 writeFloat(_params + 0x0, Timestamp)
 writeFloat(_params + 0x4, ServerMontageTrackPosition)
 writeDouble(_params + 0x8, (ServerLoc and ServerLoc.X) or 0)
 writeDouble(_params + 0x10, (ServerLoc and ServerLoc.Y) or 0)
 writeDouble(_params + 0x18, (ServerLoc and ServerLoc.Z) or 0)
 writeQword(_params + 0x20, ServerRotation)
 writeFloat(_params + 0x38, ServerVelZ)
 writeQword(_params + 0x40, ServerBase_PrimitiveComponent)
 writeQword(_params + 0x48, ServerBoneName)
 writeByte(_params + 0x50, bHasBase)
 writeByte(_params + 0x51, bBaseRelativePosition)
 writeByte(_params + 0x52, ServerMovementMode)
 UE.CallProcessEventEx(OwnerAddress, "ClientAdjustRootMotionPosition", _params);
 deAlloc(_params);
end
FNR("BL4.ClientAdjustRootMotionPosition");

BL4.ClientAdjustRootMotionSourcePosition = function(OwnerAddress, Timestamp, ServerRootMotion, bHasAnimRootMotion, ServerMontageTrackPosition, ServerLoc, ServerRotation, ServerVelZ, ServerBase_PrimitiveComponent, ServerBoneName, bHasBase, bBaseRelativePosition, ServerMovementMode)
 local _paramsSize = 0xA8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientAdjustRootMotionSourcePosition: Failed To Allocate The Params");return;end;
 Timestamp = Timestamp or 0
 bHasAnimRootMotion = bHasAnimRootMotion or false
 ServerMontageTrackPosition = ServerMontageTrackPosition or 0
 ServerLoc = ServerLoc or {X=0,Y=0,Z=0}
 ServerVelZ = ServerVelZ or 0
 bHasBase = bHasBase or false
 bBaseRelativePosition = bBaseRelativePosition or false
 ServerMovementMode = ServerMovementMode or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Timestamp at +0x0, ServerRootMotion at +0x8, bHasAnimRootMotion at +0x50, ServerMontageTrackPosition at +0x54, ServerLoc at +0x58, ServerRotation at +0x70, ServerVelZ at +0x88, ServerBase at +0x90, ServerBoneName at +0x98, bHasBase at +0xA0, bBaseRelativePosition at +0xA1, ServerMovementMode at +0xA2
 writeFloat(_params + 0x0, Timestamp)
 writeQword(_params + 0x8, ServerRootMotion)
 writeByte(_params + 0x50, bHasAnimRootMotion)
 writeFloat(_params + 0x54, ServerMontageTrackPosition)
 writeDouble(_params + 0x58, (ServerLoc and ServerLoc.X) or 0)
 writeDouble(_params + 0x60, (ServerLoc and ServerLoc.Y) or 0)
 writeDouble(_params + 0x68, (ServerLoc and ServerLoc.Z) or 0)
 writeQword(_params + 0x70, ServerRotation)
 writeFloat(_params + 0x88, ServerVelZ)
 writeQword(_params + 0x90, ServerBase_PrimitiveComponent)
 writeQword(_params + 0x98, ServerBoneName)
 writeByte(_params + 0xA0, bHasBase)
 writeByte(_params + 0xA1, bBaseRelativePosition)
 writeByte(_params + 0xA2, ServerMovementMode)
 UE.CallProcessEventEx(OwnerAddress, "ClientAdjustRootMotionSourcePosition", _params);
 deAlloc(_params);
end
FNR("BL4.ClientAdjustRootMotionSourcePosition");

BL4.ClientMoveResponsePacked = function(OwnerAddress, PackedBits)
 local _paramsSize = 0x118
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientMoveResponsePacked: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PackedBits at +0x0
 writeQword(_params + 0x0, PackedBits)
 UE.CallProcessEventEx(OwnerAddress, "ClientMoveResponsePacked", _params);
 deAlloc(_params);
end
FNR("BL4.ClientMoveResponsePacked");

BL4.ClientVeryShortAdjustPosition = function(OwnerAddress, Timestamp, NewLoc, NewBase_PrimitiveComponent, NewBaseBoneName, bHasBase, bBaseRelativePosition, ServerMovementMode)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientVeryShortAdjustPosition: Failed To Allocate The Params");return;end;
 Timestamp = Timestamp or 0
 NewLoc = NewLoc or {X=0,Y=0,Z=0}
 bHasBase = bHasBase or false
 bBaseRelativePosition = bBaseRelativePosition or false
 ServerMovementMode = ServerMovementMode or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Timestamp at +0x0, NewLoc at +0x8, NewBase at +0x20, NewBaseBoneName at +0x28, bHasBase at +0x30, bBaseRelativePosition at +0x31, ServerMovementMode at +0x32
 writeFloat(_params + 0x0, Timestamp)
 writeDouble(_params + 0x8, (NewLoc and NewLoc.X) or 0)
 writeDouble(_params + 0x10, (NewLoc and NewLoc.Y) or 0)
 writeDouble(_params + 0x18, (NewLoc and NewLoc.Z) or 0)
 writeQword(_params + 0x20, NewBase_PrimitiveComponent)
 writeQword(_params + 0x28, NewBaseBoneName)
 writeByte(_params + 0x30, bHasBase)
 writeByte(_params + 0x31, bBaseRelativePosition)
 writeByte(_params + 0x32, ServerMovementMode)
 UE.CallProcessEventEx(OwnerAddress, "ClientVeryShortAdjustPosition", _params);
 deAlloc(_params);
end
FNR("BL4.ClientVeryShortAdjustPosition");

BL4.Crouch = function(OwnerAddress, bClientSimulation)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Crouch: Failed To Allocate The Params");return;end;
 bClientSimulation = bClientSimulation or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bClientSimulation at +0x0
 writeByte(_params + 0x0, bClientSimulation)
 UE.CallProcessEventEx(OwnerAddress, "Crouch", _params);
 deAlloc(_params);
end
FNR("BL4.Crouch");

BL4.GetAnimRootMotionTranslationScale = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAnimRootMotionTranslationScale: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAnimRootMotionTranslationScale", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAnimRootMotionTranslationScale");

BL4.GetBaseRotationOffsetRotator = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBaseRotationOffsetRotator: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetBaseRotationOffsetRotator", _params);
 local RET={Pitch=readFloat(_params+0x0),Yaw=readFloat(_params+0x8),Roll=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBaseRotationOffsetRotator");

BL4.GetBaseTranslationOffset = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBaseTranslationOffset: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetBaseTranslationOffset", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8),Z=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBaseTranslationOffset");

BL4.GetCurrentMontage = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCurrentMontage: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCurrentMontage", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCurrentMontage");

BL4.HasAnyRootMotion = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.HasAnyRootMotion: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "HasAnyRootMotion", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.HasAnyRootMotion");

BL4.IsJumpProvidingForce = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsJumpProvidingForce: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsJumpProvidingForce", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsJumpProvidingForce");

BL4.IsPlayingNetworkedRootMotionMontage = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsPlayingNetworkedRootMotionMontage: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsPlayingNetworkedRootMotionMontage", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsPlayingNetworkedRootMotionMontage");

BL4.IsPlayingRootMotion = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsPlayingRootMotion: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsPlayingRootMotion", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsPlayingRootMotion");

BL4.K2_OnEndCrouch = function(OwnerAddress, HalfHeightAdjust, ScaledHalfHeightAdjust)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_OnEndCrouch: Failed To Allocate The Params");return;end;
 HalfHeightAdjust = HalfHeightAdjust or 0
 ScaledHalfHeightAdjust = ScaledHalfHeightAdjust or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: HalfHeightAdjust at +0x0, ScaledHalfHeightAdjust at +0x4
 writeFloat(_params + 0x0, HalfHeightAdjust)
 writeFloat(_params + 0x4, ScaledHalfHeightAdjust)
 UE.CallProcessEventEx(OwnerAddress, "K2_OnEndCrouch", _params);
 deAlloc(_params);
end
FNR("BL4.K2_OnEndCrouch");

BL4.K2_OnMovementModeChanged = function(OwnerAddress, PrevMovementMode, NewMovementMode, PrevCustomMode, NewCustomMode)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_OnMovementModeChanged: Failed To Allocate The Params");return;end;
 PrevMovementMode = PrevMovementMode or 0
 NewMovementMode = NewMovementMode or 0
 PrevCustomMode = PrevCustomMode or 0
 NewCustomMode = NewCustomMode or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PrevMovementMode at +0x0, NewMovementMode at +0x1, PrevCustomMode at +0x2, NewCustomMode at +0x3
 writeByte(_params + 0x0, PrevMovementMode)
 writeByte(_params + 0x1, NewMovementMode)
 writeByte(_params + 0x2, PrevCustomMode)
 writeByte(_params + 0x3, NewCustomMode)
 UE.CallProcessEventEx(OwnerAddress, "K2_OnMovementModeChanged", _params);
 deAlloc(_params);
end
FNR("BL4.K2_OnMovementModeChanged");

BL4.K2_OnStartCrouch = function(OwnerAddress, HalfHeightAdjust, ScaledHalfHeightAdjust)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_OnStartCrouch: Failed To Allocate The Params");return;end;
 HalfHeightAdjust = HalfHeightAdjust or 0
 ScaledHalfHeightAdjust = ScaledHalfHeightAdjust or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: HalfHeightAdjust at +0x0, ScaledHalfHeightAdjust at +0x4
 writeFloat(_params + 0x0, HalfHeightAdjust)
 writeFloat(_params + 0x4, ScaledHalfHeightAdjust)
 UE.CallProcessEventEx(OwnerAddress, "K2_OnStartCrouch", _params);
 deAlloc(_params);
end
FNR("BL4.K2_OnStartCrouch");

BL4.K2_UpdateCustomMovement = function(OwnerAddress, DeltaTime)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_UpdateCustomMovement: Failed To Allocate The Params");return;end;
 DeltaTime = DeltaTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: DeltaTime at +0x0
 writeFloat(_params + 0x0, DeltaTime)
 UE.CallProcessEventEx(OwnerAddress, "K2_UpdateCustomMovement", _params);
 deAlloc(_params);
end
FNR("BL4.K2_UpdateCustomMovement");

BL4.LaunchCharacter = function(OwnerAddress, LaunchVelocity, bXYOverride, bZOverride)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LaunchCharacter: Failed To Allocate The Params");return;end;
 LaunchVelocity = LaunchVelocity or {X=0,Y=0,Z=0}
 bXYOverride = bXYOverride or false
 bZOverride = bZOverride or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: LaunchVelocity at +0x0, bXYOverride at +0x18, bZOverride at +0x19
 writeDouble(_params + 0x0, (LaunchVelocity and LaunchVelocity.X) or 0)
 writeDouble(_params + 0x8, (LaunchVelocity and LaunchVelocity.Y) or 0)
 writeDouble(_params + 0x10, (LaunchVelocity and LaunchVelocity.Z) or 0)
 writeByte(_params + 0x18, bXYOverride)
 writeByte(_params + 0x19, bZOverride)
 UE.CallProcessEventEx(OwnerAddress, "LaunchCharacter", _params);
 deAlloc(_params);
end
FNR("BL4.LaunchCharacter");

BL4.OnLanded = function(OwnerAddress, Hit)
 local _paramsSize = 0x100
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnLanded: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Hit at +0x0
 writeQword(_params + 0x0, Hit)
 UE.CallProcessEventEx(OwnerAddress, "OnLanded", _params);
 deAlloc(_params);
end
FNR("BL4.OnLanded");

BL4.OnLaunched = function(OwnerAddress, LaunchVelocity, bXYOverride, bZOverride)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnLaunched: Failed To Allocate The Params");return;end;
 LaunchVelocity = LaunchVelocity or {X=0,Y=0,Z=0}
 bXYOverride = bXYOverride or false
 bZOverride = bZOverride or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: LaunchVelocity at +0x0, bXYOverride at +0x18, bZOverride at +0x19
 writeDouble(_params + 0x0, (LaunchVelocity and LaunchVelocity.X) or 0)
 writeDouble(_params + 0x8, (LaunchVelocity and LaunchVelocity.Y) or 0)
 writeDouble(_params + 0x10, (LaunchVelocity and LaunchVelocity.Z) or 0)
 writeByte(_params + 0x18, bXYOverride)
 writeByte(_params + 0x19, bZOverride)
 UE.CallProcessEventEx(OwnerAddress, "OnLaunched", _params);
 deAlloc(_params);
end
FNR("BL4.OnLaunched");

BL4.OnWalkingOffLedge = function(OwnerAddress, PreviousFloorImpactNormal, PreviousFloorContactNormal, PreviousLocation, TimeDelta)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnWalkingOffLedge: Failed To Allocate The Params");return;end;
 PreviousFloorImpactNormal = PreviousFloorImpactNormal or {X=0,Y=0,Z=0}
 PreviousFloorContactNormal = PreviousFloorContactNormal or {X=0,Y=0,Z=0}
 PreviousLocation = PreviousLocation or {X=0,Y=0,Z=0}
 TimeDelta = TimeDelta or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PreviousFloorImpactNormal at +0x0, PreviousFloorContactNormal at +0x18, PreviousLocation at +0x30, TimeDelta at +0x48
 writeDouble(_params + 0x0, (PreviousFloorImpactNormal and PreviousFloorImpactNormal.X) or 0)
 writeDouble(_params + 0x8, (PreviousFloorImpactNormal and PreviousFloorImpactNormal.Y) or 0)
 writeDouble(_params + 0x10, (PreviousFloorImpactNormal and PreviousFloorImpactNormal.Z) or 0)
 writeDouble(_params + 0x18, (PreviousFloorContactNormal and PreviousFloorContactNormal.X) or 0)
 writeDouble(_params + 0x20, (PreviousFloorContactNormal and PreviousFloorContactNormal.Y) or 0)
 writeDouble(_params + 0x28, (PreviousFloorContactNormal and PreviousFloorContactNormal.Z) or 0)
 writeDouble(_params + 0x30, (PreviousLocation and PreviousLocation.X) or 0)
 writeDouble(_params + 0x38, (PreviousLocation and PreviousLocation.Y) or 0)
 writeDouble(_params + 0x40, (PreviousLocation and PreviousLocation.Z) or 0)
 writeFloat(_params + 0x48, TimeDelta)
 UE.CallProcessEventEx(OwnerAddress, "OnWalkingOffLedge", _params);
 deAlloc(_params);
end
FNR("BL4.OnWalkingOffLedge");

BL4.PlayAnimMontage = function(AnimMontage, InPlayRate, StartSectionName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PlayAnimMontage: Failed To Allocate The Params");return;end;
 InPlayRate = InPlayRate or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AnimMontage at +0x0, InPlayRate at +0x8, StartSectionName at +0xC
 writeQword(_params + 0x0, AnimMontage)
 writeFloat(_params + 0x8, InPlayRate)
 writeQword(_params + 0xC, StartSectionName)
 UE.CallProcessEventEx(AnimMontage, "PlayAnimMontage", _params);
 local RET=readFloat(_params + 0x14);
 deAlloc(_params);
 return RET;
end
FNR("BL4.PlayAnimMontage");

BL4.RootMotionDebugClientPrintOnScreen = function(OwnerAddress, InString)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RootMotionDebugClientPrintOnScreen: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InString at +0x0
 writeQword(_params + 0x0, InString)
 UE.CallProcessEventEx(OwnerAddress, "RootMotionDebugClientPrintOnScreen", _params);
 deAlloc(_params);
end
FNR("BL4.RootMotionDebugClientPrintOnScreen");

BL4.ServerMove = function(OwnerAddress, Timestamp, InAccel, ClientLoc, CompressedMoveFlags, ClientRoll, View, ClientMovementBase_PrimitiveComponent, ClientBaseBoneName, ClientMovementMode)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerMove: Failed To Allocate The Params");return;end;
 Timestamp = Timestamp or 0
 CompressedMoveFlags = CompressedMoveFlags or 0
 ClientRoll = ClientRoll or 0
 View = View or 0
 ClientMovementMode = ClientMovementMode or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Timestamp at +0x0, InAccel at +0x8, ClientLoc at +0x20, CompressedMoveFlags at +0x38, ClientRoll at +0x39, View at +0x3C, ClientMovementBase at +0x40, ClientBaseBoneName at +0x48, ClientMovementMode at +0x50
 writeFloat(_params + 0x0, Timestamp)
 writeQword(_params + 0x8, InAccel)
 writeQword(_params + 0x20, ClientLoc)
 writeByte(_params + 0x38, CompressedMoveFlags)
 writeByte(_params + 0x39, ClientRoll)
 writeInteger(_params + 0x3C, View)
 writeQword(_params + 0x40, ClientMovementBase_PrimitiveComponent)
 writeQword(_params + 0x48, ClientBaseBoneName)
 writeByte(_params + 0x50, ClientMovementMode)
 UE.CallProcessEventEx(OwnerAddress, "ServerMove", _params);
 deAlloc(_params);
end
FNR("BL4.ServerMove");

BL4.ServerMoveDual = function(OwnerAddress, TimeStamp0, InAccel0, PendingFlags, View0, Timestamp, InAccel, ClientLoc, NewFlags, ClientRoll, View, ClientMovementBase_PrimitiveComponent, ClientBaseBoneName, ClientMovementMode)
 local _paramsSize = 0x80
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerMoveDual: Failed To Allocate The Params");return;end;
 TimeStamp0 = TimeStamp0 or 0
 PendingFlags = PendingFlags or 0
 View0 = View0 or 0
 Timestamp = Timestamp or 0
 NewFlags = NewFlags or 0
 ClientRoll = ClientRoll or 0
 View = View or 0
 ClientMovementMode = ClientMovementMode or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TimeStamp0 at +0x0, InAccel0 at +0x8, PendingFlags at +0x20, View0 at +0x24, Timestamp at +0x28, InAccel at +0x30, ClientLoc at +0x48, NewFlags at +0x60, ClientRoll at +0x61, View at +0x64, ClientMovementBase at +0x68, ClientBaseBoneName at +0x70, ClientMovementMode at +0x78
 writeFloat(_params + 0x0, TimeStamp0)
 writeQword(_params + 0x8, InAccel0)
 writeByte(_params + 0x20, PendingFlags)
 writeInteger(_params + 0x24, View0)
 writeFloat(_params + 0x28, Timestamp)
 writeQword(_params + 0x30, InAccel)
 writeQword(_params + 0x48, ClientLoc)
 writeByte(_params + 0x60, NewFlags)
 writeByte(_params + 0x61, ClientRoll)
 writeInteger(_params + 0x64, View)
 writeQword(_params + 0x68, ClientMovementBase_PrimitiveComponent)
 writeQword(_params + 0x70, ClientBaseBoneName)
 writeByte(_params + 0x78, ClientMovementMode)
 UE.CallProcessEventEx(OwnerAddress, "ServerMoveDual", _params);
 deAlloc(_params);
end
FNR("BL4.ServerMoveDual");

BL4.ServerMoveDualHybridRootMotion = function(OwnerAddress, TimeStamp0, InAccel0, PendingFlags, View0, Timestamp, InAccel, ClientLoc, NewFlags, ClientRoll, View, ClientMovementBase_PrimitiveComponent, ClientBaseBoneName, ClientMovementMode)
 local _paramsSize = 0x80
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerMoveDualHybridRootMotion: Failed To Allocate The Params");return;end;
 TimeStamp0 = TimeStamp0 or 0
 PendingFlags = PendingFlags or 0
 View0 = View0 or 0
 Timestamp = Timestamp or 0
 NewFlags = NewFlags or 0
 ClientRoll = ClientRoll or 0
 View = View or 0
 ClientMovementMode = ClientMovementMode or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TimeStamp0 at +0x0, InAccel0 at +0x8, PendingFlags at +0x20, View0 at +0x24, Timestamp at +0x28, InAccel at +0x30, ClientLoc at +0x48, NewFlags at +0x60, ClientRoll at +0x61, View at +0x64, ClientMovementBase at +0x68, ClientBaseBoneName at +0x70, ClientMovementMode at +0x78
 writeFloat(_params + 0x0, TimeStamp0)
 writeQword(_params + 0x8, InAccel0)
 writeByte(_params + 0x20, PendingFlags)
 writeInteger(_params + 0x24, View0)
 writeFloat(_params + 0x28, Timestamp)
 writeQword(_params + 0x30, InAccel)
 writeQword(_params + 0x48, ClientLoc)
 writeByte(_params + 0x60, NewFlags)
 writeByte(_params + 0x61, ClientRoll)
 writeInteger(_params + 0x64, View)
 writeQword(_params + 0x68, ClientMovementBase_PrimitiveComponent)
 writeQword(_params + 0x70, ClientBaseBoneName)
 writeByte(_params + 0x78, ClientMovementMode)
 UE.CallProcessEventEx(OwnerAddress, "ServerMoveDualHybridRootMotion", _params);
 deAlloc(_params);
end
FNR("BL4.ServerMoveDualHybridRootMotion");

BL4.ServerMoveDualNoBase = function(OwnerAddress, TimeStamp0, InAccel0, PendingFlags, View0, Timestamp, InAccel, ClientLoc, NewFlags, ClientRoll, View, ClientMovementMode)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerMoveDualNoBase: Failed To Allocate The Params");return;end;
 TimeStamp0 = TimeStamp0 or 0
 PendingFlags = PendingFlags or 0
 View0 = View0 or 0
 Timestamp = Timestamp or 0
 NewFlags = NewFlags or 0
 ClientRoll = ClientRoll or 0
 View = View or 0
 ClientMovementMode = ClientMovementMode or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TimeStamp0 at +0x0, InAccel0 at +0x8, PendingFlags at +0x20, View0 at +0x24, Timestamp at +0x28, InAccel at +0x30, ClientLoc at +0x48, NewFlags at +0x60, ClientRoll at +0x61, View at +0x64, ClientMovementMode at +0x68
 writeFloat(_params + 0x0, TimeStamp0)
 writeQword(_params + 0x8, InAccel0)
 writeByte(_params + 0x20, PendingFlags)
 writeInteger(_params + 0x24, View0)
 writeFloat(_params + 0x28, Timestamp)
 writeQword(_params + 0x30, InAccel)
 writeQword(_params + 0x48, ClientLoc)
 writeByte(_params + 0x60, NewFlags)
 writeByte(_params + 0x61, ClientRoll)
 writeInteger(_params + 0x64, View)
 writeByte(_params + 0x68, ClientMovementMode)
 UE.CallProcessEventEx(OwnerAddress, "ServerMoveDualNoBase", _params);
 deAlloc(_params);
end
FNR("BL4.ServerMoveDualNoBase");

BL4.ServerMoveNoBase = function(OwnerAddress, Timestamp, InAccel, ClientLoc, CompressedMoveFlags, ClientRoll, View, ClientMovementMode)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerMoveNoBase: Failed To Allocate The Params");return;end;
 Timestamp = Timestamp or 0
 CompressedMoveFlags = CompressedMoveFlags or 0
 ClientRoll = ClientRoll or 0
 View = View or 0
 ClientMovementMode = ClientMovementMode or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Timestamp at +0x0, InAccel at +0x8, ClientLoc at +0x20, CompressedMoveFlags at +0x38, ClientRoll at +0x39, View at +0x3C, ClientMovementMode at +0x40
 writeFloat(_params + 0x0, Timestamp)
 writeQword(_params + 0x8, InAccel)
 writeQword(_params + 0x20, ClientLoc)
 writeByte(_params + 0x38, CompressedMoveFlags)
 writeByte(_params + 0x39, ClientRoll)
 writeInteger(_params + 0x3C, View)
 writeByte(_params + 0x40, ClientMovementMode)
 UE.CallProcessEventEx(OwnerAddress, "ServerMoveNoBase", _params);
 deAlloc(_params);
end
FNR("BL4.ServerMoveNoBase");

BL4.ServerMoveOld = function(OwnerAddress, OldTimeStamp, OldAccel, OldMoveFlags)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerMoveOld: Failed To Allocate The Params");return;end;
 OldTimeStamp = OldTimeStamp or 0
 OldMoveFlags = OldMoveFlags or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OldTimeStamp at +0x0, OldAccel at +0x8, OldMoveFlags at +0x20
 writeFloat(_params + 0x0, OldTimeStamp)
 writeQword(_params + 0x8, OldAccel)
 writeByte(_params + 0x20, OldMoveFlags)
 UE.CallProcessEventEx(OwnerAddress, "ServerMoveOld", _params);
 deAlloc(_params);
end
FNR("BL4.ServerMoveOld");

BL4.ServerMovePacked = function(OwnerAddress, PackedBits)
 local _paramsSize = 0x118
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerMovePacked: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PackedBits at +0x0
 writeQword(_params + 0x0, PackedBits)
 UE.CallProcessEventEx(OwnerAddress, "ServerMovePacked", _params);
 deAlloc(_params);
end
FNR("BL4.ServerMovePacked");

BL4.StopAnimMontage = function(AnimMontage)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StopAnimMontage: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AnimMontage at +0x0
 writeQword(_params + 0x0, AnimMontage)
 UE.CallProcessEventEx(AnimMontage, "StopAnimMontage", _params);
 deAlloc(_params);
end
FNR("BL4.StopAnimMontage");

BL4.UnCrouch = function(OwnerAddress, bClientSimulation)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnCrouch: Failed To Allocate The Params");return;end;
 bClientSimulation = bClientSimulation or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bClientSimulation at +0x0
 writeByte(_params + 0x0, bClientSimulation)
 UE.CallProcessEventEx(OwnerAddress, "UnCrouch", _params);
 deAlloc(_params);
end
FNR("BL4.UnCrouch");

