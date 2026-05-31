BL4.CanPause = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CanPause: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "CanPause", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CanPause");

BL4.CanPlaySource = function(MediaSource)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CanPlaySource: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MediaSource at +0x0
 writeQword(_params + 0x0, MediaSource)
 UE.CallProcessEventEx(MediaSource, "CanPlaySource", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CanPlaySource");

BL4.CanPlayUrl = function(OwnerAddress, URL)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CanPlayUrl: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: URL at +0x0
 writeQword(_params + 0x0, URL)
 UE.CallProcessEventEx(OwnerAddress, "CanPlayUrl", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CanPlayUrl");

BL4.GetAudioTrackChannels = function(OwnerAddress, TrackIndex, FormatIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAudioTrackChannels: Failed To Allocate The Params");return;end;
 TrackIndex = TrackIndex or 0
 FormatIndex = FormatIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TrackIndex at +0x0, FormatIndex at +0x4
 writeInteger(_params + 0x0, TrackIndex)
 writeInteger(_params + 0x4, FormatIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetAudioTrackChannels", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAudioTrackChannels");

BL4.GetAudioTrackSampleRate = function(OwnerAddress, TrackIndex, FormatIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAudioTrackSampleRate: Failed To Allocate The Params");return;end;
 TrackIndex = TrackIndex or 0
 FormatIndex = FormatIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TrackIndex at +0x0, FormatIndex at +0x4
 writeInteger(_params + 0x0, TrackIndex)
 writeInteger(_params + 0x4, FormatIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetAudioTrackSampleRate", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAudioTrackSampleRate");

BL4.GetAudioTrackType = function(OwnerAddress, TrackIndex, FormatIndex)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAudioTrackType: Failed To Allocate The Params");return;end;
 TrackIndex = TrackIndex or 0
 FormatIndex = FormatIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TrackIndex at +0x0, FormatIndex at +0x4
 writeInteger(_params + 0x0, TrackIndex)
 writeInteger(_params + 0x4, FormatIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetAudioTrackType", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAudioTrackType");

BL4.GetDesiredPlayerName = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDesiredPlayerName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetDesiredPlayerName", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDesiredPlayerName");

BL4.GetDisplayTime = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDisplayTime: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetDisplayTime", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDisplayTime");

BL4.GetDisplayTimeStamp = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDisplayTimeStamp: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetDisplayTimeStamp", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDisplayTimeStamp");

BL4.GetDuration = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDuration: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetDuration", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDuration");

BL4.GetHorizontalFieldOfView = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHorizontalFieldOfView: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetHorizontalFieldOfView", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHorizontalFieldOfView");

BL4.GetMediaMetadataItems = function(OwnerAddress)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMediaMetadataItems: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetMediaMetadataItems", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMediaMetadataItems");

BL4.GetMediaName = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMediaName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetMediaName", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMediaName");

BL4.GetNumTrackFormats = function(OwnerAddress, TrackType, TrackIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumTrackFormats: Failed To Allocate The Params");return;end;
 TrackType = TrackType or 0
 TrackIndex = TrackIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TrackType at +0x0, TrackIndex at +0x4
 writeByte(_params + 0x0, TrackType)
 writeInteger(_params + 0x4, TrackIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetNumTrackFormats", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumTrackFormats");

BL4.GetNumTracks = function(OwnerAddress, TrackType)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumTracks: Failed To Allocate The Params");return;end;
 TrackType = TrackType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: TrackType at +0x0
 writeByte(_params + 0x0, TrackType)
 UE.CallProcessEventEx(OwnerAddress, "GetNumTracks", _params);
 local RET=readInteger(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumTracks");

BL4.GetPlaybackTimeRange = function(OwnerAddress, InRangeToGet)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPlaybackTimeRange: Failed To Allocate The Params");return;end;
 InRangeToGet = InRangeToGet or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InRangeToGet at +0x0
 writeByte(_params + 0x0, InRangeToGet)
 UE.CallProcessEventEx(OwnerAddress, "GetPlaybackTimeRange", _params);
 local RET=readQword(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPlaybackTimeRange");

BL4.GetPlayerName = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPlayerName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetPlayerName", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPlayerName");

BL4.GetPlaylist = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPlaylist: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetPlaylist", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPlaylist");

BL4.GetPlaylistIndex = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPlaylistIndex: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetPlaylistIndex", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPlaylistIndex");

BL4.GetRate = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRate: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetRate", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRate");

BL4.GetSelectedTrack = function(OwnerAddress, TrackType)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSelectedTrack: Failed To Allocate The Params");return;end;
 TrackType = TrackType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: TrackType at +0x0
 writeByte(_params + 0x0, TrackType)
 UE.CallProcessEventEx(OwnerAddress, "GetSelectedTrack", _params);
 local RET=readInteger(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSelectedTrack");

BL4.GetSupportedRates = function(OwnerAddress, OutRates, Unthinned)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSupportedRates: Failed To Allocate The Params");return;end;
 Unthinned = Unthinned or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OutRates at +0x0, Unthinned at +0x10
 writeQword(_params + 0x0, OutRates)
 writeByte(_params + 0x10, Unthinned)
 UE.CallProcessEventEx(OwnerAddress, "GetSupportedRates", _params);
 deAlloc(_params);
end
FNR("BL4.GetSupportedRates");

BL4.GetTime = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTime: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetTime", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTime");

BL4.GetTimeDelay = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTimeDelay: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetTimeDelay", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTimeDelay");

BL4.GetTimeStamp = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTimeStamp: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetTimeStamp", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTimeStamp");

BL4.GetTrackDisplayName = function(OwnerAddress, TrackType, TrackIndex)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTrackDisplayName: Failed To Allocate The Params");return;end;
 TrackType = TrackType or 0
 TrackIndex = TrackIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TrackType at +0x0, TrackIndex at +0x4
 writeByte(_params + 0x0, TrackType)
 writeInteger(_params + 0x4, TrackIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetTrackDisplayName", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTrackDisplayName");

BL4.GetTrackFormat = function(OwnerAddress, TrackType, TrackIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTrackFormat: Failed To Allocate The Params");return;end;
 TrackType = TrackType or 0
 TrackIndex = TrackIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TrackType at +0x0, TrackIndex at +0x4
 writeByte(_params + 0x0, TrackType)
 writeInteger(_params + 0x4, TrackIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetTrackFormat", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTrackFormat");

BL4.GetTrackLanguage = function(OwnerAddress, TrackType, TrackIndex)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTrackLanguage: Failed To Allocate The Params");return;end;
 TrackType = TrackType or 0
 TrackIndex = TrackIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TrackType at +0x0, TrackIndex at +0x4
 writeByte(_params + 0x0, TrackType)
 writeInteger(_params + 0x4, TrackIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetTrackLanguage", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTrackLanguage");

BL4.GetUrl = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetUrl: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetUrl", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetUrl");

BL4.GetVerticalFieldOfView = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVerticalFieldOfView: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetVerticalFieldOfView", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVerticalFieldOfView");

BL4.GetVideoTrackAspectRatio = function(OwnerAddress, TrackIndex, FormatIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVideoTrackAspectRatio: Failed To Allocate The Params");return;end;
 TrackIndex = TrackIndex or 0
 FormatIndex = FormatIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TrackIndex at +0x0, FormatIndex at +0x4
 writeInteger(_params + 0x0, TrackIndex)
 writeInteger(_params + 0x4, FormatIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetVideoTrackAspectRatio", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVideoTrackAspectRatio");

BL4.GetVideoTrackDimensions = function(OwnerAddress, TrackIndex, FormatIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVideoTrackDimensions: Failed To Allocate The Params");return;end;
 TrackIndex = TrackIndex or 0
 FormatIndex = FormatIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TrackIndex at +0x0, FormatIndex at +0x4
 writeInteger(_params + 0x0, TrackIndex)
 writeInteger(_params + 0x4, FormatIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetVideoTrackDimensions", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVideoTrackDimensions");

BL4.GetVideoTrackFrameRate = function(OwnerAddress, TrackIndex, FormatIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVideoTrackFrameRate: Failed To Allocate The Params");return;end;
 TrackIndex = TrackIndex or 0
 FormatIndex = FormatIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TrackIndex at +0x0, FormatIndex at +0x4
 writeInteger(_params + 0x0, TrackIndex)
 writeInteger(_params + 0x4, FormatIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetVideoTrackFrameRate", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVideoTrackFrameRate");

BL4.GetVideoTrackFrameRates = function(OwnerAddress, TrackIndex, FormatIndex)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVideoTrackFrameRates: Failed To Allocate The Params");return;end;
 TrackIndex = TrackIndex or 0
 FormatIndex = FormatIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TrackIndex at +0x0, FormatIndex at +0x4
 writeInteger(_params + 0x0, TrackIndex)
 writeInteger(_params + 0x4, FormatIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetVideoTrackFrameRates", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVideoTrackFrameRates");

BL4.GetVideoTrackType = function(OwnerAddress, TrackIndex, FormatIndex)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVideoTrackType: Failed To Allocate The Params");return;end;
 TrackIndex = TrackIndex or 0
 FormatIndex = FormatIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TrackIndex at +0x0, FormatIndex at +0x4
 writeInteger(_params + 0x0, TrackIndex)
 writeInteger(_params + 0x4, FormatIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetVideoTrackType", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVideoTrackType");

BL4.GetViewRotation = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetViewRotation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetViewRotation", _params);
 local RET={Pitch=readFloat(_params+0x0),Yaw=readFloat(_params+0x8),Roll=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetViewRotation");

BL4.HasError = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.HasError: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "HasError", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.HasError");

BL4.IsBuffering = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsBuffering: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsBuffering", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsBuffering");

BL4.IsClosed = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsClosed: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsClosed", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsClosed");

BL4.IsConnecting = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsConnecting: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsConnecting", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsConnecting");

BL4.IsLooping = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsLooping: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsLooping", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsLooping");

BL4.IsPaused = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsPaused: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsPaused", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsPaused");

BL4.IsPlaying = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsPlaying: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsPlaying", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsPlaying");

BL4.IsPreparing = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsPreparing: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsPreparing", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsPreparing");

BL4.IsReady = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsReady: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsReady", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsReady");

BL4.Next = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Next: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "Next", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Next");

BL4.OpenFile = function(OwnerAddress, FilePath)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OpenFile: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: FilePath at +0x0
 writeQword(_params + 0x0, FilePath)
 UE.CallProcessEventEx(OwnerAddress, "OpenFile", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.OpenFile");

BL4.OpenPlaylist = function(InPlaylist_MediaPlaylist)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OpenPlaylist: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InPlaylist at +0x0
 writeQword(_params + 0x0, InPlaylist_MediaPlaylist)
 UE.CallProcessEventEx(InPlaylist_MediaPlaylist, "OpenPlaylist", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.OpenPlaylist");

BL4.OpenPlaylistIndex = function(InPlaylist_MediaPlaylist, Index)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OpenPlaylistIndex: Failed To Allocate The Params");return;end;
 Index = Index or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InPlaylist at +0x0, Index at +0x8
 writeQword(_params + 0x0, InPlaylist_MediaPlaylist)
 writeInteger(_params + 0x8, Index)
 UE.CallProcessEventEx(InPlaylist_MediaPlaylist, "OpenPlaylistIndex", _params);
 local RET=readByte(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.OpenPlaylistIndex");

BL4.OpenSource = function(MediaSource)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OpenSource: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MediaSource at +0x0
 writeQword(_params + 0x0, MediaSource)
 UE.CallProcessEventEx(MediaSource, "OpenSource", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.OpenSource");

BL4.OpenSourceLatent = function(WorldContextObject_Object, LatentInfo, MediaSource, options, bSuccess)
 local _paramsSize = 0xB0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OpenSourceLatent: Failed To Allocate The Params");return;end;
 bSuccess = bSuccess or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, LatentInfo at +0x8, MediaSource at +0x20, options at +0x28, bSuccess at +0xA8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, LatentInfo)
 writeQword(_params + 0x20, MediaSource)
 writeQword(_params + 0x28, options)
 writeByte(_params + 0xA8, bSuccess)
 UE.CallProcessEventEx(WorldContextObject_Object, "OpenSourceLatent", _params);
 deAlloc(_params);
end
FNR("BL4.OpenSourceLatent");

BL4.OpenSourceWithOptions = function(MediaSource, options)
 local _paramsSize = 0x90
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OpenSourceWithOptions: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MediaSource at +0x0, options at +0x8
 writeQword(_params + 0x0, MediaSource)
 writeQword(_params + 0x8, options)
 UE.CallProcessEventEx(MediaSource, "OpenSourceWithOptions", _params);
 local RET=readByte(_params + 0x88);
 deAlloc(_params);
 return RET;
end
FNR("BL4.OpenSourceWithOptions");

BL4.OpenUrl = function(OwnerAddress, URL)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OpenUrl: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: URL at +0x0
 writeQword(_params + 0x0, URL)
 UE.CallProcessEventEx(OwnerAddress, "OpenUrl", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.OpenUrl");

BL4.Pause = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Pause: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "Pause", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Pause");

BL4.Play = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Play: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "Play", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Play");

BL4.Previous = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Previous: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "Previous", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Previous");

BL4.Reopen = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Reopen: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "Reopen", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Reopen");

BL4.Rewind = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Rewind: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "Rewind", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Rewind");

BL4.Seek = function(OwnerAddress, time)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Seek: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: time at +0x0
 writeQword(_params + 0x0, time)
 UE.CallProcessEventEx(OwnerAddress, "Seek", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Seek");

BL4.SelectTrack = function(OwnerAddress, TrackType, TrackIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SelectTrack: Failed To Allocate The Params");return;end;
 TrackType = TrackType or 0
 TrackIndex = TrackIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TrackType at +0x0, TrackIndex at +0x4
 writeByte(_params + 0x0, TrackType)
 writeInteger(_params + 0x4, TrackIndex)
 UE.CallProcessEventEx(OwnerAddress, "SelectTrack", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SelectTrack");

BL4.SetBlockOnTime = function(OwnerAddress, time)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBlockOnTime: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: time at +0x0
 writeQword(_params + 0x0, time)
 UE.CallProcessEventEx(OwnerAddress, "SetBlockOnTime", _params);
 deAlloc(_params);
end
FNR("BL4.SetBlockOnTime");

BL4.SetDesiredPlayerName = function(OwnerAddress, PlayerName)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDesiredPlayerName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PlayerName at +0x0
 writeQword(_params + 0x0, PlayerName)
 UE.CallProcessEventEx(OwnerAddress, "SetDesiredPlayerName", _params);
 deAlloc(_params);
end
FNR("BL4.SetDesiredPlayerName");

BL4.SetLooping = function(OwnerAddress, Looping)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLooping: Failed To Allocate The Params");return;end;
 Looping = Looping or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Looping at +0x0
 writeByte(_params + 0x0, Looping)
 UE.CallProcessEventEx(OwnerAddress, "SetLooping", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetLooping");

BL4.SetMediaOptions = function(options_MediaSource)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMediaOptions: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: options at +0x0
 writeQword(_params + 0x0, options_MediaSource)
 UE.CallProcessEventEx(options_MediaSource, "SetMediaOptions", _params);
 deAlloc(_params);
end
FNR("BL4.SetMediaOptions");

BL4.SetNativeVolume = function(OwnerAddress, Volume)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNativeVolume: Failed To Allocate The Params");return;end;
 Volume = Volume or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Volume at +0x0
 writeFloat(_params + 0x0, Volume)
 UE.CallProcessEventEx(OwnerAddress, "SetNativeVolume", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetNativeVolume");

BL4.SetPlaybackTimeRange = function(OwnerAddress, InTimeRange)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPlaybackTimeRange: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InTimeRange at +0x0
 writeQword(_params + 0x0, InTimeRange)
 UE.CallProcessEventEx(OwnerAddress, "SetPlaybackTimeRange", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetPlaybackTimeRange");

BL4.SetRate = function(OwnerAddress, rate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRate: Failed To Allocate The Params");return;end;
 rate = rate or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: rate at +0x0
 writeFloat(_params + 0x0, rate)
 UE.CallProcessEventEx(OwnerAddress, "SetRate", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetRate");

BL4.SetTimeDelay = function(OwnerAddress, TimeDelay)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTimeDelay: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: TimeDelay at +0x0
 writeQword(_params + 0x0, TimeDelay)
 UE.CallProcessEventEx(OwnerAddress, "SetTimeDelay", _params);
 deAlloc(_params);
end
FNR("BL4.SetTimeDelay");

BL4.SetTrackFormat = function(OwnerAddress, TrackType, TrackIndex, FormatIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTrackFormat: Failed To Allocate The Params");return;end;
 TrackType = TrackType or 0
 TrackIndex = TrackIndex or 0
 FormatIndex = FormatIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TrackType at +0x0, TrackIndex at +0x4, FormatIndex at +0x8
 writeByte(_params + 0x0, TrackType)
 writeInteger(_params + 0x4, TrackIndex)
 writeInteger(_params + 0x8, FormatIndex)
 UE.CallProcessEventEx(OwnerAddress, "SetTrackFormat", _params);
 local RET=readByte(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetTrackFormat");

BL4.SetVideoTrackFrameRate = function(OwnerAddress, TrackIndex, FormatIndex, FrameRate)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVideoTrackFrameRate: Failed To Allocate The Params");return;end;
 TrackIndex = TrackIndex or 0
 FormatIndex = FormatIndex or 0
 FrameRate = FrameRate or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TrackIndex at +0x0, FormatIndex at +0x4, FrameRate at +0x8
 writeInteger(_params + 0x0, TrackIndex)
 writeInteger(_params + 0x4, FormatIndex)
 writeFloat(_params + 0x8, FrameRate)
 UE.CallProcessEventEx(OwnerAddress, "SetVideoTrackFrameRate", _params);
 local RET=readByte(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetVideoTrackFrameRate");

BL4.SetViewField = function(OwnerAddress, horizontal, Vertical, Absolute)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetViewField: Failed To Allocate The Params");return;end;
 horizontal = horizontal or 0
 Vertical = Vertical or 0
 Absolute = Absolute or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: horizontal at +0x0, Vertical at +0x4, Absolute at +0x8
 writeFloat(_params + 0x0, horizontal)
 writeFloat(_params + 0x4, Vertical)
 writeByte(_params + 0x8, Absolute)
 UE.CallProcessEventEx(OwnerAddress, "SetViewField", _params);
 local RET=readByte(_params + 0x9);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetViewField");

BL4.SetViewRotation = function(OwnerAddress, Rotation, Absolute)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetViewRotation: Failed To Allocate The Params");return;end;
 Rotation = Rotation or {Pitch=0,Yaw=0,Roll=0}
 Absolute = Absolute or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Rotation at +0x0, Absolute at +0x18
 writeDouble(_params + 0x0, (Rotation and Rotation.Pitch) or 0)
 writeDouble(_params + 0x8, (Rotation and Rotation.Yaw) or 0)
 writeDouble(_params + 0x10, (Rotation and Rotation.Roll) or 0)
 writeByte(_params + 0x18, Absolute)
 UE.CallProcessEventEx(OwnerAddress, "SetViewRotation", _params);
 local RET=readByte(_params + 0x19);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetViewRotation");

BL4.SupportsPlaybackTimeRange = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SupportsPlaybackTimeRange: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "SupportsPlaybackTimeRange", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SupportsPlaybackTimeRange");

BL4.SupportsRate = function(OwnerAddress, rate, Unthinned)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SupportsRate: Failed To Allocate The Params");return;end;
 rate = rate or 0
 Unthinned = Unthinned or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: rate at +0x0, Unthinned at +0x4
 writeFloat(_params + 0x0, rate)
 writeByte(_params + 0x4, Unthinned)
 UE.CallProcessEventEx(OwnerAddress, "SupportsRate", _params);
 local RET=readByte(_params + 0x5);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SupportsRate");

BL4.SupportsScrubbing = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SupportsScrubbing: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "SupportsScrubbing", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SupportsScrubbing");

BL4.SupportsSeeking = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SupportsSeeking: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "SupportsSeeking", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SupportsSeeking");

