BL4.AreAllPlayersOverlappingActor = function(WorldContextObject_Object, Actor)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AreAllPlayersOverlappingActor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Actor at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Actor)
 UE.CallProcessEventEx(WorldContextObject_Object, "AreAllPlayersOverlappingActor", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AreAllPlayersOverlappingActor");

BL4.AreAllPlayersOverlappingActors = function(WorldContextObject_Object, Actors)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AreAllPlayersOverlappingActors: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Actors at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Actors)
 UE.CallProcessEventEx(WorldContextObject_Object, "AreAllPlayersOverlappingActors", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AreAllPlayersOverlappingActors");

BL4.AreAnyPlayersOverlappingActor = function(WorldContextObject_Object, Actor)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AreAnyPlayersOverlappingActor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Actor at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Actor)
 UE.CallProcessEventEx(WorldContextObject_Object, "AreAnyPlayersOverlappingActor", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AreAnyPlayersOverlappingActor");

BL4.AreAnyPlayersOverlappingActors = function(WorldContextObject_Object, Actors)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AreAnyPlayersOverlappingActors: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Actors at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Actors)
 UE.CallProcessEventEx(WorldContextObject_Object, "AreAnyPlayersOverlappingActors", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AreAnyPlayersOverlappingActors");

BL4.BranchOnAreAllPlayersOverlappingActor = function(WorldContextObject_Object, Actor, Branches)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BranchOnAreAllPlayersOverlappingActor: Failed To Allocate The Params");return;end;
 Branches = Branches or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Actor at +0x8, Branches at +0x10
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Actor)
 writeByte(_params + 0x10, Branches)
 UE.CallProcessEventEx(WorldContextObject_Object, "BranchOnAreAllPlayersOverlappingActor", _params);
 deAlloc(_params);
end
FNR("BL4.BranchOnAreAllPlayersOverlappingActor");

BL4.BranchOnAreAllPlayersOverlappingActors = function(WorldContextObject_Object, Actors, Branches)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BranchOnAreAllPlayersOverlappingActors: Failed To Allocate The Params");return;end;
 Branches = Branches or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Actors at +0x8, Branches at +0x18
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Actors)
 writeByte(_params + 0x18, Branches)
 UE.CallProcessEventEx(WorldContextObject_Object, "BranchOnAreAllPlayersOverlappingActors", _params);
 deAlloc(_params);
end
FNR("BL4.BranchOnAreAllPlayersOverlappingActors");

BL4.BranchOnAreAnyPlayersOverlappingActor = function(WorldContextObject_Object, Actor, Branches)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BranchOnAreAnyPlayersOverlappingActor: Failed To Allocate The Params");return;end;
 Branches = Branches or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Actor at +0x8, Branches at +0x10
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Actor)
 writeByte(_params + 0x10, Branches)
 UE.CallProcessEventEx(WorldContextObject_Object, "BranchOnAreAnyPlayersOverlappingActor", _params);
 deAlloc(_params);
end
FNR("BL4.BranchOnAreAnyPlayersOverlappingActor");

BL4.BranchOnAreAnyPlayersOverlappingActors = function(WorldContextObject_Object, Actors, Branches)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BranchOnAreAnyPlayersOverlappingActors: Failed To Allocate The Params");return;end;
 Branches = Branches or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Actors at +0x8, Branches at +0x18
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Actors)
 writeByte(_params + 0x18, Branches)
 UE.CallProcessEventEx(WorldContextObject_Object, "BranchOnAreAnyPlayersOverlappingActors", _params);
 deAlloc(_params);
end
FNR("BL4.BranchOnAreAnyPlayersOverlappingActors");

BL4.CalculateConeVector = function(OwnerAddress, Fraction, Origin, Direction, AngleWidth, AngleHeight)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CalculateConeVector: Failed To Allocate The Params");return;end;
 Fraction = Fraction or 0
 Origin = Origin or {X=0,Y=0,Z=0}
 Direction = Direction or {X=0,Y=0,Z=0}
 AngleWidth = AngleWidth or 0
 AngleHeight = AngleHeight or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Fraction at +0x0, Origin at +0x8, Direction at +0x20, AngleWidth at +0x38, AngleHeight at +0x3C
 writeFloat(_params + 0x0, Fraction)
 writeDouble(_params + 0x8, (Origin and Origin.X) or 0)
 writeDouble(_params + 0x10, (Origin and Origin.Y) or 0)
 writeDouble(_params + 0x18, (Origin and Origin.Z) or 0)
 writeDouble(_params + 0x20, (Direction and Direction.X) or 0)
 writeDouble(_params + 0x28, (Direction and Direction.Y) or 0)
 writeDouble(_params + 0x30, (Direction and Direction.Z) or 0)
 writeFloat(_params + 0x38, AngleWidth)
 writeFloat(_params + 0x3C, AngleHeight)
 UE.CallProcessEventEx(OwnerAddress, "CalculateConeVector", _params);
 local RET={X=readFloat(_params+0x40),Y=readFloat(_params+0x48),Z=readFloat(_params+0x50)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.CalculateConeVector");

BL4.GeneratePointsOnCone = function(OwnerAddress, Origin, Direction, SampleCount, SpreadAngle, RotateAngle, OriginOffset)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GeneratePointsOnCone: Failed To Allocate The Params");return;end;
 Origin = Origin or {X=0,Y=0,Z=0}
 Direction = Direction or {X=0,Y=0,Z=0}
 SampleCount = SampleCount or 0
 SpreadAngle = SpreadAngle or 0
 RotateAngle = RotateAngle or 0
 OriginOffset = OriginOffset or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Origin at +0x0, Direction at +0x18, SampleCount at +0x30, SpreadAngle at +0x34, RotateAngle at +0x38, OriginOffset at +0x3C
 writeDouble(_params + 0x0, (Origin and Origin.X) or 0)
 writeDouble(_params + 0x8, (Origin and Origin.Y) or 0)
 writeDouble(_params + 0x10, (Origin and Origin.Z) or 0)
 writeDouble(_params + 0x18, (Direction and Direction.X) or 0)
 writeDouble(_params + 0x20, (Direction and Direction.Y) or 0)
 writeDouble(_params + 0x28, (Direction and Direction.Z) or 0)
 writeInteger(_params + 0x30, SampleCount)
 writeFloat(_params + 0x34, SpreadAngle)
 writeFloat(_params + 0x38, RotateAngle)
 writeFloat(_params + 0x3C, OriginOffset)
 UE.CallProcessEventEx(OwnerAddress, "GeneratePointsOnCone", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GeneratePointsOnCone");

BL4.GeneratePointsOnFan = function(OwnerAddress, Origin, Direction, SampleCount, SpreadAngle, RotateAngle, OriginOffset)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GeneratePointsOnFan: Failed To Allocate The Params");return;end;
 Origin = Origin or {X=0,Y=0,Z=0}
 Direction = Direction or {X=0,Y=0,Z=0}
 SampleCount = SampleCount or 0
 SpreadAngle = SpreadAngle or 0
 RotateAngle = RotateAngle or 0
 OriginOffset = OriginOffset or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Origin at +0x0, Direction at +0x18, SampleCount at +0x30, SpreadAngle at +0x34, RotateAngle at +0x38, OriginOffset at +0x3C
 writeDouble(_params + 0x0, (Origin and Origin.X) or 0)
 writeDouble(_params + 0x8, (Origin and Origin.Y) or 0)
 writeDouble(_params + 0x10, (Origin and Origin.Z) or 0)
 writeDouble(_params + 0x18, (Direction and Direction.X) or 0)
 writeDouble(_params + 0x20, (Direction and Direction.Y) or 0)
 writeDouble(_params + 0x28, (Direction and Direction.Z) or 0)
 writeInteger(_params + 0x30, SampleCount)
 writeFloat(_params + 0x34, SpreadAngle)
 writeFloat(_params + 0x38, RotateAngle)
 writeFloat(_params + 0x3C, OriginOffset)
 UE.CallProcessEventEx(OwnerAddress, "GeneratePointsOnFan", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GeneratePointsOnFan");

BL4.GenerateShortestPathBetweenPoints = function(WorldContext_Object, LatentInfo, Start, points, OutIndices)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GenerateShortestPathBetweenPoints: Failed To Allocate The Params");return;end;
 Start = Start or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContext at +0x0, LatentInfo at +0x8, Start at +0x20, points at +0x38, OutIndices at +0x48
 writeQword(_params + 0x0, WorldContext_Object)
 writeQword(_params + 0x8, LatentInfo)
 writeDouble(_params + 0x20, (Start and Start.X) or 0)
 writeDouble(_params + 0x28, (Start and Start.Y) or 0)
 writeDouble(_params + 0x30, (Start and Start.Z) or 0)
 writeQword(_params + 0x38, points)
 writeQword(_params + 0x48, OutIndices)
 UE.CallProcessEventEx(WorldContext_Object, "GenerateShortestPathBetweenPoints", _params);
 deAlloc(_params);
end
FNR("BL4.GenerateShortestPathBetweenPoints");

BL4.GetAssociatedPrimaryCharacter = function(Actor)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAssociatedPrimaryCharacter: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Actor at +0x0
 writeQword(_params + 0x0, Actor)
 UE.CallProcessEventEx(Actor, "GetAssociatedPrimaryCharacter", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAssociatedPrimaryCharacter");

BL4.GetGameplayDirector = function(WorldContextObject_Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetGameplayDirector: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetGameplayDirector", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetGameplayDirector");

BL4.GetViewRelativeSpawnLocation = function(Source_Actor, RelativeLocation, ViewRelativeOffset)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetViewRelativeSpawnLocation: Failed To Allocate The Params");return;end;
 ViewRelativeOffset = ViewRelativeOffset or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Source at +0x0, RelativeLocation at +0x8, ViewRelativeOffset at +0x68
 writeQword(_params + 0x0, Source_Actor)
 writeQword(_params + 0x8, RelativeLocation)
 writeDouble(_params + 0x68, (ViewRelativeOffset and ViewRelativeOffset.X) or 0)
 writeDouble(_params + 0x70, (ViewRelativeOffset and ViewRelativeOffset.Y) or 0)
 writeDouble(_params + 0x78, (ViewRelativeOffset and ViewRelativeOffset.Z) or 0)
 UE.CallProcessEventEx(Source_Actor, "GetViewRelativeSpawnLocation", _params);
 local RET={X=readFloat(_params+0x80),Y=readFloat(_params+0x88),Z=readFloat(_params+0x90)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetViewRelativeSpawnLocation");

BL4.SetCanCharacterStepUpOn = function(Actor, CanCharacterStepUpOn)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCanCharacterStepUpOn: Failed To Allocate The Params");return;end;
 CanCharacterStepUpOn = CanCharacterStepUpOn or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Actor at +0x0, CanCharacterStepUpOn at +0x8
 writeQword(_params + 0x0, Actor)
 writeByte(_params + 0x8, CanCharacterStepUpOn)
 UE.CallProcessEventEx(Actor, "SetCanCharacterStepUpOn", _params);
 local RET=readByte(_params + 0x9);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCanCharacterStepUpOn");

BL4.SpawnEmitterAtActorSocketMulticast = function(WorldContextObject_Object, EmitterTemplate_FXSystemAsset, Actor, socket, bAutoDestroy, bAutoActivateSystem)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnEmitterAtActorSocketMulticast: Failed To Allocate The Params");return;end;
 bAutoDestroy = bAutoDestroy or false
 bAutoActivateSystem = bAutoActivateSystem or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, EmitterTemplate at +0x8, Actor at +0x10, socket at +0x18, bAutoDestroy at +0x20, bAutoActivateSystem at +0x21
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, EmitterTemplate_FXSystemAsset)
 writeQword(_params + 0x10, Actor)
 writeQword(_params + 0x18, socket)
 writeByte(_params + 0x20, bAutoDestroy)
 writeByte(_params + 0x21, bAutoActivateSystem)
 UE.CallProcessEventEx(WorldContextObject_Object, "SpawnEmitterAtActorSocketMulticast", _params);
 deAlloc(_params);
end
FNR("BL4.SpawnEmitterAtActorSocketMulticast");

BL4.SpawnEmitterAtComponentSocketMulticast = function(WorldContextObject_Object, EmitterTemplate_FXSystemAsset, Component_SceneComponent, socket, bAutoDestroy, bAutoActivateSystem)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnEmitterAtComponentSocketMulticast: Failed To Allocate The Params");return;end;
 bAutoDestroy = bAutoDestroy or false
 bAutoActivateSystem = bAutoActivateSystem or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, EmitterTemplate at +0x8, Component at +0x10, socket at +0x18, bAutoDestroy at +0x20, bAutoActivateSystem at +0x21
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, EmitterTemplate_FXSystemAsset)
 writeQword(_params + 0x10, Component_SceneComponent)
 writeQword(_params + 0x18, socket)
 writeByte(_params + 0x20, bAutoDestroy)
 writeByte(_params + 0x21, bAutoActivateSystem)
 UE.CallProcessEventEx(WorldContextObject_Object, "SpawnEmitterAtComponentSocketMulticast", _params);
 deAlloc(_params);
end
FNR("BL4.SpawnEmitterAtComponentSocketMulticast");

BL4.SpawnEmitterAtLocation_Generic = function(WorldContextObject_Object, EmitterTemplate_FXSystemAsset, EmitterParameters, Location, Rotation, scale, bAutoDestroy, PoolingMethod, bAutoActivateSystem, Visibility, Replication)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnEmitterAtLocation_Generic: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 Rotation = Rotation or {Pitch=0,Yaw=0,Roll=0}
 scale = scale or {X=0,Y=0,Z=0}
 bAutoDestroy = bAutoDestroy or false
 PoolingMethod = PoolingMethod or 0
 bAutoActivateSystem = bAutoActivateSystem or false
 Visibility = Visibility or 0
 Replication = Replication or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, EmitterTemplate at +0x8, EmitterParameters at +0x10, Location at +0x20, Rotation at +0x38, scale at +0x50, bAutoDestroy at +0x68, PoolingMethod at +0x69, bAutoActivateSystem at +0x6A, Visibility at +0x6B, Replication at +0x6C
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, EmitterTemplate_FXSystemAsset)
 writeQword(_params + 0x10, EmitterParameters)
 writeDouble(_params + 0x20, (Location and Location.X) or 0)
 writeDouble(_params + 0x28, (Location and Location.Y) or 0)
 writeDouble(_params + 0x30, (Location and Location.Z) or 0)
 writeDouble(_params + 0x38, (Rotation and Rotation.Pitch) or 0)
 writeDouble(_params + 0x40, (Rotation and Rotation.Yaw) or 0)
 writeDouble(_params + 0x48, (Rotation and Rotation.Roll) or 0)
 writeDouble(_params + 0x50, (scale and scale.X) or 0)
 writeDouble(_params + 0x58, (scale and scale.Y) or 0)
 writeDouble(_params + 0x60, (scale and scale.Z) or 0)
 writeByte(_params + 0x68, bAutoDestroy)
 writeByte(_params + 0x69, PoolingMethod)
 writeByte(_params + 0x6A, bAutoActivateSystem)
 writeByte(_params + 0x6B, Visibility)
 writeByte(_params + 0x6C, Replication)
 UE.CallProcessEventEx(WorldContextObject_Object, "SpawnEmitterAtLocation_Generic", _params);
 local RET=readQword(_params + 0x70);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SpawnEmitterAtLocation_Generic");

BL4.SpawnEmitterAtLocation_GenericConst = function(WorldContextObject_Object, EmitterTemplate_FXSystemAsset, EmitterParameters, Location, Rotation, scale, bAutoDestroy, PoolingMethod, bAutoActivateSystem, Visibility, Replication)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnEmitterAtLocation_GenericConst: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 Rotation = Rotation or {Pitch=0,Yaw=0,Roll=0}
 scale = scale or {X=0,Y=0,Z=0}
 bAutoDestroy = bAutoDestroy or false
 PoolingMethod = PoolingMethod or 0
 bAutoActivateSystem = bAutoActivateSystem or false
 Visibility = Visibility or 0
 Replication = Replication or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, EmitterTemplate at +0x8, EmitterParameters at +0x10, Location at +0x20, Rotation at +0x38, scale at +0x50, bAutoDestroy at +0x68, PoolingMethod at +0x69, bAutoActivateSystem at +0x6A, Visibility at +0x6B, Replication at +0x6C
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, EmitterTemplate_FXSystemAsset)
 writeQword(_params + 0x10, EmitterParameters)
 writeDouble(_params + 0x20, (Location and Location.X) or 0)
 writeDouble(_params + 0x28, (Location and Location.Y) or 0)
 writeDouble(_params + 0x30, (Location and Location.Z) or 0)
 writeDouble(_params + 0x38, (Rotation and Rotation.Pitch) or 0)
 writeDouble(_params + 0x40, (Rotation and Rotation.Yaw) or 0)
 writeDouble(_params + 0x48, (Rotation and Rotation.Roll) or 0)
 writeDouble(_params + 0x50, (scale and scale.X) or 0)
 writeDouble(_params + 0x58, (scale and scale.Y) or 0)
 writeDouble(_params + 0x60, (scale and scale.Z) or 0)
 writeByte(_params + 0x68, bAutoDestroy)
 writeByte(_params + 0x69, PoolingMethod)
 writeByte(_params + 0x6A, bAutoActivateSystem)
 writeByte(_params + 0x6B, Visibility)
 writeByte(_params + 0x6C, Replication)
 UE.CallProcessEventEx(WorldContextObject_Object, "SpawnEmitterAtLocation_GenericConst", _params);
 local RET=readQword(_params + 0x70);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SpawnEmitterAtLocation_GenericConst");

BL4.SpawnEmitterAtLocationMulticast = function(WorldContextObject_Object, EmitterTemplate_FXSystemAsset, Location, Rotation, scale, bAutoDestroy, bAutoActivateSystem)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnEmitterAtLocationMulticast: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 Rotation = Rotation or {Pitch=0,Yaw=0,Roll=0}
 scale = scale or {X=0,Y=0,Z=0}
 bAutoDestroy = bAutoDestroy or false
 bAutoActivateSystem = bAutoActivateSystem or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, EmitterTemplate at +0x8, Location at +0x10, Rotation at +0x28, scale at +0x40, bAutoDestroy at +0x58, bAutoActivateSystem at +0x59
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, EmitterTemplate_FXSystemAsset)
 writeDouble(_params + 0x10, (Location and Location.X) or 0)
 writeDouble(_params + 0x18, (Location and Location.Y) or 0)
 writeDouble(_params + 0x20, (Location and Location.Z) or 0)
 writeDouble(_params + 0x28, (Rotation and Rotation.Pitch) or 0)
 writeDouble(_params + 0x30, (Rotation and Rotation.Yaw) or 0)
 writeDouble(_params + 0x38, (Rotation and Rotation.Roll) or 0)
 writeDouble(_params + 0x40, (scale and scale.X) or 0)
 writeDouble(_params + 0x48, (scale and scale.Y) or 0)
 writeDouble(_params + 0x50, (scale and scale.Z) or 0)
 writeByte(_params + 0x58, bAutoDestroy)
 writeByte(_params + 0x59, bAutoActivateSystem)
 UE.CallProcessEventEx(WorldContextObject_Object, "SpawnEmitterAtLocationMulticast", _params);
 deAlloc(_params);
end
FNR("BL4.SpawnEmitterAtLocationMulticast");

BL4.SpawnEmitterAttached_Body = function(EmitterTemplate_FXSystemAsset, EmitterParameters, AttachToActor_Actor, AttachPointName, Location, Rotation, scale, LocationType, bAutoDestroy, PoolingMethod, bAutoActivate, Visibility, Replication)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnEmitterAttached_Body: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 Rotation = Rotation or {Pitch=0,Yaw=0,Roll=0}
 scale = scale or {X=0,Y=0,Z=0}
 LocationType = LocationType or 0
 bAutoDestroy = bAutoDestroy or false
 PoolingMethod = PoolingMethod or 0
 bAutoActivate = bAutoActivate or false
 Visibility = Visibility or 0
 Replication = Replication or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: EmitterTemplate at +0x0, EmitterParameters at +0x8, AttachToActor at +0x18, AttachPointName at +0x20, Location at +0x28, Rotation at +0x40, scale at +0x58, LocationType at +0x70, bAutoDestroy at +0x71, PoolingMethod at +0x72, bAutoActivate at +0x73, Visibility at +0x74, Replication at +0x75
 writeQword(_params + 0x0, EmitterTemplate_FXSystemAsset)
 writeQword(_params + 0x8, EmitterParameters)
 writeQword(_params + 0x18, AttachToActor_Actor)
 writeQword(_params + 0x20, AttachPointName)
 writeDouble(_params + 0x28, (Location and Location.X) or 0)
 writeDouble(_params + 0x30, (Location and Location.Y) or 0)
 writeDouble(_params + 0x38, (Location and Location.Z) or 0)
 writeDouble(_params + 0x40, (Rotation and Rotation.Pitch) or 0)
 writeDouble(_params + 0x48, (Rotation and Rotation.Yaw) or 0)
 writeDouble(_params + 0x50, (Rotation and Rotation.Roll) or 0)
 writeDouble(_params + 0x58, (scale and scale.X) or 0)
 writeDouble(_params + 0x60, (scale and scale.Y) or 0)
 writeDouble(_params + 0x68, (scale and scale.Z) or 0)
 writeByte(_params + 0x70, LocationType)
 writeByte(_params + 0x71, bAutoDestroy)
 writeByte(_params + 0x72, PoolingMethod)
 writeByte(_params + 0x73, bAutoActivate)
 writeByte(_params + 0x74, Visibility)
 writeByte(_params + 0x75, Replication)
 UE.CallProcessEventEx(EmitterTemplate_FXSystemAsset, "SpawnEmitterAttached_Body", _params);
 deAlloc(_params);
end
FNR("BL4.SpawnEmitterAttached_Body");

BL4.SpawnEmitterAttached_Generic = function(EmitterTemplate_FXSystemAsset, EmitterParameters, AttachToComponent_SceneComponent, AttachPointName, Location, Rotation, scale, LocationType, bAutoDestroy, PoolingMethod, bAutoActivate, Visibility, Replication)
 local _paramsSize = 0x80
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SpawnEmitterAttached_Generic: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 Rotation = Rotation or {Pitch=0,Yaw=0,Roll=0}
 scale = scale or {X=0,Y=0,Z=0}
 LocationType = LocationType or 0
 bAutoDestroy = bAutoDestroy or false
 PoolingMethod = PoolingMethod or 0
 bAutoActivate = bAutoActivate or false
 Visibility = Visibility or 0
 Replication = Replication or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: EmitterTemplate at +0x0, EmitterParameters at +0x8, AttachToComponent at +0x18, AttachPointName at +0x20, Location at +0x28, Rotation at +0x40, scale at +0x58, LocationType at +0x70, bAutoDestroy at +0x71, PoolingMethod at +0x72, bAutoActivate at +0x73, Visibility at +0x74, Replication at +0x75
 writeQword(_params + 0x0, EmitterTemplate_FXSystemAsset)
 writeQword(_params + 0x8, EmitterParameters)
 writeQword(_params + 0x18, AttachToComponent_SceneComponent)
 writeQword(_params + 0x20, AttachPointName)
 writeDouble(_params + 0x28, (Location and Location.X) or 0)
 writeDouble(_params + 0x30, (Location and Location.Y) or 0)
 writeDouble(_params + 0x38, (Location and Location.Z) or 0)
 writeDouble(_params + 0x40, (Rotation and Rotation.Pitch) or 0)
 writeDouble(_params + 0x48, (Rotation and Rotation.Yaw) or 0)
 writeDouble(_params + 0x50, (Rotation and Rotation.Roll) or 0)
 writeDouble(_params + 0x58, (scale and scale.X) or 0)
 writeDouble(_params + 0x60, (scale and scale.Y) or 0)
 writeDouble(_params + 0x68, (scale and scale.Z) or 0)
 writeByte(_params + 0x70, LocationType)
 writeByte(_params + 0x71, bAutoDestroy)
 writeByte(_params + 0x72, PoolingMethod)
 writeByte(_params + 0x73, bAutoActivate)
 writeByte(_params + 0x74, Visibility)
 writeByte(_params + 0x75, Replication)
 UE.CallProcessEventEx(EmitterTemplate_FXSystemAsset, "SpawnEmitterAttached_Generic", _params);
 local RET=readQword(_params + 0x78);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SpawnEmitterAttached_Generic");

