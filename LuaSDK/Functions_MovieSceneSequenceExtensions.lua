BL4.AddMarkedFrame = function(Sequence_MovieSceneSequence, InMarkedFrame)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddMarkedFrame: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, InMarkedFrame at +0x8
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeQword(_params + 0x8, InMarkedFrame)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "AddMarkedFrame", _params);
 local RET=readInteger(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddMarkedFrame");

BL4.AddMarkedFrameToSequence = function(Sequence_MovieSceneSequence, InMarkedFrame, TimeUnit)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddMarkedFrameToSequence: Failed To Allocate The Params");return;end;
 TimeUnit = TimeUnit or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, InMarkedFrame at +0x8, TimeUnit at +0x28
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeQword(_params + 0x8, InMarkedFrame)
 writeByte(_params + 0x28, TimeUnit)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "AddMarkedFrameToSequence", _params);
 local RET=readInteger(_params + 0x2C);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddMarkedFrameToSequence");

BL4.AddPossessable = function(Sequence_MovieSceneSequence, ObjectToPossess_Object)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddPossessable: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, ObjectToPossess at +0x8
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeQword(_params + 0x8, ObjectToPossess_Object)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "AddPossessable", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddPossessable");

BL4.AddRootFolderToSequence = function(Sequence_MovieSceneSequence, NewFolderName)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddRootFolderToSequence: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, NewFolderName at +0x8
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeQword(_params + 0x8, NewFolderName)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "AddRootFolderToSequence", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddRootFolderToSequence");

BL4.AddSpawnableFromClass = function(Sequence_MovieSceneSequence, ClassToSpawn_Class)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddSpawnableFromClass: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, ClassToSpawn at +0x8
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeQword(_params + 0x8, ClassToSpawn_Class)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "AddSpawnableFromClass", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddSpawnableFromClass");

BL4.AddSpawnableFromInstance = function(Sequence_MovieSceneSequence, ObjectToSpawn_Object)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddSpawnableFromInstance: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, ObjectToSpawn at +0x8
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeQword(_params + 0x8, ObjectToSpawn_Object)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "AddSpawnableFromInstance", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddSpawnableFromInstance");

BL4.AddTrack = function(Sequence_MovieSceneSequence, TrackType_Class)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddTrack: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, TrackType at +0x8
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeQword(_params + 0x8, TrackType_Class)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "AddTrack", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddTrack");

BL4.AreMarkedFramesLocked = function(Sequence_MovieSceneSequence)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AreMarkedFramesLocked: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "AreMarkedFramesLocked", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AreMarkedFramesLocked");

BL4.DeleteMarkedFrame = function(Sequence_MovieSceneSequence, DeleteIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DeleteMarkedFrame: Failed To Allocate The Params");return;end;
 DeleteIndex = DeleteIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, DeleteIndex at +0x8
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeInteger(_params + 0x8, DeleteIndex)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "DeleteMarkedFrame", _params);
 deAlloc(_params);
end
FNR("BL4.DeleteMarkedFrame");

BL4.DeleteMarkedFrames = function(Sequence_MovieSceneSequence)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DeleteMarkedFrames: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "DeleteMarkedFrames", _params);
 deAlloc(_params);
end
FNR("BL4.DeleteMarkedFrames");

BL4.FindBindingById = function(Sequence_MovieSceneSequence, BindingID)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindBindingById: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, BindingID at +0x8
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeQword(_params + 0x8, BindingID)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "FindBindingById", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindBindingById");

BL4.FindBindingByName = function(Sequence_MovieSceneSequence, Name)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindBindingByName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, Name at +0x8
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeQword(_params + 0x8, Name)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "FindBindingByName", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindBindingByName");

BL4.FindMarkedFrameByFrameNumber = function(Sequence_MovieSceneSequence, InFrameNumber)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindMarkedFrameByFrameNumber: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, InFrameNumber at +0x8
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeQword(_params + 0x8, InFrameNumber)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "FindMarkedFrameByFrameNumber", _params);
 local RET=readInteger(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindMarkedFrameByFrameNumber");

BL4.FindMarkedFrameByFrameNumberInSequence = function(Sequence_MovieSceneSequence, InFrameNumber, TimeUnit)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindMarkedFrameByFrameNumberInSequence: Failed To Allocate The Params");return;end;
 TimeUnit = TimeUnit or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, InFrameNumber at +0x8, TimeUnit at +0xC
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeQword(_params + 0x8, InFrameNumber)
 writeByte(_params + 0xC, TimeUnit)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "FindMarkedFrameByFrameNumberInSequence", _params);
 local RET=readInteger(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindMarkedFrameByFrameNumberInSequence");

BL4.FindMarkedFrameByLabel = function(Sequence_MovieSceneSequence, InLabel)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindMarkedFrameByLabel: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, InLabel at +0x8
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeQword(_params + 0x8, InLabel)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "FindMarkedFrameByLabel", _params);
 local RET=readInteger(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindMarkedFrameByLabel");

BL4.FindNextMarkedFrame = function(Sequence_MovieSceneSequence, InFrameNumber, bForward)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindNextMarkedFrame: Failed To Allocate The Params");return;end;
 bForward = bForward or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, InFrameNumber at +0x8, bForward at +0xC
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeQword(_params + 0x8, InFrameNumber)
 writeByte(_params + 0xC, bForward)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "FindNextMarkedFrame", _params);
 local RET=readInteger(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindNextMarkedFrame");

BL4.FindNextMarkedFrameInSequence = function(Sequence_MovieSceneSequence, InFrameNumber, bForward, TimeUnit)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindNextMarkedFrameInSequence: Failed To Allocate The Params");return;end;
 bForward = bForward or false
 TimeUnit = TimeUnit or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, InFrameNumber at +0x8, bForward at +0xC, TimeUnit at +0xD
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeQword(_params + 0x8, InFrameNumber)
 writeByte(_params + 0xC, bForward)
 writeByte(_params + 0xD, TimeUnit)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "FindNextMarkedFrameInSequence", _params);
 local RET=readInteger(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindNextMarkedFrameInSequence");

BL4.FindTracksByExactType = function(Sequence_MovieSceneSequence, TrackType_Class)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindTracksByExactType: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, TrackType at +0x8
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeQword(_params + 0x8, TrackType_Class)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "FindTracksByExactType", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindTracksByExactType");

BL4.FindTracksByType = function(Sequence_MovieSceneSequence, TrackType_Class)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindTracksByType: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, TrackType at +0x8
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeQword(_params + 0x8, TrackType_Class)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "FindTracksByType", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindTracksByType");

BL4.GetBindingID = function(Sequence_MovieSceneSequence, InBinding)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBindingID: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, InBinding at +0x8
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeQword(_params + 0x8, InBinding)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "GetBindingID", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBindingID");

BL4.GetBindings = function(Sequence_MovieSceneSequence)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBindings: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "GetBindings", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBindings");

BL4.GetClockSource = function(InSequence_MovieSceneSequence)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetClockSource: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSequence at +0x0
 writeQword(_params + 0x0, InSequence_MovieSceneSequence)
 UE.CallProcessEventEx(InSequence_MovieSceneSequence, "GetClockSource", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetClockSource");

BL4.GetDisplayRate = function(Sequence_MovieSceneSequence)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDisplayRate: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "GetDisplayRate", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDisplayRate");

BL4.GetEvaluationType = function(InSequence_MovieSceneSequence)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetEvaluationType: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSequence at +0x0
 writeQword(_params + 0x0, InSequence_MovieSceneSequence)
 UE.CallProcessEventEx(InSequence_MovieSceneSequence, "GetEvaluationType", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetEvaluationType");

BL4.GetMarkedFrames = function(Sequence_MovieSceneSequence)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMarkedFrames: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "GetMarkedFrames", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMarkedFrames");

BL4.GetMarkedFramesFromSequence = function(Sequence_MovieSceneSequence, TimeUnit)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMarkedFramesFromSequence: Failed To Allocate The Params");return;end;
 TimeUnit = TimeUnit or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, TimeUnit at +0x8
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeByte(_params + 0x8, TimeUnit)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "GetMarkedFramesFromSequence", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMarkedFramesFromSequence");

BL4.GetMovieScene = function(Sequence_MovieSceneSequence)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMovieScene: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "GetMovieScene", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMovieScene");

BL4.GetPlaybackEnd = function(Sequence_MovieSceneSequence)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPlaybackEnd: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "GetPlaybackEnd", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPlaybackEnd");

BL4.GetPlaybackEndSeconds = function(Sequence_MovieSceneSequence)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPlaybackEndSeconds: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "GetPlaybackEndSeconds", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPlaybackEndSeconds");

BL4.GetPlaybackRange = function(Sequence_MovieSceneSequence)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPlaybackRange: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "GetPlaybackRange", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPlaybackRange");

BL4.GetPlaybackStart = function(Sequence_MovieSceneSequence)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPlaybackStart: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "GetPlaybackStart", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPlaybackStart");

BL4.GetPlaybackStartSeconds = function(Sequence_MovieSceneSequence)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPlaybackStartSeconds: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "GetPlaybackStartSeconds", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPlaybackStartSeconds");

BL4.GetPortableBindingID = function(RootSequence_MovieSceneSequence, DestinationSequence_MovieSceneSequence, InBinding)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPortableBindingID: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: RootSequence at +0x0, DestinationSequence at +0x8, InBinding at +0x10
 writeQword(_params + 0x0, RootSequence_MovieSceneSequence)
 writeQword(_params + 0x8, DestinationSequence_MovieSceneSequence)
 writeQword(_params + 0x10, InBinding)
 UE.CallProcessEventEx(RootSequence_MovieSceneSequence, "GetPortableBindingID", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPortableBindingID");

BL4.GetPossessables = function(Sequence_MovieSceneSequence)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPossessables: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "GetPossessables", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPossessables");

BL4.GetRootFoldersInSequence = function(Sequence_MovieSceneSequence)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRootFoldersInSequence: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "GetRootFoldersInSequence", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRootFoldersInSequence");

BL4.GetSpawnables = function(Sequence_MovieSceneSequence)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSpawnables: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "GetSpawnables", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSpawnables");

BL4.GetTickResolution = function(Sequence_MovieSceneSequence)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTickResolution: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "GetTickResolution", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTickResolution");

BL4.GetTracks = function(Sequence_MovieSceneSequence)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTracks: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "GetTracks", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTracks");

BL4.GetViewRangeEnd = function(InSequence_MovieSceneSequence)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetViewRangeEnd: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSequence at +0x0
 writeQword(_params + 0x0, InSequence_MovieSceneSequence)
 UE.CallProcessEventEx(InSequence_MovieSceneSequence, "GetViewRangeEnd", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetViewRangeEnd");

BL4.GetViewRangeStart = function(InSequence_MovieSceneSequence)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetViewRangeStart: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSequence at +0x0
 writeQword(_params + 0x0, InSequence_MovieSceneSequence)
 UE.CallProcessEventEx(InSequence_MovieSceneSequence, "GetViewRangeStart", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetViewRangeStart");

BL4.GetWorkRangeEnd = function(InSequence_MovieSceneSequence)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetWorkRangeEnd: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSequence at +0x0
 writeQword(_params + 0x0, InSequence_MovieSceneSequence)
 UE.CallProcessEventEx(InSequence_MovieSceneSequence, "GetWorkRangeEnd", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetWorkRangeEnd");

BL4.GetWorkRangeStart = function(InSequence_MovieSceneSequence)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetWorkRangeStart: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSequence at +0x0
 writeQword(_params + 0x0, InSequence_MovieSceneSequence)
 UE.CallProcessEventEx(InSequence_MovieSceneSequence, "GetWorkRangeStart", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetWorkRangeStart");

BL4.IsPlaybackRangeLocked = function(Sequence_MovieSceneSequence)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsPlaybackRangeLocked: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "IsPlaybackRangeLocked", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsPlaybackRangeLocked");

BL4.IsReadOnly = function(Sequence_MovieSceneSequence)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsReadOnly: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "IsReadOnly", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsReadOnly");

BL4.LocateBoundObjects = function(Sequence_MovieSceneSequence, InBinding, Context_Object)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LocateBoundObjects: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, InBinding at +0x8, Context at +0x20
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeQword(_params + 0x8, InBinding)
 writeQword(_params + 0x20, Context_Object)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "LocateBoundObjects", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.LocateBoundObjects");

BL4.MakeRange = function(Sequence_MovieSceneSequence, StartFrame, Duration)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeRange: Failed To Allocate The Params");return;end;
 StartFrame = StartFrame or 0
 Duration = Duration or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, StartFrame at +0x8, Duration at +0xC
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeInteger(_params + 0x8, StartFrame)
 writeInteger(_params + 0xC, Duration)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "MakeRange", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeRange");

BL4.MakeRangeSeconds = function(Sequence_MovieSceneSequence, StartTime, Duration)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeRangeSeconds: Failed To Allocate The Params");return;end;
 StartTime = StartTime or 0
 Duration = Duration or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, StartTime at +0x8, Duration at +0xC
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeFloat(_params + 0x8, StartTime)
 writeFloat(_params + 0xC, Duration)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "MakeRangeSeconds", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeRangeSeconds");

BL4.RemoveRootFolderFromSequence = function(Sequence_MovieSceneSequence, Folder_MovieSceneFolder)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveRootFolderFromSequence: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, Folder at +0x8
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeQword(_params + 0x8, Folder_MovieSceneFolder)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "RemoveRootFolderFromSequence", _params);
 deAlloc(_params);
end
FNR("BL4.RemoveRootFolderFromSequence");

BL4.RemoveTrack = function(Sequence_MovieSceneSequence, Track_MovieSceneTrack)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveTrack: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, Track at +0x8
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeQword(_params + 0x8, Track_MovieSceneTrack)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "RemoveTrack", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RemoveTrack");

BL4.ResolveBindingID = function(RootSequence_MovieSceneSequence, InObjectBindingID)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ResolveBindingID: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: RootSequence at +0x0, InObjectBindingID at +0x8
 writeQword(_params + 0x0, RootSequence_MovieSceneSequence)
 writeQword(_params + 0x8, InObjectBindingID)
 UE.CallProcessEventEx(RootSequence_MovieSceneSequence, "ResolveBindingID", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ResolveBindingID");

BL4.SetClockSource = function(InSequence_MovieSceneSequence, InClockSource)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetClockSource: Failed To Allocate The Params");return;end;
 InClockSource = InClockSource or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSequence at +0x0, InClockSource at +0x8
 writeQword(_params + 0x0, InSequence_MovieSceneSequence)
 writeByte(_params + 0x8, InClockSource)
 UE.CallProcessEventEx(InSequence_MovieSceneSequence, "SetClockSource", _params);
 deAlloc(_params);
end
FNR("BL4.SetClockSource");

BL4.SetDisplayRate = function(Sequence_MovieSceneSequence, DisplayRate)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDisplayRate: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, DisplayRate at +0x8
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeQword(_params + 0x8, DisplayRate)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "SetDisplayRate", _params);
 deAlloc(_params);
end
FNR("BL4.SetDisplayRate");

BL4.SetEvaluationType = function(InSequence_MovieSceneSequence, InEvaluationType)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetEvaluationType: Failed To Allocate The Params");return;end;
 InEvaluationType = InEvaluationType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSequence at +0x0, InEvaluationType at +0x8
 writeQword(_params + 0x0, InSequence_MovieSceneSequence)
 writeByte(_params + 0x8, InEvaluationType)
 UE.CallProcessEventEx(InSequence_MovieSceneSequence, "SetEvaluationType", _params);
 deAlloc(_params);
end
FNR("BL4.SetEvaluationType");

BL4.SetMarkedFrame = function(Sequence_MovieSceneSequence, InMarkIndex, InFrameNumber)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMarkedFrame: Failed To Allocate The Params");return;end;
 InMarkIndex = InMarkIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, InMarkIndex at +0x8, InFrameNumber at +0xC
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeInteger(_params + 0x8, InMarkIndex)
 writeQword(_params + 0xC, InFrameNumber)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "SetMarkedFrame", _params);
 deAlloc(_params);
end
FNR("BL4.SetMarkedFrame");

BL4.SetMarkedFrameInSequence = function(Sequence_MovieSceneSequence, InMarkIndex, InFrameNumber, TimeUnit)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMarkedFrameInSequence: Failed To Allocate The Params");return;end;
 InMarkIndex = InMarkIndex or 0
 TimeUnit = TimeUnit or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, InMarkIndex at +0x8, InFrameNumber at +0xC, TimeUnit at +0x10
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeInteger(_params + 0x8, InMarkIndex)
 writeQword(_params + 0xC, InFrameNumber)
 writeByte(_params + 0x10, TimeUnit)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "SetMarkedFrameInSequence", _params);
 deAlloc(_params);
end
FNR("BL4.SetMarkedFrameInSequence");

BL4.SetMarkedFramesLocked = function(Sequence_MovieSceneSequence, bInLocked)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMarkedFramesLocked: Failed To Allocate The Params");return;end;
 bInLocked = bInLocked or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, bInLocked at +0x8
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeByte(_params + 0x8, bInLocked)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "SetMarkedFramesLocked", _params);
 deAlloc(_params);
end
FNR("BL4.SetMarkedFramesLocked");

BL4.SetPlaybackEnd = function(Sequence_MovieSceneSequence, EndFrame)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPlaybackEnd: Failed To Allocate The Params");return;end;
 EndFrame = EndFrame or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, EndFrame at +0x8
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeInteger(_params + 0x8, EndFrame)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "SetPlaybackEnd", _params);
 deAlloc(_params);
end
FNR("BL4.SetPlaybackEnd");

BL4.SetPlaybackEndSeconds = function(Sequence_MovieSceneSequence, EndTime)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPlaybackEndSeconds: Failed To Allocate The Params");return;end;
 EndTime = EndTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, EndTime at +0x8
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeFloat(_params + 0x8, EndTime)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "SetPlaybackEndSeconds", _params);
 deAlloc(_params);
end
FNR("BL4.SetPlaybackEndSeconds");

BL4.SetPlaybackRangeLocked = function(Sequence_MovieSceneSequence, bInLocked)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPlaybackRangeLocked: Failed To Allocate The Params");return;end;
 bInLocked = bInLocked or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, bInLocked at +0x8
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeByte(_params + 0x8, bInLocked)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "SetPlaybackRangeLocked", _params);
 deAlloc(_params);
end
FNR("BL4.SetPlaybackRangeLocked");

BL4.SetPlaybackStart = function(Sequence_MovieSceneSequence, StartFrame)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPlaybackStart: Failed To Allocate The Params");return;end;
 StartFrame = StartFrame or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, StartFrame at +0x8
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeInteger(_params + 0x8, StartFrame)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "SetPlaybackStart", _params);
 deAlloc(_params);
end
FNR("BL4.SetPlaybackStart");

BL4.SetPlaybackStartSeconds = function(Sequence_MovieSceneSequence, StartTime)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPlaybackStartSeconds: Failed To Allocate The Params");return;end;
 StartTime = StartTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, StartTime at +0x8
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeFloat(_params + 0x8, StartTime)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "SetPlaybackStartSeconds", _params);
 deAlloc(_params);
end
FNR("BL4.SetPlaybackStartSeconds");

BL4.SetReadOnly = function(Sequence_MovieSceneSequence, bInReadOnly)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetReadOnly: Failed To Allocate The Params");return;end;
 bInReadOnly = bInReadOnly or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, bInReadOnly at +0x8
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeByte(_params + 0x8, bInReadOnly)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "SetReadOnly", _params);
 deAlloc(_params);
end
FNR("BL4.SetReadOnly");

BL4.SetTickResolution = function(Sequence_MovieSceneSequence, TickResolution)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTickResolution: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, TickResolution at +0x8
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeQword(_params + 0x8, TickResolution)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "SetTickResolution", _params);
 deAlloc(_params);
end
FNR("BL4.SetTickResolution");

BL4.SetTickResolutionDirectly = function(Sequence_MovieSceneSequence, TickResolution)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTickResolutionDirectly: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0, TickResolution at +0x8
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 writeQword(_params + 0x8, TickResolution)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "SetTickResolutionDirectly", _params);
 deAlloc(_params);
end
FNR("BL4.SetTickResolutionDirectly");

BL4.SetViewRangeEnd = function(InSequence_MovieSceneSequence, EndTimeInSeconds)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetViewRangeEnd: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSequence at +0x0, EndTimeInSeconds at +0x8
 writeQword(_params + 0x0, InSequence_MovieSceneSequence)
 writeQword(_params + 0x8, EndTimeInSeconds)
 UE.CallProcessEventEx(InSequence_MovieSceneSequence, "SetViewRangeEnd", _params);
 deAlloc(_params);
end
FNR("BL4.SetViewRangeEnd");

BL4.SetViewRangeStart = function(InSequence_MovieSceneSequence, StartTimeInSeconds)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetViewRangeStart: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSequence at +0x0, StartTimeInSeconds at +0x8
 writeQword(_params + 0x0, InSequence_MovieSceneSequence)
 writeQword(_params + 0x8, StartTimeInSeconds)
 UE.CallProcessEventEx(InSequence_MovieSceneSequence, "SetViewRangeStart", _params);
 deAlloc(_params);
end
FNR("BL4.SetViewRangeStart");

BL4.SetWorkRangeEnd = function(InSequence_MovieSceneSequence, EndTimeInSeconds)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetWorkRangeEnd: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSequence at +0x0, EndTimeInSeconds at +0x8
 writeQword(_params + 0x0, InSequence_MovieSceneSequence)
 writeQword(_params + 0x8, EndTimeInSeconds)
 UE.CallProcessEventEx(InSequence_MovieSceneSequence, "SetWorkRangeEnd", _params);
 deAlloc(_params);
end
FNR("BL4.SetWorkRangeEnd");

BL4.SetWorkRangeStart = function(InSequence_MovieSceneSequence, StartTimeInSeconds)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetWorkRangeStart: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSequence at +0x0, StartTimeInSeconds at +0x8
 writeQword(_params + 0x0, InSequence_MovieSceneSequence)
 writeQword(_params + 0x8, StartTimeInSeconds)
 UE.CallProcessEventEx(InSequence_MovieSceneSequence, "SetWorkRangeStart", _params);
 deAlloc(_params);
end
FNR("BL4.SetWorkRangeStart");

BL4.SortMarkedFrames = function(Sequence_MovieSceneSequence)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SortMarkedFrames: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Sequence at +0x0
 writeQword(_params + 0x0, Sequence_MovieSceneSequence)
 UE.CallProcessEventEx(Sequence_MovieSceneSequence, "SortMarkedFrames", _params);
 deAlloc(_params);
end
FNR("BL4.SortMarkedFrames");

