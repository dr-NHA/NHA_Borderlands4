BL4.ActivateTouchInterface = function(NewTouchInterface_TouchInterface)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ActivateTouchInterface: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewTouchInterface at +0x0
 writeQword(_params + 0x0, NewTouchInterface_TouchInterface)
 UE.CallProcessEventEx(NewTouchInterface_TouchInterface, "ActivateTouchInterface", _params);
 deAlloc(_params);
end
FNR("BL4.ActivateTouchInterface");

BL4.AddPitchInput = function(OwnerAddress, Val)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddPitchInput: Failed To Allocate The Params");return;end;
 Val = Val or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Val at +0x0
 writeFloat(_params + 0x0, Val)
 UE.CallProcessEventEx(OwnerAddress, "AddPitchInput", _params);
 deAlloc(_params);
end
FNR("BL4.AddPitchInput");

BL4.AddRollInput = function(OwnerAddress, Val)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddRollInput: Failed To Allocate The Params");return;end;
 Val = Val or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Val at +0x0
 writeFloat(_params + 0x0, Val)
 UE.CallProcessEventEx(OwnerAddress, "AddRollInput", _params);
 deAlloc(_params);
end
FNR("BL4.AddRollInput");

BL4.AddYawInput = function(OwnerAddress, Val)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddYawInput: Failed To Allocate The Params");return;end;
 Val = Val or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Val at +0x0
 writeFloat(_params + 0x0, Val)
 UE.CallProcessEventEx(OwnerAddress, "AddYawInput", _params);
 deAlloc(_params);
end
FNR("BL4.AddYawInput");

BL4.Camera = function(OwnerAddress, NewMode)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Camera: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewMode at +0x0
 writeQword(_params + 0x0, NewMode)
 UE.CallProcessEventEx(OwnerAddress, "Camera", _params);
 deAlloc(_params);
end
FNR("BL4.Camera");

BL4.CanRestartPlayer = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CanRestartPlayer: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "CanRestartPlayer", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CanRestartPlayer");

BL4.ClientAckTimeDilation = function(OwnerAddress, TimeDilation, ServerStep)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientAckTimeDilation: Failed To Allocate The Params");return;end;
 TimeDilation = TimeDilation or 0
 ServerStep = ServerStep or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: TimeDilation at +0x0, ServerStep at +0x4
 writeFloat(_params + 0x0, TimeDilation)
 writeInteger(_params + 0x4, ServerStep)
 UE.CallProcessEventEx(OwnerAddress, "ClientAckTimeDilation", _params);
 deAlloc(_params);
end
FNR("BL4.ClientAckTimeDilation");

BL4.ClientAckUpdateLevelVisibility = function(OwnerAddress, packagename, TransactionId, bClientAckCanMakeVisible)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientAckUpdateLevelVisibility: Failed To Allocate The Params");return;end;
 bClientAckCanMakeVisible = bClientAckCanMakeVisible or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: packagename at +0x0, TransactionId at +0x8, bClientAckCanMakeVisible at +0xC
 writeQword(_params + 0x0, packagename)
 writeQword(_params + 0x8, TransactionId)
 writeByte(_params + 0xC, bClientAckCanMakeVisible)
 UE.CallProcessEventEx(OwnerAddress, "ClientAckUpdateLevelVisibility", _params);
 deAlloc(_params);
end
FNR("BL4.ClientAckUpdateLevelVisibility");

BL4.ClientAddTextureStreamingLoc = function(OwnerAddress, InLoc, Duration, bOverrideLocation)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientAddTextureStreamingLoc: Failed To Allocate The Params");return;end;
 InLoc = InLoc or {X=0,Y=0,Z=0}
 Duration = Duration or 0
 bOverrideLocation = bOverrideLocation or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InLoc at +0x0, Duration at +0x18, bOverrideLocation at +0x1C
 writeDouble(_params + 0x0, (InLoc and InLoc.X) or 0)
 writeDouble(_params + 0x8, (InLoc and InLoc.Y) or 0)
 writeDouble(_params + 0x10, (InLoc and InLoc.Z) or 0)
 writeFloat(_params + 0x18, Duration)
 writeByte(_params + 0x1C, bOverrideLocation)
 UE.CallProcessEventEx(OwnerAddress, "ClientAddTextureStreamingLoc", _params);
 deAlloc(_params);
end
FNR("BL4.ClientAddTextureStreamingLoc");

BL4.ClientCapBandwidth = function(OwnerAddress, Cap)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientCapBandwidth: Failed To Allocate The Params");return;end;
 Cap = Cap or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Cap at +0x0
 writeInteger(_params + 0x0, Cap)
 UE.CallProcessEventEx(OwnerAddress, "ClientCapBandwidth", _params);
 deAlloc(_params);
end
FNR("BL4.ClientCapBandwidth");

BL4.ClientCorrectionAsyncPhysicsTimestamp = function(OwnerAddress, Timestamp)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientCorrectionAsyncPhysicsTimestamp: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Timestamp at +0x0
 writeQword(_params + 0x0, Timestamp)
 UE.CallProcessEventEx(OwnerAddress, "ClientCorrectionAsyncPhysicsTimestamp", _params);
 deAlloc(_params);
end
FNR("BL4.ClientCorrectionAsyncPhysicsTimestamp");

BL4.ClientEnableNetworkVoice = function(OwnerAddress, bEnable)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientEnableNetworkVoice: Failed To Allocate The Params");return;end;
 bEnable = bEnable or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnable at +0x0
 writeByte(_params + 0x0, bEnable)
 UE.CallProcessEventEx(OwnerAddress, "ClientEnableNetworkVoice", _params);
 deAlloc(_params);
end
FNR("BL4.ClientEnableNetworkVoice");

BL4.ClientGameEnded = function(EndGameFocus_Actor, bIsWinner)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientGameEnded: Failed To Allocate The Params");return;end;
 bIsWinner = bIsWinner or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: EndGameFocus at +0x0, bIsWinner at +0x8
 writeQword(_params + 0x0, EndGameFocus_Actor)
 writeByte(_params + 0x8, bIsWinner)
 UE.CallProcessEventEx(EndGameFocus_Actor, "ClientGameEnded", _params);
 deAlloc(_params);
end
FNR("BL4.ClientGameEnded");

BL4.ClientGotoState = function(OwnerAddress, NewState)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientGotoState: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewState at +0x0
 writeQword(_params + 0x0, NewState)
 UE.CallProcessEventEx(OwnerAddress, "ClientGotoState", _params);
 deAlloc(_params);
end
FNR("BL4.ClientGotoState");

BL4.ClientIgnoreLookInput = function(OwnerAddress, bIgnore)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientIgnoreLookInput: Failed To Allocate The Params");return;end;
 bIgnore = bIgnore or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bIgnore at +0x0
 writeByte(_params + 0x0, bIgnore)
 UE.CallProcessEventEx(OwnerAddress, "ClientIgnoreLookInput", _params);
 deAlloc(_params);
end
FNR("BL4.ClientIgnoreLookInput");

BL4.ClientIgnoreMoveInput = function(OwnerAddress, bIgnore)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientIgnoreMoveInput: Failed To Allocate The Params");return;end;
 bIgnore = bIgnore or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bIgnore at +0x0
 writeByte(_params + 0x0, bIgnore)
 UE.CallProcessEventEx(OwnerAddress, "ClientIgnoreMoveInput", _params);
 deAlloc(_params);
end
FNR("BL4.ClientIgnoreMoveInput");

BL4.ClientMessage = function(OwnerAddress, S, type, MsgLifeTime)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientMessage: Failed To Allocate The Params");return;end;
 MsgLifeTime = MsgLifeTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: S at +0x0, type at +0x10, MsgLifeTime at +0x18
 writeQword(_params + 0x0, S)
 writeQword(_params + 0x10, type)
 writeFloat(_params + 0x18, MsgLifeTime)
 UE.CallProcessEventEx(OwnerAddress, "ClientMessage", _params);
 deAlloc(_params);
end
FNR("BL4.ClientMessage");

BL4.ClientMutePlayer = function(OwnerAddress, PlayerId)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientMutePlayer: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PlayerId at +0x0
 writeQword(_params + 0x0, PlayerId)
 UE.CallProcessEventEx(OwnerAddress, "ClientMutePlayer", _params);
 deAlloc(_params);
end
FNR("BL4.ClientMutePlayer");

BL4.ClientPlayForceFeedback_Internal = function(ForceFeedbackEffect, params)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientPlayForceFeedback_Internal: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ForceFeedbackEffect at +0x0, params at +0x8
 writeQword(_params + 0x0, ForceFeedbackEffect)
 writeQword(_params + 0x8, params)
 UE.CallProcessEventEx(ForceFeedbackEffect, "ClientPlayForceFeedback_Internal", _params);
 deAlloc(_params);
end
FNR("BL4.ClientPlayForceFeedback_Internal");

BL4.ClientPlaySound = function(Sound_SoundBase, VolumeMultiplier, PitchMultiplier)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientPlaySound: Failed To Allocate The Params");return;end;
 VolumeMultiplier = VolumeMultiplier or 0
 PitchMultiplier = PitchMultiplier or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sound at +0x0, VolumeMultiplier at +0x8, PitchMultiplier at +0xC
 writeQword(_params + 0x0, Sound_SoundBase)
 writeFloat(_params + 0x8, VolumeMultiplier)
 writeFloat(_params + 0xC, PitchMultiplier)
 UE.CallProcessEventEx(Sound_SoundBase, "ClientPlaySound", _params);
 deAlloc(_params);
end
FNR("BL4.ClientPlaySound");

BL4.ClientPlaySoundAtLocation = function(Sound_SoundBase, Location, VolumeMultiplier, PitchMultiplier)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientPlaySoundAtLocation: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 VolumeMultiplier = VolumeMultiplier or 0
 PitchMultiplier = PitchMultiplier or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sound at +0x0, Location at +0x8, VolumeMultiplier at +0x20, PitchMultiplier at +0x24
 writeQword(_params + 0x0, Sound_SoundBase)
 writeDouble(_params + 0x8, (Location and Location.X) or 0)
 writeDouble(_params + 0x10, (Location and Location.Y) or 0)
 writeDouble(_params + 0x18, (Location and Location.Z) or 0)
 writeFloat(_params + 0x20, VolumeMultiplier)
 writeFloat(_params + 0x24, PitchMultiplier)
 UE.CallProcessEventEx(Sound_SoundBase, "ClientPlaySoundAtLocation", _params);
 deAlloc(_params);
end
FNR("BL4.ClientPlaySoundAtLocation");

BL4.ClientPrepareMapChange = function(OwnerAddress, LevelName, bFirst, bLast)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientPrepareMapChange: Failed To Allocate The Params");return;end;
 bFirst = bFirst or false
 bLast = bLast or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: LevelName at +0x0, bFirst at +0x8, bLast at +0x9
 writeQword(_params + 0x0, LevelName)
 writeByte(_params + 0x8, bFirst)
 writeByte(_params + 0x9, bLast)
 UE.CallProcessEventEx(OwnerAddress, "ClientPrepareMapChange", _params);
 deAlloc(_params);
end
FNR("BL4.ClientPrepareMapChange");

BL4.ClientPrestreamTextures = function(ForcedActor_Actor, ForceDuration, bEnableStreaming, CinematicTextureGroups)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientPrestreamTextures: Failed To Allocate The Params");return;end;
 ForceDuration = ForceDuration or 0
 bEnableStreaming = bEnableStreaming or false
 CinematicTextureGroups = CinematicTextureGroups or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ForcedActor at +0x0, ForceDuration at +0x8, bEnableStreaming at +0xC, CinematicTextureGroups at +0x10
 writeQword(_params + 0x0, ForcedActor_Actor)
 writeFloat(_params + 0x8, ForceDuration)
 writeByte(_params + 0xC, bEnableStreaming)
 writeInteger(_params + 0x10, CinematicTextureGroups)
 UE.CallProcessEventEx(ForcedActor_Actor, "ClientPrestreamTextures", _params);
 deAlloc(_params);
end
FNR("BL4.ClientPrestreamTextures");

BL4.ClientReceiveLocalizedMessage = function(Message_Class, Switch, RelatedPlayerState_PlayerState, RelatedPlayerState_PlayerState, OptionalObject_Object)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientReceiveLocalizedMessage: Failed To Allocate The Params");return;end;
 Switch = Switch or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Message at +0x0, Switch at +0x8, RelatedPlayerState at +0x10, RelatedPlayerState at +0x18, OptionalObject at +0x20
 writeQword(_params + 0x0, Message_Class)
 writeInteger(_params + 0x8, Switch)
 writeQword(_params + 0x10, RelatedPlayerState_PlayerState)
 writeQword(_params + 0x18, RelatedPlayerState_PlayerState)
 writeQword(_params + 0x20, OptionalObject_Object)
 UE.CallProcessEventEx(Message_Class, "ClientReceiveLocalizedMessage", _params);
 deAlloc(_params);
end
FNR("BL4.ClientReceiveLocalizedMessage");

BL4.ClientRecvServerAckFrame = function(OwnerAddress, LastProcessedInputFrame, RecvServerFrameNumber, TimeDilation)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientRecvServerAckFrame: Failed To Allocate The Params");return;end;
 LastProcessedInputFrame = LastProcessedInputFrame or 0
 RecvServerFrameNumber = RecvServerFrameNumber or 0
 TimeDilation = TimeDilation or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: LastProcessedInputFrame at +0x0, RecvServerFrameNumber at +0x4, TimeDilation at +0x8
 writeInteger(_params + 0x0, LastProcessedInputFrame)
 writeInteger(_params + 0x4, RecvServerFrameNumber)
 writeByte(_params + 0x8, TimeDilation)
 UE.CallProcessEventEx(OwnerAddress, "ClientRecvServerAckFrame", _params);
 deAlloc(_params);
end
FNR("BL4.ClientRecvServerAckFrame");

BL4.ClientRecvServerAckFrameDebug = function(OwnerAddress, NumBuffered, TargetNumBufferedCmds)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientRecvServerAckFrameDebug: Failed To Allocate The Params");return;end;
 NumBuffered = NumBuffered or 0
 TargetNumBufferedCmds = TargetNumBufferedCmds or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NumBuffered at +0x0, TargetNumBufferedCmds at +0x4
 writeByte(_params + 0x0, NumBuffered)
 writeFloat(_params + 0x4, TargetNumBufferedCmds)
 UE.CallProcessEventEx(OwnerAddress, "ClientRecvServerAckFrameDebug", _params);
 deAlloc(_params);
end
FNR("BL4.ClientRecvServerAckFrameDebug");

BL4.ClientRepObjRef = function(Object)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientRepObjRef: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0
 writeQword(_params + 0x0, Object)
 UE.CallProcessEventEx(Object, "ClientRepObjRef", _params);
 deAlloc(_params);
end
FNR("BL4.ClientRepObjRef");

BL4.ClientRestart = function(NewPawn_Pawn)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientRestart: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewPawn at +0x0
 writeQword(_params + 0x0, NewPawn_Pawn)
 UE.CallProcessEventEx(NewPawn_Pawn, "ClientRestart", _params);
 deAlloc(_params);
end
FNR("BL4.ClientRestart");

BL4.ClientRetryClientRestart = function(NewPawn_Pawn)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientRetryClientRestart: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewPawn at +0x0
 writeQword(_params + 0x0, NewPawn_Pawn)
 UE.CallProcessEventEx(NewPawn_Pawn, "ClientRetryClientRestart", _params);
 deAlloc(_params);
end
FNR("BL4.ClientRetryClientRestart");

BL4.ClientReturnToMainMenuWithTextReason = function(OwnerAddress, ReturnReason)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientReturnToMainMenuWithTextReason: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ReturnReason at +0x0
 writeQword(_params + 0x0, ReturnReason)
 UE.CallProcessEventEx(OwnerAddress, "ClientReturnToMainMenuWithTextReason", _params);
 deAlloc(_params);
end
FNR("BL4.ClientReturnToMainMenuWithTextReason");

BL4.ClientSetCameraFade = function(OwnerAddress, bEnableFading, FadeColor, FadeAlpha, FadeTime, bFadeAudio, bHoldWhenFinished)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientSetCameraFade: Failed To Allocate The Params");return;end;
 bEnableFading = bEnableFading or false
 FadeAlpha = FadeAlpha or {X=0,Y=0}
 FadeTime = FadeTime or 0
 bFadeAudio = bFadeAudio or false
 bHoldWhenFinished = bHoldWhenFinished or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bEnableFading at +0x0, FadeColor at +0x4, FadeAlpha at +0x8, FadeTime at +0x18, bFadeAudio at +0x1C, bHoldWhenFinished at +0x1D
 writeByte(_params + 0x0, bEnableFading)
 writeQword(_params + 0x4, FadeColor)
 writeDouble(_params + 0x8, (FadeAlpha and FadeAlpha.X) or 0)
 writeDouble(_params + 0x10, (FadeAlpha and FadeAlpha.Y) or 0)
 writeFloat(_params + 0x18, FadeTime)
 writeByte(_params + 0x1C, bFadeAudio)
 writeByte(_params + 0x1D, bHoldWhenFinished)
 UE.CallProcessEventEx(OwnerAddress, "ClientSetCameraFade", _params);
 deAlloc(_params);
end
FNR("BL4.ClientSetCameraFade");

BL4.ClientSetCameraMode = function(OwnerAddress, NewCamMode)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientSetCameraMode: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewCamMode at +0x0
 writeQword(_params + 0x0, NewCamMode)
 UE.CallProcessEventEx(OwnerAddress, "ClientSetCameraMode", _params);
 deAlloc(_params);
end
FNR("BL4.ClientSetCameraMode");

BL4.ClientSetCinematicMode = function(OwnerAddress, bInCinematicMode, bAffectsMovement, bAffectsTurning, bAffectsHUD)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientSetCinematicMode: Failed To Allocate The Params");return;end;
 bInCinematicMode = bInCinematicMode or false
 bAffectsMovement = bAffectsMovement or false
 bAffectsTurning = bAffectsTurning or false
 bAffectsHUD = bAffectsHUD or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInCinematicMode at +0x0, bAffectsMovement at +0x1, bAffectsTurning at +0x2, bAffectsHUD at +0x3
 writeByte(_params + 0x0, bInCinematicMode)
 writeByte(_params + 0x1, bAffectsMovement)
 writeByte(_params + 0x2, bAffectsTurning)
 writeByte(_params + 0x3, bAffectsHUD)
 UE.CallProcessEventEx(OwnerAddress, "ClientSetCinematicMode", _params);
 deAlloc(_params);
end
FNR("BL4.ClientSetCinematicMode");

BL4.ClientSetForceMipLevelsToBeResident = function(Material_MaterialInterface, ForceDuration, CinematicTextureGroups)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientSetForceMipLevelsToBeResident: Failed To Allocate The Params");return;end;
 ForceDuration = ForceDuration or 0
 CinematicTextureGroups = CinematicTextureGroups or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Material at +0x0, ForceDuration at +0x8, CinematicTextureGroups at +0xC
 writeQword(_params + 0x0, Material_MaterialInterface)
 writeFloat(_params + 0x8, ForceDuration)
 writeInteger(_params + 0xC, CinematicTextureGroups)
 UE.CallProcessEventEx(Material_MaterialInterface, "ClientSetForceMipLevelsToBeResident", _params);
 deAlloc(_params);
end
FNR("BL4.ClientSetForceMipLevelsToBeResident");

BL4.ClientSetHUD = function(NewHUDClass_Class)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientSetHUD: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewHUDClass at +0x0
 writeQword(_params + 0x0, NewHUDClass_Class)
 UE.CallProcessEventEx(NewHUDClass_Class, "ClientSetHUD", _params);
 deAlloc(_params);
end
FNR("BL4.ClientSetHUD");

BL4.ClientSetSpectatorWaiting = function(OwnerAddress, bWaiting)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientSetSpectatorWaiting: Failed To Allocate The Params");return;end;
 bWaiting = bWaiting or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bWaiting at +0x0
 writeByte(_params + 0x0, bWaiting)
 UE.CallProcessEventEx(OwnerAddress, "ClientSetSpectatorWaiting", _params);
 deAlloc(_params);
end
FNR("BL4.ClientSetSpectatorWaiting");

BL4.ClientSetupNetworkPhysicsTimestamp = function(OwnerAddress, Timestamp)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientSetupNetworkPhysicsTimestamp: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Timestamp at +0x0
 writeQword(_params + 0x0, Timestamp)
 UE.CallProcessEventEx(OwnerAddress, "ClientSetupNetworkPhysicsTimestamp", _params);
 deAlloc(_params);
end
FNR("BL4.ClientSetupNetworkPhysicsTimestamp");

BL4.ClientSetViewTarget = function(A_Actor, TransitionParams)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientSetViewTarget: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, TransitionParams at +0x8
 writeQword(_params + 0x0, A_Actor)
 writeQword(_params + 0x8, TransitionParams)
 UE.CallProcessEventEx(A_Actor, "ClientSetViewTarget", _params);
 deAlloc(_params);
end
FNR("BL4.ClientSetViewTarget");

BL4.ClientSpawnCameraLensEffect = function(LensEffectEmitterClass_Class)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientSpawnCameraLensEffect: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: LensEffectEmitterClass at +0x0
 writeQword(_params + 0x0, LensEffectEmitterClass_Class)
 UE.CallProcessEventEx(LensEffectEmitterClass_Class, "ClientSpawnCameraLensEffect", _params);
 deAlloc(_params);
end
FNR("BL4.ClientSpawnCameraLensEffect");

BL4.ClientSpawnGenericCameraLensEffect = function(LensEffectEmitterClass_Class)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientSpawnGenericCameraLensEffect: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: LensEffectEmitterClass at +0x0
 writeQword(_params + 0x0, LensEffectEmitterClass_Class)
 UE.CallProcessEventEx(LensEffectEmitterClass_Class, "ClientSpawnGenericCameraLensEffect", _params);
 deAlloc(_params);
end
FNR("BL4.ClientSpawnGenericCameraLensEffect");

BL4.ClientStartCameraShake = function(Shake_Class, scale, PlaySpace, UserPlaySpaceRot)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientStartCameraShake: Failed To Allocate The Params");return;end;
 scale = scale or 0
 PlaySpace = PlaySpace or 0
 UserPlaySpaceRot = UserPlaySpaceRot or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Shake at +0x0, scale at +0x8, PlaySpace at +0xC, UserPlaySpaceRot at +0x10
 writeQword(_params + 0x0, Shake_Class)
 writeFloat(_params + 0x8, scale)
 writeByte(_params + 0xC, PlaySpace)
 writeDouble(_params + 0x10, (UserPlaySpaceRot and UserPlaySpaceRot.Pitch) or 0)
 writeDouble(_params + 0x18, (UserPlaySpaceRot and UserPlaySpaceRot.Yaw) or 0)
 writeDouble(_params + 0x20, (UserPlaySpaceRot and UserPlaySpaceRot.Roll) or 0)
 UE.CallProcessEventEx(Shake_Class, "ClientStartCameraShake", _params);
 deAlloc(_params);
end
FNR("BL4.ClientStartCameraShake");

BL4.ClientStartCameraShakeFromSource = function(Shake_Class, SourceComponent_CameraShakeSourceComponent)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientStartCameraShakeFromSource: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Shake at +0x0, SourceComponent at +0x8
 writeQword(_params + 0x0, Shake_Class)
 writeQword(_params + 0x8, SourceComponent_CameraShakeSourceComponent)
 UE.CallProcessEventEx(Shake_Class, "ClientStartCameraShakeFromSource", _params);
 deAlloc(_params);
end
FNR("BL4.ClientStartCameraShakeFromSource");

BL4.ClientStopCameraShake = function(Shake_Class, bImmediately)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientStopCameraShake: Failed To Allocate The Params");return;end;
 bImmediately = bImmediately or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Shake at +0x0, bImmediately at +0x8
 writeQword(_params + 0x0, Shake_Class)
 writeByte(_params + 0x8, bImmediately)
 UE.CallProcessEventEx(Shake_Class, "ClientStopCameraShake", _params);
 deAlloc(_params);
end
FNR("BL4.ClientStopCameraShake");

BL4.ClientStopCameraShakesFromSource = function(SourceComponent_CameraShakeSourceComponent, bImmediately)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientStopCameraShakesFromSource: Failed To Allocate The Params");return;end;
 bImmediately = bImmediately or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SourceComponent at +0x0, bImmediately at +0x8
 writeQword(_params + 0x0, SourceComponent_CameraShakeSourceComponent)
 writeByte(_params + 0x8, bImmediately)
 UE.CallProcessEventEx(SourceComponent_CameraShakeSourceComponent, "ClientStopCameraShakesFromSource", _params);
 deAlloc(_params);
end
FNR("BL4.ClientStopCameraShakesFromSource");

BL4.ClientStopForceFeedback = function(ForceFeedbackEffect, Tag)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientStopForceFeedback: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ForceFeedbackEffect at +0x0, Tag at +0x8
 writeQword(_params + 0x0, ForceFeedbackEffect)
 writeQword(_params + 0x8, Tag)
 UE.CallProcessEventEx(ForceFeedbackEffect, "ClientStopForceFeedback", _params);
 deAlloc(_params);
end
FNR("BL4.ClientStopForceFeedback");

BL4.ClientTeamMessage = function(SenderPlayerState_PlayerState, S, type, MsgLifeTime)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientTeamMessage: Failed To Allocate The Params");return;end;
 MsgLifeTime = MsgLifeTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SenderPlayerState at +0x0, S at +0x8, type at +0x18, MsgLifeTime at +0x20
 writeQword(_params + 0x0, SenderPlayerState_PlayerState)
 writeQword(_params + 0x8, S)
 writeQword(_params + 0x18, type)
 writeFloat(_params + 0x20, MsgLifeTime)
 UE.CallProcessEventEx(SenderPlayerState_PlayerState, "ClientTeamMessage", _params);
 deAlloc(_params);
end
FNR("BL4.ClientTeamMessage");

BL4.ClientTravel = function(OwnerAddress, URL, TravelType, bSeamless, MapPackageGuid)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientTravel: Failed To Allocate The Params");return;end;
 TravelType = TravelType or 0
 bSeamless = bSeamless or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: URL at +0x0, TravelType at +0x10, bSeamless at +0x11, MapPackageGuid at +0x14
 writeQword(_params + 0x0, URL)
 writeByte(_params + 0x10, TravelType)
 writeByte(_params + 0x11, bSeamless)
 writeQword(_params + 0x14, MapPackageGuid)
 UE.CallProcessEventEx(OwnerAddress, "ClientTravel", _params);
 deAlloc(_params);
end
FNR("BL4.ClientTravel");

BL4.ClientTravelInternal = function(OwnerAddress, URL, TravelType, bSeamless, MapPackageGuid)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientTravelInternal: Failed To Allocate The Params");return;end;
 TravelType = TravelType or 0
 bSeamless = bSeamless or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: URL at +0x0, TravelType at +0x10, bSeamless at +0x11, MapPackageGuid at +0x14
 writeQword(_params + 0x0, URL)
 writeByte(_params + 0x10, TravelType)
 writeByte(_params + 0x11, bSeamless)
 writeQword(_params + 0x14, MapPackageGuid)
 UE.CallProcessEventEx(OwnerAddress, "ClientTravelInternal", _params);
 deAlloc(_params);
end
FNR("BL4.ClientTravelInternal");

BL4.ClientUnmutePlayer = function(OwnerAddress, PlayerId)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientUnmutePlayer: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PlayerId at +0x0
 writeQword(_params + 0x0, PlayerId)
 UE.CallProcessEventEx(OwnerAddress, "ClientUnmutePlayer", _params);
 deAlloc(_params);
end
FNR("BL4.ClientUnmutePlayer");

BL4.ClientUnmutePlayers = function(OwnerAddress, PlayerIds)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientUnmutePlayers: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PlayerIds at +0x0
 writeQword(_params + 0x0, PlayerIds)
 UE.CallProcessEventEx(OwnerAddress, "ClientUnmutePlayers", _params);
 deAlloc(_params);
end
FNR("BL4.ClientUnmutePlayers");

BL4.ClientUpdateLevelStreamingStatus = function(OwnerAddress, packagename, bNewShouldBeLoaded, bNewShouldBeVisible, bNewShouldBlockOnLoad, LODIndex, TransactionId, bNewShouldBlockOnUnload)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientUpdateLevelStreamingStatus: Failed To Allocate The Params");return;end;
 bNewShouldBeLoaded = bNewShouldBeLoaded or false
 bNewShouldBeVisible = bNewShouldBeVisible or false
 bNewShouldBlockOnLoad = bNewShouldBlockOnLoad or false
 LODIndex = LODIndex or 0
 bNewShouldBlockOnUnload = bNewShouldBlockOnUnload or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: packagename at +0x0, bNewShouldBeLoaded at +0x8, bNewShouldBeVisible at +0x9, bNewShouldBlockOnLoad at +0xA, LODIndex at +0xC, TransactionId at +0x10, bNewShouldBlockOnUnload at +0x14
 writeQword(_params + 0x0, packagename)
 writeByte(_params + 0x8, bNewShouldBeLoaded)
 writeByte(_params + 0x9, bNewShouldBeVisible)
 writeByte(_params + 0xA, bNewShouldBlockOnLoad)
 writeInteger(_params + 0xC, LODIndex)
 writeQword(_params + 0x10, TransactionId)
 writeByte(_params + 0x14, bNewShouldBlockOnUnload)
 UE.CallProcessEventEx(OwnerAddress, "ClientUpdateLevelStreamingStatus", _params);
 deAlloc(_params);
end
FNR("BL4.ClientUpdateLevelStreamingStatus");

BL4.ClientUpdateMultipleLevelsStreamingStatus = function(OwnerAddress, LevelStatuses)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientUpdateMultipleLevelsStreamingStatus: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: LevelStatuses at +0x0
 writeQword(_params + 0x0, LevelStatuses)
 UE.CallProcessEventEx(OwnerAddress, "ClientUpdateMultipleLevelsStreamingStatus", _params);
 deAlloc(_params);
end
FNR("BL4.ClientUpdateMultipleLevelsStreamingStatus");

BL4.ClientWasKicked = function(OwnerAddress, KickReason)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClientWasKicked: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: KickReason at +0x0
 writeQword(_params + 0x0, KickReason)
 UE.CallProcessEventEx(OwnerAddress, "ClientWasKicked", _params);
 deAlloc(_params);
end
FNR("BL4.ClientWasKicked");

BL4.ConsoleKey = function(OwnerAddress, Key)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConsoleKey: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Key at +0x0
 writeQword(_params + 0x0, Key)
 UE.CallProcessEventEx(OwnerAddress, "ConsoleKey", _params);
 deAlloc(_params);
end
FNR("BL4.ConsoleKey");

BL4.DeprojectMousePositionToWorld = function(OwnerAddress, WorldLocation, WorldDirection)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DeprojectMousePositionToWorld: Failed To Allocate The Params");return;end;
 WorldLocation = WorldLocation or {X=0,Y=0,Z=0}
 WorldDirection = WorldDirection or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldLocation at +0x0, WorldDirection at +0x18
 writeDouble(_params + 0x0, (WorldLocation and WorldLocation.X) or 0)
 writeDouble(_params + 0x8, (WorldLocation and WorldLocation.Y) or 0)
 writeDouble(_params + 0x10, (WorldLocation and WorldLocation.Z) or 0)
 writeDouble(_params + 0x18, (WorldDirection and WorldDirection.X) or 0)
 writeDouble(_params + 0x20, (WorldDirection and WorldDirection.Y) or 0)
 writeDouble(_params + 0x28, (WorldDirection and WorldDirection.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "DeprojectMousePositionToWorld", _params);
 local RET=readByte(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DeprojectMousePositionToWorld");

BL4.DeprojectScreenPositionToWorld = function(OwnerAddress, ScreenX, ScreenY, WorldLocation, WorldDirection)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DeprojectScreenPositionToWorld: Failed To Allocate The Params");return;end;
 ScreenX = ScreenX or 0
 ScreenY = ScreenY or 0
 WorldLocation = WorldLocation or {X=0,Y=0,Z=0}
 WorldDirection = WorldDirection or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ScreenX at +0x0, ScreenY at +0x4, WorldLocation at +0x8, WorldDirection at +0x20
 writeFloat(_params + 0x0, ScreenX)
 writeFloat(_params + 0x4, ScreenY)
 writeDouble(_params + 0x8, (WorldLocation and WorldLocation.X) or 0)
 writeDouble(_params + 0x10, (WorldLocation and WorldLocation.Y) or 0)
 writeDouble(_params + 0x18, (WorldLocation and WorldLocation.Z) or 0)
 writeDouble(_params + 0x20, (WorldDirection and WorldDirection.X) or 0)
 writeDouble(_params + 0x28, (WorldDirection and WorldDirection.Y) or 0)
 writeDouble(_params + 0x30, (WorldDirection and WorldDirection.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "DeprojectScreenPositionToWorld", _params);
 local RET=readByte(_params + 0x38);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DeprojectScreenPositionToWorld");

BL4.fov = function(OwnerAddress, NewFOV)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.fov: Failed To Allocate The Params");return;end;
 NewFOV = NewFOV or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewFOV at +0x0
 writeFloat(_params + 0x0, NewFOV)
 UE.CallProcessEventEx(OwnerAddress, "fov", _params);
 deAlloc(_params);
end
FNR("BL4.fov");

BL4.GetDeprecatedInputPitchScale = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDeprecatedInputPitchScale: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetDeprecatedInputPitchScale", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDeprecatedInputPitchScale");

BL4.GetDeprecatedInputRollScale = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDeprecatedInputRollScale: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetDeprecatedInputRollScale", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDeprecatedInputRollScale");

BL4.GetDeprecatedInputYawScale = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDeprecatedInputYawScale: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetDeprecatedInputYawScale", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDeprecatedInputYawScale");

BL4.GetFocalLocation = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetFocalLocation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetFocalLocation", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8),Z=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetFocalLocation");

BL4.GetHitResultUnderCursor = function(OwnerAddress, TraceChannel, bTraceComplex, HitResult)
 local _paramsSize = 0x110
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHitResultUnderCursor: Failed To Allocate The Params");return;end;
 TraceChannel = TraceChannel or 0
 bTraceComplex = bTraceComplex or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TraceChannel at +0x0, bTraceComplex at +0x1, HitResult at +0x8
 writeByte(_params + 0x0, TraceChannel)
 writeByte(_params + 0x1, bTraceComplex)
 writeQword(_params + 0x8, HitResult)
 UE.CallProcessEventEx(OwnerAddress, "GetHitResultUnderCursor", _params);
 local RET=readByte(_params + 0x108);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHitResultUnderCursor");

BL4.GetHitResultUnderCursorByChannel = function(OwnerAddress, TraceChannel, bTraceComplex, HitResult)
 local _paramsSize = 0x110
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHitResultUnderCursorByChannel: Failed To Allocate The Params");return;end;
 TraceChannel = TraceChannel or 0
 bTraceComplex = bTraceComplex or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TraceChannel at +0x0, bTraceComplex at +0x1, HitResult at +0x8
 writeByte(_params + 0x0, TraceChannel)
 writeByte(_params + 0x1, bTraceComplex)
 writeQword(_params + 0x8, HitResult)
 UE.CallProcessEventEx(OwnerAddress, "GetHitResultUnderCursorByChannel", _params);
 local RET=readByte(_params + 0x108);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHitResultUnderCursorByChannel");

BL4.GetHitResultUnderCursorForObjects = function(OwnerAddress, ObjectTypes, bTraceComplex, HitResult)
 local _paramsSize = 0x120
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHitResultUnderCursorForObjects: Failed To Allocate The Params");return;end;
 bTraceComplex = bTraceComplex or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ObjectTypes at +0x0, bTraceComplex at +0x10, HitResult at +0x18
 writeQword(_params + 0x0, ObjectTypes)
 writeByte(_params + 0x10, bTraceComplex)
 writeQword(_params + 0x18, HitResult)
 UE.CallProcessEventEx(OwnerAddress, "GetHitResultUnderCursorForObjects", _params);
 local RET=readByte(_params + 0x118);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHitResultUnderCursorForObjects");

BL4.GetHitResultUnderFinger = function(OwnerAddress, FingerIndex, TraceChannel, bTraceComplex, HitResult)
 local _paramsSize = 0x110
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHitResultUnderFinger: Failed To Allocate The Params");return;end;
 FingerIndex = FingerIndex or 0
 TraceChannel = TraceChannel or 0
 bTraceComplex = bTraceComplex or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: FingerIndex at +0x0, TraceChannel at +0x1, bTraceComplex at +0x2, HitResult at +0x8
 writeByte(_params + 0x0, FingerIndex)
 writeByte(_params + 0x1, TraceChannel)
 writeByte(_params + 0x2, bTraceComplex)
 writeQword(_params + 0x8, HitResult)
 UE.CallProcessEventEx(OwnerAddress, "GetHitResultUnderFinger", _params);
 local RET=readByte(_params + 0x108);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHitResultUnderFinger");

BL4.GetHitResultUnderFingerByChannel = function(OwnerAddress, FingerIndex, TraceChannel, bTraceComplex, HitResult)
 local _paramsSize = 0x110
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHitResultUnderFingerByChannel: Failed To Allocate The Params");return;end;
 FingerIndex = FingerIndex or 0
 TraceChannel = TraceChannel or 0
 bTraceComplex = bTraceComplex or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: FingerIndex at +0x0, TraceChannel at +0x1, bTraceComplex at +0x2, HitResult at +0x8
 writeByte(_params + 0x0, FingerIndex)
 writeByte(_params + 0x1, TraceChannel)
 writeByte(_params + 0x2, bTraceComplex)
 writeQword(_params + 0x8, HitResult)
 UE.CallProcessEventEx(OwnerAddress, "GetHitResultUnderFingerByChannel", _params);
 local RET=readByte(_params + 0x108);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHitResultUnderFingerByChannel");

BL4.GetHitResultUnderFingerForObjects = function(OwnerAddress, FingerIndex, ObjectTypes, bTraceComplex, HitResult)
 local _paramsSize = 0x128
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHitResultUnderFingerForObjects: Failed To Allocate The Params");return;end;
 FingerIndex = FingerIndex or 0
 bTraceComplex = bTraceComplex or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: FingerIndex at +0x0, ObjectTypes at +0x8, bTraceComplex at +0x18, HitResult at +0x20
 writeByte(_params + 0x0, FingerIndex)
 writeQword(_params + 0x8, ObjectTypes)
 writeByte(_params + 0x18, bTraceComplex)
 writeQword(_params + 0x20, HitResult)
 UE.CallProcessEventEx(OwnerAddress, "GetHitResultUnderFingerForObjects", _params);
 local RET=readByte(_params + 0x120);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHitResultUnderFingerForObjects");

BL4.GetHUD = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHUD: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetHUD", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHUD");

BL4.GetInputAnalogKeyState = function(OwnerAddress, Key)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInputAnalogKeyState: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Key at +0x0
 writeQword(_params + 0x0, Key)
 UE.CallProcessEventEx(OwnerAddress, "GetInputAnalogKeyState", _params);
 local RET=readFloat(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInputAnalogKeyState");

BL4.GetInputAnalogStickState = function(OwnerAddress, WhichStick, StickX, StickY)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInputAnalogStickState: Failed To Allocate The Params");return;end;
 WhichStick = WhichStick or 0
 StickX = StickX or 0
 StickY = StickY or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WhichStick at +0x0, StickX at +0x4, StickY at +0x8
 writeByte(_params + 0x0, WhichStick)
 writeFloat(_params + 0x4, StickX)
 writeFloat(_params + 0x8, StickY)
 UE.CallProcessEventEx(OwnerAddress, "GetInputAnalogStickState", _params);
 deAlloc(_params);
end
FNR("BL4.GetInputAnalogStickState");

BL4.GetInputKeyTimeDown = function(OwnerAddress, Key)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInputKeyTimeDown: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Key at +0x0
 writeQword(_params + 0x0, Key)
 UE.CallProcessEventEx(OwnerAddress, "GetInputKeyTimeDown", _params);
 local RET=readFloat(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInputKeyTimeDown");

BL4.GetInputMotionState = function(OwnerAddress, Tilt, RotationRate, Gravity, Acceleration)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInputMotionState: Failed To Allocate The Params");return;end;
 Tilt = Tilt or {X=0,Y=0,Z=0}
 RotationRate = RotationRate or {X=0,Y=0,Z=0}
 Gravity = Gravity or {X=0,Y=0,Z=0}
 Acceleration = Acceleration or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Tilt at +0x0, RotationRate at +0x18, Gravity at +0x30, Acceleration at +0x48
 writeDouble(_params + 0x0, (Tilt and Tilt.X) or 0)
 writeDouble(_params + 0x8, (Tilt and Tilt.Y) or 0)
 writeDouble(_params + 0x10, (Tilt and Tilt.Z) or 0)
 writeDouble(_params + 0x18, (RotationRate and RotationRate.X) or 0)
 writeDouble(_params + 0x20, (RotationRate and RotationRate.Y) or 0)
 writeDouble(_params + 0x28, (RotationRate and RotationRate.Z) or 0)
 writeDouble(_params + 0x30, (Gravity and Gravity.X) or 0)
 writeDouble(_params + 0x38, (Gravity and Gravity.Y) or 0)
 writeDouble(_params + 0x40, (Gravity and Gravity.Z) or 0)
 writeDouble(_params + 0x48, (Acceleration and Acceleration.X) or 0)
 writeDouble(_params + 0x50, (Acceleration and Acceleration.Y) or 0)
 writeDouble(_params + 0x58, (Acceleration and Acceleration.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetInputMotionState", _params);
 deAlloc(_params);
end
FNR("BL4.GetInputMotionState");

BL4.GetInputMouseDelta = function(OwnerAddress, DeltaX, DeltaY)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInputMouseDelta: Failed To Allocate The Params");return;end;
 DeltaX = DeltaX or 0
 DeltaY = DeltaY or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: DeltaX at +0x0, DeltaY at +0x4
 writeFloat(_params + 0x0, DeltaX)
 writeFloat(_params + 0x4, DeltaY)
 UE.CallProcessEventEx(OwnerAddress, "GetInputMouseDelta", _params);
 deAlloc(_params);
end
FNR("BL4.GetInputMouseDelta");

BL4.GetInputTouchState = function(OwnerAddress, FingerIndex, LocationX, LocationY, bIsCurrentlyPressed)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInputTouchState: Failed To Allocate The Params");return;end;
 FingerIndex = FingerIndex or 0
 LocationX = LocationX or 0
 LocationY = LocationY or 0
 bIsCurrentlyPressed = bIsCurrentlyPressed or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: FingerIndex at +0x0, LocationX at +0x4, LocationY at +0x8, bIsCurrentlyPressed at +0xC
 writeByte(_params + 0x0, FingerIndex)
 writeFloat(_params + 0x4, LocationX)
 writeFloat(_params + 0x8, LocationY)
 writeByte(_params + 0xC, bIsCurrentlyPressed)
 UE.CallProcessEventEx(OwnerAddress, "GetInputTouchState", _params);
 deAlloc(_params);
end
FNR("BL4.GetInputTouchState");

BL4.GetInputVectorKeyState = function(OwnerAddress, Key)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInputVectorKeyState: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Key at +0x0
 writeQword(_params + 0x0, Key)
 UE.CallProcessEventEx(OwnerAddress, "GetInputVectorKeyState", _params);
 local RET={X=readFloat(_params+0x18),Y=readFloat(_params+0x20),Z=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInputVectorKeyState");

BL4.GetMousePosition = function(OwnerAddress, LocationX, LocationY)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMousePosition: Failed To Allocate The Params");return;end;
 LocationX = LocationX or 0
 LocationY = LocationY or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: LocationX at +0x0, LocationY at +0x4
 writeFloat(_params + 0x0, LocationX)
 writeFloat(_params + 0x4, LocationY)
 UE.CallProcessEventEx(OwnerAddress, "GetMousePosition", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMousePosition");

BL4.GetOverridePlayerInputClass = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetOverridePlayerInputClass: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetOverridePlayerInputClass", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetOverridePlayerInputClass");

BL4.GetPlatformUserId = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPlatformUserId: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetPlatformUserId", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPlatformUserId");

BL4.GetSpectatorPawn = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSpectatorPawn: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetSpectatorPawn", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSpectatorPawn");

BL4.GetStreamingSourceLocationAndRotation = function(OwnerAddress, OutLocation, OutRotation)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetStreamingSourceLocationAndRotation: Failed To Allocate The Params");return;end;
 OutLocation = OutLocation or {X=0,Y=0,Z=0}
 OutRotation = OutRotation or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OutLocation at +0x0, OutRotation at +0x18
 writeDouble(_params + 0x0, (OutLocation and OutLocation.X) or 0)
 writeDouble(_params + 0x8, (OutLocation and OutLocation.Y) or 0)
 writeDouble(_params + 0x10, (OutLocation and OutLocation.Z) or 0)
 writeDouble(_params + 0x18, (OutRotation and OutRotation.Pitch) or 0)
 writeDouble(_params + 0x20, (OutRotation and OutRotation.Yaw) or 0)
 writeDouble(_params + 0x28, (OutRotation and OutRotation.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetStreamingSourceLocationAndRotation", _params);
 deAlloc(_params);
end
FNR("BL4.GetStreamingSourceLocationAndRotation");

BL4.GetStreamingSourcePriority = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetStreamingSourcePriority: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetStreamingSourcePriority", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetStreamingSourcePriority");

BL4.GetStreamingSourceShapes = function(OwnerAddress, OutShapes)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetStreamingSourceShapes: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OutShapes at +0x0
 writeQword(_params + 0x0, OutShapes)
 UE.CallProcessEventEx(OwnerAddress, "GetStreamingSourceShapes", _params);
 deAlloc(_params);
end
FNR("BL4.GetStreamingSourceShapes");

BL4.GetViewportSize = function(OwnerAddress, SizeX, SizeY)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetViewportSize: Failed To Allocate The Params");return;end;
 SizeX = SizeX or 0
 SizeY = SizeY or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: SizeX at +0x0, SizeY at +0x4
 writeInteger(_params + 0x0, SizeX)
 writeInteger(_params + 0x4, SizeY)
 UE.CallProcessEventEx(OwnerAddress, "GetViewportSize", _params);
 deAlloc(_params);
end
FNR("BL4.GetViewportSize");

BL4.IsInputKeyDown = function(OwnerAddress, Key)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsInputKeyDown: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Key at +0x0
 writeQword(_params + 0x0, Key)
 UE.CallProcessEventEx(OwnerAddress, "IsInputKeyDown", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsInputKeyDown");

BL4.IsStreamingSourceEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsStreamingSourceEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsStreamingSourceEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsStreamingSourceEnabled");

BL4.K2_ClientPlayForceFeedback = function(ForceFeedbackEffect, Tag, bLooping, bIgnoreTimeDilation, bPlayWhilePaused)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_ClientPlayForceFeedback: Failed To Allocate The Params");return;end;
 bLooping = bLooping or false
 bIgnoreTimeDilation = bIgnoreTimeDilation or false
 bPlayWhilePaused = bPlayWhilePaused or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ForceFeedbackEffect at +0x0, Tag at +0x8, bLooping at +0x10, bIgnoreTimeDilation at +0x11, bPlayWhilePaused at +0x12
 writeQword(_params + 0x0, ForceFeedbackEffect)
 writeQword(_params + 0x8, Tag)
 writeByte(_params + 0x10, bLooping)
 writeByte(_params + 0x11, bIgnoreTimeDilation)
 writeByte(_params + 0x12, bPlayWhilePaused)
 UE.CallProcessEventEx(ForceFeedbackEffect, "K2_ClientPlayForceFeedback", _params);
 deAlloc(_params);
end
FNR("BL4.K2_ClientPlayForceFeedback");

BL4.LocalTravel = function(OwnerAddress, URL)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LocalTravel: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: URL at +0x0
 writeQword(_params + 0x0, URL)
 UE.CallProcessEventEx(OwnerAddress, "LocalTravel", _params);
 deAlloc(_params);
end
FNR("BL4.LocalTravel");

BL4.OnServerStartedVisualLogger = function(OwnerAddress, bIsLogging)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnServerStartedVisualLogger: Failed To Allocate The Params");return;end;
 bIsLogging = bIsLogging or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bIsLogging at +0x0
 writeByte(_params + 0x0, bIsLogging)
 UE.CallProcessEventEx(OwnerAddress, "OnServerStartedVisualLogger", _params);
 deAlloc(_params);
end
FNR("BL4.OnServerStartedVisualLogger");

BL4.PlayDynamicForceFeedback = function(OwnerAddress, Intensity, Duration, bAffectsLeftLarge, bAffectsLeftSmall, bAffectsRightLarge, bAffectsRightSmall, Action, LatentInfo)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PlayDynamicForceFeedback: Failed To Allocate The Params");return;end;
 Intensity = Intensity or 0
 Duration = Duration or 0
 bAffectsLeftLarge = bAffectsLeftLarge or false
 bAffectsLeftSmall = bAffectsLeftSmall or false
 bAffectsRightLarge = bAffectsRightLarge or false
 bAffectsRightSmall = bAffectsRightSmall or false
 Action = Action or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Intensity at +0x0, Duration at +0x4, bAffectsLeftLarge at +0x8, bAffectsLeftSmall at +0x9, bAffectsRightLarge at +0xA, bAffectsRightSmall at +0xB, Action at +0xC, LatentInfo at +0x10
 writeFloat(_params + 0x0, Intensity)
 writeFloat(_params + 0x4, Duration)
 writeByte(_params + 0x8, bAffectsLeftLarge)
 writeByte(_params + 0x9, bAffectsLeftSmall)
 writeByte(_params + 0xA, bAffectsRightLarge)
 writeByte(_params + 0xB, bAffectsRightSmall)
 writeByte(_params + 0xC, Action)
 writeQword(_params + 0x10, LatentInfo)
 UE.CallProcessEventEx(OwnerAddress, "PlayDynamicForceFeedback", _params);
 deAlloc(_params);
end
FNR("BL4.PlayDynamicForceFeedback");

BL4.PlayHapticEffect = function(HapticEffect_HapticFeedbackEffect_Base, Hand, scale, bLoop)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PlayHapticEffect: Failed To Allocate The Params");return;end;
 Hand = Hand or 0
 scale = scale or 0
 bLoop = bLoop or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: HapticEffect at +0x0, Hand at +0x8, scale at +0xC, bLoop at +0x10
 writeQword(_params + 0x0, HapticEffect_HapticFeedbackEffect_Base)
 writeByte(_params + 0x8, Hand)
 writeFloat(_params + 0xC, scale)
 writeByte(_params + 0x10, bLoop)
 UE.CallProcessEventEx(HapticEffect_HapticFeedbackEffect_Base, "PlayHapticEffect", _params);
 deAlloc(_params);
end
FNR("BL4.PlayHapticEffect");

BL4.ProjectWorldLocationToScreen = function(OwnerAddress, WorldLocation, ScreenLocation, bPlayerViewportRelative)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ProjectWorldLocationToScreen: Failed To Allocate The Params");return;end;
 WorldLocation = WorldLocation or {X=0,Y=0,Z=0}
 ScreenLocation = ScreenLocation or {X=0,Y=0}
 bPlayerViewportRelative = bPlayerViewportRelative or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldLocation at +0x0, ScreenLocation at +0x18, bPlayerViewportRelative at +0x28
 writeDouble(_params + 0x0, (WorldLocation and WorldLocation.X) or 0)
 writeDouble(_params + 0x8, (WorldLocation and WorldLocation.Y) or 0)
 writeDouble(_params + 0x10, (WorldLocation and WorldLocation.Z) or 0)
 writeDouble(_params + 0x18, (ScreenLocation and ScreenLocation.X) or 0)
 writeDouble(_params + 0x20, (ScreenLocation and ScreenLocation.Y) or 0)
 writeByte(_params + 0x28, bPlayerViewportRelative)
 UE.CallProcessEventEx(OwnerAddress, "ProjectWorldLocationToScreen", _params);
 local RET=readByte(_params + 0x29);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ProjectWorldLocationToScreen");

BL4.SendToConsole = function(OwnerAddress, Command)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SendToConsole: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Command at +0x0
 writeQword(_params + 0x0, Command)
 UE.CallProcessEventEx(OwnerAddress, "SendToConsole", _params);
 deAlloc(_params);
end
FNR("BL4.SendToConsole");

BL4.ServerAcknowledgePossession = function(P_Pawn)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerAcknowledgePossession: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: P at +0x0
 writeQword(_params + 0x0, P_Pawn)
 UE.CallProcessEventEx(P_Pawn, "ServerAcknowledgePossession", _params);
 deAlloc(_params);
end
FNR("BL4.ServerAcknowledgePossession");

BL4.ServerBlockPlayer = function(OwnerAddress, PlayerId)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerBlockPlayer: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PlayerId at +0x0
 writeQword(_params + 0x0, PlayerId)
 UE.CallProcessEventEx(OwnerAddress, "ServerBlockPlayer", _params);
 deAlloc(_params);
end
FNR("BL4.ServerBlockPlayer");

BL4.ServerCamera = function(OwnerAddress, NewMode)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerCamera: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewMode at +0x0
 writeQword(_params + 0x0, NewMode)
 UE.CallProcessEventEx(OwnerAddress, "ServerCamera", _params);
 deAlloc(_params);
end
FNR("BL4.ServerCamera");

BL4.ServerChangeName = function(OwnerAddress, S)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerChangeName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: S at +0x0
 writeQword(_params + 0x0, S)
 UE.CallProcessEventEx(OwnerAddress, "ServerChangeName", _params);
 deAlloc(_params);
end
FNR("BL4.ServerChangeName");

BL4.ServerExec = function(OwnerAddress, Msg)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerExec: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Msg at +0x0
 writeQword(_params + 0x0, Msg)
 UE.CallProcessEventEx(OwnerAddress, "ServerExec", _params);
 deAlloc(_params);
end
FNR("BL4.ServerExec");

BL4.ServerExecRPC = function(OwnerAddress, Msg)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerExecRPC: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Msg at +0x0
 writeQword(_params + 0x0, Msg)
 UE.CallProcessEventEx(OwnerAddress, "ServerExecRPC", _params);
 deAlloc(_params);
end
FNR("BL4.ServerExecRPC");

BL4.ServerGbxConsoleCommand = function(OwnerAddress, InContext)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerGbxConsoleCommand: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InContext at +0x0
 writeQword(_params + 0x0, InContext)
 UE.CallProcessEventEx(OwnerAddress, "ServerGbxConsoleCommand", _params);
 deAlloc(_params);
end
FNR("BL4.ServerGbxConsoleCommand");

BL4.ServerMutePlayer = function(OwnerAddress, PlayerId)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerMutePlayer: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PlayerId at +0x0
 writeQword(_params + 0x0, PlayerId)
 UE.CallProcessEventEx(OwnerAddress, "ServerMutePlayer", _params);
 deAlloc(_params);
end
FNR("BL4.ServerMutePlayer");

BL4.ServerNotifyLoadedWorld = function(OwnerAddress, WorldPackageName)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerNotifyLoadedWorld: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: WorldPackageName at +0x0
 writeQword(_params + 0x0, WorldPackageName)
 UE.CallProcessEventEx(OwnerAddress, "ServerNotifyLoadedWorld", _params);
 deAlloc(_params);
end
FNR("BL4.ServerNotifyLoadedWorld");

BL4.ServerRecvClientInputFrame = function(OwnerAddress, RecvClientInputFrame, data)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerRecvClientInputFrame: Failed To Allocate The Params");return;end;
 RecvClientInputFrame = RecvClientInputFrame or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: RecvClientInputFrame at +0x0, data at +0x8
 writeInteger(_params + 0x0, RecvClientInputFrame)
 writeQword(_params + 0x8, data)
 UE.CallProcessEventEx(OwnerAddress, "ServerRecvClientInputFrame", _params);
 deAlloc(_params);
end
FNR("BL4.ServerRecvClientInputFrame");

BL4.ServerSeamlessNetTransitionTeleport = function(OwnerAddress, InControlRotation, InPawnTransform)
 local _paramsSize = 0x80
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerSeamlessNetTransitionTeleport: Failed To Allocate The Params");return;end;
 InControlRotation = InControlRotation or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InControlRotation at +0x0, InPawnTransform at +0x20
 writeDouble(_params + 0x0, (InControlRotation and InControlRotation.Pitch) or 0)
 writeDouble(_params + 0x8, (InControlRotation and InControlRotation.Yaw) or 0)
 writeDouble(_params + 0x10, (InControlRotation and InControlRotation.Roll) or 0)
 writeQword(_params + 0x20, InPawnTransform)
 UE.CallProcessEventEx(OwnerAddress, "ServerSeamlessNetTransitionTeleport", _params);
 deAlloc(_params);
end
FNR("BL4.ServerSeamlessNetTransitionTeleport");

BL4.ServerSendLatestAsyncPhysicsTimestamp = function(OwnerAddress, Timestamp)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerSendLatestAsyncPhysicsTimestamp: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Timestamp at +0x0
 writeQword(_params + 0x0, Timestamp)
 UE.CallProcessEventEx(OwnerAddress, "ServerSendLatestAsyncPhysicsTimestamp", _params);
 deAlloc(_params);
end
FNR("BL4.ServerSendLatestAsyncPhysicsTimestamp");

BL4.ServerSetSpectatorLocation = function(OwnerAddress, NewLoc, NewRot)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerSetSpectatorLocation: Failed To Allocate The Params");return;end;
 NewLoc = NewLoc or {X=0,Y=0,Z=0}
 NewRot = NewRot or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewLoc at +0x0, NewRot at +0x18
 writeDouble(_params + 0x0, (NewLoc and NewLoc.X) or 0)
 writeDouble(_params + 0x8, (NewLoc and NewLoc.Y) or 0)
 writeDouble(_params + 0x10, (NewLoc and NewLoc.Z) or 0)
 writeDouble(_params + 0x18, (NewRot and NewRot.Pitch) or 0)
 writeDouble(_params + 0x20, (NewRot and NewRot.Yaw) or 0)
 writeDouble(_params + 0x28, (NewRot and NewRot.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "ServerSetSpectatorLocation", _params);
 deAlloc(_params);
end
FNR("BL4.ServerSetSpectatorLocation");

BL4.ServerSetSpectatorWaiting = function(OwnerAddress, bWaiting)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerSetSpectatorWaiting: Failed To Allocate The Params");return;end;
 bWaiting = bWaiting or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bWaiting at +0x0
 writeByte(_params + 0x0, bWaiting)
 UE.CallProcessEventEx(OwnerAddress, "ServerSetSpectatorWaiting", _params);
 deAlloc(_params);
end
FNR("BL4.ServerSetSpectatorWaiting");

BL4.ServerUnblockPlayer = function(OwnerAddress, PlayerId)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerUnblockPlayer: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PlayerId at +0x0
 writeQword(_params + 0x0, PlayerId)
 UE.CallProcessEventEx(OwnerAddress, "ServerUnblockPlayer", _params);
 deAlloc(_params);
end
FNR("BL4.ServerUnblockPlayer");

BL4.ServerUnmutePlayer = function(OwnerAddress, PlayerId)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerUnmutePlayer: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PlayerId at +0x0
 writeQword(_params + 0x0, PlayerId)
 UE.CallProcessEventEx(OwnerAddress, "ServerUnmutePlayer", _params);
 deAlloc(_params);
end
FNR("BL4.ServerUnmutePlayer");

BL4.ServerUpdateCamera = function(OwnerAddress, CamLoc, CamPitchAndYaw)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerUpdateCamera: Failed To Allocate The Params");return;end;
 CamPitchAndYaw = CamPitchAndYaw or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CamLoc at +0x0, CamPitchAndYaw at +0x18
 writeQword(_params + 0x0, CamLoc)
 writeInteger(_params + 0x18, CamPitchAndYaw)
 UE.CallProcessEventEx(OwnerAddress, "ServerUpdateCamera", _params);
 deAlloc(_params);
end
FNR("BL4.ServerUpdateCamera");

BL4.ServerUpdateLevelVisibility = function(OwnerAddress, LevelVisibility)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerUpdateLevelVisibility: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: LevelVisibility at +0x0
 writeQword(_params + 0x0, LevelVisibility)
 UE.CallProcessEventEx(OwnerAddress, "ServerUpdateLevelVisibility", _params);
 deAlloc(_params);
end
FNR("BL4.ServerUpdateLevelVisibility");

BL4.ServerUpdateMultipleLevelsVisibility = function(OwnerAddress, LevelVisibilities)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerUpdateMultipleLevelsVisibility: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: LevelVisibilities at +0x0
 writeQword(_params + 0x0, LevelVisibilities)
 UE.CallProcessEventEx(OwnerAddress, "ServerUpdateMultipleLevelsVisibility", _params);
 deAlloc(_params);
end
FNR("BL4.ServerUpdateMultipleLevelsVisibility");

BL4.ServerViewSelf = function(OwnerAddress, TransitionParams)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ServerViewSelf: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TransitionParams at +0x0
 writeQword(_params + 0x0, TransitionParams)
 UE.CallProcessEventEx(OwnerAddress, "ServerViewSelf", _params);
 deAlloc(_params);
end
FNR("BL4.ServerViewSelf");

BL4.SetAudioListenerAttenuationOverride = function(AttachToComponent_SceneComponent, AttenuationLocationOVerride)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAudioListenerAttenuationOverride: Failed To Allocate The Params");return;end;
 AttenuationLocationOVerride = AttenuationLocationOVerride or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttachToComponent at +0x0, AttenuationLocationOVerride at +0x8
 writeQword(_params + 0x0, AttachToComponent_SceneComponent)
 writeDouble(_params + 0x8, (AttenuationLocationOVerride and AttenuationLocationOVerride.X) or 0)
 writeDouble(_params + 0x10, (AttenuationLocationOVerride and AttenuationLocationOVerride.Y) or 0)
 writeDouble(_params + 0x18, (AttenuationLocationOVerride and AttenuationLocationOVerride.Z) or 0)
 UE.CallProcessEventEx(AttachToComponent_SceneComponent, "SetAudioListenerAttenuationOverride", _params);
 deAlloc(_params);
end
FNR("BL4.SetAudioListenerAttenuationOverride");

BL4.SetAudioListenerOverride = function(AttachToComponent_SceneComponent, Location, Rotation)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAudioListenerOverride: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 Rotation = Rotation or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttachToComponent at +0x0, Location at +0x8, Rotation at +0x20
 writeQword(_params + 0x0, AttachToComponent_SceneComponent)
 writeDouble(_params + 0x8, (Location and Location.X) or 0)
 writeDouble(_params + 0x10, (Location and Location.Y) or 0)
 writeDouble(_params + 0x18, (Location and Location.Z) or 0)
 writeDouble(_params + 0x20, (Rotation and Rotation.Pitch) or 0)
 writeDouble(_params + 0x28, (Rotation and Rotation.Yaw) or 0)
 writeDouble(_params + 0x30, (Rotation and Rotation.Roll) or 0)
 UE.CallProcessEventEx(AttachToComponent_SceneComponent, "SetAudioListenerOverride", _params);
 deAlloc(_params);
end
FNR("BL4.SetAudioListenerOverride");

BL4.SetCinematicMode = function(OwnerAddress, bInCinematicMode, bHidePlayer, bAffectsHUD, bAffectsMovement, bAffectsTurning)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCinematicMode: Failed To Allocate The Params");return;end;
 bInCinematicMode = bInCinematicMode or false
 bHidePlayer = bHidePlayer or false
 bAffectsHUD = bAffectsHUD or false
 bAffectsMovement = bAffectsMovement or false
 bAffectsTurning = bAffectsTurning or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInCinematicMode at +0x0, bHidePlayer at +0x1, bAffectsHUD at +0x2, bAffectsMovement at +0x3, bAffectsTurning at +0x4
 writeByte(_params + 0x0, bInCinematicMode)
 writeByte(_params + 0x1, bHidePlayer)
 writeByte(_params + 0x2, bAffectsHUD)
 writeByte(_params + 0x3, bAffectsMovement)
 writeByte(_params + 0x4, bAffectsTurning)
 UE.CallProcessEventEx(OwnerAddress, "SetCinematicMode", _params);
 deAlloc(_params);
end
FNR("BL4.SetCinematicMode");

BL4.SetControllerDeadZones = function(OwnerAddress, LeftDeadZone, RightDeadZone)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControllerDeadZones: Failed To Allocate The Params");return;end;
 LeftDeadZone = LeftDeadZone or 0
 RightDeadZone = RightDeadZone or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: LeftDeadZone at +0x0, RightDeadZone at +0x4
 writeFloat(_params + 0x0, LeftDeadZone)
 writeFloat(_params + 0x4, RightDeadZone)
 UE.CallProcessEventEx(OwnerAddress, "SetControllerDeadZones", _params);
 deAlloc(_params);
end
FNR("BL4.SetControllerDeadZones");

BL4.SetControllerLightColor = function(OwnerAddress, Color)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControllerLightColor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Color at +0x0
 writeQword(_params + 0x0, Color)
 UE.CallProcessEventEx(OwnerAddress, "SetControllerLightColor", _params);
 deAlloc(_params);
end
FNR("BL4.SetControllerLightColor");

BL4.SetDeprecatedInputPitchScale = function(OwnerAddress, NewValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDeprecatedInputPitchScale: Failed To Allocate The Params");return;end;
 NewValue = NewValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewValue at +0x0
 writeFloat(_params + 0x0, NewValue)
 UE.CallProcessEventEx(OwnerAddress, "SetDeprecatedInputPitchScale", _params);
 deAlloc(_params);
end
FNR("BL4.SetDeprecatedInputPitchScale");

BL4.SetDeprecatedInputRollScale = function(OwnerAddress, NewValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDeprecatedInputRollScale: Failed To Allocate The Params");return;end;
 NewValue = NewValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewValue at +0x0
 writeFloat(_params + 0x0, NewValue)
 UE.CallProcessEventEx(OwnerAddress, "SetDeprecatedInputRollScale", _params);
 deAlloc(_params);
end
FNR("BL4.SetDeprecatedInputRollScale");

BL4.SetDeprecatedInputYawScale = function(OwnerAddress, NewValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDeprecatedInputYawScale: Failed To Allocate The Params");return;end;
 NewValue = NewValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewValue at +0x0
 writeFloat(_params + 0x0, NewValue)
 UE.CallProcessEventEx(OwnerAddress, "SetDeprecatedInputYawScale", _params);
 deAlloc(_params);
end
FNR("BL4.SetDeprecatedInputYawScale");

BL4.SetDisableHaptics = function(OwnerAddress, bNewDisabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDisableHaptics: Failed To Allocate The Params");return;end;
 bNewDisabled = bNewDisabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bNewDisabled at +0x0
 writeByte(_params + 0x0, bNewDisabled)
 UE.CallProcessEventEx(OwnerAddress, "SetDisableHaptics", _params);
 deAlloc(_params);
end
FNR("BL4.SetDisableHaptics");

BL4.SetHapticsByValue = function(OwnerAddress, Frequency, Amplitude, Hand)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetHapticsByValue: Failed To Allocate The Params");return;end;
 Frequency = Frequency or 0
 Amplitude = Amplitude or 0
 Hand = Hand or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Frequency at +0x0, Amplitude at +0x4, Hand at +0x8
 writeFloat(_params + 0x0, Frequency)
 writeFloat(_params + 0x4, Amplitude)
 writeByte(_params + 0x8, Hand)
 UE.CallProcessEventEx(OwnerAddress, "SetHapticsByValue", _params);
 deAlloc(_params);
end
FNR("BL4.SetHapticsByValue");

BL4.SetMotionControlsEnabled = function(OwnerAddress, bEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMotionControlsEnabled: Failed To Allocate The Params");return;end;
 bEnabled = bEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnabled at +0x0
 writeByte(_params + 0x0, bEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetMotionControlsEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetMotionControlsEnabled");

BL4.SetMouseCursorWidget = function(OwnerAddress, cursor, CursorWidget_UserWidget)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMouseCursorWidget: Failed To Allocate The Params");return;end;
 cursor = cursor or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: cursor at +0x0, CursorWidget at +0x8
 writeByte(_params + 0x0, cursor)
 writeQword(_params + 0x8, CursorWidget_UserWidget)
 UE.CallProcessEventEx(OwnerAddress, "SetMouseCursorWidget", _params);
 deAlloc(_params);
end
FNR("BL4.SetMouseCursorWidget");

BL4.SetMouseLocation = function(OwnerAddress, X, Y)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMouseLocation: Failed To Allocate The Params");return;end;
 X = X or 0
 Y = Y or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: X at +0x0, Y at +0x4
 writeInteger(_params + 0x0, X)
 writeInteger(_params + 0x4, Y)
 UE.CallProcessEventEx(OwnerAddress, "SetMouseLocation", _params);
 deAlloc(_params);
end
FNR("BL4.SetMouseLocation");

BL4.SetName = function(OwnerAddress, S)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: S at +0x0
 writeQword(_params + 0x0, S)
 UE.CallProcessEventEx(OwnerAddress, "SetName", _params);
 deAlloc(_params);
end
FNR("BL4.SetName");

BL4.SetPlayerViewRenderingSuspended = function(OwnerAddress, bInViewRenderingSuspended)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPlayerViewRenderingSuspended: Failed To Allocate The Params");return;end;
 bInViewRenderingSuspended = bInViewRenderingSuspended or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInViewRenderingSuspended at +0x0
 writeByte(_params + 0x0, bInViewRenderingSuspended)
 UE.CallProcessEventEx(OwnerAddress, "SetPlayerViewRenderingSuspended", _params);
 deAlloc(_params);
end
FNR("BL4.SetPlayerViewRenderingSuspended");

BL4.SetViewTargetWithBlend = function(NewViewTarget_Actor, BlendTime, BlendFunc, BlendExp, bLockOutgoing)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetViewTargetWithBlend: Failed To Allocate The Params");return;end;
 BlendTime = BlendTime or 0
 BlendFunc = BlendFunc or 0
 BlendExp = BlendExp or 0
 bLockOutgoing = bLockOutgoing or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewViewTarget at +0x0, BlendTime at +0x8, BlendFunc at +0xC, BlendExp at +0x10, bLockOutgoing at +0x14
 writeQword(_params + 0x0, NewViewTarget_Actor)
 writeFloat(_params + 0x8, BlendTime)
 writeByte(_params + 0xC, BlendFunc)
 writeFloat(_params + 0x10, BlendExp)
 writeByte(_params + 0x14, bLockOutgoing)
 UE.CallProcessEventEx(NewViewTarget_Actor, "SetViewTargetWithBlend", _params);
 deAlloc(_params);
end
FNR("BL4.SetViewTargetWithBlend");

BL4.SetVirtualJoystickVisibility = function(OwnerAddress, bVisible)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVirtualJoystickVisibility: Failed To Allocate The Params");return;end;
 bVisible = bVisible or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bVisible at +0x0
 writeByte(_params + 0x0, bVisible)
 UE.CallProcessEventEx(OwnerAddress, "SetVirtualJoystickVisibility", _params);
 deAlloc(_params);
end
FNR("BL4.SetVirtualJoystickVisibility");

BL4.StartFire = function(OwnerAddress, FireModeNum)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StartFire: Failed To Allocate The Params");return;end;
 FireModeNum = FireModeNum or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: FireModeNum at +0x0
 writeByte(_params + 0x0, FireModeNum)
 UE.CallProcessEventEx(OwnerAddress, "StartFire", _params);
 deAlloc(_params);
end
FNR("BL4.StartFire");

BL4.StopHapticEffect = function(OwnerAddress, Hand)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StopHapticEffect: Failed To Allocate The Params");return;end;
 Hand = Hand or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Hand at +0x0
 writeByte(_params + 0x0, Hand)
 UE.CallProcessEventEx(OwnerAddress, "StopHapticEffect", _params);
 deAlloc(_params);
end
FNR("BL4.StopHapticEffect");

BL4.StreamingSourceShouldActivate = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StreamingSourceShouldActivate: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "StreamingSourceShouldActivate", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.StreamingSourceShouldActivate");

BL4.StreamingSourceShouldBlockOnSlowStreaming = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StreamingSourceShouldBlockOnSlowStreaming: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "StreamingSourceShouldBlockOnSlowStreaming", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.StreamingSourceShouldBlockOnSlowStreaming");

BL4.SwitchLevel = function(OwnerAddress, URL)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SwitchLevel: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: URL at +0x0
 writeQword(_params + 0x0, URL)
 UE.CallProcessEventEx(OwnerAddress, "SwitchLevel", _params);
 deAlloc(_params);
end
FNR("BL4.SwitchLevel");

BL4.TestServerLevelVisibilityChange = function(OwnerAddress, packagename, Filename)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TestServerLevelVisibilityChange: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: packagename at +0x0, Filename at +0x8
 writeQword(_params + 0x0, packagename)
 writeQword(_params + 0x8, Filename)
 UE.CallProcessEventEx(OwnerAddress, "TestServerLevelVisibilityChange", _params);
 deAlloc(_params);
end
FNR("BL4.TestServerLevelVisibilityChange");

BL4.ToggleSpeaking = function(OwnerAddress, bInSpeaking)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ToggleSpeaking: Failed To Allocate The Params");return;end;
 bInSpeaking = bInSpeaking or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInSpeaking at +0x0
 writeByte(_params + 0x0, bInSpeaking)
 UE.CallProcessEventEx(OwnerAddress, "ToggleSpeaking", _params);
 deAlloc(_params);
end
FNR("BL4.ToggleSpeaking");

BL4.WasInputKeyJustPressed = function(OwnerAddress, Key)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.WasInputKeyJustPressed: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Key at +0x0
 writeQword(_params + 0x0, Key)
 UE.CallProcessEventEx(OwnerAddress, "WasInputKeyJustPressed", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.WasInputKeyJustPressed");

BL4.WasInputKeyJustReleased = function(OwnerAddress, Key)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.WasInputKeyJustReleased: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Key at +0x0
 writeQword(_params + 0x0, Key)
 UE.CallProcessEventEx(OwnerAddress, "WasInputKeyJustReleased", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.WasInputKeyJustReleased");

