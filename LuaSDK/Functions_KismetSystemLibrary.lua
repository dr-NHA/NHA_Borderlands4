BL4.AddFloatHistorySample = function(OwnerAddress, Value, FloatHistory)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddFloatHistorySample: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0, FloatHistory at +0x8
 writeFloat(_params + 0x0, Value)
 writeQword(_params + 0x8, FloatHistory)
 UE.CallProcessEventEx(OwnerAddress, "AddFloatHistorySample", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddFloatHistorySample");

BL4.BeginTransaction = function(OwnerAddress, Context, Description, PrimaryObject_Object)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BeginTransaction: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, Description at +0x10, PrimaryObject at +0x20
 writeQword(_params + 0x0, Context)
 writeQword(_params + 0x10, Description)
 writeQword(_params + 0x20, PrimaryObject_Object)
 UE.CallProcessEventEx(OwnerAddress, "BeginTransaction", _params);
 local RET=readInteger(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BeginTransaction");

BL4.BoxOverlapActors = function(WorldContextObject_Object, BoxPos, BoxExtent, ObjectTypes, ActorClassFilter_Class, ActorsToIgnore, OutActors)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BoxOverlapActors: Failed To Allocate The Params");return;end;
 BoxPos = BoxPos or {X=0,Y=0,Z=0}
 BoxExtent = BoxExtent or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, BoxPos at +0x8, BoxExtent at +0x20, ObjectTypes at +0x38, ActorClassFilter at +0x48, ActorsToIgnore at +0x50, OutActors at +0x60
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (BoxPos and BoxPos.X) or 0)
 writeDouble(_params + 0x10, (BoxPos and BoxPos.Y) or 0)
 writeDouble(_params + 0x18, (BoxPos and BoxPos.Z) or 0)
 writeDouble(_params + 0x20, (BoxExtent and BoxExtent.X) or 0)
 writeDouble(_params + 0x28, (BoxExtent and BoxExtent.Y) or 0)
 writeDouble(_params + 0x30, (BoxExtent and BoxExtent.Z) or 0)
 writeQword(_params + 0x38, ObjectTypes)
 writeQword(_params + 0x48, ActorClassFilter_Class)
 writeQword(_params + 0x50, ActorsToIgnore)
 writeQword(_params + 0x60, OutActors)
 UE.CallProcessEventEx(WorldContextObject_Object, "BoxOverlapActors", _params);
 local RET=readByte(_params + 0x70);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BoxOverlapActors");

BL4.BoxOverlapComponents = function(WorldContextObject_Object, BoxPos, Extent, ObjectTypes, ComponentClassFilter_Class, ActorsToIgnore, OutComponents)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BoxOverlapComponents: Failed To Allocate The Params");return;end;
 BoxPos = BoxPos or {X=0,Y=0,Z=0}
 Extent = Extent or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, BoxPos at +0x8, Extent at +0x20, ObjectTypes at +0x38, ComponentClassFilter at +0x48, ActorsToIgnore at +0x50, OutComponents at +0x60
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (BoxPos and BoxPos.X) or 0)
 writeDouble(_params + 0x10, (BoxPos and BoxPos.Y) or 0)
 writeDouble(_params + 0x18, (BoxPos and BoxPos.Z) or 0)
 writeDouble(_params + 0x20, (Extent and Extent.X) or 0)
 writeDouble(_params + 0x28, (Extent and Extent.Y) or 0)
 writeDouble(_params + 0x30, (Extent and Extent.Z) or 0)
 writeQword(_params + 0x38, ObjectTypes)
 writeQword(_params + 0x48, ComponentClassFilter_Class)
 writeQword(_params + 0x50, ActorsToIgnore)
 writeQword(_params + 0x60, OutComponents)
 UE.CallProcessEventEx(WorldContextObject_Object, "BoxOverlapComponents", _params);
 local RET=readByte(_params + 0x70);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BoxOverlapComponents");

BL4.BoxTraceMulti = function(WorldContextObject_Object, Start, End, HalfSize, Orientation, TraceChannel, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHits, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime)
 local _paramsSize = 0xC8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BoxTraceMulti: Failed To Allocate The Params");return;end;
 Start = Start or {X=0,Y=0,Z=0}
 End = End or {X=0,Y=0,Z=0}
 HalfSize = HalfSize or {X=0,Y=0,Z=0}
 Orientation = Orientation or {Pitch=0,Yaw=0,Roll=0}
 TraceChannel = TraceChannel or 0
 bTraceComplex = bTraceComplex or false
 DrawDebugType = DrawDebugType or 0
 bIgnoreSelf = bIgnoreSelf or false
 TraceColor = TraceColor or {R=0,G=0,B=0,A=0}
 TraceHitColor = TraceHitColor or {R=0,G=0,B=0,A=0}
 DrawTime = DrawTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Start at +0x8, End at +0x20, HalfSize at +0x38, Orientation at +0x50, TraceChannel at +0x68, bTraceComplex at +0x69, ActorsToIgnore at +0x70, DrawDebugType at +0x80, OutHits at +0x88, bIgnoreSelf at +0x98, TraceColor at +0x9C, TraceHitColor at +0xAC, DrawTime at +0xBC
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Start and Start.X) or 0)
 writeDouble(_params + 0x10, (Start and Start.Y) or 0)
 writeDouble(_params + 0x18, (Start and Start.Z) or 0)
 writeDouble(_params + 0x20, (End and End.X) or 0)
 writeDouble(_params + 0x28, (End and End.Y) or 0)
 writeDouble(_params + 0x30, (End and End.Z) or 0)
 writeDouble(_params + 0x38, (HalfSize and HalfSize.X) or 0)
 writeDouble(_params + 0x40, (HalfSize and HalfSize.Y) or 0)
 writeDouble(_params + 0x48, (HalfSize and HalfSize.Z) or 0)
 writeDouble(_params + 0x50, (Orientation and Orientation.Pitch) or 0)
 writeDouble(_params + 0x58, (Orientation and Orientation.Yaw) or 0)
 writeDouble(_params + 0x60, (Orientation and Orientation.Roll) or 0)
 writeByte(_params + 0x68, TraceChannel)
 writeByte(_params + 0x69, bTraceComplex)
 writeQword(_params + 0x70, ActorsToIgnore)
 writeByte(_params + 0x80, DrawDebugType)
 writeQword(_params + 0x88, OutHits)
 writeByte(_params + 0x98, bIgnoreSelf)
 writeFloat(_params + 0x9C, (TraceColor and TraceColor.R) or 0)
 writeFloat(_params + 0xA0, (TraceColor and TraceColor.G) or 0)
 writeFloat(_params + 0xA4, (TraceColor and TraceColor.B) or 0)
 writeFloat(_params + 0xA8, (TraceColor and TraceColor.A) or 0)
 writeFloat(_params + 0xAC, (TraceHitColor and TraceHitColor.R) or 0)
 writeFloat(_params + 0xB0, (TraceHitColor and TraceHitColor.G) or 0)
 writeFloat(_params + 0xB4, (TraceHitColor and TraceHitColor.B) or 0)
 writeFloat(_params + 0xB8, (TraceHitColor and TraceHitColor.A) or 0)
 writeFloat(_params + 0xBC, DrawTime)
 UE.CallProcessEventEx(WorldContextObject_Object, "BoxTraceMulti", _params);
 local RET=readByte(_params + 0xC0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BoxTraceMulti");

BL4.BoxTraceMultiByProfile = function(WorldContextObject_Object, Start, End, HalfSize, Orientation, ProfileName, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHits, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime)
 local _paramsSize = 0xD0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BoxTraceMultiByProfile: Failed To Allocate The Params");return;end;
 Start = Start or {X=0,Y=0,Z=0}
 End = End or {X=0,Y=0,Z=0}
 HalfSize = HalfSize or {X=0,Y=0,Z=0}
 Orientation = Orientation or {Pitch=0,Yaw=0,Roll=0}
 bTraceComplex = bTraceComplex or false
 DrawDebugType = DrawDebugType or 0
 bIgnoreSelf = bIgnoreSelf or false
 TraceColor = TraceColor or {R=0,G=0,B=0,A=0}
 TraceHitColor = TraceHitColor or {R=0,G=0,B=0,A=0}
 DrawTime = DrawTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Start at +0x8, End at +0x20, HalfSize at +0x38, Orientation at +0x50, ProfileName at +0x68, bTraceComplex at +0x70, ActorsToIgnore at +0x78, DrawDebugType at +0x88, OutHits at +0x90, bIgnoreSelf at +0xA0, TraceColor at +0xA4, TraceHitColor at +0xB4, DrawTime at +0xC4
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Start and Start.X) or 0)
 writeDouble(_params + 0x10, (Start and Start.Y) or 0)
 writeDouble(_params + 0x18, (Start and Start.Z) or 0)
 writeDouble(_params + 0x20, (End and End.X) or 0)
 writeDouble(_params + 0x28, (End and End.Y) or 0)
 writeDouble(_params + 0x30, (End and End.Z) or 0)
 writeDouble(_params + 0x38, (HalfSize and HalfSize.X) or 0)
 writeDouble(_params + 0x40, (HalfSize and HalfSize.Y) or 0)
 writeDouble(_params + 0x48, (HalfSize and HalfSize.Z) or 0)
 writeDouble(_params + 0x50, (Orientation and Orientation.Pitch) or 0)
 writeDouble(_params + 0x58, (Orientation and Orientation.Yaw) or 0)
 writeDouble(_params + 0x60, (Orientation and Orientation.Roll) or 0)
 writeQword(_params + 0x68, ProfileName)
 writeByte(_params + 0x70, bTraceComplex)
 writeQword(_params + 0x78, ActorsToIgnore)
 writeByte(_params + 0x88, DrawDebugType)
 writeQword(_params + 0x90, OutHits)
 writeByte(_params + 0xA0, bIgnoreSelf)
 writeFloat(_params + 0xA4, (TraceColor and TraceColor.R) or 0)
 writeFloat(_params + 0xA8, (TraceColor and TraceColor.G) or 0)
 writeFloat(_params + 0xAC, (TraceColor and TraceColor.B) or 0)
 writeFloat(_params + 0xB0, (TraceColor and TraceColor.A) or 0)
 writeFloat(_params + 0xB4, (TraceHitColor and TraceHitColor.R) or 0)
 writeFloat(_params + 0xB8, (TraceHitColor and TraceHitColor.G) or 0)
 writeFloat(_params + 0xBC, (TraceHitColor and TraceHitColor.B) or 0)
 writeFloat(_params + 0xC0, (TraceHitColor and TraceHitColor.A) or 0)
 writeFloat(_params + 0xC4, DrawTime)
 UE.CallProcessEventEx(WorldContextObject_Object, "BoxTraceMultiByProfile", _params);
 local RET=readByte(_params + 0xC8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BoxTraceMultiByProfile");

BL4.BoxTraceMultiForObjects = function(WorldContextObject_Object, Start, End, HalfSize, Orientation, ObjectTypes, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHits, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime)
 local _paramsSize = 0xD8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BoxTraceMultiForObjects: Failed To Allocate The Params");return;end;
 Start = Start or {X=0,Y=0,Z=0}
 End = End or {X=0,Y=0,Z=0}
 HalfSize = HalfSize or {X=0,Y=0,Z=0}
 Orientation = Orientation or {Pitch=0,Yaw=0,Roll=0}
 bTraceComplex = bTraceComplex or false
 DrawDebugType = DrawDebugType or 0
 bIgnoreSelf = bIgnoreSelf or false
 TraceColor = TraceColor or {R=0,G=0,B=0,A=0}
 TraceHitColor = TraceHitColor or {R=0,G=0,B=0,A=0}
 DrawTime = DrawTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Start at +0x8, End at +0x20, HalfSize at +0x38, Orientation at +0x50, ObjectTypes at +0x68, bTraceComplex at +0x78, ActorsToIgnore at +0x80, DrawDebugType at +0x90, OutHits at +0x98, bIgnoreSelf at +0xA8, TraceColor at +0xAC, TraceHitColor at +0xBC, DrawTime at +0xCC
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Start and Start.X) or 0)
 writeDouble(_params + 0x10, (Start and Start.Y) or 0)
 writeDouble(_params + 0x18, (Start and Start.Z) or 0)
 writeDouble(_params + 0x20, (End and End.X) or 0)
 writeDouble(_params + 0x28, (End and End.Y) or 0)
 writeDouble(_params + 0x30, (End and End.Z) or 0)
 writeDouble(_params + 0x38, (HalfSize and HalfSize.X) or 0)
 writeDouble(_params + 0x40, (HalfSize and HalfSize.Y) or 0)
 writeDouble(_params + 0x48, (HalfSize and HalfSize.Z) or 0)
 writeDouble(_params + 0x50, (Orientation and Orientation.Pitch) or 0)
 writeDouble(_params + 0x58, (Orientation and Orientation.Yaw) or 0)
 writeDouble(_params + 0x60, (Orientation and Orientation.Roll) or 0)
 writeQword(_params + 0x68, ObjectTypes)
 writeByte(_params + 0x78, bTraceComplex)
 writeQword(_params + 0x80, ActorsToIgnore)
 writeByte(_params + 0x90, DrawDebugType)
 writeQword(_params + 0x98, OutHits)
 writeByte(_params + 0xA8, bIgnoreSelf)
 writeFloat(_params + 0xAC, (TraceColor and TraceColor.R) or 0)
 writeFloat(_params + 0xB0, (TraceColor and TraceColor.G) or 0)
 writeFloat(_params + 0xB4, (TraceColor and TraceColor.B) or 0)
 writeFloat(_params + 0xB8, (TraceColor and TraceColor.A) or 0)
 writeFloat(_params + 0xBC, (TraceHitColor and TraceHitColor.R) or 0)
 writeFloat(_params + 0xC0, (TraceHitColor and TraceHitColor.G) or 0)
 writeFloat(_params + 0xC4, (TraceHitColor and TraceHitColor.B) or 0)
 writeFloat(_params + 0xC8, (TraceHitColor and TraceHitColor.A) or 0)
 writeFloat(_params + 0xCC, DrawTime)
 UE.CallProcessEventEx(WorldContextObject_Object, "BoxTraceMultiForObjects", _params);
 local RET=readByte(_params + 0xD0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BoxTraceMultiForObjects");

BL4.BoxTraceSingle = function(WorldContextObject_Object, Start, End, HalfSize, Orientation, TraceChannel, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHit, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime)
 local _paramsSize = 0x1B8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BoxTraceSingle: Failed To Allocate The Params");return;end;
 Start = Start or {X=0,Y=0,Z=0}
 End = End or {X=0,Y=0,Z=0}
 HalfSize = HalfSize or {X=0,Y=0,Z=0}
 Orientation = Orientation or {Pitch=0,Yaw=0,Roll=0}
 TraceChannel = TraceChannel or 0
 bTraceComplex = bTraceComplex or false
 DrawDebugType = DrawDebugType or 0
 bIgnoreSelf = bIgnoreSelf or false
 TraceColor = TraceColor or {R=0,G=0,B=0,A=0}
 TraceHitColor = TraceHitColor or {R=0,G=0,B=0,A=0}
 DrawTime = DrawTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Start at +0x8, End at +0x20, HalfSize at +0x38, Orientation at +0x50, TraceChannel at +0x68, bTraceComplex at +0x69, ActorsToIgnore at +0x70, DrawDebugType at +0x80, OutHit at +0x88, bIgnoreSelf at +0x188, TraceColor at +0x18C, TraceHitColor at +0x19C, DrawTime at +0x1AC
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Start and Start.X) or 0)
 writeDouble(_params + 0x10, (Start and Start.Y) or 0)
 writeDouble(_params + 0x18, (Start and Start.Z) or 0)
 writeDouble(_params + 0x20, (End and End.X) or 0)
 writeDouble(_params + 0x28, (End and End.Y) or 0)
 writeDouble(_params + 0x30, (End and End.Z) or 0)
 writeDouble(_params + 0x38, (HalfSize and HalfSize.X) or 0)
 writeDouble(_params + 0x40, (HalfSize and HalfSize.Y) or 0)
 writeDouble(_params + 0x48, (HalfSize and HalfSize.Z) or 0)
 writeDouble(_params + 0x50, (Orientation and Orientation.Pitch) or 0)
 writeDouble(_params + 0x58, (Orientation and Orientation.Yaw) or 0)
 writeDouble(_params + 0x60, (Orientation and Orientation.Roll) or 0)
 writeByte(_params + 0x68, TraceChannel)
 writeByte(_params + 0x69, bTraceComplex)
 writeQword(_params + 0x70, ActorsToIgnore)
 writeByte(_params + 0x80, DrawDebugType)
 writeQword(_params + 0x88, OutHit)
 writeByte(_params + 0x188, bIgnoreSelf)
 writeFloat(_params + 0x18C, (TraceColor and TraceColor.R) or 0)
 writeFloat(_params + 0x190, (TraceColor and TraceColor.G) or 0)
 writeFloat(_params + 0x194, (TraceColor and TraceColor.B) or 0)
 writeFloat(_params + 0x198, (TraceColor and TraceColor.A) or 0)
 writeFloat(_params + 0x19C, (TraceHitColor and TraceHitColor.R) or 0)
 writeFloat(_params + 0x1A0, (TraceHitColor and TraceHitColor.G) or 0)
 writeFloat(_params + 0x1A4, (TraceHitColor and TraceHitColor.B) or 0)
 writeFloat(_params + 0x1A8, (TraceHitColor and TraceHitColor.A) or 0)
 writeFloat(_params + 0x1AC, DrawTime)
 UE.CallProcessEventEx(WorldContextObject_Object, "BoxTraceSingle", _params);
 local RET=readByte(_params + 0x1B0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BoxTraceSingle");

BL4.BoxTraceSingleByProfile = function(WorldContextObject_Object, Start, End, HalfSize, Orientation, ProfileName, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHit, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime)
 local _paramsSize = 0x1C0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BoxTraceSingleByProfile: Failed To Allocate The Params");return;end;
 Start = Start or {X=0,Y=0,Z=0}
 End = End or {X=0,Y=0,Z=0}
 HalfSize = HalfSize or {X=0,Y=0,Z=0}
 Orientation = Orientation or {Pitch=0,Yaw=0,Roll=0}
 bTraceComplex = bTraceComplex or false
 DrawDebugType = DrawDebugType or 0
 bIgnoreSelf = bIgnoreSelf or false
 TraceColor = TraceColor or {R=0,G=0,B=0,A=0}
 TraceHitColor = TraceHitColor or {R=0,G=0,B=0,A=0}
 DrawTime = DrawTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Start at +0x8, End at +0x20, HalfSize at +0x38, Orientation at +0x50, ProfileName at +0x68, bTraceComplex at +0x70, ActorsToIgnore at +0x78, DrawDebugType at +0x88, OutHit at +0x90, bIgnoreSelf at +0x190, TraceColor at +0x194, TraceHitColor at +0x1A4, DrawTime at +0x1B4
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Start and Start.X) or 0)
 writeDouble(_params + 0x10, (Start and Start.Y) or 0)
 writeDouble(_params + 0x18, (Start and Start.Z) or 0)
 writeDouble(_params + 0x20, (End and End.X) or 0)
 writeDouble(_params + 0x28, (End and End.Y) or 0)
 writeDouble(_params + 0x30, (End and End.Z) or 0)
 writeDouble(_params + 0x38, (HalfSize and HalfSize.X) or 0)
 writeDouble(_params + 0x40, (HalfSize and HalfSize.Y) or 0)
 writeDouble(_params + 0x48, (HalfSize and HalfSize.Z) or 0)
 writeDouble(_params + 0x50, (Orientation and Orientation.Pitch) or 0)
 writeDouble(_params + 0x58, (Orientation and Orientation.Yaw) or 0)
 writeDouble(_params + 0x60, (Orientation and Orientation.Roll) or 0)
 writeQword(_params + 0x68, ProfileName)
 writeByte(_params + 0x70, bTraceComplex)
 writeQword(_params + 0x78, ActorsToIgnore)
 writeByte(_params + 0x88, DrawDebugType)
 writeQword(_params + 0x90, OutHit)
 writeByte(_params + 0x190, bIgnoreSelf)
 writeFloat(_params + 0x194, (TraceColor and TraceColor.R) or 0)
 writeFloat(_params + 0x198, (TraceColor and TraceColor.G) or 0)
 writeFloat(_params + 0x19C, (TraceColor and TraceColor.B) or 0)
 writeFloat(_params + 0x1A0, (TraceColor and TraceColor.A) or 0)
 writeFloat(_params + 0x1A4, (TraceHitColor and TraceHitColor.R) or 0)
 writeFloat(_params + 0x1A8, (TraceHitColor and TraceHitColor.G) or 0)
 writeFloat(_params + 0x1AC, (TraceHitColor and TraceHitColor.B) or 0)
 writeFloat(_params + 0x1B0, (TraceHitColor and TraceHitColor.A) or 0)
 writeFloat(_params + 0x1B4, DrawTime)
 UE.CallProcessEventEx(WorldContextObject_Object, "BoxTraceSingleByProfile", _params);
 local RET=readByte(_params + 0x1B8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BoxTraceSingleByProfile");

BL4.BoxTraceSingleForObjects = function(WorldContextObject_Object, Start, End, HalfSize, Orientation, ObjectTypes, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHit, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime)
 local _paramsSize = 0x1C8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BoxTraceSingleForObjects: Failed To Allocate The Params");return;end;
 Start = Start or {X=0,Y=0,Z=0}
 End = End or {X=0,Y=0,Z=0}
 HalfSize = HalfSize or {X=0,Y=0,Z=0}
 Orientation = Orientation or {Pitch=0,Yaw=0,Roll=0}
 bTraceComplex = bTraceComplex or false
 DrawDebugType = DrawDebugType or 0
 bIgnoreSelf = bIgnoreSelf or false
 TraceColor = TraceColor or {R=0,G=0,B=0,A=0}
 TraceHitColor = TraceHitColor or {R=0,G=0,B=0,A=0}
 DrawTime = DrawTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Start at +0x8, End at +0x20, HalfSize at +0x38, Orientation at +0x50, ObjectTypes at +0x68, bTraceComplex at +0x78, ActorsToIgnore at +0x80, DrawDebugType at +0x90, OutHit at +0x98, bIgnoreSelf at +0x198, TraceColor at +0x19C, TraceHitColor at +0x1AC, DrawTime at +0x1BC
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Start and Start.X) or 0)
 writeDouble(_params + 0x10, (Start and Start.Y) or 0)
 writeDouble(_params + 0x18, (Start and Start.Z) or 0)
 writeDouble(_params + 0x20, (End and End.X) or 0)
 writeDouble(_params + 0x28, (End and End.Y) or 0)
 writeDouble(_params + 0x30, (End and End.Z) or 0)
 writeDouble(_params + 0x38, (HalfSize and HalfSize.X) or 0)
 writeDouble(_params + 0x40, (HalfSize and HalfSize.Y) or 0)
 writeDouble(_params + 0x48, (HalfSize and HalfSize.Z) or 0)
 writeDouble(_params + 0x50, (Orientation and Orientation.Pitch) or 0)
 writeDouble(_params + 0x58, (Orientation and Orientation.Yaw) or 0)
 writeDouble(_params + 0x60, (Orientation and Orientation.Roll) or 0)
 writeQword(_params + 0x68, ObjectTypes)
 writeByte(_params + 0x78, bTraceComplex)
 writeQword(_params + 0x80, ActorsToIgnore)
 writeByte(_params + 0x90, DrawDebugType)
 writeQword(_params + 0x98, OutHit)
 writeByte(_params + 0x198, bIgnoreSelf)
 writeFloat(_params + 0x19C, (TraceColor and TraceColor.R) or 0)
 writeFloat(_params + 0x1A0, (TraceColor and TraceColor.G) or 0)
 writeFloat(_params + 0x1A4, (TraceColor and TraceColor.B) or 0)
 writeFloat(_params + 0x1A8, (TraceColor and TraceColor.A) or 0)
 writeFloat(_params + 0x1AC, (TraceHitColor and TraceHitColor.R) or 0)
 writeFloat(_params + 0x1B0, (TraceHitColor and TraceHitColor.G) or 0)
 writeFloat(_params + 0x1B4, (TraceHitColor and TraceHitColor.B) or 0)
 writeFloat(_params + 0x1B8, (TraceHitColor and TraceHitColor.A) or 0)
 writeFloat(_params + 0x1BC, DrawTime)
 UE.CallProcessEventEx(WorldContextObject_Object, "BoxTraceSingleForObjects", _params);
 local RET=readByte(_params + 0x1C0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.BoxTraceSingleForObjects");

BL4.BreakARFilter = function(OwnerAddress, InARFilter, PackageNames, PackagePaths, SoftObjectPaths, ClassPaths, RecursiveClassPathsExclusionSet, ClassNames, RecursiveClassesExclusionSet, bRecursivePaths, bRecursiveClasses, bIncludeOnlyOnDiskAssets)
 local _paramsSize = 0x248
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakARFilter: Failed To Allocate The Params");return;end;
 bRecursivePaths = bRecursivePaths or false
 bRecursiveClasses = bRecursiveClasses or false
 bIncludeOnlyOnDiskAssets = bIncludeOnlyOnDiskAssets or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InARFilter at +0x0, PackageNames at +0x150, PackagePaths at +0x160, SoftObjectPaths at +0x170, ClassPaths at +0x180, RecursiveClassPathsExclusionSet at +0x190, ClassNames at +0x1E0, RecursiveClassesExclusionSet at +0x1F0, bRecursivePaths at +0x240, bRecursiveClasses at +0x241, bIncludeOnlyOnDiskAssets at +0x242
 writeQword(_params + 0x0, InARFilter)
 writeQword(_params + 0x150, PackageNames)
 writeQword(_params + 0x160, PackagePaths)
 writeQword(_params + 0x170, SoftObjectPaths)
 writeQword(_params + 0x180, ClassPaths)
 writeQword(_params + 0x190, RecursiveClassPathsExclusionSet)
 writeQword(_params + 0x1E0, ClassNames)
 writeQword(_params + 0x1F0, RecursiveClassesExclusionSet)
 writeByte(_params + 0x240, bRecursivePaths)
 writeByte(_params + 0x241, bRecursiveClasses)
 writeByte(_params + 0x242, bIncludeOnlyOnDiskAssets)
 UE.CallProcessEventEx(OwnerAddress, "BreakARFilter", _params);
 deAlloc(_params);
end
FNR("BL4.BreakARFilter");

BL4.BreakSoftClassPath = function(OwnerAddress, InSoftClassPath, PathString)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakSoftClassPath: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSoftClassPath at +0x0, PathString at +0x20
 writeQword(_params + 0x0, InSoftClassPath)
 writeQword(_params + 0x20, PathString)
 UE.CallProcessEventEx(OwnerAddress, "BreakSoftClassPath", _params);
 deAlloc(_params);
end
FNR("BL4.BreakSoftClassPath");

BL4.BreakSoftObjectPath = function(OwnerAddress, InSoftObjectPath, PathString)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakSoftObjectPath: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSoftObjectPath at +0x0, PathString at +0x20
 writeQword(_params + 0x0, InSoftObjectPath)
 writeQword(_params + 0x20, PathString)
 UE.CallProcessEventEx(OwnerAddress, "BreakSoftObjectPath", _params);
 deAlloc(_params);
end
FNR("BL4.BreakSoftObjectPath");

BL4.BreakTopLevelAssetPath = function(OwnerAddress, TopLevelAssetPath, PathString)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakTopLevelAssetPath: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TopLevelAssetPath at +0x0, PathString at +0x10
 writeQword(_params + 0x0, TopLevelAssetPath)
 writeQword(_params + 0x10, PathString)
 UE.CallProcessEventEx(OwnerAddress, "BreakTopLevelAssetPath", _params);
 deAlloc(_params);
end
FNR("BL4.BreakTopLevelAssetPath");

BL4.CancelTransaction = function(OwnerAddress, Index)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CancelTransaction: Failed To Allocate The Params");return;end;
 Index = Index or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Index at +0x0
 writeInteger(_params + 0x0, Index)
 UE.CallProcessEventEx(OwnerAddress, "CancelTransaction", _params);
 deAlloc(_params);
end
FNR("BL4.CancelTransaction");

BL4.CanLaunchURL = function(OwnerAddress, URL)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CanLaunchURL: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: URL at +0x0
 writeQword(_params + 0x0, URL)
 UE.CallProcessEventEx(OwnerAddress, "CanLaunchURL", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CanLaunchURL");

BL4.CapsuleOverlapActors = function(WorldContextObject_Object, CapsulePos, Radius, HalfHeight, ObjectTypes, ActorClassFilter_Class, ActorsToIgnore, OutActors)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CapsuleOverlapActors: Failed To Allocate The Params");return;end;
 CapsulePos = CapsulePos or {X=0,Y=0,Z=0}
 Radius = Radius or 0
 HalfHeight = HalfHeight or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, CapsulePos at +0x8, Radius at +0x20, HalfHeight at +0x24, ObjectTypes at +0x28, ActorClassFilter at +0x38, ActorsToIgnore at +0x40, OutActors at +0x50
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (CapsulePos and CapsulePos.X) or 0)
 writeDouble(_params + 0x10, (CapsulePos and CapsulePos.Y) or 0)
 writeDouble(_params + 0x18, (CapsulePos and CapsulePos.Z) or 0)
 writeFloat(_params + 0x20, Radius)
 writeFloat(_params + 0x24, HalfHeight)
 writeQword(_params + 0x28, ObjectTypes)
 writeQword(_params + 0x38, ActorClassFilter_Class)
 writeQword(_params + 0x40, ActorsToIgnore)
 writeQword(_params + 0x50, OutActors)
 UE.CallProcessEventEx(WorldContextObject_Object, "CapsuleOverlapActors", _params);
 local RET=readByte(_params + 0x60);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CapsuleOverlapActors");

BL4.CapsuleOverlapComponents = function(WorldContextObject_Object, CapsulePos, Radius, HalfHeight, ObjectTypes, ComponentClassFilter_Class, ActorsToIgnore, OutComponents)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CapsuleOverlapComponents: Failed To Allocate The Params");return;end;
 CapsulePos = CapsulePos or {X=0,Y=0,Z=0}
 Radius = Radius or 0
 HalfHeight = HalfHeight or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, CapsulePos at +0x8, Radius at +0x20, HalfHeight at +0x24, ObjectTypes at +0x28, ComponentClassFilter at +0x38, ActorsToIgnore at +0x40, OutComponents at +0x50
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (CapsulePos and CapsulePos.X) or 0)
 writeDouble(_params + 0x10, (CapsulePos and CapsulePos.Y) or 0)
 writeDouble(_params + 0x18, (CapsulePos and CapsulePos.Z) or 0)
 writeFloat(_params + 0x20, Radius)
 writeFloat(_params + 0x24, HalfHeight)
 writeQword(_params + 0x28, ObjectTypes)
 writeQword(_params + 0x38, ComponentClassFilter_Class)
 writeQword(_params + 0x40, ActorsToIgnore)
 writeQword(_params + 0x50, OutComponents)
 UE.CallProcessEventEx(WorldContextObject_Object, "CapsuleOverlapComponents", _params);
 local RET=readByte(_params + 0x60);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CapsuleOverlapComponents");

BL4.CapsuleTraceMulti = function(WorldContextObject_Object, Start, End, Radius, HalfHeight, TraceChannel, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHits, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime)
 local _paramsSize = 0xA0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CapsuleTraceMulti: Failed To Allocate The Params");return;end;
 Start = Start or {X=0,Y=0,Z=0}
 End = End or {X=0,Y=0,Z=0}
 Radius = Radius or 0
 HalfHeight = HalfHeight or 0
 TraceChannel = TraceChannel or 0
 bTraceComplex = bTraceComplex or false
 DrawDebugType = DrawDebugType or 0
 bIgnoreSelf = bIgnoreSelf or false
 TraceColor = TraceColor or {R=0,G=0,B=0,A=0}
 TraceHitColor = TraceHitColor or {R=0,G=0,B=0,A=0}
 DrawTime = DrawTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Start at +0x8, End at +0x20, Radius at +0x38, HalfHeight at +0x3C, TraceChannel at +0x40, bTraceComplex at +0x41, ActorsToIgnore at +0x48, DrawDebugType at +0x58, OutHits at +0x60, bIgnoreSelf at +0x70, TraceColor at +0x74, TraceHitColor at +0x84, DrawTime at +0x94
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Start and Start.X) or 0)
 writeDouble(_params + 0x10, (Start and Start.Y) or 0)
 writeDouble(_params + 0x18, (Start and Start.Z) or 0)
 writeDouble(_params + 0x20, (End and End.X) or 0)
 writeDouble(_params + 0x28, (End and End.Y) or 0)
 writeDouble(_params + 0x30, (End and End.Z) or 0)
 writeFloat(_params + 0x38, Radius)
 writeFloat(_params + 0x3C, HalfHeight)
 writeByte(_params + 0x40, TraceChannel)
 writeByte(_params + 0x41, bTraceComplex)
 writeQword(_params + 0x48, ActorsToIgnore)
 writeByte(_params + 0x58, DrawDebugType)
 writeQword(_params + 0x60, OutHits)
 writeByte(_params + 0x70, bIgnoreSelf)
 writeFloat(_params + 0x74, (TraceColor and TraceColor.R) or 0)
 writeFloat(_params + 0x78, (TraceColor and TraceColor.G) or 0)
 writeFloat(_params + 0x7C, (TraceColor and TraceColor.B) or 0)
 writeFloat(_params + 0x80, (TraceColor and TraceColor.A) or 0)
 writeFloat(_params + 0x84, (TraceHitColor and TraceHitColor.R) or 0)
 writeFloat(_params + 0x88, (TraceHitColor and TraceHitColor.G) or 0)
 writeFloat(_params + 0x8C, (TraceHitColor and TraceHitColor.B) or 0)
 writeFloat(_params + 0x90, (TraceHitColor and TraceHitColor.A) or 0)
 writeFloat(_params + 0x94, DrawTime)
 UE.CallProcessEventEx(WorldContextObject_Object, "CapsuleTraceMulti", _params);
 local RET=readByte(_params + 0x98);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CapsuleTraceMulti");

BL4.CapsuleTraceMultiByProfile = function(WorldContextObject_Object, Start, End, Radius, HalfHeight, ProfileName, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHits, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime)
 local _paramsSize = 0xA8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CapsuleTraceMultiByProfile: Failed To Allocate The Params");return;end;
 Start = Start or {X=0,Y=0,Z=0}
 End = End or {X=0,Y=0,Z=0}
 Radius = Radius or 0
 HalfHeight = HalfHeight or 0
 bTraceComplex = bTraceComplex or false
 DrawDebugType = DrawDebugType or 0
 bIgnoreSelf = bIgnoreSelf or false
 TraceColor = TraceColor or {R=0,G=0,B=0,A=0}
 TraceHitColor = TraceHitColor or {R=0,G=0,B=0,A=0}
 DrawTime = DrawTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Start at +0x8, End at +0x20, Radius at +0x38, HalfHeight at +0x3C, ProfileName at +0x40, bTraceComplex at +0x48, ActorsToIgnore at +0x50, DrawDebugType at +0x60, OutHits at +0x68, bIgnoreSelf at +0x78, TraceColor at +0x7C, TraceHitColor at +0x8C, DrawTime at +0x9C
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Start and Start.X) or 0)
 writeDouble(_params + 0x10, (Start and Start.Y) or 0)
 writeDouble(_params + 0x18, (Start and Start.Z) or 0)
 writeDouble(_params + 0x20, (End and End.X) or 0)
 writeDouble(_params + 0x28, (End and End.Y) or 0)
 writeDouble(_params + 0x30, (End and End.Z) or 0)
 writeFloat(_params + 0x38, Radius)
 writeFloat(_params + 0x3C, HalfHeight)
 writeQword(_params + 0x40, ProfileName)
 writeByte(_params + 0x48, bTraceComplex)
 writeQword(_params + 0x50, ActorsToIgnore)
 writeByte(_params + 0x60, DrawDebugType)
 writeQword(_params + 0x68, OutHits)
 writeByte(_params + 0x78, bIgnoreSelf)
 writeFloat(_params + 0x7C, (TraceColor and TraceColor.R) or 0)
 writeFloat(_params + 0x80, (TraceColor and TraceColor.G) or 0)
 writeFloat(_params + 0x84, (TraceColor and TraceColor.B) or 0)
 writeFloat(_params + 0x88, (TraceColor and TraceColor.A) or 0)
 writeFloat(_params + 0x8C, (TraceHitColor and TraceHitColor.R) or 0)
 writeFloat(_params + 0x90, (TraceHitColor and TraceHitColor.G) or 0)
 writeFloat(_params + 0x94, (TraceHitColor and TraceHitColor.B) or 0)
 writeFloat(_params + 0x98, (TraceHitColor and TraceHitColor.A) or 0)
 writeFloat(_params + 0x9C, DrawTime)
 UE.CallProcessEventEx(WorldContextObject_Object, "CapsuleTraceMultiByProfile", _params);
 local RET=readByte(_params + 0xA0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CapsuleTraceMultiByProfile");

BL4.CapsuleTraceMultiForObjects = function(WorldContextObject_Object, Start, End, Radius, HalfHeight, ObjectTypes, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHits, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime)
 local _paramsSize = 0xB0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CapsuleTraceMultiForObjects: Failed To Allocate The Params");return;end;
 Start = Start or {X=0,Y=0,Z=0}
 End = End or {X=0,Y=0,Z=0}
 Radius = Radius or 0
 HalfHeight = HalfHeight or 0
 bTraceComplex = bTraceComplex or false
 DrawDebugType = DrawDebugType or 0
 bIgnoreSelf = bIgnoreSelf or false
 TraceColor = TraceColor or {R=0,G=0,B=0,A=0}
 TraceHitColor = TraceHitColor or {R=0,G=0,B=0,A=0}
 DrawTime = DrawTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Start at +0x8, End at +0x20, Radius at +0x38, HalfHeight at +0x3C, ObjectTypes at +0x40, bTraceComplex at +0x50, ActorsToIgnore at +0x58, DrawDebugType at +0x68, OutHits at +0x70, bIgnoreSelf at +0x80, TraceColor at +0x84, TraceHitColor at +0x94, DrawTime at +0xA4
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Start and Start.X) or 0)
 writeDouble(_params + 0x10, (Start and Start.Y) or 0)
 writeDouble(_params + 0x18, (Start and Start.Z) or 0)
 writeDouble(_params + 0x20, (End and End.X) or 0)
 writeDouble(_params + 0x28, (End and End.Y) or 0)
 writeDouble(_params + 0x30, (End and End.Z) or 0)
 writeFloat(_params + 0x38, Radius)
 writeFloat(_params + 0x3C, HalfHeight)
 writeQword(_params + 0x40, ObjectTypes)
 writeByte(_params + 0x50, bTraceComplex)
 writeQword(_params + 0x58, ActorsToIgnore)
 writeByte(_params + 0x68, DrawDebugType)
 writeQword(_params + 0x70, OutHits)
 writeByte(_params + 0x80, bIgnoreSelf)
 writeFloat(_params + 0x84, (TraceColor and TraceColor.R) or 0)
 writeFloat(_params + 0x88, (TraceColor and TraceColor.G) or 0)
 writeFloat(_params + 0x8C, (TraceColor and TraceColor.B) or 0)
 writeFloat(_params + 0x90, (TraceColor and TraceColor.A) or 0)
 writeFloat(_params + 0x94, (TraceHitColor and TraceHitColor.R) or 0)
 writeFloat(_params + 0x98, (TraceHitColor and TraceHitColor.G) or 0)
 writeFloat(_params + 0x9C, (TraceHitColor and TraceHitColor.B) or 0)
 writeFloat(_params + 0xA0, (TraceHitColor and TraceHitColor.A) or 0)
 writeFloat(_params + 0xA4, DrawTime)
 UE.CallProcessEventEx(WorldContextObject_Object, "CapsuleTraceMultiForObjects", _params);
 local RET=readByte(_params + 0xA8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CapsuleTraceMultiForObjects");

BL4.CapsuleTraceSingle = function(WorldContextObject_Object, Start, End, Radius, HalfHeight, TraceChannel, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHit, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime)
 local _paramsSize = 0x190
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CapsuleTraceSingle: Failed To Allocate The Params");return;end;
 Start = Start or {X=0,Y=0,Z=0}
 End = End or {X=0,Y=0,Z=0}
 Radius = Radius or 0
 HalfHeight = HalfHeight or 0
 TraceChannel = TraceChannel or 0
 bTraceComplex = bTraceComplex or false
 DrawDebugType = DrawDebugType or 0
 bIgnoreSelf = bIgnoreSelf or false
 TraceColor = TraceColor or {R=0,G=0,B=0,A=0}
 TraceHitColor = TraceHitColor or {R=0,G=0,B=0,A=0}
 DrawTime = DrawTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Start at +0x8, End at +0x20, Radius at +0x38, HalfHeight at +0x3C, TraceChannel at +0x40, bTraceComplex at +0x41, ActorsToIgnore at +0x48, DrawDebugType at +0x58, OutHit at +0x60, bIgnoreSelf at +0x160, TraceColor at +0x164, TraceHitColor at +0x174, DrawTime at +0x184
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Start and Start.X) or 0)
 writeDouble(_params + 0x10, (Start and Start.Y) or 0)
 writeDouble(_params + 0x18, (Start and Start.Z) or 0)
 writeDouble(_params + 0x20, (End and End.X) or 0)
 writeDouble(_params + 0x28, (End and End.Y) or 0)
 writeDouble(_params + 0x30, (End and End.Z) or 0)
 writeFloat(_params + 0x38, Radius)
 writeFloat(_params + 0x3C, HalfHeight)
 writeByte(_params + 0x40, TraceChannel)
 writeByte(_params + 0x41, bTraceComplex)
 writeQword(_params + 0x48, ActorsToIgnore)
 writeByte(_params + 0x58, DrawDebugType)
 writeQword(_params + 0x60, OutHit)
 writeByte(_params + 0x160, bIgnoreSelf)
 writeFloat(_params + 0x164, (TraceColor and TraceColor.R) or 0)
 writeFloat(_params + 0x168, (TraceColor and TraceColor.G) or 0)
 writeFloat(_params + 0x16C, (TraceColor and TraceColor.B) or 0)
 writeFloat(_params + 0x170, (TraceColor and TraceColor.A) or 0)
 writeFloat(_params + 0x174, (TraceHitColor and TraceHitColor.R) or 0)
 writeFloat(_params + 0x178, (TraceHitColor and TraceHitColor.G) or 0)
 writeFloat(_params + 0x17C, (TraceHitColor and TraceHitColor.B) or 0)
 writeFloat(_params + 0x180, (TraceHitColor and TraceHitColor.A) or 0)
 writeFloat(_params + 0x184, DrawTime)
 UE.CallProcessEventEx(WorldContextObject_Object, "CapsuleTraceSingle", _params);
 local RET=readByte(_params + 0x188);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CapsuleTraceSingle");

BL4.CapsuleTraceSingleByProfile = function(WorldContextObject_Object, Start, End, Radius, HalfHeight, ProfileName, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHit, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime)
 local _paramsSize = 0x198
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CapsuleTraceSingleByProfile: Failed To Allocate The Params");return;end;
 Start = Start or {X=0,Y=0,Z=0}
 End = End or {X=0,Y=0,Z=0}
 Radius = Radius or 0
 HalfHeight = HalfHeight or 0
 bTraceComplex = bTraceComplex or false
 DrawDebugType = DrawDebugType or 0
 bIgnoreSelf = bIgnoreSelf or false
 TraceColor = TraceColor or {R=0,G=0,B=0,A=0}
 TraceHitColor = TraceHitColor or {R=0,G=0,B=0,A=0}
 DrawTime = DrawTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Start at +0x8, End at +0x20, Radius at +0x38, HalfHeight at +0x3C, ProfileName at +0x40, bTraceComplex at +0x48, ActorsToIgnore at +0x50, DrawDebugType at +0x60, OutHit at +0x68, bIgnoreSelf at +0x168, TraceColor at +0x16C, TraceHitColor at +0x17C, DrawTime at +0x18C
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Start and Start.X) or 0)
 writeDouble(_params + 0x10, (Start and Start.Y) or 0)
 writeDouble(_params + 0x18, (Start and Start.Z) or 0)
 writeDouble(_params + 0x20, (End and End.X) or 0)
 writeDouble(_params + 0x28, (End and End.Y) or 0)
 writeDouble(_params + 0x30, (End and End.Z) or 0)
 writeFloat(_params + 0x38, Radius)
 writeFloat(_params + 0x3C, HalfHeight)
 writeQword(_params + 0x40, ProfileName)
 writeByte(_params + 0x48, bTraceComplex)
 writeQword(_params + 0x50, ActorsToIgnore)
 writeByte(_params + 0x60, DrawDebugType)
 writeQword(_params + 0x68, OutHit)
 writeByte(_params + 0x168, bIgnoreSelf)
 writeFloat(_params + 0x16C, (TraceColor and TraceColor.R) or 0)
 writeFloat(_params + 0x170, (TraceColor and TraceColor.G) or 0)
 writeFloat(_params + 0x174, (TraceColor and TraceColor.B) or 0)
 writeFloat(_params + 0x178, (TraceColor and TraceColor.A) or 0)
 writeFloat(_params + 0x17C, (TraceHitColor and TraceHitColor.R) or 0)
 writeFloat(_params + 0x180, (TraceHitColor and TraceHitColor.G) or 0)
 writeFloat(_params + 0x184, (TraceHitColor and TraceHitColor.B) or 0)
 writeFloat(_params + 0x188, (TraceHitColor and TraceHitColor.A) or 0)
 writeFloat(_params + 0x18C, DrawTime)
 UE.CallProcessEventEx(WorldContextObject_Object, "CapsuleTraceSingleByProfile", _params);
 local RET=readByte(_params + 0x190);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CapsuleTraceSingleByProfile");

BL4.CapsuleTraceSingleForObjects = function(WorldContextObject_Object, Start, End, Radius, HalfHeight, ObjectTypes, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHit, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime)
 local _paramsSize = 0x1A0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CapsuleTraceSingleForObjects: Failed To Allocate The Params");return;end;
 Start = Start or {X=0,Y=0,Z=0}
 End = End or {X=0,Y=0,Z=0}
 Radius = Radius or 0
 HalfHeight = HalfHeight or 0
 bTraceComplex = bTraceComplex or false
 DrawDebugType = DrawDebugType or 0
 bIgnoreSelf = bIgnoreSelf or false
 TraceColor = TraceColor or {R=0,G=0,B=0,A=0}
 TraceHitColor = TraceHitColor or {R=0,G=0,B=0,A=0}
 DrawTime = DrawTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Start at +0x8, End at +0x20, Radius at +0x38, HalfHeight at +0x3C, ObjectTypes at +0x40, bTraceComplex at +0x50, ActorsToIgnore at +0x58, DrawDebugType at +0x68, OutHit at +0x70, bIgnoreSelf at +0x170, TraceColor at +0x174, TraceHitColor at +0x184, DrawTime at +0x194
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Start and Start.X) or 0)
 writeDouble(_params + 0x10, (Start and Start.Y) or 0)
 writeDouble(_params + 0x18, (Start and Start.Z) or 0)
 writeDouble(_params + 0x20, (End and End.X) or 0)
 writeDouble(_params + 0x28, (End and End.Y) or 0)
 writeDouble(_params + 0x30, (End and End.Z) or 0)
 writeFloat(_params + 0x38, Radius)
 writeFloat(_params + 0x3C, HalfHeight)
 writeQword(_params + 0x40, ObjectTypes)
 writeByte(_params + 0x50, bTraceComplex)
 writeQword(_params + 0x58, ActorsToIgnore)
 writeByte(_params + 0x68, DrawDebugType)
 writeQword(_params + 0x70, OutHit)
 writeByte(_params + 0x170, bIgnoreSelf)
 writeFloat(_params + 0x174, (TraceColor and TraceColor.R) or 0)
 writeFloat(_params + 0x178, (TraceColor and TraceColor.G) or 0)
 writeFloat(_params + 0x17C, (TraceColor and TraceColor.B) or 0)
 writeFloat(_params + 0x180, (TraceColor and TraceColor.A) or 0)
 writeFloat(_params + 0x184, (TraceHitColor and TraceHitColor.R) or 0)
 writeFloat(_params + 0x188, (TraceHitColor and TraceHitColor.G) or 0)
 writeFloat(_params + 0x18C, (TraceHitColor and TraceHitColor.B) or 0)
 writeFloat(_params + 0x190, (TraceHitColor and TraceHitColor.A) or 0)
 writeFloat(_params + 0x194, DrawTime)
 UE.CallProcessEventEx(WorldContextObject_Object, "CapsuleTraceSingleForObjects", _params);
 local RET=readByte(_params + 0x198);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CapsuleTraceSingleForObjects");

BL4.ComponentOverlapActors = function(Component_PrimitiveComponent, ComponentTransform, ObjectTypes, ActorClassFilter_Class, ActorsToIgnore, OutActors)
 local _paramsSize = 0xB0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ComponentOverlapActors: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Component at +0x0, ComponentTransform at +0x10, ObjectTypes at +0x70, ActorClassFilter at +0x80, ActorsToIgnore at +0x88, OutActors at +0x98
 writeQword(_params + 0x0, Component_PrimitiveComponent)
 writeQword(_params + 0x10, ComponentTransform)
 writeQword(_params + 0x70, ObjectTypes)
 writeQword(_params + 0x80, ActorClassFilter_Class)
 writeQword(_params + 0x88, ActorsToIgnore)
 writeQword(_params + 0x98, OutActors)
 UE.CallProcessEventEx(Component_PrimitiveComponent, "ComponentOverlapActors", _params);
 local RET=readByte(_params + 0xA8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ComponentOverlapActors");

BL4.ComponentOverlapComponents = function(Component_PrimitiveComponent, ComponentTransform, ObjectTypes, ComponentClassFilter_Class, ActorsToIgnore, OutComponents)
 local _paramsSize = 0xB0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ComponentOverlapComponents: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Component at +0x0, ComponentTransform at +0x10, ObjectTypes at +0x70, ComponentClassFilter at +0x80, ActorsToIgnore at +0x88, OutComponents at +0x98
 writeQword(_params + 0x0, Component_PrimitiveComponent)
 writeQword(_params + 0x10, ComponentTransform)
 writeQword(_params + 0x70, ObjectTypes)
 writeQword(_params + 0x80, ComponentClassFilter_Class)
 writeQword(_params + 0x88, ActorsToIgnore)
 writeQword(_params + 0x98, OutComponents)
 UE.CallProcessEventEx(Component_PrimitiveComponent, "ComponentOverlapComponents", _params);
 local RET=readByte(_params + 0xA8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ComponentOverlapComponents");

BL4.ControlScreensaver = function(OwnerAddress, bAllowScreenSaver)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ControlScreensaver: Failed To Allocate The Params");return;end;
 bAllowScreenSaver = bAllowScreenSaver or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bAllowScreenSaver at +0x0
 writeByte(_params + 0x0, bAllowScreenSaver)
 UE.CallProcessEventEx(OwnerAddress, "ControlScreensaver", _params);
 deAlloc(_params);
end
FNR("BL4.ControlScreensaver");

BL4.Conv_ClassToSoftClassReference = function(Class)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_ClassToSoftClassReference: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Class at +0x0
 writeQword(_params + 0x0, Class)
 UE.CallProcessEventEx(Class, "Conv_ClassToSoftClassReference", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_ClassToSoftClassReference");

BL4.Conv_ComponentReferenceToSoftComponentReference = function(OwnerAddress, ComponentReference)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_ComponentReferenceToSoftComponentReference: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ComponentReference at +0x0
 writeQword(_params + 0x0, ComponentReference)
 UE.CallProcessEventEx(OwnerAddress, "Conv_ComponentReferenceToSoftComponentReference", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_ComponentReferenceToSoftComponentReference");

BL4.Conv_InterfaceToObject = function(OwnerAddress, Interface)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_InterfaceToObject: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Interface at +0x0
 writeQword(_params + 0x0, Interface)
 UE.CallProcessEventEx(OwnerAddress, "Conv_InterfaceToObject", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_InterfaceToObject");

BL4.Conv_ObjectToClass = function(Object, Class)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_ObjectToClass: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, Class at +0x8
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, Class)
 UE.CallProcessEventEx(Object, "Conv_ObjectToClass", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_ObjectToClass");

BL4.Conv_ObjectToSoftObjectReference = function(Object)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_ObjectToSoftObjectReference: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0
 writeQword(_params + 0x0, Object)
 UE.CallProcessEventEx(Object, "Conv_ObjectToSoftObjectReference", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_ObjectToSoftObjectReference");

BL4.Conv_PrimaryAssetIdToString = function(OwnerAddress, PrimaryAssetId)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_PrimaryAssetIdToString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PrimaryAssetId at +0x0
 writeQword(_params + 0x0, PrimaryAssetId)
 UE.CallProcessEventEx(OwnerAddress, "Conv_PrimaryAssetIdToString", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_PrimaryAssetIdToString");

BL4.Conv_PrimaryAssetTypeToString = function(OwnerAddress, PrimaryAssetType)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_PrimaryAssetTypeToString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PrimaryAssetType at +0x0
 writeQword(_params + 0x0, PrimaryAssetType)
 UE.CallProcessEventEx(OwnerAddress, "Conv_PrimaryAssetTypeToString", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_PrimaryAssetTypeToString");

BL4.Conv_SoftClassPathToSoftClassRef = function(OwnerAddress, SoftClassPath)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_SoftClassPathToSoftClassRef: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SoftClassPath at +0x0
 writeQword(_params + 0x0, SoftClassPath)
 UE.CallProcessEventEx(OwnerAddress, "Conv_SoftClassPathToSoftClassRef", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_SoftClassPathToSoftClassRef");

BL4.Conv_SoftClassReferenceToClass = function(OwnerAddress, SoftClass)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_SoftClassReferenceToClass: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SoftClass at +0x0
 writeQword(_params + 0x0, SoftClass)
 UE.CallProcessEventEx(OwnerAddress, "Conv_SoftClassReferenceToClass", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_SoftClassReferenceToClass");

BL4.Conv_SoftClassReferenceToString = function(OwnerAddress, SoftClassReference)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_SoftClassReferenceToString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SoftClassReference at +0x0
 writeQword(_params + 0x0, SoftClassReference)
 UE.CallProcessEventEx(OwnerAddress, "Conv_SoftClassReferenceToString", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_SoftClassReferenceToString");

BL4.Conv_SoftObjectReferenceToObject = function(SoftObject_Object)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_SoftObjectReferenceToObject: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SoftObject at +0x0
 writeQword(_params + 0x0, SoftObject_Object)
 UE.CallProcessEventEx(SoftObject_Object, "Conv_SoftObjectReferenceToObject", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_SoftObjectReferenceToObject");

BL4.Conv_SoftObjectReferenceToString = function(SoftObjectReference_Object)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_SoftObjectReferenceToString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SoftObjectReference at +0x0
 writeQword(_params + 0x0, SoftObjectReference_Object)
 UE.CallProcessEventEx(SoftObjectReference_Object, "Conv_SoftObjectReferenceToString", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_SoftObjectReferenceToString");

BL4.Conv_SoftObjPathToSoftObjRef = function(OwnerAddress, SoftObjectPath)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_SoftObjPathToSoftObjRef: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SoftObjectPath at +0x0
 writeQword(_params + 0x0, SoftObjectPath)
 UE.CallProcessEventEx(OwnerAddress, "Conv_SoftObjPathToSoftObjRef", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_SoftObjPathToSoftObjRef");

BL4.Conv_SoftObjRefToSoftClassPath = function(OwnerAddress, SoftClassReference)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_SoftObjRefToSoftClassPath: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SoftClassReference at +0x0
 writeQword(_params + 0x0, SoftClassReference)
 UE.CallProcessEventEx(OwnerAddress, "Conv_SoftObjRefToSoftClassPath", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_SoftObjRefToSoftClassPath");

BL4.Conv_SoftObjRefToSoftObjPath = function(SoftObjectReference_Object)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_SoftObjRefToSoftObjPath: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SoftObjectReference at +0x0
 writeQword(_params + 0x0, SoftObjectReference_Object)
 UE.CallProcessEventEx(SoftObjectReference_Object, "Conv_SoftObjRefToSoftObjPath", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_SoftObjRefToSoftObjPath");

BL4.ConvertToAbsolutePath = function(OwnerAddress, Filename)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConvertToAbsolutePath: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Filename at +0x0
 writeQword(_params + 0x0, Filename)
 UE.CallProcessEventEx(OwnerAddress, "ConvertToAbsolutePath", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConvertToAbsolutePath");

BL4.ConvertToRelativePath = function(OwnerAddress, Filename)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConvertToRelativePath: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Filename at +0x0
 writeQword(_params + 0x0, Filename)
 UE.CallProcessEventEx(OwnerAddress, "ConvertToRelativePath", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConvertToRelativePath");

BL4.CreateCopyForUndoBuffer = function(ObjectToModify_Object)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CreateCopyForUndoBuffer: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: ObjectToModify at +0x0
 writeQword(_params + 0x0, ObjectToModify_Object)
 UE.CallProcessEventEx(ObjectToModify_Object, "CreateCopyForUndoBuffer", _params);
 deAlloc(_params);
end
FNR("BL4.CreateCopyForUndoBuffer");

BL4.delay = function(WorldContextObject_Object, Duration, LatentInfo)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.delay: Failed To Allocate The Params");return;end;
 Duration = Duration or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Duration at +0x8, LatentInfo at +0x10
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeFloat(_params + 0x8, Duration)
 writeQword(_params + 0x10, LatentInfo)
 UE.CallProcessEventEx(WorldContextObject_Object, "delay", _params);
 deAlloc(_params);
end
FNR("BL4.delay");

BL4.DelayUntilNextTick = function(WorldContextObject_Object, LatentInfo)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DelayUntilNextTick: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, LatentInfo at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, LatentInfo)
 UE.CallProcessEventEx(WorldContextObject_Object, "DelayUntilNextTick", _params);
 deAlloc(_params);
end
FNR("BL4.DelayUntilNextTick");

BL4.DoesClassImplementInterface = function(TestClass_Class, Interface_Class)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DoesClassImplementInterface: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TestClass at +0x0, Interface at +0x8
 writeQword(_params + 0x0, TestClass_Class)
 writeQword(_params + 0x8, Interface_Class)
 UE.CallProcessEventEx(TestClass_Class, "DoesClassImplementInterface", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DoesClassImplementInterface");

BL4.DoesImplementInterface = function(TestObject_Object, Interface_Class)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DoesImplementInterface: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TestObject at +0x0, Interface at +0x8
 writeQword(_params + 0x0, TestObject_Object)
 writeQword(_params + 0x8, Interface_Class)
 UE.CallProcessEventEx(TestObject_Object, "DoesImplementInterface", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DoesImplementInterface");

BL4.DrawDebugArrow = function(WorldContextObject_Object, LineStart, LineEnd, ArrowSize, LineColor, Duration, Thickness)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawDebugArrow: Failed To Allocate The Params");return;end;
 LineStart = LineStart or {X=0,Y=0,Z=0}
 LineEnd = LineEnd or {X=0,Y=0,Z=0}
 ArrowSize = ArrowSize or 0
 LineColor = LineColor or {R=0,G=0,B=0,A=0}
 Duration = Duration or 0
 Thickness = Thickness or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, LineStart at +0x8, LineEnd at +0x20, ArrowSize at +0x38, LineColor at +0x3C, Duration at +0x4C, Thickness at +0x50
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (LineStart and LineStart.X) or 0)
 writeDouble(_params + 0x10, (LineStart and LineStart.Y) or 0)
 writeDouble(_params + 0x18, (LineStart and LineStart.Z) or 0)
 writeDouble(_params + 0x20, (LineEnd and LineEnd.X) or 0)
 writeDouble(_params + 0x28, (LineEnd and LineEnd.Y) or 0)
 writeDouble(_params + 0x30, (LineEnd and LineEnd.Z) or 0)
 writeFloat(_params + 0x38, ArrowSize)
 writeFloat(_params + 0x3C, (LineColor and LineColor.R) or 0)
 writeFloat(_params + 0x40, (LineColor and LineColor.G) or 0)
 writeFloat(_params + 0x44, (LineColor and LineColor.B) or 0)
 writeFloat(_params + 0x48, (LineColor and LineColor.A) or 0)
 writeFloat(_params + 0x4C, Duration)
 writeFloat(_params + 0x50, Thickness)
 UE.CallProcessEventEx(WorldContextObject_Object, "DrawDebugArrow", _params);
 deAlloc(_params);
end
FNR("BL4.DrawDebugArrow");

BL4.DrawDebugBox = function(WorldContextObject_Object, Center, Extent, LineColor, Rotation, Duration, Thickness)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawDebugBox: Failed To Allocate The Params");return;end;
 Center = Center or {X=0,Y=0,Z=0}
 Extent = Extent or {X=0,Y=0,Z=0}
 LineColor = LineColor or {R=0,G=0,B=0,A=0}
 Rotation = Rotation or {Pitch=0,Yaw=0,Roll=0}
 Duration = Duration or 0
 Thickness = Thickness or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Center at +0x8, Extent at +0x20, LineColor at +0x38, Rotation at +0x48, Duration at +0x60, Thickness at +0x64
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Center and Center.X) or 0)
 writeDouble(_params + 0x10, (Center and Center.Y) or 0)
 writeDouble(_params + 0x18, (Center and Center.Z) or 0)
 writeDouble(_params + 0x20, (Extent and Extent.X) or 0)
 writeDouble(_params + 0x28, (Extent and Extent.Y) or 0)
 writeDouble(_params + 0x30, (Extent and Extent.Z) or 0)
 writeFloat(_params + 0x38, (LineColor and LineColor.R) or 0)
 writeFloat(_params + 0x3C, (LineColor and LineColor.G) or 0)
 writeFloat(_params + 0x40, (LineColor and LineColor.B) or 0)
 writeFloat(_params + 0x44, (LineColor and LineColor.A) or 0)
 writeDouble(_params + 0x48, (Rotation and Rotation.Pitch) or 0)
 writeDouble(_params + 0x50, (Rotation and Rotation.Yaw) or 0)
 writeDouble(_params + 0x58, (Rotation and Rotation.Roll) or 0)
 writeFloat(_params + 0x60, Duration)
 writeFloat(_params + 0x64, Thickness)
 UE.CallProcessEventEx(WorldContextObject_Object, "DrawDebugBox", _params);
 deAlloc(_params);
end
FNR("BL4.DrawDebugBox");

BL4.DrawDebugCamera = function(CameraActor, CameraColor, Duration)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawDebugCamera: Failed To Allocate The Params");return;end;
 CameraColor = CameraColor or {R=0,G=0,B=0,A=0}
 Duration = Duration or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CameraActor at +0x0, CameraColor at +0x8, Duration at +0x18
 writeQword(_params + 0x0, CameraActor)
 writeFloat(_params + 0x8, (CameraColor and CameraColor.R) or 0)
 writeFloat(_params + 0xC, (CameraColor and CameraColor.G) or 0)
 writeFloat(_params + 0x10, (CameraColor and CameraColor.B) or 0)
 writeFloat(_params + 0x14, (CameraColor and CameraColor.A) or 0)
 writeFloat(_params + 0x18, Duration)
 UE.CallProcessEventEx(CameraActor, "DrawDebugCamera", _params);
 deAlloc(_params);
end
FNR("BL4.DrawDebugCamera");

BL4.DrawDebugCapsule = function(WorldContextObject_Object, Center, HalfHeight, Radius, Rotation, LineColor, Duration, Thickness)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawDebugCapsule: Failed To Allocate The Params");return;end;
 Center = Center or {X=0,Y=0,Z=0}
 HalfHeight = HalfHeight or 0
 Radius = Radius or 0
 Rotation = Rotation or {Pitch=0,Yaw=0,Roll=0}
 LineColor = LineColor or {R=0,G=0,B=0,A=0}
 Duration = Duration or 0
 Thickness = Thickness or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Center at +0x8, HalfHeight at +0x20, Radius at +0x24, Rotation at +0x28, LineColor at +0x40, Duration at +0x50, Thickness at +0x54
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Center and Center.X) or 0)
 writeDouble(_params + 0x10, (Center and Center.Y) or 0)
 writeDouble(_params + 0x18, (Center and Center.Z) or 0)
 writeFloat(_params + 0x20, HalfHeight)
 writeFloat(_params + 0x24, Radius)
 writeDouble(_params + 0x28, (Rotation and Rotation.Pitch) or 0)
 writeDouble(_params + 0x30, (Rotation and Rotation.Yaw) or 0)
 writeDouble(_params + 0x38, (Rotation and Rotation.Roll) or 0)
 writeFloat(_params + 0x40, (LineColor and LineColor.R) or 0)
 writeFloat(_params + 0x44, (LineColor and LineColor.G) or 0)
 writeFloat(_params + 0x48, (LineColor and LineColor.B) or 0)
 writeFloat(_params + 0x4C, (LineColor and LineColor.A) or 0)
 writeFloat(_params + 0x50, Duration)
 writeFloat(_params + 0x54, Thickness)
 UE.CallProcessEventEx(WorldContextObject_Object, "DrawDebugCapsule", _params);
 deAlloc(_params);
end
FNR("BL4.DrawDebugCapsule");

BL4.DrawDebugCircle = function(WorldContextObject_Object, Center, Radius, NumSegments, LineColor, Duration, Thickness, YAxis, ZAxis, bDrawAxis)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawDebugCircle: Failed To Allocate The Params");return;end;
 Center = Center or {X=0,Y=0,Z=0}
 Radius = Radius or 0
 NumSegments = NumSegments or 0
 LineColor = LineColor or {R=0,G=0,B=0,A=0}
 Duration = Duration or 0
 Thickness = Thickness or 0
 YAxis = YAxis or {X=0,Y=0,Z=0}
 ZAxis = ZAxis or {X=0,Y=0,Z=0}
 bDrawAxis = bDrawAxis or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Center at +0x8, Radius at +0x20, NumSegments at +0x24, LineColor at +0x28, Duration at +0x38, Thickness at +0x3C, YAxis at +0x40, ZAxis at +0x58, bDrawAxis at +0x70
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Center and Center.X) or 0)
 writeDouble(_params + 0x10, (Center and Center.Y) or 0)
 writeDouble(_params + 0x18, (Center and Center.Z) or 0)
 writeFloat(_params + 0x20, Radius)
 writeInteger(_params + 0x24, NumSegments)
 writeFloat(_params + 0x28, (LineColor and LineColor.R) or 0)
 writeFloat(_params + 0x2C, (LineColor and LineColor.G) or 0)
 writeFloat(_params + 0x30, (LineColor and LineColor.B) or 0)
 writeFloat(_params + 0x34, (LineColor and LineColor.A) or 0)
 writeFloat(_params + 0x38, Duration)
 writeFloat(_params + 0x3C, Thickness)
 writeDouble(_params + 0x40, (YAxis and YAxis.X) or 0)
 writeDouble(_params + 0x48, (YAxis and YAxis.Y) or 0)
 writeDouble(_params + 0x50, (YAxis and YAxis.Z) or 0)
 writeDouble(_params + 0x58, (ZAxis and ZAxis.X) or 0)
 writeDouble(_params + 0x60, (ZAxis and ZAxis.Y) or 0)
 writeDouble(_params + 0x68, (ZAxis and ZAxis.Z) or 0)
 writeByte(_params + 0x70, bDrawAxis)
 UE.CallProcessEventEx(WorldContextObject_Object, "DrawDebugCircle", _params);
 deAlloc(_params);
end
FNR("BL4.DrawDebugCircle");

BL4.DrawDebugCone = function(WorldContextObject_Object, Origin, Direction, Length, AngleWidth, AngleHeight, NumSides, LineColor, Duration, Thickness)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawDebugCone: Failed To Allocate The Params");return;end;
 Origin = Origin or {X=0,Y=0,Z=0}
 Direction = Direction or {X=0,Y=0,Z=0}
 Length = Length or 0
 AngleWidth = AngleWidth or 0
 AngleHeight = AngleHeight or 0
 NumSides = NumSides or 0
 LineColor = LineColor or {R=0,G=0,B=0,A=0}
 Duration = Duration or 0
 Thickness = Thickness or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Origin at +0x8, Direction at +0x20, Length at +0x38, AngleWidth at +0x3C, AngleHeight at +0x40, NumSides at +0x44, LineColor at +0x48, Duration at +0x58, Thickness at +0x5C
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Origin and Origin.X) or 0)
 writeDouble(_params + 0x10, (Origin and Origin.Y) or 0)
 writeDouble(_params + 0x18, (Origin and Origin.Z) or 0)
 writeDouble(_params + 0x20, (Direction and Direction.X) or 0)
 writeDouble(_params + 0x28, (Direction and Direction.Y) or 0)
 writeDouble(_params + 0x30, (Direction and Direction.Z) or 0)
 writeFloat(_params + 0x38, Length)
 writeFloat(_params + 0x3C, AngleWidth)
 writeFloat(_params + 0x40, AngleHeight)
 writeInteger(_params + 0x44, NumSides)
 writeFloat(_params + 0x48, (LineColor and LineColor.R) or 0)
 writeFloat(_params + 0x4C, (LineColor and LineColor.G) or 0)
 writeFloat(_params + 0x50, (LineColor and LineColor.B) or 0)
 writeFloat(_params + 0x54, (LineColor and LineColor.A) or 0)
 writeFloat(_params + 0x58, Duration)
 writeFloat(_params + 0x5C, Thickness)
 UE.CallProcessEventEx(WorldContextObject_Object, "DrawDebugCone", _params);
 deAlloc(_params);
end
FNR("BL4.DrawDebugCone");

BL4.DrawDebugConeInDegrees = function(WorldContextObject_Object, Origin, Direction, Length, AngleWidth, AngleHeight, NumSides, LineColor, Duration, Thickness)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawDebugConeInDegrees: Failed To Allocate The Params");return;end;
 Origin = Origin or {X=0,Y=0,Z=0}
 Direction = Direction or {X=0,Y=0,Z=0}
 Length = Length or 0
 AngleWidth = AngleWidth or 0
 AngleHeight = AngleHeight or 0
 NumSides = NumSides or 0
 LineColor = LineColor or {R=0,G=0,B=0,A=0}
 Duration = Duration or 0
 Thickness = Thickness or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Origin at +0x8, Direction at +0x20, Length at +0x38, AngleWidth at +0x3C, AngleHeight at +0x40, NumSides at +0x44, LineColor at +0x48, Duration at +0x58, Thickness at +0x5C
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Origin and Origin.X) or 0)
 writeDouble(_params + 0x10, (Origin and Origin.Y) or 0)
 writeDouble(_params + 0x18, (Origin and Origin.Z) or 0)
 writeDouble(_params + 0x20, (Direction and Direction.X) or 0)
 writeDouble(_params + 0x28, (Direction and Direction.Y) or 0)
 writeDouble(_params + 0x30, (Direction and Direction.Z) or 0)
 writeFloat(_params + 0x38, Length)
 writeFloat(_params + 0x3C, AngleWidth)
 writeFloat(_params + 0x40, AngleHeight)
 writeInteger(_params + 0x44, NumSides)
 writeFloat(_params + 0x48, (LineColor and LineColor.R) or 0)
 writeFloat(_params + 0x4C, (LineColor and LineColor.G) or 0)
 writeFloat(_params + 0x50, (LineColor and LineColor.B) or 0)
 writeFloat(_params + 0x54, (LineColor and LineColor.A) or 0)
 writeFloat(_params + 0x58, Duration)
 writeFloat(_params + 0x5C, Thickness)
 UE.CallProcessEventEx(WorldContextObject_Object, "DrawDebugConeInDegrees", _params);
 deAlloc(_params);
end
FNR("BL4.DrawDebugConeInDegrees");

BL4.DrawDebugCoordinateSystem = function(WorldContextObject_Object, AxisLoc, AxisRot, scale, Duration, Thickness)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawDebugCoordinateSystem: Failed To Allocate The Params");return;end;
 AxisLoc = AxisLoc or {X=0,Y=0,Z=0}
 AxisRot = AxisRot or {Pitch=0,Yaw=0,Roll=0}
 scale = scale or 0
 Duration = Duration or 0
 Thickness = Thickness or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, AxisLoc at +0x8, AxisRot at +0x20, scale at +0x38, Duration at +0x3C, Thickness at +0x40
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (AxisLoc and AxisLoc.X) or 0)
 writeDouble(_params + 0x10, (AxisLoc and AxisLoc.Y) or 0)
 writeDouble(_params + 0x18, (AxisLoc and AxisLoc.Z) or 0)
 writeDouble(_params + 0x20, (AxisRot and AxisRot.Pitch) or 0)
 writeDouble(_params + 0x28, (AxisRot and AxisRot.Yaw) or 0)
 writeDouble(_params + 0x30, (AxisRot and AxisRot.Roll) or 0)
 writeFloat(_params + 0x38, scale)
 writeFloat(_params + 0x3C, Duration)
 writeFloat(_params + 0x40, Thickness)
 UE.CallProcessEventEx(WorldContextObject_Object, "DrawDebugCoordinateSystem", _params);
 deAlloc(_params);
end
FNR("BL4.DrawDebugCoordinateSystem");

BL4.DrawDebugCylinder = function(WorldContextObject_Object, Start, End, Radius, Segments, LineColor, Duration, Thickness)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawDebugCylinder: Failed To Allocate The Params");return;end;
 Start = Start or {X=0,Y=0,Z=0}
 End = End or {X=0,Y=0,Z=0}
 Radius = Radius or 0
 Segments = Segments or 0
 LineColor = LineColor or {R=0,G=0,B=0,A=0}
 Duration = Duration or 0
 Thickness = Thickness or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Start at +0x8, End at +0x20, Radius at +0x38, Segments at +0x3C, LineColor at +0x40, Duration at +0x50, Thickness at +0x54
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Start and Start.X) or 0)
 writeDouble(_params + 0x10, (Start and Start.Y) or 0)
 writeDouble(_params + 0x18, (Start and Start.Z) or 0)
 writeDouble(_params + 0x20, (End and End.X) or 0)
 writeDouble(_params + 0x28, (End and End.Y) or 0)
 writeDouble(_params + 0x30, (End and End.Z) or 0)
 writeFloat(_params + 0x38, Radius)
 writeInteger(_params + 0x3C, Segments)
 writeFloat(_params + 0x40, (LineColor and LineColor.R) or 0)
 writeFloat(_params + 0x44, (LineColor and LineColor.G) or 0)
 writeFloat(_params + 0x48, (LineColor and LineColor.B) or 0)
 writeFloat(_params + 0x4C, (LineColor and LineColor.A) or 0)
 writeFloat(_params + 0x50, Duration)
 writeFloat(_params + 0x54, Thickness)
 UE.CallProcessEventEx(WorldContextObject_Object, "DrawDebugCylinder", _params);
 deAlloc(_params);
end
FNR("BL4.DrawDebugCylinder");

BL4.DrawDebugFloatHistoryLocation = function(WorldContextObject_Object, FloatHistory, DrawLocation, DrawSize, DrawColor, Duration)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawDebugFloatHistoryLocation: Failed To Allocate The Params");return;end;
 DrawLocation = DrawLocation or {X=0,Y=0,Z=0}
 DrawSize = DrawSize or {X=0,Y=0}
 DrawColor = DrawColor or {R=0,G=0,B=0,A=0}
 Duration = Duration or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, FloatHistory at +0x8, DrawLocation at +0x28, DrawSize at +0x40, DrawColor at +0x50, Duration at +0x60
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, FloatHistory)
 writeDouble(_params + 0x28, (DrawLocation and DrawLocation.X) or 0)
 writeDouble(_params + 0x30, (DrawLocation and DrawLocation.Y) or 0)
 writeDouble(_params + 0x38, (DrawLocation and DrawLocation.Z) or 0)
 writeDouble(_params + 0x40, (DrawSize and DrawSize.X) or 0)
 writeDouble(_params + 0x48, (DrawSize and DrawSize.Y) or 0)
 writeFloat(_params + 0x50, (DrawColor and DrawColor.R) or 0)
 writeFloat(_params + 0x54, (DrawColor and DrawColor.G) or 0)
 writeFloat(_params + 0x58, (DrawColor and DrawColor.B) or 0)
 writeFloat(_params + 0x5C, (DrawColor and DrawColor.A) or 0)
 writeFloat(_params + 0x60, Duration)
 UE.CallProcessEventEx(WorldContextObject_Object, "DrawDebugFloatHistoryLocation", _params);
 deAlloc(_params);
end
FNR("BL4.DrawDebugFloatHistoryLocation");

BL4.DrawDebugFloatHistoryTransform = function(WorldContextObject_Object, FloatHistory, DrawTransform, DrawSize, DrawColor, Duration)
 local _paramsSize = 0xB8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawDebugFloatHistoryTransform: Failed To Allocate The Params");return;end;
 DrawSize = DrawSize or {X=0,Y=0}
 DrawColor = DrawColor or {R=0,G=0,B=0,A=0}
 Duration = Duration or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, FloatHistory at +0x8, DrawTransform at +0x30, DrawSize at +0x90, DrawColor at +0xA0, Duration at +0xB0
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, FloatHistory)
 writeQword(_params + 0x30, DrawTransform)
 writeDouble(_params + 0x90, (DrawSize and DrawSize.X) or 0)
 writeDouble(_params + 0x98, (DrawSize and DrawSize.Y) or 0)
 writeFloat(_params + 0xA0, (DrawColor and DrawColor.R) or 0)
 writeFloat(_params + 0xA4, (DrawColor and DrawColor.G) or 0)
 writeFloat(_params + 0xA8, (DrawColor and DrawColor.B) or 0)
 writeFloat(_params + 0xAC, (DrawColor and DrawColor.A) or 0)
 writeFloat(_params + 0xB0, Duration)
 UE.CallProcessEventEx(WorldContextObject_Object, "DrawDebugFloatHistoryTransform", _params);
 deAlloc(_params);
end
FNR("BL4.DrawDebugFloatHistoryTransform");

BL4.DrawDebugFrustum = function(WorldContextObject_Object, FrustumTransform, FrustumColor, Duration, Thickness)
 local _paramsSize = 0x88
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawDebugFrustum: Failed To Allocate The Params");return;end;
 FrustumColor = FrustumColor or {R=0,G=0,B=0,A=0}
 Duration = Duration or 0
 Thickness = Thickness or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, FrustumTransform at +0x10, FrustumColor at +0x70, Duration at +0x80, Thickness at +0x84
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x10, FrustumTransform)
 writeFloat(_params + 0x70, (FrustumColor and FrustumColor.R) or 0)
 writeFloat(_params + 0x74, (FrustumColor and FrustumColor.G) or 0)
 writeFloat(_params + 0x78, (FrustumColor and FrustumColor.B) or 0)
 writeFloat(_params + 0x7C, (FrustumColor and FrustumColor.A) or 0)
 writeFloat(_params + 0x80, Duration)
 writeFloat(_params + 0x84, Thickness)
 UE.CallProcessEventEx(WorldContextObject_Object, "DrawDebugFrustum", _params);
 deAlloc(_params);
end
FNR("BL4.DrawDebugFrustum");

BL4.DrawDebugLine = function(WorldContextObject_Object, LineStart, LineEnd, LineColor, Duration, Thickness)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawDebugLine: Failed To Allocate The Params");return;end;
 LineStart = LineStart or {X=0,Y=0,Z=0}
 LineEnd = LineEnd or {X=0,Y=0,Z=0}
 LineColor = LineColor or {R=0,G=0,B=0,A=0}
 Duration = Duration or 0
 Thickness = Thickness or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, LineStart at +0x8, LineEnd at +0x20, LineColor at +0x38, Duration at +0x48, Thickness at +0x4C
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (LineStart and LineStart.X) or 0)
 writeDouble(_params + 0x10, (LineStart and LineStart.Y) or 0)
 writeDouble(_params + 0x18, (LineStart and LineStart.Z) or 0)
 writeDouble(_params + 0x20, (LineEnd and LineEnd.X) or 0)
 writeDouble(_params + 0x28, (LineEnd and LineEnd.Y) or 0)
 writeDouble(_params + 0x30, (LineEnd and LineEnd.Z) or 0)
 writeFloat(_params + 0x38, (LineColor and LineColor.R) or 0)
 writeFloat(_params + 0x3C, (LineColor and LineColor.G) or 0)
 writeFloat(_params + 0x40, (LineColor and LineColor.B) or 0)
 writeFloat(_params + 0x44, (LineColor and LineColor.A) or 0)
 writeFloat(_params + 0x48, Duration)
 writeFloat(_params + 0x4C, Thickness)
 UE.CallProcessEventEx(WorldContextObject_Object, "DrawDebugLine", _params);
 deAlloc(_params);
end
FNR("BL4.DrawDebugLine");

BL4.DrawDebugPlane = function(WorldContextObject_Object, PlaneCoordinates, Location, Size, PlaneColor, Duration)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawDebugPlane: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 Size = Size or 0
 PlaneColor = PlaneColor or {R=0,G=0,B=0,A=0}
 Duration = Duration or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, PlaneCoordinates at +0x10, Location at +0x30, Size at +0x48, PlaneColor at +0x4C, Duration at +0x5C
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x10, PlaneCoordinates)
 writeDouble(_params + 0x30, (Location and Location.X) or 0)
 writeDouble(_params + 0x38, (Location and Location.Y) or 0)
 writeDouble(_params + 0x40, (Location and Location.Z) or 0)
 writeFloat(_params + 0x48, Size)
 writeFloat(_params + 0x4C, (PlaneColor and PlaneColor.R) or 0)
 writeFloat(_params + 0x50, (PlaneColor and PlaneColor.G) or 0)
 writeFloat(_params + 0x54, (PlaneColor and PlaneColor.B) or 0)
 writeFloat(_params + 0x58, (PlaneColor and PlaneColor.A) or 0)
 writeFloat(_params + 0x5C, Duration)
 UE.CallProcessEventEx(WorldContextObject_Object, "DrawDebugPlane", _params);
 deAlloc(_params);
end
FNR("BL4.DrawDebugPlane");

BL4.DrawDebugPoint = function(WorldContextObject_Object, position, Size, PointColor, Duration)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawDebugPoint: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0,Z=0}
 Size = Size or 0
 PointColor = PointColor or {R=0,G=0,B=0,A=0}
 Duration = Duration or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, position at +0x8, Size at +0x20, PointColor at +0x24, Duration at +0x34
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (position and position.X) or 0)
 writeDouble(_params + 0x10, (position and position.Y) or 0)
 writeDouble(_params + 0x18, (position and position.Z) or 0)
 writeFloat(_params + 0x20, Size)
 writeFloat(_params + 0x24, (PointColor and PointColor.R) or 0)
 writeFloat(_params + 0x28, (PointColor and PointColor.G) or 0)
 writeFloat(_params + 0x2C, (PointColor and PointColor.B) or 0)
 writeFloat(_params + 0x30, (PointColor and PointColor.A) or 0)
 writeFloat(_params + 0x34, Duration)
 UE.CallProcessEventEx(WorldContextObject_Object, "DrawDebugPoint", _params);
 deAlloc(_params);
end
FNR("BL4.DrawDebugPoint");

BL4.DrawDebugSphere = function(WorldContextObject_Object, Center, Radius, Segments, LineColor, Duration, Thickness)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawDebugSphere: Failed To Allocate The Params");return;end;
 Center = Center or {X=0,Y=0,Z=0}
 Radius = Radius or 0
 Segments = Segments or 0
 LineColor = LineColor or {R=0,G=0,B=0,A=0}
 Duration = Duration or 0
 Thickness = Thickness or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Center at +0x8, Radius at +0x20, Segments at +0x24, LineColor at +0x28, Duration at +0x38, Thickness at +0x3C
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Center and Center.X) or 0)
 writeDouble(_params + 0x10, (Center and Center.Y) or 0)
 writeDouble(_params + 0x18, (Center and Center.Z) or 0)
 writeFloat(_params + 0x20, Radius)
 writeInteger(_params + 0x24, Segments)
 writeFloat(_params + 0x28, (LineColor and LineColor.R) or 0)
 writeFloat(_params + 0x2C, (LineColor and LineColor.G) or 0)
 writeFloat(_params + 0x30, (LineColor and LineColor.B) or 0)
 writeFloat(_params + 0x34, (LineColor and LineColor.A) or 0)
 writeFloat(_params + 0x38, Duration)
 writeFloat(_params + 0x3C, Thickness)
 UE.CallProcessEventEx(WorldContextObject_Object, "DrawDebugSphere", _params);
 deAlloc(_params);
end
FNR("BL4.DrawDebugSphere");

BL4.DrawDebugString = function(WorldContextObject_Object, TextLocation, Text, TestBaseActor_Actor, TextColor, Duration)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawDebugString: Failed To Allocate The Params");return;end;
 TextLocation = TextLocation or {X=0,Y=0,Z=0}
 TextColor = TextColor or {R=0,G=0,B=0,A=0}
 Duration = Duration or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, TextLocation at +0x8, Text at +0x20, TestBaseActor at +0x30, TextColor at +0x38, Duration at +0x48
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (TextLocation and TextLocation.X) or 0)
 writeDouble(_params + 0x10, (TextLocation and TextLocation.Y) or 0)
 writeDouble(_params + 0x18, (TextLocation and TextLocation.Z) or 0)
 writeQword(_params + 0x20, Text)
 writeQword(_params + 0x30, TestBaseActor_Actor)
 writeFloat(_params + 0x38, (TextColor and TextColor.R) or 0)
 writeFloat(_params + 0x3C, (TextColor and TextColor.G) or 0)
 writeFloat(_params + 0x40, (TextColor and TextColor.B) or 0)
 writeFloat(_params + 0x44, (TextColor and TextColor.A) or 0)
 writeFloat(_params + 0x48, Duration)
 UE.CallProcessEventEx(WorldContextObject_Object, "DrawDebugString", _params);
 deAlloc(_params);
end
FNR("BL4.DrawDebugString");

BL4.EndTransaction = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EndTransaction: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "EndTransaction", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EndTransaction");

BL4.EqualEqual_PrimaryAssetId = function(OwnerAddress, A, B)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_PrimaryAssetId: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x10, B)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_PrimaryAssetId", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_PrimaryAssetId");

BL4.EqualEqual_PrimaryAssetType = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_PrimaryAssetType: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_PrimaryAssetType", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_PrimaryAssetType");

BL4.EqualEqual_SoftClassReference = function(OwnerAddress, A, B)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_SoftClassReference: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x28
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x28, B)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_SoftClassReference", _params);
 local RET=readByte(_params + 0x50);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_SoftClassReference");

BL4.EqualEqual_SoftObjectReference = function(A_Object, B_Object)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_SoftObjectReference: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x28
 writeQword(_params + 0x0, A_Object)
 writeQword(_params + 0x28, B_Object)
 UE.CallProcessEventEx(A_Object, "EqualEqual_SoftObjectReference", _params);
 local RET=readByte(_params + 0x50);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_SoftObjectReference");

BL4.ExecuteConsoleCommand = function(WorldContextObject_Object, Command, SpecificPlayer_PlayerController)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ExecuteConsoleCommand: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Command at +0x8, SpecificPlayer at +0x18
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Command)
 writeQword(_params + 0x18, SpecificPlayer_PlayerController)
 UE.CallProcessEventEx(WorldContextObject_Object, "ExecuteConsoleCommand", _params);
 deAlloc(_params);
end
FNR("BL4.ExecuteConsoleCommand");

BL4.FlushDebugStrings = function(WorldContextObject_Object)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FlushDebugStrings: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "FlushDebugStrings", _params);
 deAlloc(_params);
end
FNR("BL4.FlushDebugStrings");

BL4.FlushPersistentDebugLines = function(WorldContextObject_Object)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FlushPersistentDebugLines: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "FlushPersistentDebugLines", _params);
 deAlloc(_params);
end
FNR("BL4.FlushPersistentDebugLines");

BL4.GbxLoadAsset_Blocking = function(Asset_Object)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GbxLoadAsset_Blocking: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Asset at +0x0
 writeQword(_params + 0x0, Asset_Object)
 UE.CallProcessEventEx(Asset_Object, "GbxLoadAsset_Blocking", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GbxLoadAsset_Blocking");

BL4.GbxLoadClassAsset_Blocking = function(OwnerAddress, AssetClass)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GbxLoadClassAsset_Blocking: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AssetClass at +0x0
 writeQword(_params + 0x0, AssetClass)
 UE.CallProcessEventEx(OwnerAddress, "GbxLoadClassAsset_Blocking", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GbxLoadClassAsset_Blocking");

BL4.GetActorBounds = function(Actor, Origin, BoxExtent)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetActorBounds: Failed To Allocate The Params");return;end;
 Origin = Origin or {X=0,Y=0,Z=0}
 BoxExtent = BoxExtent or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Actor at +0x0, Origin at +0x8, BoxExtent at +0x20
 writeQword(_params + 0x0, Actor)
 writeDouble(_params + 0x8, (Origin and Origin.X) or 0)
 writeDouble(_params + 0x10, (Origin and Origin.Y) or 0)
 writeDouble(_params + 0x18, (Origin and Origin.Z) or 0)
 writeDouble(_params + 0x20, (BoxExtent and BoxExtent.X) or 0)
 writeDouble(_params + 0x28, (BoxExtent and BoxExtent.Y) or 0)
 writeDouble(_params + 0x30, (BoxExtent and BoxExtent.Z) or 0)
 UE.CallProcessEventEx(Actor, "GetActorBounds", _params);
 deAlloc(_params);
end
FNR("BL4.GetActorBounds");

BL4.GetActorListFromComponentList = function(OwnerAddress, ComponentList, ActorClassFilter_Class, OutActorList)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetActorListFromComponentList: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ComponentList at +0x0, ActorClassFilter at +0x10, OutActorList at +0x18
 writeQword(_params + 0x0, ComponentList)
 writeQword(_params + 0x10, ActorClassFilter_Class)
 writeQword(_params + 0x18, OutActorList)
 UE.CallProcessEventEx(OwnerAddress, "GetActorListFromComponentList", _params);
 deAlloc(_params);
end
FNR("BL4.GetActorListFromComponentList");

BL4.GetAdIDCount = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAdIDCount: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAdIDCount", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAdIDCount");

BL4.GetBuildConfiguration = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBuildConfiguration: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetBuildConfiguration", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBuildConfiguration");

BL4.GetBuildVersion = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBuildVersion: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetBuildVersion", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBuildVersion");

BL4.GetClassDisplayName = function(Class)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetClassDisplayName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Class at +0x0
 writeQword(_params + 0x0, Class)
 UE.CallProcessEventEx(Class, "GetClassDisplayName", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetClassDisplayName");

BL4.GetClassFromPrimaryAssetId = function(OwnerAddress, PrimaryAssetId)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetClassFromPrimaryAssetId: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PrimaryAssetId at +0x0
 writeQword(_params + 0x0, PrimaryAssetId)
 UE.CallProcessEventEx(OwnerAddress, "GetClassFromPrimaryAssetId", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetClassFromPrimaryAssetId");

BL4.GetClassTopLevelAssetPath = function(Class)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetClassTopLevelAssetPath: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Class at +0x0
 writeQword(_params + 0x0, Class)
 UE.CallProcessEventEx(Class, "GetClassTopLevelAssetPath", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetClassTopLevelAssetPath");

BL4.GetCommandLine = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCommandLine: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetCommandLine", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCommandLine");

BL4.GetComponentBounds = function(Component_SceneComponent, Origin, BoxExtent, SphereRadius)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetComponentBounds: Failed To Allocate The Params");return;end;
 Origin = Origin or {X=0,Y=0,Z=0}
 BoxExtent = BoxExtent or {X=0,Y=0,Z=0}
 SphereRadius = SphereRadius or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Component at +0x0, Origin at +0x8, BoxExtent at +0x20, SphereRadius at +0x38
 writeQword(_params + 0x0, Component_SceneComponent)
 writeDouble(_params + 0x8, (Origin and Origin.X) or 0)
 writeDouble(_params + 0x10, (Origin and Origin.Y) or 0)
 writeDouble(_params + 0x18, (Origin and Origin.Z) or 0)
 writeDouble(_params + 0x20, (BoxExtent and BoxExtent.X) or 0)
 writeDouble(_params + 0x28, (BoxExtent and BoxExtent.Y) or 0)
 writeDouble(_params + 0x30, (BoxExtent and BoxExtent.Z) or 0)
 writeFloat(_params + 0x38, SphereRadius)
 UE.CallProcessEventEx(Component_SceneComponent, "GetComponentBounds", _params);
 deAlloc(_params);
end
FNR("BL4.GetComponentBounds");

BL4.GetConsoleVariableBoolValue = function(OwnerAddress, VariableName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetConsoleVariableBoolValue: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VariableName at +0x0
 writeQword(_params + 0x0, VariableName)
 UE.CallProcessEventEx(OwnerAddress, "GetConsoleVariableBoolValue", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetConsoleVariableBoolValue");

BL4.GetConsoleVariableFloatValue = function(OwnerAddress, VariableName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetConsoleVariableFloatValue: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VariableName at +0x0
 writeQword(_params + 0x0, VariableName)
 UE.CallProcessEventEx(OwnerAddress, "GetConsoleVariableFloatValue", _params);
 local RET=readFloat(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetConsoleVariableFloatValue");

BL4.GetConsoleVariableIntValue = function(OwnerAddress, VariableName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetConsoleVariableIntValue: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VariableName at +0x0
 writeQword(_params + 0x0, VariableName)
 UE.CallProcessEventEx(OwnerAddress, "GetConsoleVariableIntValue", _params);
 local RET=readInteger(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetConsoleVariableIntValue");

BL4.GetConsoleVariableStringValue = function(OwnerAddress, VariableName)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetConsoleVariableStringValue: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VariableName at +0x0
 writeQword(_params + 0x0, VariableName)
 UE.CallProcessEventEx(OwnerAddress, "GetConsoleVariableStringValue", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetConsoleVariableStringValue");

BL4.GetConvenientWindowedResolutions = function(OwnerAddress, Resolutions)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetConvenientWindowedResolutions: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Resolutions at +0x0
 writeQword(_params + 0x0, Resolutions)
 UE.CallProcessEventEx(OwnerAddress, "GetConvenientWindowedResolutions", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetConvenientWindowedResolutions");

BL4.GetCurrentBundleState = function(OwnerAddress, PrimaryAssetId, bForceCurrentState, OutBundles)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCurrentBundleState: Failed To Allocate The Params");return;end;
 bForceCurrentState = bForceCurrentState or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PrimaryAssetId at +0x0, bForceCurrentState at +0x10, OutBundles at +0x18
 writeQword(_params + 0x0, PrimaryAssetId)
 writeByte(_params + 0x10, bForceCurrentState)
 writeQword(_params + 0x18, OutBundles)
 UE.CallProcessEventEx(OwnerAddress, "GetCurrentBundleState", _params);
 local RET=readByte(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCurrentBundleState");

BL4.GetDefaultLanguage = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDefaultLanguage: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetDefaultLanguage", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDefaultLanguage");

BL4.GetDefaultLocale = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDefaultLocale: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetDefaultLocale", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDefaultLocale");

BL4.GetDeviceId = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDeviceId: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetDeviceId", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDeviceId");

BL4.GetDisplayName = function(Object)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDisplayName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0
 writeQword(_params + 0x0, Object)
 UE.CallProcessEventEx(Object, "GetDisplayName", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDisplayName");

BL4.GetEngineVersion = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetEngineVersion: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetEngineVersion", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetEngineVersion");

BL4.GetEnumTopLevelAssetPath = function(Enum)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetEnumTopLevelAssetPath: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Enum at +0x0
 writeQword(_params + 0x0, Enum)
 UE.CallProcessEventEx(Enum, "GetEnumTopLevelAssetPath", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetEnumTopLevelAssetPath");

BL4.GetFrameCount = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetFrameCount: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetFrameCount", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetFrameCount");

BL4.GetGameBundleId = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetGameBundleId: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetGameBundleId", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetGameBundleId");

BL4.GetGameName = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetGameName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetGameName", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetGameName");

BL4.GetGamepadButtonGlyph = function(OwnerAddress, ButtonKey, ControllerIndex)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetGamepadButtonGlyph: Failed To Allocate The Params");return;end;
 ControllerIndex = ControllerIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ButtonKey at +0x0, ControllerIndex at +0x10
 writeQword(_params + 0x0, ButtonKey)
 writeInteger(_params + 0x10, ControllerIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetGamepadButtonGlyph", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetGamepadButtonGlyph");

BL4.GetGamepadControllerName = function(OwnerAddress, ControllerId)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetGamepadControllerName: Failed To Allocate The Params");return;end;
 ControllerId = ControllerId or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ControllerId at +0x0
 writeInteger(_params + 0x0, ControllerId)
 UE.CallProcessEventEx(OwnerAddress, "GetGamepadControllerName", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetGamepadControllerName");

BL4.GetGameTimeInSeconds = function(WorldContextObject_Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetGameTimeInSeconds: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetGameTimeInSeconds", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetGameTimeInSeconds");

BL4.GetLocalCurrencyCode = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLocalCurrencyCode: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetLocalCurrencyCode", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLocalCurrencyCode");

BL4.GetLocalCurrencySymbol = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLocalCurrencySymbol: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetLocalCurrencySymbol", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLocalCurrencySymbol");

BL4.GetMinYResolutionFor3DView = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMinYResolutionFor3DView: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetMinYResolutionFor3DView", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMinYResolutionFor3DView");

BL4.GetMinYResolutionForUI = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMinYResolutionForUI: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetMinYResolutionForUI", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMinYResolutionForUI");

BL4.GetObjectFromPrimaryAssetId = function(OwnerAddress, PrimaryAssetId)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetObjectFromPrimaryAssetId: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PrimaryAssetId at +0x0
 writeQword(_params + 0x0, PrimaryAssetId)
 UE.CallProcessEventEx(OwnerAddress, "GetObjectFromPrimaryAssetId", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetObjectFromPrimaryAssetId");

BL4.GetObjectName = function(Object)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetObjectName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0
 writeQword(_params + 0x0, Object)
 UE.CallProcessEventEx(Object, "GetObjectName", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetObjectName");

BL4.GetOuterObject = function(Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetOuterObject: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0
 writeQword(_params + 0x0, Object)
 UE.CallProcessEventEx(Object, "GetOuterObject", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetOuterObject");

BL4.GetPathName = function(Object)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPathName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0
 writeQword(_params + 0x0, Object)
 UE.CallProcessEventEx(Object, "GetPathName", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPathName");

BL4.GetPlatformUserDir = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPlatformUserDir: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetPlatformUserDir", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPlatformUserDir");

BL4.GetPlatformUserName = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPlatformUserName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetPlatformUserName", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPlatformUserName");

BL4.GetPreferredLanguages = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPreferredLanguages: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetPreferredLanguages", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPreferredLanguages");

BL4.GetPrimaryAssetIdFromClass = function(Class)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPrimaryAssetIdFromClass: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Class at +0x0
 writeQword(_params + 0x0, Class)
 UE.CallProcessEventEx(Class, "GetPrimaryAssetIdFromClass", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPrimaryAssetIdFromClass");

BL4.GetPrimaryAssetIdFromObject = function(Object)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPrimaryAssetIdFromObject: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0
 writeQword(_params + 0x0, Object)
 UE.CallProcessEventEx(Object, "GetPrimaryAssetIdFromObject", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPrimaryAssetIdFromObject");

BL4.GetPrimaryAssetIdFromSoftClassReference = function(OwnerAddress, SoftClassReference)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPrimaryAssetIdFromSoftClassReference: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SoftClassReference at +0x0
 writeQword(_params + 0x0, SoftClassReference)
 UE.CallProcessEventEx(OwnerAddress, "GetPrimaryAssetIdFromSoftClassReference", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPrimaryAssetIdFromSoftClassReference");

BL4.GetPrimaryAssetIdFromSoftObjectReference = function(SoftObjectReference_Object)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPrimaryAssetIdFromSoftObjectReference: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SoftObjectReference at +0x0
 writeQword(_params + 0x0, SoftObjectReference_Object)
 UE.CallProcessEventEx(SoftObjectReference_Object, "GetPrimaryAssetIdFromSoftObjectReference", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPrimaryAssetIdFromSoftObjectReference");

BL4.GetPrimaryAssetIdList = function(OwnerAddress, PrimaryAssetType, OutPrimaryAssetIdList)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPrimaryAssetIdList: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PrimaryAssetType at +0x0, OutPrimaryAssetIdList at +0x8
 writeQword(_params + 0x0, PrimaryAssetType)
 writeQword(_params + 0x8, OutPrimaryAssetIdList)
 UE.CallProcessEventEx(OwnerAddress, "GetPrimaryAssetIdList", _params);
 deAlloc(_params);
end
FNR("BL4.GetPrimaryAssetIdList");

BL4.GetPrimaryAssetsWithBundleState = function(OwnerAddress, RequiredBundles, ExcludedBundles, ValidTypes, bForceCurrentState, OutPrimaryAssetIdList)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPrimaryAssetsWithBundleState: Failed To Allocate The Params");return;end;
 bForceCurrentState = bForceCurrentState or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: RequiredBundles at +0x0, ExcludedBundles at +0x10, ValidTypes at +0x20, bForceCurrentState at +0x30, OutPrimaryAssetIdList at +0x38
 writeQword(_params + 0x0, RequiredBundles)
 writeQword(_params + 0x10, ExcludedBundles)
 writeQword(_params + 0x20, ValidTypes)
 writeByte(_params + 0x30, bForceCurrentState)
 writeQword(_params + 0x38, OutPrimaryAssetIdList)
 UE.CallProcessEventEx(OwnerAddress, "GetPrimaryAssetsWithBundleState", _params);
 deAlloc(_params);
end
FNR("BL4.GetPrimaryAssetsWithBundleState");

BL4.GetProjectContentDirectory = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetProjectContentDirectory: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetProjectContentDirectory", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetProjectContentDirectory");

BL4.GetProjectDirectory = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetProjectDirectory: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetProjectDirectory", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetProjectDirectory");

BL4.GetProjectSavedDirectory = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetProjectSavedDirectory: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetProjectSavedDirectory", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetProjectSavedDirectory");

BL4.GetRenderingDetailMode = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRenderingDetailMode: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetRenderingDetailMode", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRenderingDetailMode");

BL4.GetRenderingMaterialQualityLevel = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRenderingMaterialQualityLevel: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetRenderingMaterialQualityLevel", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRenderingMaterialQualityLevel");

BL4.GetSoftClassPath = function(Class)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSoftClassPath: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Class at +0x0
 writeQword(_params + 0x0, Class)
 UE.CallProcessEventEx(Class, "GetSoftClassPath", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSoftClassPath");

BL4.GetSoftClassReferenceFromPrimaryAssetId = function(OwnerAddress, PrimaryAssetId)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSoftClassReferenceFromPrimaryAssetId: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PrimaryAssetId at +0x0
 writeQword(_params + 0x0, PrimaryAssetId)
 UE.CallProcessEventEx(OwnerAddress, "GetSoftClassReferenceFromPrimaryAssetId", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSoftClassReferenceFromPrimaryAssetId");

BL4.GetSoftClassTopLevelAssetPath = function(OwnerAddress, SoftClassReference)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSoftClassTopLevelAssetPath: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SoftClassReference at +0x0
 writeQword(_params + 0x0, SoftClassReference)
 UE.CallProcessEventEx(OwnerAddress, "GetSoftClassTopLevelAssetPath", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSoftClassTopLevelAssetPath");

BL4.GetSoftObjectPath = function(Object)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSoftObjectPath: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0
 writeQword(_params + 0x0, Object)
 UE.CallProcessEventEx(Object, "GetSoftObjectPath", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSoftObjectPath");

BL4.GetSoftObjectReferenceFromPrimaryAssetId = function(OwnerAddress, PrimaryAssetId)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSoftObjectReferenceFromPrimaryAssetId: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PrimaryAssetId at +0x0
 writeQword(_params + 0x0, PrimaryAssetId)
 UE.CallProcessEventEx(OwnerAddress, "GetSoftObjectReferenceFromPrimaryAssetId", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSoftObjectReferenceFromPrimaryAssetId");

BL4.GetStructTopLevelAssetPath = function(Struct_ScriptStruct)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetStructTopLevelAssetPath: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Struct at +0x0
 writeQword(_params + 0x0, Struct_ScriptStruct)
 UE.CallProcessEventEx(Struct_ScriptStruct, "GetStructTopLevelAssetPath", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetStructTopLevelAssetPath");

BL4.GetSupportedFullscreenResolutions = function(OwnerAddress, Resolutions)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSupportedFullscreenResolutions: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Resolutions at +0x0
 writeQword(_params + 0x0, Resolutions)
 UE.CallProcessEventEx(OwnerAddress, "GetSupportedFullscreenResolutions", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSupportedFullscreenResolutions");

BL4.GetSystemPath = function(Object)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSystemPath: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0
 writeQword(_params + 0x0, Object)
 UE.CallProcessEventEx(Object, "GetSystemPath", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSystemPath");

BL4.GetUniqueDeviceId = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetUniqueDeviceId: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetUniqueDeviceId", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetUniqueDeviceId");

BL4.GetVolumeButtonsHandledBySystem = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVolumeButtonsHandledBySystem: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetVolumeButtonsHandledBySystem", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVolumeButtonsHandledBySystem");

BL4.HasMultipleLocalPlayers = function(WorldContextObject_Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.HasMultipleLocalPlayers: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "HasMultipleLocalPlayers", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.HasMultipleLocalPlayers");

BL4.IsControllerAssignedToGamepad = function(OwnerAddress, ControllerId)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsControllerAssignedToGamepad: Failed To Allocate The Params");return;end;
 ControllerId = ControllerId or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: ControllerId at +0x0
 writeInteger(_params + 0x0, ControllerId)
 UE.CallProcessEventEx(OwnerAddress, "IsControllerAssignedToGamepad", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsControllerAssignedToGamepad");

BL4.IsDedicatedServer = function(WorldContextObject_Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsDedicatedServer: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "IsDedicatedServer", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsDedicatedServer");

BL4.IsInterstitialAdAvailable = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsInterstitialAdAvailable: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsInterstitialAdAvailable", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsInterstitialAdAvailable");

BL4.IsInterstitialAdRequested = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsInterstitialAdRequested: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsInterstitialAdRequested", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsInterstitialAdRequested");

BL4.IsLoggedIn = function(SpecificPlayer_PlayerController)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsLoggedIn: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SpecificPlayer at +0x0
 writeQword(_params + 0x0, SpecificPlayer_PlayerController)
 UE.CallProcessEventEx(SpecificPlayer_PlayerController, "IsLoggedIn", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsLoggedIn");

BL4.IsObjectOfSoftClass = function(Object, SoftClass)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsObjectOfSoftClass: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, SoftClass at +0x8
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, SoftClass)
 UE.CallProcessEventEx(Object, "IsObjectOfSoftClass", _params);
 local RET=readByte(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsObjectOfSoftClass");

BL4.IsPackagedForDistribution = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsPackagedForDistribution: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsPackagedForDistribution", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsPackagedForDistribution");

BL4.IsScreensaverEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsScreensaverEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsScreensaverEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsScreensaverEnabled");

BL4.IsServer = function(WorldContextObject_Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsServer: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "IsServer", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsServer");

BL4.IsSplitScreen = function(WorldContextObject_Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsSplitScreen: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "IsSplitScreen", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsSplitScreen");

BL4.IsStandalone = function(WorldContextObject_Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsStandalone: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0
 writeQword(_params + 0x0, WorldContextObject_Object)
 UE.CallProcessEventEx(WorldContextObject_Object, "IsStandalone", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsStandalone");

BL4.IsUnattended = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsUnattended: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsUnattended", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsUnattended");

BL4.IsValid = function(Object)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsValid: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0
 writeQword(_params + 0x0, Object)
 UE.CallProcessEventEx(Object, "IsValid", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsValid");

BL4.IsValidClass = function(Class)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsValidClass: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Class at +0x0
 writeQword(_params + 0x0, Class)
 UE.CallProcessEventEx(Class, "IsValidClass", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsValidClass");

BL4.IsValidGameDataHandle = function(OwnerAddress, Handle)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsValidGameDataHandle: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Handle at +0x0
 writeQword(_params + 0x0, Handle)
 UE.CallProcessEventEx(OwnerAddress, "IsValidGameDataHandle", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsValidGameDataHandle");

BL4.IsValidGbxDefPtr = function(OwnerAddress, Value)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsValidGbxDefPtr: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeQword(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "IsValidGbxDefPtr", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsValidGbxDefPtr");

BL4.IsValidInterface = function(OwnerAddress, Interface)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsValidInterface: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Interface at +0x0
 writeQword(_params + 0x0, Interface)
 UE.CallProcessEventEx(OwnerAddress, "IsValidInterface", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsValidInterface");

BL4.IsValidPrimaryAssetId = function(OwnerAddress, PrimaryAssetId)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsValidPrimaryAssetId: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PrimaryAssetId at +0x0
 writeQword(_params + 0x0, PrimaryAssetId)
 UE.CallProcessEventEx(OwnerAddress, "IsValidPrimaryAssetId", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsValidPrimaryAssetId");

BL4.IsValidPrimaryAssetType = function(OwnerAddress, PrimaryAssetType)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsValidPrimaryAssetType: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PrimaryAssetType at +0x0
 writeQword(_params + 0x0, PrimaryAssetType)
 UE.CallProcessEventEx(OwnerAddress, "IsValidPrimaryAssetType", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsValidPrimaryAssetType");

BL4.IsValidSoftClassReference = function(OwnerAddress, SoftClassReference)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsValidSoftClassReference: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SoftClassReference at +0x0
 writeQword(_params + 0x0, SoftClassReference)
 UE.CallProcessEventEx(OwnerAddress, "IsValidSoftClassReference", _params);
 local RET=readByte(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsValidSoftClassReference");

BL4.IsValidSoftObjectReference = function(SoftObjectReference_Object)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsValidSoftObjectReference: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SoftObjectReference at +0x0
 writeQword(_params + 0x0, SoftObjectReference_Object)
 UE.CallProcessEventEx(SoftObjectReference_Object, "IsValidSoftObjectReference", _params);
 local RET=readByte(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsValidSoftObjectReference");

BL4.K2_ClearAndInvalidateTimerHandle = function(WorldContextObject_Object, Handle)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_ClearAndInvalidateTimerHandle: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Handle at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Handle)
 UE.CallProcessEventEx(WorldContextObject_Object, "K2_ClearAndInvalidateTimerHandle", _params);
 deAlloc(_params);
end
FNR("BL4.K2_ClearAndInvalidateTimerHandle");

BL4.K2_ClearTimer = function(Object, FunctionName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_ClearTimer: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, FunctionName at +0x8
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, FunctionName)
 UE.CallProcessEventEx(Object, "K2_ClearTimer", _params);
 deAlloc(_params);
end
FNR("BL4.K2_ClearTimer");

BL4.K2_ClearTimerDelegate = function(OwnerAddress, Delegate)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_ClearTimerDelegate: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Delegate at +0x0
 writeQword(_params + 0x0, Delegate)
 UE.CallProcessEventEx(OwnerAddress, "K2_ClearTimerDelegate", _params);
 deAlloc(_params);
end
FNR("BL4.K2_ClearTimerDelegate");

BL4.K2_ClearTimerHandle = function(WorldContextObject_Object, Handle)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_ClearTimerHandle: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Handle at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Handle)
 UE.CallProcessEventEx(WorldContextObject_Object, "K2_ClearTimerHandle", _params);
 deAlloc(_params);
end
FNR("BL4.K2_ClearTimerHandle");

BL4.K2_GetTimerElapsedTime = function(Object, FunctionName)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_GetTimerElapsedTime: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, FunctionName at +0x8
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, FunctionName)
 UE.CallProcessEventEx(Object, "K2_GetTimerElapsedTime", _params);
 local RET=readFloat(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_GetTimerElapsedTime");

BL4.K2_GetTimerElapsedTimeDelegate = function(OwnerAddress, Delegate)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_GetTimerElapsedTimeDelegate: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Delegate at +0x0
 writeQword(_params + 0x0, Delegate)
 UE.CallProcessEventEx(OwnerAddress, "K2_GetTimerElapsedTimeDelegate", _params);
 local RET=readFloat(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_GetTimerElapsedTimeDelegate");

BL4.K2_GetTimerElapsedTimeHandle = function(WorldContextObject_Object, Handle)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_GetTimerElapsedTimeHandle: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Handle at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Handle)
 UE.CallProcessEventEx(WorldContextObject_Object, "K2_GetTimerElapsedTimeHandle", _params);
 local RET=readFloat(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_GetTimerElapsedTimeHandle");

BL4.K2_GetTimerRemainingTime = function(Object, FunctionName)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_GetTimerRemainingTime: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, FunctionName at +0x8
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, FunctionName)
 UE.CallProcessEventEx(Object, "K2_GetTimerRemainingTime", _params);
 local RET=readFloat(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_GetTimerRemainingTime");

BL4.K2_GetTimerRemainingTimeDelegate = function(OwnerAddress, Delegate)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_GetTimerRemainingTimeDelegate: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Delegate at +0x0
 writeQword(_params + 0x0, Delegate)
 UE.CallProcessEventEx(OwnerAddress, "K2_GetTimerRemainingTimeDelegate", _params);
 local RET=readFloat(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_GetTimerRemainingTimeDelegate");

BL4.K2_GetTimerRemainingTimeHandle = function(WorldContextObject_Object, Handle)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_GetTimerRemainingTimeHandle: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Handle at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Handle)
 UE.CallProcessEventEx(WorldContextObject_Object, "K2_GetTimerRemainingTimeHandle", _params);
 local RET=readFloat(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_GetTimerRemainingTimeHandle");

BL4.K2_InvalidateTimerHandle = function(OwnerAddress, Handle)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_InvalidateTimerHandle: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Handle at +0x0
 writeQword(_params + 0x0, Handle)
 UE.CallProcessEventEx(OwnerAddress, "K2_InvalidateTimerHandle", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_InvalidateTimerHandle");

BL4.K2_IsTimerActive = function(Object, FunctionName)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_IsTimerActive: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, FunctionName at +0x8
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, FunctionName)
 UE.CallProcessEventEx(Object, "K2_IsTimerActive", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_IsTimerActive");

BL4.K2_IsTimerActiveDelegate = function(OwnerAddress, Delegate)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_IsTimerActiveDelegate: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Delegate at +0x0
 writeQword(_params + 0x0, Delegate)
 UE.CallProcessEventEx(OwnerAddress, "K2_IsTimerActiveDelegate", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_IsTimerActiveDelegate");

BL4.K2_IsTimerActiveHandle = function(WorldContextObject_Object, Handle)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_IsTimerActiveHandle: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Handle at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Handle)
 UE.CallProcessEventEx(WorldContextObject_Object, "K2_IsTimerActiveHandle", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_IsTimerActiveHandle");

BL4.K2_IsTimerPaused = function(Object, FunctionName)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_IsTimerPaused: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, FunctionName at +0x8
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, FunctionName)
 UE.CallProcessEventEx(Object, "K2_IsTimerPaused", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_IsTimerPaused");

BL4.K2_IsTimerPausedDelegate = function(OwnerAddress, Delegate)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_IsTimerPausedDelegate: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Delegate at +0x0
 writeQword(_params + 0x0, Delegate)
 UE.CallProcessEventEx(OwnerAddress, "K2_IsTimerPausedDelegate", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_IsTimerPausedDelegate");

BL4.K2_IsTimerPausedHandle = function(WorldContextObject_Object, Handle)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_IsTimerPausedHandle: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Handle at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Handle)
 UE.CallProcessEventEx(WorldContextObject_Object, "K2_IsTimerPausedHandle", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_IsTimerPausedHandle");

BL4.K2_IsValidTimerHandle = function(OwnerAddress, Handle)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_IsValidTimerHandle: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Handle at +0x0
 writeQword(_params + 0x0, Handle)
 UE.CallProcessEventEx(OwnerAddress, "K2_IsValidTimerHandle", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_IsValidTimerHandle");

BL4.K2_PauseTimer = function(Object, FunctionName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_PauseTimer: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, FunctionName at +0x8
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, FunctionName)
 UE.CallProcessEventEx(Object, "K2_PauseTimer", _params);
 deAlloc(_params);
end
FNR("BL4.K2_PauseTimer");

BL4.K2_PauseTimerDelegate = function(OwnerAddress, Delegate)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_PauseTimerDelegate: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Delegate at +0x0
 writeQword(_params + 0x0, Delegate)
 UE.CallProcessEventEx(OwnerAddress, "K2_PauseTimerDelegate", _params);
 deAlloc(_params);
end
FNR("BL4.K2_PauseTimerDelegate");

BL4.K2_PauseTimerHandle = function(WorldContextObject_Object, Handle)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_PauseTimerHandle: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Handle at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Handle)
 UE.CallProcessEventEx(WorldContextObject_Object, "K2_PauseTimerHandle", _params);
 deAlloc(_params);
end
FNR("BL4.K2_PauseTimerHandle");

BL4.K2_SetTimer = function(Object, FunctionName, time, bLooping, bMaxOncePerFrame, InitialStartDelay, InitialStartDelayVariance)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_SetTimer: Failed To Allocate The Params");return;end;
 time = time or 0
 bLooping = bLooping or false
 bMaxOncePerFrame = bMaxOncePerFrame or false
 InitialStartDelay = InitialStartDelay or 0
 InitialStartDelayVariance = InitialStartDelayVariance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, FunctionName at +0x8, time at +0x18, bLooping at +0x1C, bMaxOncePerFrame at +0x1D, InitialStartDelay at +0x20, InitialStartDelayVariance at +0x24
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, FunctionName)
 writeFloat(_params + 0x18, time)
 writeByte(_params + 0x1C, bLooping)
 writeByte(_params + 0x1D, bMaxOncePerFrame)
 writeFloat(_params + 0x20, InitialStartDelay)
 writeFloat(_params + 0x24, InitialStartDelayVariance)
 UE.CallProcessEventEx(Object, "K2_SetTimer", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_SetTimer");

BL4.K2_SetTimerDelegate = function(OwnerAddress, Delegate, time, bLooping, bMaxOncePerFrame, InitialStartDelay, InitialStartDelayVariance)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_SetTimerDelegate: Failed To Allocate The Params");return;end;
 time = time or 0
 bLooping = bLooping or false
 bMaxOncePerFrame = bMaxOncePerFrame or false
 InitialStartDelay = InitialStartDelay or 0
 InitialStartDelayVariance = InitialStartDelayVariance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Delegate at +0x0, time at +0x10, bLooping at +0x14, bMaxOncePerFrame at +0x15, InitialStartDelay at +0x18, InitialStartDelayVariance at +0x1C
 writeQword(_params + 0x0, Delegate)
 writeFloat(_params + 0x10, time)
 writeByte(_params + 0x14, bLooping)
 writeByte(_params + 0x15, bMaxOncePerFrame)
 writeFloat(_params + 0x18, InitialStartDelay)
 writeFloat(_params + 0x1C, InitialStartDelayVariance)
 UE.CallProcessEventEx(OwnerAddress, "K2_SetTimerDelegate", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_SetTimerDelegate");

BL4.K2_SetTimerForNextTick = function(Object, FunctionName)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_SetTimerForNextTick: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, FunctionName at +0x8
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, FunctionName)
 UE.CallProcessEventEx(Object, "K2_SetTimerForNextTick", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_SetTimerForNextTick");

BL4.K2_SetTimerForNextTickDelegate = function(OwnerAddress, Delegate)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_SetTimerForNextTickDelegate: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Delegate at +0x0
 writeQword(_params + 0x0, Delegate)
 UE.CallProcessEventEx(OwnerAddress, "K2_SetTimerForNextTickDelegate", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_SetTimerForNextTickDelegate");

BL4.K2_TimerExists = function(Object, FunctionName)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_TimerExists: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, FunctionName at +0x8
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, FunctionName)
 UE.CallProcessEventEx(Object, "K2_TimerExists", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_TimerExists");

BL4.K2_TimerExistsDelegate = function(OwnerAddress, Delegate)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_TimerExistsDelegate: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Delegate at +0x0
 writeQword(_params + 0x0, Delegate)
 UE.CallProcessEventEx(OwnerAddress, "K2_TimerExistsDelegate", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_TimerExistsDelegate");

BL4.K2_TimerExistsHandle = function(WorldContextObject_Object, Handle)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_TimerExistsHandle: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Handle at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Handle)
 UE.CallProcessEventEx(WorldContextObject_Object, "K2_TimerExistsHandle", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_TimerExistsHandle");

BL4.K2_UnPauseTimer = function(Object, FunctionName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_UnPauseTimer: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, FunctionName at +0x8
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, FunctionName)
 UE.CallProcessEventEx(Object, "K2_UnPauseTimer", _params);
 deAlloc(_params);
end
FNR("BL4.K2_UnPauseTimer");

BL4.K2_UnPauseTimerDelegate = function(OwnerAddress, Delegate)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_UnPauseTimerDelegate: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Delegate at +0x0
 writeQword(_params + 0x0, Delegate)
 UE.CallProcessEventEx(OwnerAddress, "K2_UnPauseTimerDelegate", _params);
 deAlloc(_params);
end
FNR("BL4.K2_UnPauseTimerDelegate");

BL4.K2_UnPauseTimerHandle = function(WorldContextObject_Object, Handle)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_UnPauseTimerHandle: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Handle at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Handle)
 UE.CallProcessEventEx(WorldContextObject_Object, "K2_UnPauseTimerHandle", _params);
 deAlloc(_params);
end
FNR("BL4.K2_UnPauseTimerHandle");

BL4.LaunchExternalUrl = function(OwnerAddress, InDomainStrings, URL)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LaunchExternalUrl: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InDomainStrings at +0x0, URL at +0x10
 writeQword(_params + 0x0, InDomainStrings)
 writeQword(_params + 0x10, URL)
 UE.CallProcessEventEx(OwnerAddress, "LaunchExternalUrl", _params);
 deAlloc(_params);
end
FNR("BL4.LaunchExternalUrl");

BL4.LaunchURL = function(OwnerAddress, URL)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LaunchURL: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: URL at +0x0
 writeQword(_params + 0x0, URL)
 UE.CallProcessEventEx(OwnerAddress, "LaunchURL", _params);
 deAlloc(_params);
end
FNR("BL4.LaunchURL");

BL4.LineTraceMulti = function(WorldContextObject_Object, Start, End, TraceChannel, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHits, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LineTraceMulti: Failed To Allocate The Params");return;end;
 Start = Start or {X=0,Y=0,Z=0}
 End = End or {X=0,Y=0,Z=0}
 TraceChannel = TraceChannel or 0
 bTraceComplex = bTraceComplex or false
 DrawDebugType = DrawDebugType or 0
 bIgnoreSelf = bIgnoreSelf or false
 TraceColor = TraceColor or {R=0,G=0,B=0,A=0}
 TraceHitColor = TraceHitColor or {R=0,G=0,B=0,A=0}
 DrawTime = DrawTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Start at +0x8, End at +0x20, TraceChannel at +0x38, bTraceComplex at +0x39, ActorsToIgnore at +0x40, DrawDebugType at +0x50, OutHits at +0x58, bIgnoreSelf at +0x68, TraceColor at +0x6C, TraceHitColor at +0x7C, DrawTime at +0x8C
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Start and Start.X) or 0)
 writeDouble(_params + 0x10, (Start and Start.Y) or 0)
 writeDouble(_params + 0x18, (Start and Start.Z) or 0)
 writeDouble(_params + 0x20, (End and End.X) or 0)
 writeDouble(_params + 0x28, (End and End.Y) or 0)
 writeDouble(_params + 0x30, (End and End.Z) or 0)
 writeByte(_params + 0x38, TraceChannel)
 writeByte(_params + 0x39, bTraceComplex)
 writeQword(_params + 0x40, ActorsToIgnore)
 writeByte(_params + 0x50, DrawDebugType)
 writeQword(_params + 0x58, OutHits)
 writeByte(_params + 0x68, bIgnoreSelf)
 writeFloat(_params + 0x6C, (TraceColor and TraceColor.R) or 0)
 writeFloat(_params + 0x70, (TraceColor and TraceColor.G) or 0)
 writeFloat(_params + 0x74, (TraceColor and TraceColor.B) or 0)
 writeFloat(_params + 0x78, (TraceColor and TraceColor.A) or 0)
 writeFloat(_params + 0x7C, (TraceHitColor and TraceHitColor.R) or 0)
 writeFloat(_params + 0x80, (TraceHitColor and TraceHitColor.G) or 0)
 writeFloat(_params + 0x84, (TraceHitColor and TraceHitColor.B) or 0)
 writeFloat(_params + 0x88, (TraceHitColor and TraceHitColor.A) or 0)
 writeFloat(_params + 0x8C, DrawTime)
 UE.CallProcessEventEx(WorldContextObject_Object, "LineTraceMulti", _params);
 local RET=readByte(_params + 0x90);
 deAlloc(_params);
 return RET;
end
FNR("BL4.LineTraceMulti");

BL4.LineTraceMultiByProfile = function(WorldContextObject_Object, Start, End, ProfileName, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHits, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime)
 local _paramsSize = 0xA0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LineTraceMultiByProfile: Failed To Allocate The Params");return;end;
 Start = Start or {X=0,Y=0,Z=0}
 End = End or {X=0,Y=0,Z=0}
 bTraceComplex = bTraceComplex or false
 DrawDebugType = DrawDebugType or 0
 bIgnoreSelf = bIgnoreSelf or false
 TraceColor = TraceColor or {R=0,G=0,B=0,A=0}
 TraceHitColor = TraceHitColor or {R=0,G=0,B=0,A=0}
 DrawTime = DrawTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Start at +0x8, End at +0x20, ProfileName at +0x38, bTraceComplex at +0x40, ActorsToIgnore at +0x48, DrawDebugType at +0x58, OutHits at +0x60, bIgnoreSelf at +0x70, TraceColor at +0x74, TraceHitColor at +0x84, DrawTime at +0x94
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Start and Start.X) or 0)
 writeDouble(_params + 0x10, (Start and Start.Y) or 0)
 writeDouble(_params + 0x18, (Start and Start.Z) or 0)
 writeDouble(_params + 0x20, (End and End.X) or 0)
 writeDouble(_params + 0x28, (End and End.Y) or 0)
 writeDouble(_params + 0x30, (End and End.Z) or 0)
 writeQword(_params + 0x38, ProfileName)
 writeByte(_params + 0x40, bTraceComplex)
 writeQword(_params + 0x48, ActorsToIgnore)
 writeByte(_params + 0x58, DrawDebugType)
 writeQword(_params + 0x60, OutHits)
 writeByte(_params + 0x70, bIgnoreSelf)
 writeFloat(_params + 0x74, (TraceColor and TraceColor.R) or 0)
 writeFloat(_params + 0x78, (TraceColor and TraceColor.G) or 0)
 writeFloat(_params + 0x7C, (TraceColor and TraceColor.B) or 0)
 writeFloat(_params + 0x80, (TraceColor and TraceColor.A) or 0)
 writeFloat(_params + 0x84, (TraceHitColor and TraceHitColor.R) or 0)
 writeFloat(_params + 0x88, (TraceHitColor and TraceHitColor.G) or 0)
 writeFloat(_params + 0x8C, (TraceHitColor and TraceHitColor.B) or 0)
 writeFloat(_params + 0x90, (TraceHitColor and TraceHitColor.A) or 0)
 writeFloat(_params + 0x94, DrawTime)
 UE.CallProcessEventEx(WorldContextObject_Object, "LineTraceMultiByProfile", _params);
 local RET=readByte(_params + 0x98);
 deAlloc(_params);
 return RET;
end
FNR("BL4.LineTraceMultiByProfile");

BL4.LineTraceMultiForObjects = function(WorldContextObject_Object, Start, End, ObjectTypes, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHits, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime)
 local _paramsSize = 0xA8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LineTraceMultiForObjects: Failed To Allocate The Params");return;end;
 Start = Start or {X=0,Y=0,Z=0}
 End = End or {X=0,Y=0,Z=0}
 bTraceComplex = bTraceComplex or false
 DrawDebugType = DrawDebugType or 0
 bIgnoreSelf = bIgnoreSelf or false
 TraceColor = TraceColor or {R=0,G=0,B=0,A=0}
 TraceHitColor = TraceHitColor or {R=0,G=0,B=0,A=0}
 DrawTime = DrawTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Start at +0x8, End at +0x20, ObjectTypes at +0x38, bTraceComplex at +0x48, ActorsToIgnore at +0x50, DrawDebugType at +0x60, OutHits at +0x68, bIgnoreSelf at +0x78, TraceColor at +0x7C, TraceHitColor at +0x8C, DrawTime at +0x9C
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Start and Start.X) or 0)
 writeDouble(_params + 0x10, (Start and Start.Y) or 0)
 writeDouble(_params + 0x18, (Start and Start.Z) or 0)
 writeDouble(_params + 0x20, (End and End.X) or 0)
 writeDouble(_params + 0x28, (End and End.Y) or 0)
 writeDouble(_params + 0x30, (End and End.Z) or 0)
 writeQword(_params + 0x38, ObjectTypes)
 writeByte(_params + 0x48, bTraceComplex)
 writeQword(_params + 0x50, ActorsToIgnore)
 writeByte(_params + 0x60, DrawDebugType)
 writeQword(_params + 0x68, OutHits)
 writeByte(_params + 0x78, bIgnoreSelf)
 writeFloat(_params + 0x7C, (TraceColor and TraceColor.R) or 0)
 writeFloat(_params + 0x80, (TraceColor and TraceColor.G) or 0)
 writeFloat(_params + 0x84, (TraceColor and TraceColor.B) or 0)
 writeFloat(_params + 0x88, (TraceColor and TraceColor.A) or 0)
 writeFloat(_params + 0x8C, (TraceHitColor and TraceHitColor.R) or 0)
 writeFloat(_params + 0x90, (TraceHitColor and TraceHitColor.G) or 0)
 writeFloat(_params + 0x94, (TraceHitColor and TraceHitColor.B) or 0)
 writeFloat(_params + 0x98, (TraceHitColor and TraceHitColor.A) or 0)
 writeFloat(_params + 0x9C, DrawTime)
 UE.CallProcessEventEx(WorldContextObject_Object, "LineTraceMultiForObjects", _params);
 local RET=readByte(_params + 0xA0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.LineTraceMultiForObjects");

BL4.LineTraceSingle = function(WorldContextObject_Object, Start, End, TraceChannel, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHit, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime)
 local _paramsSize = 0x188
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LineTraceSingle: Failed To Allocate The Params");return;end;
 Start = Start or {X=0,Y=0,Z=0}
 End = End or {X=0,Y=0,Z=0}
 TraceChannel = TraceChannel or 0
 bTraceComplex = bTraceComplex or false
 DrawDebugType = DrawDebugType or 0
 bIgnoreSelf = bIgnoreSelf or false
 TraceColor = TraceColor or {R=0,G=0,B=0,A=0}
 TraceHitColor = TraceHitColor or {R=0,G=0,B=0,A=0}
 DrawTime = DrawTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Start at +0x8, End at +0x20, TraceChannel at +0x38, bTraceComplex at +0x39, ActorsToIgnore at +0x40, DrawDebugType at +0x50, OutHit at +0x58, bIgnoreSelf at +0x158, TraceColor at +0x15C, TraceHitColor at +0x16C, DrawTime at +0x17C
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Start and Start.X) or 0)
 writeDouble(_params + 0x10, (Start and Start.Y) or 0)
 writeDouble(_params + 0x18, (Start and Start.Z) or 0)
 writeDouble(_params + 0x20, (End and End.X) or 0)
 writeDouble(_params + 0x28, (End and End.Y) or 0)
 writeDouble(_params + 0x30, (End and End.Z) or 0)
 writeByte(_params + 0x38, TraceChannel)
 writeByte(_params + 0x39, bTraceComplex)
 writeQword(_params + 0x40, ActorsToIgnore)
 writeByte(_params + 0x50, DrawDebugType)
 writeQword(_params + 0x58, OutHit)
 writeByte(_params + 0x158, bIgnoreSelf)
 writeFloat(_params + 0x15C, (TraceColor and TraceColor.R) or 0)
 writeFloat(_params + 0x160, (TraceColor and TraceColor.G) or 0)
 writeFloat(_params + 0x164, (TraceColor and TraceColor.B) or 0)
 writeFloat(_params + 0x168, (TraceColor and TraceColor.A) or 0)
 writeFloat(_params + 0x16C, (TraceHitColor and TraceHitColor.R) or 0)
 writeFloat(_params + 0x170, (TraceHitColor and TraceHitColor.G) or 0)
 writeFloat(_params + 0x174, (TraceHitColor and TraceHitColor.B) or 0)
 writeFloat(_params + 0x178, (TraceHitColor and TraceHitColor.A) or 0)
 writeFloat(_params + 0x17C, DrawTime)
 UE.CallProcessEventEx(WorldContextObject_Object, "LineTraceSingle", _params);
 local RET=readByte(_params + 0x180);
 deAlloc(_params);
 return RET;
end
FNR("BL4.LineTraceSingle");

BL4.LineTraceSingleByProfile = function(WorldContextObject_Object, Start, End, ProfileName, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHit, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime)
 local _paramsSize = 0x190
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LineTraceSingleByProfile: Failed To Allocate The Params");return;end;
 Start = Start or {X=0,Y=0,Z=0}
 End = End or {X=0,Y=0,Z=0}
 bTraceComplex = bTraceComplex or false
 DrawDebugType = DrawDebugType or 0
 bIgnoreSelf = bIgnoreSelf or false
 TraceColor = TraceColor or {R=0,G=0,B=0,A=0}
 TraceHitColor = TraceHitColor or {R=0,G=0,B=0,A=0}
 DrawTime = DrawTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Start at +0x8, End at +0x20, ProfileName at +0x38, bTraceComplex at +0x40, ActorsToIgnore at +0x48, DrawDebugType at +0x58, OutHit at +0x60, bIgnoreSelf at +0x160, TraceColor at +0x164, TraceHitColor at +0x174, DrawTime at +0x184
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Start and Start.X) or 0)
 writeDouble(_params + 0x10, (Start and Start.Y) or 0)
 writeDouble(_params + 0x18, (Start and Start.Z) or 0)
 writeDouble(_params + 0x20, (End and End.X) or 0)
 writeDouble(_params + 0x28, (End and End.Y) or 0)
 writeDouble(_params + 0x30, (End and End.Z) or 0)
 writeQword(_params + 0x38, ProfileName)
 writeByte(_params + 0x40, bTraceComplex)
 writeQword(_params + 0x48, ActorsToIgnore)
 writeByte(_params + 0x58, DrawDebugType)
 writeQword(_params + 0x60, OutHit)
 writeByte(_params + 0x160, bIgnoreSelf)
 writeFloat(_params + 0x164, (TraceColor and TraceColor.R) or 0)
 writeFloat(_params + 0x168, (TraceColor and TraceColor.G) or 0)
 writeFloat(_params + 0x16C, (TraceColor and TraceColor.B) or 0)
 writeFloat(_params + 0x170, (TraceColor and TraceColor.A) or 0)
 writeFloat(_params + 0x174, (TraceHitColor and TraceHitColor.R) or 0)
 writeFloat(_params + 0x178, (TraceHitColor and TraceHitColor.G) or 0)
 writeFloat(_params + 0x17C, (TraceHitColor and TraceHitColor.B) or 0)
 writeFloat(_params + 0x180, (TraceHitColor and TraceHitColor.A) or 0)
 writeFloat(_params + 0x184, DrawTime)
 UE.CallProcessEventEx(WorldContextObject_Object, "LineTraceSingleByProfile", _params);
 local RET=readByte(_params + 0x188);
 deAlloc(_params);
 return RET;
end
FNR("BL4.LineTraceSingleByProfile");

BL4.LineTraceSingleForObjects = function(WorldContextObject_Object, Start, End, ObjectTypes, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHit, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime)
 local _paramsSize = 0x198
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LineTraceSingleForObjects: Failed To Allocate The Params");return;end;
 Start = Start or {X=0,Y=0,Z=0}
 End = End or {X=0,Y=0,Z=0}
 bTraceComplex = bTraceComplex or false
 DrawDebugType = DrawDebugType or 0
 bIgnoreSelf = bIgnoreSelf or false
 TraceColor = TraceColor or {R=0,G=0,B=0,A=0}
 TraceHitColor = TraceHitColor or {R=0,G=0,B=0,A=0}
 DrawTime = DrawTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Start at +0x8, End at +0x20, ObjectTypes at +0x38, bTraceComplex at +0x48, ActorsToIgnore at +0x50, DrawDebugType at +0x60, OutHit at +0x68, bIgnoreSelf at +0x168, TraceColor at +0x16C, TraceHitColor at +0x17C, DrawTime at +0x18C
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Start and Start.X) or 0)
 writeDouble(_params + 0x10, (Start and Start.Y) or 0)
 writeDouble(_params + 0x18, (Start and Start.Z) or 0)
 writeDouble(_params + 0x20, (End and End.X) or 0)
 writeDouble(_params + 0x28, (End and End.Y) or 0)
 writeDouble(_params + 0x30, (End and End.Z) or 0)
 writeQword(_params + 0x38, ObjectTypes)
 writeByte(_params + 0x48, bTraceComplex)
 writeQword(_params + 0x50, ActorsToIgnore)
 writeByte(_params + 0x60, DrawDebugType)
 writeQword(_params + 0x68, OutHit)
 writeByte(_params + 0x168, bIgnoreSelf)
 writeFloat(_params + 0x16C, (TraceColor and TraceColor.R) or 0)
 writeFloat(_params + 0x170, (TraceColor and TraceColor.G) or 0)
 writeFloat(_params + 0x174, (TraceColor and TraceColor.B) or 0)
 writeFloat(_params + 0x178, (TraceColor and TraceColor.A) or 0)
 writeFloat(_params + 0x17C, (TraceHitColor and TraceHitColor.R) or 0)
 writeFloat(_params + 0x180, (TraceHitColor and TraceHitColor.G) or 0)
 writeFloat(_params + 0x184, (TraceHitColor and TraceHitColor.B) or 0)
 writeFloat(_params + 0x188, (TraceHitColor and TraceHitColor.A) or 0)
 writeFloat(_params + 0x18C, DrawTime)
 UE.CallProcessEventEx(WorldContextObject_Object, "LineTraceSingleForObjects", _params);
 local RET=readByte(_params + 0x190);
 deAlloc(_params);
 return RET;
end
FNR("BL4.LineTraceSingleForObjects");

BL4.LoadAsset = function(WorldContextObject_Object, Asset_Object, OnLoaded, LatentInfo)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LoadAsset: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Asset at +0x8, OnLoaded at +0x30, LatentInfo at +0x40
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Asset_Object)
 writeQword(_params + 0x30, OnLoaded)
 writeQword(_params + 0x40, LatentInfo)
 UE.CallProcessEventEx(WorldContextObject_Object, "LoadAsset", _params);
 deAlloc(_params);
end
FNR("BL4.LoadAsset");

BL4.LoadAsset_Blocking = function(Asset_Object)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LoadAsset_Blocking: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Asset at +0x0
 writeQword(_params + 0x0, Asset_Object)
 UE.CallProcessEventEx(Asset_Object, "LoadAsset_Blocking", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.LoadAsset_Blocking");

BL4.LoadAssetClass = function(WorldContextObject_Object, AssetClass, OnLoaded, LatentInfo)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LoadAssetClass: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, AssetClass at +0x8, OnLoaded at +0x30, LatentInfo at +0x40
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, AssetClass)
 writeQword(_params + 0x30, OnLoaded)
 writeQword(_params + 0x40, LatentInfo)
 UE.CallProcessEventEx(WorldContextObject_Object, "LoadAssetClass", _params);
 deAlloc(_params);
end
FNR("BL4.LoadAssetClass");

BL4.LoadClassAsset_Blocking = function(OwnerAddress, AssetClass)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LoadClassAsset_Blocking: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AssetClass at +0x0
 writeQword(_params + 0x0, AssetClass)
 UE.CallProcessEventEx(OwnerAddress, "LoadClassAsset_Blocking", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.LoadClassAsset_Blocking");

BL4.LoadInterstitialAd = function(OwnerAddress, AdIdIndex)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LoadInterstitialAd: Failed To Allocate The Params");return;end;
 AdIdIndex = AdIdIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AdIdIndex at +0x0
 writeInteger(_params + 0x0, AdIdIndex)
 UE.CallProcessEventEx(OwnerAddress, "LoadInterstitialAd", _params);
 deAlloc(_params);
end
FNR("BL4.LoadInterstitialAd");

BL4.LogString = function(OwnerAddress, InString, bPrintToLog)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LogString: Failed To Allocate The Params");return;end;
 bPrintToLog = bPrintToLog or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InString at +0x0, bPrintToLog at +0x10
 writeQword(_params + 0x0, InString)
 writeByte(_params + 0x10, bPrintToLog)
 UE.CallProcessEventEx(OwnerAddress, "LogString", _params);
 deAlloc(_params);
end
FNR("BL4.LogString");

BL4.MakeARFilter = function(OwnerAddress, PackageNames, PackagePaths, SoftObjectPaths, ClassPaths, RecursiveClassPathsExclusionSet, ClassNames, RecursiveClassesExclusionSet, bRecursivePaths, bRecursiveClasses, bIncludeOnlyOnDiskAssets)
 local _paramsSize = 0x248
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeARFilter: Failed To Allocate The Params");return;end;
 bRecursivePaths = bRecursivePaths or false
 bRecursiveClasses = bRecursiveClasses or false
 bIncludeOnlyOnDiskAssets = bIncludeOnlyOnDiskAssets or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PackageNames at +0x0, PackagePaths at +0x10, SoftObjectPaths at +0x20, ClassPaths at +0x30, RecursiveClassPathsExclusionSet at +0x40, ClassNames at +0x90, RecursiveClassesExclusionSet at +0xA0, bRecursivePaths at +0xF0, bRecursiveClasses at +0xF1, bIncludeOnlyOnDiskAssets at +0xF2
 writeQword(_params + 0x0, PackageNames)
 writeQword(_params + 0x10, PackagePaths)
 writeQword(_params + 0x20, SoftObjectPaths)
 writeQword(_params + 0x30, ClassPaths)
 writeQword(_params + 0x40, RecursiveClassPathsExclusionSet)
 writeQword(_params + 0x90, ClassNames)
 writeQword(_params + 0xA0, RecursiveClassesExclusionSet)
 writeByte(_params + 0xF0, bRecursivePaths)
 writeByte(_params + 0xF1, bRecursiveClasses)
 writeByte(_params + 0xF2, bIncludeOnlyOnDiskAssets)
 UE.CallProcessEventEx(OwnerAddress, "MakeARFilter", _params);
 local RET=readQword(_params + 0xF8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeARFilter");

BL4.MakeLiteralBool = function(OwnerAddress, Value)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeLiteralBool: Failed To Allocate The Params");return;end;
 Value = Value or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeByte(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "MakeLiteralBool", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeLiteralBool");

BL4.MakeLiteralByte = function(OwnerAddress, Value)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeLiteralByte: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeByte(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "MakeLiteralByte", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeLiteralByte");

BL4.MakeLiteralDouble = function(OwnerAddress, Value)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeLiteralDouble: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeQword(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "MakeLiteralDouble", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeLiteralDouble");

BL4.MakeLiteralGameDataHandle = function(OwnerAddress, Value)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeLiteralGameDataHandle: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeQword(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "MakeLiteralGameDataHandle", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeLiteralGameDataHandle");

BL4.MakeLiteralGbxDefPtr = function(OwnerAddress, Value)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeLiteralGbxDefPtr: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeQword(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "MakeLiteralGbxDefPtr", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeLiteralGbxDefPtr");

BL4.MakeLiteralInt = function(OwnerAddress, Value)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeLiteralInt: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeInteger(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "MakeLiteralInt", _params);
 local RET=readInteger(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeLiteralInt");

BL4.MakeLiteralInt64 = function(OwnerAddress, Value)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeLiteralInt64: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeQword(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "MakeLiteralInt64", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeLiteralInt64");

BL4.MakeLiteralName = function(OwnerAddress, Value)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeLiteralName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeQword(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "MakeLiteralName", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeLiteralName");

BL4.MakeLiteralString = function(OwnerAddress, Value)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeLiteralString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeQword(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "MakeLiteralString", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeLiteralString");

BL4.MakeLiteralText = function(OwnerAddress, Value)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeLiteralText: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeQword(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "MakeLiteralText", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeLiteralText");

BL4.MakeSoftClassPath = function(OwnerAddress, PathString)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeSoftClassPath: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PathString at +0x0
 writeQword(_params + 0x0, PathString)
 UE.CallProcessEventEx(OwnerAddress, "MakeSoftClassPath", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeSoftClassPath");

BL4.MakeSoftObjectPath = function(OwnerAddress, PathString)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeSoftObjectPath: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PathString at +0x0
 writeQword(_params + 0x0, PathString)
 UE.CallProcessEventEx(OwnerAddress, "MakeSoftObjectPath", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeSoftObjectPath");

BL4.MakeTopLevelAssetPath = function(OwnerAddress, packagename, assetname)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeTopLevelAssetPath: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: packagename at +0x0, assetname at +0x10
 writeQword(_params + 0x0, packagename)
 writeQword(_params + 0x10, assetname)
 UE.CallProcessEventEx(OwnerAddress, "MakeTopLevelAssetPath", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeTopLevelAssetPath");

BL4.MoveComponentTo = function(Component_SceneComponent, TargetRelativeLocation, TargetRelativeRotation, bEaseOut, bEaseIn, OverTime, bForceShortestRotationPath, MoveAction, LatentInfo)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MoveComponentTo: Failed To Allocate The Params");return;end;
 TargetRelativeLocation = TargetRelativeLocation or {X=0,Y=0,Z=0}
 TargetRelativeRotation = TargetRelativeRotation or {Pitch=0,Yaw=0,Roll=0}
 bEaseOut = bEaseOut or false
 bEaseIn = bEaseIn or false
 OverTime = OverTime or 0
 bForceShortestRotationPath = bForceShortestRotationPath or false
 MoveAction = MoveAction or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Component at +0x0, TargetRelativeLocation at +0x8, TargetRelativeRotation at +0x20, bEaseOut at +0x38, bEaseIn at +0x39, OverTime at +0x3C, bForceShortestRotationPath at +0x40, MoveAction at +0x41, LatentInfo at +0x48
 writeQword(_params + 0x0, Component_SceneComponent)
 writeDouble(_params + 0x8, (TargetRelativeLocation and TargetRelativeLocation.X) or 0)
 writeDouble(_params + 0x10, (TargetRelativeLocation and TargetRelativeLocation.Y) or 0)
 writeDouble(_params + 0x18, (TargetRelativeLocation and TargetRelativeLocation.Z) or 0)
 writeDouble(_params + 0x20, (TargetRelativeRotation and TargetRelativeRotation.Pitch) or 0)
 writeDouble(_params + 0x28, (TargetRelativeRotation and TargetRelativeRotation.Yaw) or 0)
 writeDouble(_params + 0x30, (TargetRelativeRotation and TargetRelativeRotation.Roll) or 0)
 writeByte(_params + 0x38, bEaseOut)
 writeByte(_params + 0x39, bEaseIn)
 writeFloat(_params + 0x3C, OverTime)
 writeByte(_params + 0x40, bForceShortestRotationPath)
 writeByte(_params + 0x41, MoveAction)
 writeQword(_params + 0x48, LatentInfo)
 UE.CallProcessEventEx(Component_SceneComponent, "MoveComponentTo", _params);
 deAlloc(_params);
end
FNR("BL4.MoveComponentTo");

BL4.NormalizeFilename = function(OwnerAddress, InFilename)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NormalizeFilename: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InFilename at +0x0
 writeQword(_params + 0x0, InFilename)
 UE.CallProcessEventEx(OwnerAddress, "NormalizeFilename", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NormalizeFilename");

BL4.NotEqual_PrimaryAssetId = function(OwnerAddress, A, B)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_PrimaryAssetId: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x10
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x10, B)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_PrimaryAssetId", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_PrimaryAssetId");

BL4.NotEqual_PrimaryAssetType = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_PrimaryAssetType: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_PrimaryAssetType", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_PrimaryAssetType");

BL4.NotEqual_SoftClassReference = function(OwnerAddress, A, B)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_SoftClassReference: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x28
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x28, B)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_SoftClassReference", _params);
 local RET=readByte(_params + 0x50);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_SoftClassReference");

BL4.NotEqual_SoftObjectReference = function(A_Object, B_Object)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_SoftObjectReference: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x28
 writeQword(_params + 0x0, A_Object)
 writeQword(_params + 0x28, B_Object)
 UE.CallProcessEventEx(A_Object, "NotEqual_SoftObjectReference", _params);
 local RET=readByte(_params + 0x50);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_SoftObjectReference");

BL4.ParseCommandLine = function(OwnerAddress, InCmdLine, OutTokens, OutSwitches, OutParams)
 local _paramsSize = 0x80
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ParseCommandLine: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InCmdLine at +0x0, OutTokens at +0x10, OutSwitches at +0x20, OutParams at +0x30
 writeQword(_params + 0x0, InCmdLine)
 writeQword(_params + 0x10, OutTokens)
 writeQword(_params + 0x20, OutSwitches)
 writeQword(_params + 0x30, OutParams)
 UE.CallProcessEventEx(OwnerAddress, "ParseCommandLine", _params);
 deAlloc(_params);
end
FNR("BL4.ParseCommandLine");

BL4.ParseParam = function(OwnerAddress, InString, InParam)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ParseParam: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InString at +0x0, InParam at +0x10
 writeQword(_params + 0x0, InString)
 writeQword(_params + 0x10, InParam)
 UE.CallProcessEventEx(OwnerAddress, "ParseParam", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ParseParam");

BL4.ParseParamValue = function(OwnerAddress, InString, InParam, OutValue)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ParseParamValue: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InString at +0x0, InParam at +0x10, OutValue at +0x20
 writeQword(_params + 0x0, InString)
 writeQword(_params + 0x10, InParam)
 writeQword(_params + 0x20, OutValue)
 UE.CallProcessEventEx(OwnerAddress, "ParseParamValue", _params);
 local RET=readByte(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ParseParamValue");

BL4.PrintString = function(WorldContextObject_Object, InString, bPrintToScreen, bPrintToLog, TextColor, Duration, Key)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PrintString: Failed To Allocate The Params");return;end;
 bPrintToScreen = bPrintToScreen or false
 bPrintToLog = bPrintToLog or false
 TextColor = TextColor or {R=0,G=0,B=0,A=0}
 Duration = Duration or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, InString at +0x8, bPrintToScreen at +0x18, bPrintToLog at +0x19, TextColor at +0x1C, Duration at +0x2C, Key at +0x30
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, InString)
 writeByte(_params + 0x18, bPrintToScreen)
 writeByte(_params + 0x19, bPrintToLog)
 writeFloat(_params + 0x1C, (TextColor and TextColor.R) or 0)
 writeFloat(_params + 0x20, (TextColor and TextColor.G) or 0)
 writeFloat(_params + 0x24, (TextColor and TextColor.B) or 0)
 writeFloat(_params + 0x28, (TextColor and TextColor.A) or 0)
 writeFloat(_params + 0x2C, Duration)
 writeQword(_params + 0x30, Key)
 UE.CallProcessEventEx(WorldContextObject_Object, "PrintString", _params);
 deAlloc(_params);
end
FNR("BL4.PrintString");

BL4.PrintText = function(WorldContextObject_Object, InText, bPrintToScreen, bPrintToLog, TextColor, Duration, Key)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PrintText: Failed To Allocate The Params");return;end;
 bPrintToScreen = bPrintToScreen or false
 bPrintToLog = bPrintToLog or false
 TextColor = TextColor or {R=0,G=0,B=0,A=0}
 Duration = Duration or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, InText at +0x8, bPrintToScreen at +0x18, bPrintToLog at +0x19, TextColor at +0x1C, Duration at +0x2C, Key at +0x30
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, InText)
 writeByte(_params + 0x18, bPrintToScreen)
 writeByte(_params + 0x19, bPrintToLog)
 writeFloat(_params + 0x1C, (TextColor and TextColor.R) or 0)
 writeFloat(_params + 0x20, (TextColor and TextColor.G) or 0)
 writeFloat(_params + 0x24, (TextColor and TextColor.B) or 0)
 writeFloat(_params + 0x28, (TextColor and TextColor.A) or 0)
 writeFloat(_params + 0x2C, Duration)
 writeQword(_params + 0x30, Key)
 UE.CallProcessEventEx(WorldContextObject_Object, "PrintText", _params);
 deAlloc(_params);
end
FNR("BL4.PrintText");

BL4.PrintWarning = function(OwnerAddress, InString)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PrintWarning: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InString at +0x0
 writeQword(_params + 0x0, InString)
 UE.CallProcessEventEx(OwnerAddress, "PrintWarning", _params);
 deAlloc(_params);
end
FNR("BL4.PrintWarning");

BL4.QuitGame = function(WorldContextObject_Object, SpecificPlayer_PlayerController, QuitPreference, bIgnorePlatformRestrictions)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.QuitGame: Failed To Allocate The Params");return;end;
 QuitPreference = QuitPreference or 0
 bIgnorePlatformRestrictions = bIgnorePlatformRestrictions or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, SpecificPlayer at +0x8, QuitPreference at +0x10, bIgnorePlatformRestrictions at +0x11
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, SpecificPlayer_PlayerController)
 writeByte(_params + 0x10, QuitPreference)
 writeByte(_params + 0x11, bIgnorePlatformRestrictions)
 UE.CallProcessEventEx(WorldContextObject_Object, "QuitGame", _params);
 deAlloc(_params);
end
FNR("BL4.QuitGame");

BL4.ResetGamepadAssignmentToController = function(OwnerAddress, ControllerId)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ResetGamepadAssignmentToController: Failed To Allocate The Params");return;end;
 ControllerId = ControllerId or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: ControllerId at +0x0
 writeInteger(_params + 0x0, ControllerId)
 UE.CallProcessEventEx(OwnerAddress, "ResetGamepadAssignmentToController", _params);
 deAlloc(_params);
end
FNR("BL4.ResetGamepadAssignmentToController");

BL4.RetriggerableDelay = function(WorldContextObject_Object, Duration, LatentInfo)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RetriggerableDelay: Failed To Allocate The Params");return;end;
 Duration = Duration or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Duration at +0x8, LatentInfo at +0x10
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeFloat(_params + 0x8, Duration)
 writeQword(_params + 0x10, LatentInfo)
 UE.CallProcessEventEx(WorldContextObject_Object, "RetriggerableDelay", _params);
 deAlloc(_params);
end
FNR("BL4.RetriggerableDelay");

BL4.SetBoolPropertyByName = function(Object, PropertyName, Value)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBoolPropertyByName: Failed To Allocate The Params");return;end;
 Value = Value or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, PropertyName at +0x8, Value at +0x10
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, PropertyName)
 writeByte(_params + 0x10, Value)
 UE.CallProcessEventEx(Object, "SetBoolPropertyByName", _params);
 deAlloc(_params);
end
FNR("BL4.SetBoolPropertyByName");

BL4.SetBytePropertyByName = function(Object, PropertyName, Value)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBytePropertyByName: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, PropertyName at +0x8, Value at +0x10
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, PropertyName)
 writeByte(_params + 0x10, Value)
 UE.CallProcessEventEx(Object, "SetBytePropertyByName", _params);
 deAlloc(_params);
end
FNR("BL4.SetBytePropertyByName");

BL4.SetClassPropertyByName = function(Object, PropertyName, Value_Class)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetClassPropertyByName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, PropertyName at +0x8, Value at +0x10
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, PropertyName)
 writeQword(_params + 0x10, Value_Class)
 UE.CallProcessEventEx(Object, "SetClassPropertyByName", _params);
 deAlloc(_params);
end
FNR("BL4.SetClassPropertyByName");

BL4.SetCollisionProfileNameProperty = function(Object, PropertyName, Value)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCollisionProfileNameProperty: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, PropertyName at +0x8, Value at +0x10
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, PropertyName)
 writeQword(_params + 0x10, Value)
 UE.CallProcessEventEx(Object, "SetCollisionProfileNameProperty", _params);
 deAlloc(_params);
end
FNR("BL4.SetCollisionProfileNameProperty");

BL4.SetColorPropertyByName = function(Object, PropertyName, Value)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetColorPropertyByName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, PropertyName at +0x8, Value at +0x10
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, PropertyName)
 writeQword(_params + 0x10, Value)
 UE.CallProcessEventEx(Object, "SetColorPropertyByName", _params);
 deAlloc(_params);
end
FNR("BL4.SetColorPropertyByName");

BL4.SetDoublePropertyByName = function(Object, PropertyName, Value)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDoublePropertyByName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, PropertyName at +0x8, Value at +0x10
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, PropertyName)
 writeQword(_params + 0x10, Value)
 UE.CallProcessEventEx(Object, "SetDoublePropertyByName", _params);
 deAlloc(_params);
end
FNR("BL4.SetDoublePropertyByName");

BL4.SetFieldPathPropertyByName = function(Object, PropertyName, Value)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetFieldPathPropertyByName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, PropertyName at +0x8, Value at +0x10
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, PropertyName)
 writeQword(_params + 0x10, Value)
 UE.CallProcessEventEx(Object, "SetFieldPathPropertyByName", _params);
 deAlloc(_params);
end
FNR("BL4.SetFieldPathPropertyByName");

BL4.SetGameDataHandlePropertyByName = function(Object, PropertyName, Value)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetGameDataHandlePropertyByName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, PropertyName at +0x8, Value at +0x10
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, PropertyName)
 writeQword(_params + 0x10, Value)
 UE.CallProcessEventEx(Object, "SetGameDataHandlePropertyByName", _params);
 deAlloc(_params);
end
FNR("BL4.SetGameDataHandlePropertyByName");

BL4.SetGamepadsBlockDeviceFeedback = function(OwnerAddress, bBlock)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetGamepadsBlockDeviceFeedback: Failed To Allocate The Params");return;end;
 bBlock = bBlock or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bBlock at +0x0
 writeByte(_params + 0x0, bBlock)
 UE.CallProcessEventEx(OwnerAddress, "SetGamepadsBlockDeviceFeedback", _params);
 deAlloc(_params);
end
FNR("BL4.SetGamepadsBlockDeviceFeedback");

BL4.SetGbxDefPtrPropertyByName = function(Object, PropertyName, Value)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetGbxDefPtrPropertyByName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, PropertyName at +0x8, Value at +0x10
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, PropertyName)
 writeQword(_params + 0x10, Value)
 UE.CallProcessEventEx(Object, "SetGbxDefPtrPropertyByName", _params);
 deAlloc(_params);
end
FNR("BL4.SetGbxDefPtrPropertyByName");

BL4.SetInt64PropertyByName = function(Object, PropertyName, Value)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetInt64PropertyByName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, PropertyName at +0x8, Value at +0x10
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, PropertyName)
 writeQword(_params + 0x10, Value)
 UE.CallProcessEventEx(Object, "SetInt64PropertyByName", _params);
 deAlloc(_params);
end
FNR("BL4.SetInt64PropertyByName");

BL4.SetInterfacePropertyByName = function(Object, PropertyName, Value)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetInterfacePropertyByName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, PropertyName at +0x8, Value at +0x10
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, PropertyName)
 writeQword(_params + 0x10, Value)
 UE.CallProcessEventEx(Object, "SetInterfacePropertyByName", _params);
 deAlloc(_params);
end
FNR("BL4.SetInterfacePropertyByName");

BL4.SetIntPropertyByName = function(Object, PropertyName, Value)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetIntPropertyByName: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, PropertyName at +0x8, Value at +0x10
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, PropertyName)
 writeInteger(_params + 0x10, Value)
 UE.CallProcessEventEx(Object, "SetIntPropertyByName", _params);
 deAlloc(_params);
end
FNR("BL4.SetIntPropertyByName");

BL4.SetLinearColorPropertyByName = function(Object, PropertyName, Value)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLinearColorPropertyByName: Failed To Allocate The Params");return;end;
 Value = Value or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, PropertyName at +0x8, Value at +0x10
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, PropertyName)
 writeFloat(_params + 0x10, (Value and Value.R) or 0)
 writeFloat(_params + 0x14, (Value and Value.G) or 0)
 writeFloat(_params + 0x18, (Value and Value.B) or 0)
 writeFloat(_params + 0x1C, (Value and Value.A) or 0)
 UE.CallProcessEventEx(Object, "SetLinearColorPropertyByName", _params);
 deAlloc(_params);
end
FNR("BL4.SetLinearColorPropertyByName");

BL4.SetNamePropertyByName = function(Object, PropertyName, Value)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNamePropertyByName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, PropertyName at +0x8, Value at +0x10
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, PropertyName)
 writeQword(_params + 0x10, Value)
 UE.CallProcessEventEx(Object, "SetNamePropertyByName", _params);
 deAlloc(_params);
end
FNR("BL4.SetNamePropertyByName");

BL4.SetObjectPropertyByName = function(Object, PropertyName, Value_Object)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetObjectPropertyByName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, PropertyName at +0x8, Value at +0x10
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, PropertyName)
 writeQword(_params + 0x10, Value_Object)
 UE.CallProcessEventEx(Object, "SetObjectPropertyByName", _params);
 deAlloc(_params);
end
FNR("BL4.SetObjectPropertyByName");

BL4.SetRotatorPropertyByName = function(Object, PropertyName, Value)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRotatorPropertyByName: Failed To Allocate The Params");return;end;
 Value = Value or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, PropertyName at +0x8, Value at +0x10
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, PropertyName)
 writeDouble(_params + 0x10, (Value and Value.Pitch) or 0)
 writeDouble(_params + 0x18, (Value and Value.Yaw) or 0)
 writeDouble(_params + 0x20, (Value and Value.Roll) or 0)
 UE.CallProcessEventEx(Object, "SetRotatorPropertyByName", _params);
 deAlloc(_params);
end
FNR("BL4.SetRotatorPropertyByName");

BL4.SetSoftClassPropertyByName = function(Object, PropertyName, Value)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSoftClassPropertyByName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, PropertyName at +0x8, Value at +0x10
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, PropertyName)
 writeQword(_params + 0x10, Value)
 UE.CallProcessEventEx(Object, "SetSoftClassPropertyByName", _params);
 deAlloc(_params);
end
FNR("BL4.SetSoftClassPropertyByName");

BL4.SetSoftObjectPropertyByName = function(Object, PropertyName, Value_Object)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSoftObjectPropertyByName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, PropertyName at +0x8, Value at +0x10
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, PropertyName)
 writeQword(_params + 0x10, Value_Object)
 UE.CallProcessEventEx(Object, "SetSoftObjectPropertyByName", _params);
 deAlloc(_params);
end
FNR("BL4.SetSoftObjectPropertyByName");

BL4.SetStringPropertyByName = function(Object, PropertyName, Value)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetStringPropertyByName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, PropertyName at +0x8, Value at +0x10
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, PropertyName)
 writeQword(_params + 0x10, Value)
 UE.CallProcessEventEx(Object, "SetStringPropertyByName", _params);
 deAlloc(_params);
end
FNR("BL4.SetStringPropertyByName");

BL4.SetStructurePropertyByName = function(Object, PropertyName, Value)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetStructurePropertyByName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, PropertyName at +0x8, Value at +0x10
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, PropertyName)
 writeQword(_params + 0x10, Value)
 UE.CallProcessEventEx(Object, "SetStructurePropertyByName", _params);
 deAlloc(_params);
end
FNR("BL4.SetStructurePropertyByName");

BL4.SetSuppressViewportTransitionMessage = function(WorldContextObject_Object, bState)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSuppressViewportTransitionMessage: Failed To Allocate The Params");return;end;
 bState = bState or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, bState at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeByte(_params + 0x8, bState)
 UE.CallProcessEventEx(WorldContextObject_Object, "SetSuppressViewportTransitionMessage", _params);
 deAlloc(_params);
end
FNR("BL4.SetSuppressViewportTransitionMessage");

BL4.SetTextPropertyByName = function(Object, PropertyName, Value)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTextPropertyByName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, PropertyName at +0x8, Value at +0x10
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, PropertyName)
 writeQword(_params + 0x10, Value)
 UE.CallProcessEventEx(Object, "SetTextPropertyByName", _params);
 deAlloc(_params);
end
FNR("BL4.SetTextPropertyByName");

BL4.SetTransformPropertyByName = function(Object, PropertyName, Value)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTransformPropertyByName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, PropertyName at +0x8, Value at +0x10
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, PropertyName)
 writeQword(_params + 0x10, Value)
 UE.CallProcessEventEx(Object, "SetTransformPropertyByName", _params);
 deAlloc(_params);
end
FNR("BL4.SetTransformPropertyByName");

BL4.SetUserActivity = function(OwnerAddress, UserActivity)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetUserActivity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: UserActivity at +0x0
 writeQword(_params + 0x0, UserActivity)
 UE.CallProcessEventEx(OwnerAddress, "SetUserActivity", _params);
 deAlloc(_params);
end
FNR("BL4.SetUserActivity");

BL4.SetVector3fPropertyByName = function(Object, PropertyName, Value)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVector3fPropertyByName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, PropertyName at +0x8, Value at +0x10
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, PropertyName)
 writeQword(_params + 0x10, Value)
 UE.CallProcessEventEx(Object, "SetVector3fPropertyByName", _params);
 deAlloc(_params);
end
FNR("BL4.SetVector3fPropertyByName");

BL4.SetVectorPropertyByName = function(Object, PropertyName, Value)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVectorPropertyByName: Failed To Allocate The Params");return;end;
 Value = Value or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0, PropertyName at +0x8, Value at +0x10
 writeQword(_params + 0x0, Object)
 writeQword(_params + 0x8, PropertyName)
 writeDouble(_params + 0x10, (Value and Value.X) or 0)
 writeDouble(_params + 0x18, (Value and Value.Y) or 0)
 writeDouble(_params + 0x20, (Value and Value.Z) or 0)
 UE.CallProcessEventEx(Object, "SetVectorPropertyByName", _params);
 deAlloc(_params);
end
FNR("BL4.SetVectorPropertyByName");

BL4.SetVolumeButtonsHandledBySystem = function(OwnerAddress, bEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVolumeButtonsHandledBySystem: Failed To Allocate The Params");return;end;
 bEnabled = bEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnabled at +0x0
 writeByte(_params + 0x0, bEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetVolumeButtonsHandledBySystem", _params);
 deAlloc(_params);
end
FNR("BL4.SetVolumeButtonsHandledBySystem");

BL4.SetWindowTitle = function(OwnerAddress, Title)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetWindowTitle: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Title at +0x0
 writeQword(_params + 0x0, Title)
 UE.CallProcessEventEx(OwnerAddress, "SetWindowTitle", _params);
 deAlloc(_params);
end
FNR("BL4.SetWindowTitle");

BL4.ShowAdBanner = function(OwnerAddress, AdIdIndex, bShowOnBottomOfScreen)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ShowAdBanner: Failed To Allocate The Params");return;end;
 AdIdIndex = AdIdIndex or 0
 bShowOnBottomOfScreen = bShowOnBottomOfScreen or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AdIdIndex at +0x0, bShowOnBottomOfScreen at +0x4
 writeInteger(_params + 0x0, AdIdIndex)
 writeByte(_params + 0x4, bShowOnBottomOfScreen)
 UE.CallProcessEventEx(OwnerAddress, "ShowAdBanner", _params);
 deAlloc(_params);
end
FNR("BL4.ShowAdBanner");

BL4.ShowPlatformSpecificAchievementsScreen = function(SpecificPlayer_PlayerController)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ShowPlatformSpecificAchievementsScreen: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: SpecificPlayer at +0x0
 writeQword(_params + 0x0, SpecificPlayer_PlayerController)
 UE.CallProcessEventEx(SpecificPlayer_PlayerController, "ShowPlatformSpecificAchievementsScreen", _params);
 deAlloc(_params);
end
FNR("BL4.ShowPlatformSpecificAchievementsScreen");

BL4.ShowPlatformSpecificLeaderboardScreen = function(OwnerAddress, categoryname)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ShowPlatformSpecificLeaderboardScreen: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: categoryname at +0x0
 writeQword(_params + 0x0, categoryname)
 UE.CallProcessEventEx(OwnerAddress, "ShowPlatformSpecificLeaderboardScreen", _params);
 deAlloc(_params);
end
FNR("BL4.ShowPlatformSpecificLeaderboardScreen");

BL4.SnapshotObject = function(Object)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SnapshotObject: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0
 writeQword(_params + 0x0, Object)
 UE.CallProcessEventEx(Object, "SnapshotObject", _params);
 deAlloc(_params);
end
FNR("BL4.SnapshotObject");

BL4.SphereOverlapActors = function(WorldContextObject_Object, SpherePos, SphereRadius, ObjectTypes, ActorClassFilter_Class, ActorsToIgnore, OutActors)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SphereOverlapActors: Failed To Allocate The Params");return;end;
 SpherePos = SpherePos or {X=0,Y=0,Z=0}
 SphereRadius = SphereRadius or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, SpherePos at +0x8, SphereRadius at +0x20, ObjectTypes at +0x28, ActorClassFilter at +0x38, ActorsToIgnore at +0x40, OutActors at +0x50
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (SpherePos and SpherePos.X) or 0)
 writeDouble(_params + 0x10, (SpherePos and SpherePos.Y) or 0)
 writeDouble(_params + 0x18, (SpherePos and SpherePos.Z) or 0)
 writeFloat(_params + 0x20, SphereRadius)
 writeQword(_params + 0x28, ObjectTypes)
 writeQword(_params + 0x38, ActorClassFilter_Class)
 writeQword(_params + 0x40, ActorsToIgnore)
 writeQword(_params + 0x50, OutActors)
 UE.CallProcessEventEx(WorldContextObject_Object, "SphereOverlapActors", _params);
 local RET=readByte(_params + 0x60);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SphereOverlapActors");

BL4.SphereOverlapComponents = function(WorldContextObject_Object, SpherePos, SphereRadius, ObjectTypes, ComponentClassFilter_Class, ActorsToIgnore, OutComponents)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SphereOverlapComponents: Failed To Allocate The Params");return;end;
 SpherePos = SpherePos or {X=0,Y=0,Z=0}
 SphereRadius = SphereRadius or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, SpherePos at +0x8, SphereRadius at +0x20, ObjectTypes at +0x28, ComponentClassFilter at +0x38, ActorsToIgnore at +0x40, OutComponents at +0x50
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (SpherePos and SpherePos.X) or 0)
 writeDouble(_params + 0x10, (SpherePos and SpherePos.Y) or 0)
 writeDouble(_params + 0x18, (SpherePos and SpherePos.Z) or 0)
 writeFloat(_params + 0x20, SphereRadius)
 writeQword(_params + 0x28, ObjectTypes)
 writeQword(_params + 0x38, ComponentClassFilter_Class)
 writeQword(_params + 0x40, ActorsToIgnore)
 writeQword(_params + 0x50, OutComponents)
 UE.CallProcessEventEx(WorldContextObject_Object, "SphereOverlapComponents", _params);
 local RET=readByte(_params + 0x60);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SphereOverlapComponents");

BL4.SphereTraceMulti = function(WorldContextObject_Object, Start, End, Radius, TraceChannel, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHits, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SphereTraceMulti: Failed To Allocate The Params");return;end;
 Start = Start or {X=0,Y=0,Z=0}
 End = End or {X=0,Y=0,Z=0}
 Radius = Radius or 0
 TraceChannel = TraceChannel or 0
 bTraceComplex = bTraceComplex or false
 DrawDebugType = DrawDebugType or 0
 bIgnoreSelf = bIgnoreSelf or false
 TraceColor = TraceColor or {R=0,G=0,B=0,A=0}
 TraceHitColor = TraceHitColor or {R=0,G=0,B=0,A=0}
 DrawTime = DrawTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Start at +0x8, End at +0x20, Radius at +0x38, TraceChannel at +0x3C, bTraceComplex at +0x3D, ActorsToIgnore at +0x40, DrawDebugType at +0x50, OutHits at +0x58, bIgnoreSelf at +0x68, TraceColor at +0x6C, TraceHitColor at +0x7C, DrawTime at +0x8C
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Start and Start.X) or 0)
 writeDouble(_params + 0x10, (Start and Start.Y) or 0)
 writeDouble(_params + 0x18, (Start and Start.Z) or 0)
 writeDouble(_params + 0x20, (End and End.X) or 0)
 writeDouble(_params + 0x28, (End and End.Y) or 0)
 writeDouble(_params + 0x30, (End and End.Z) or 0)
 writeFloat(_params + 0x38, Radius)
 writeByte(_params + 0x3C, TraceChannel)
 writeByte(_params + 0x3D, bTraceComplex)
 writeQword(_params + 0x40, ActorsToIgnore)
 writeByte(_params + 0x50, DrawDebugType)
 writeQword(_params + 0x58, OutHits)
 writeByte(_params + 0x68, bIgnoreSelf)
 writeFloat(_params + 0x6C, (TraceColor and TraceColor.R) or 0)
 writeFloat(_params + 0x70, (TraceColor and TraceColor.G) or 0)
 writeFloat(_params + 0x74, (TraceColor and TraceColor.B) or 0)
 writeFloat(_params + 0x78, (TraceColor and TraceColor.A) or 0)
 writeFloat(_params + 0x7C, (TraceHitColor and TraceHitColor.R) or 0)
 writeFloat(_params + 0x80, (TraceHitColor and TraceHitColor.G) or 0)
 writeFloat(_params + 0x84, (TraceHitColor and TraceHitColor.B) or 0)
 writeFloat(_params + 0x88, (TraceHitColor and TraceHitColor.A) or 0)
 writeFloat(_params + 0x8C, DrawTime)
 UE.CallProcessEventEx(WorldContextObject_Object, "SphereTraceMulti", _params);
 local RET=readByte(_params + 0x90);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SphereTraceMulti");

BL4.SphereTraceMultiByProfile = function(WorldContextObject_Object, Start, End, Radius, ProfileName, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHits, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime)
 local _paramsSize = 0xA0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SphereTraceMultiByProfile: Failed To Allocate The Params");return;end;
 Start = Start or {X=0,Y=0,Z=0}
 End = End or {X=0,Y=0,Z=0}
 Radius = Radius or 0
 bTraceComplex = bTraceComplex or false
 DrawDebugType = DrawDebugType or 0
 bIgnoreSelf = bIgnoreSelf or false
 TraceColor = TraceColor or {R=0,G=0,B=0,A=0}
 TraceHitColor = TraceHitColor or {R=0,G=0,B=0,A=0}
 DrawTime = DrawTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Start at +0x8, End at +0x20, Radius at +0x38, ProfileName at +0x3C, bTraceComplex at +0x44, ActorsToIgnore at +0x48, DrawDebugType at +0x58, OutHits at +0x60, bIgnoreSelf at +0x70, TraceColor at +0x74, TraceHitColor at +0x84, DrawTime at +0x94
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Start and Start.X) or 0)
 writeDouble(_params + 0x10, (Start and Start.Y) or 0)
 writeDouble(_params + 0x18, (Start and Start.Z) or 0)
 writeDouble(_params + 0x20, (End and End.X) or 0)
 writeDouble(_params + 0x28, (End and End.Y) or 0)
 writeDouble(_params + 0x30, (End and End.Z) or 0)
 writeFloat(_params + 0x38, Radius)
 writeQword(_params + 0x3C, ProfileName)
 writeByte(_params + 0x44, bTraceComplex)
 writeQword(_params + 0x48, ActorsToIgnore)
 writeByte(_params + 0x58, DrawDebugType)
 writeQword(_params + 0x60, OutHits)
 writeByte(_params + 0x70, bIgnoreSelf)
 writeFloat(_params + 0x74, (TraceColor and TraceColor.R) or 0)
 writeFloat(_params + 0x78, (TraceColor and TraceColor.G) or 0)
 writeFloat(_params + 0x7C, (TraceColor and TraceColor.B) or 0)
 writeFloat(_params + 0x80, (TraceColor and TraceColor.A) or 0)
 writeFloat(_params + 0x84, (TraceHitColor and TraceHitColor.R) or 0)
 writeFloat(_params + 0x88, (TraceHitColor and TraceHitColor.G) or 0)
 writeFloat(_params + 0x8C, (TraceHitColor and TraceHitColor.B) or 0)
 writeFloat(_params + 0x90, (TraceHitColor and TraceHitColor.A) or 0)
 writeFloat(_params + 0x94, DrawTime)
 UE.CallProcessEventEx(WorldContextObject_Object, "SphereTraceMultiByProfile", _params);
 local RET=readByte(_params + 0x98);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SphereTraceMultiByProfile");

BL4.SphereTraceMultiForObjects = function(WorldContextObject_Object, Start, End, Radius, ObjectTypes, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHits, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime)
 local _paramsSize = 0xB0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SphereTraceMultiForObjects: Failed To Allocate The Params");return;end;
 Start = Start or {X=0,Y=0,Z=0}
 End = End or {X=0,Y=0,Z=0}
 Radius = Radius or 0
 bTraceComplex = bTraceComplex or false
 DrawDebugType = DrawDebugType or 0
 bIgnoreSelf = bIgnoreSelf or false
 TraceColor = TraceColor or {R=0,G=0,B=0,A=0}
 TraceHitColor = TraceHitColor or {R=0,G=0,B=0,A=0}
 DrawTime = DrawTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Start at +0x8, End at +0x20, Radius at +0x38, ObjectTypes at +0x40, bTraceComplex at +0x50, ActorsToIgnore at +0x58, DrawDebugType at +0x68, OutHits at +0x70, bIgnoreSelf at +0x80, TraceColor at +0x84, TraceHitColor at +0x94, DrawTime at +0xA4
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Start and Start.X) or 0)
 writeDouble(_params + 0x10, (Start and Start.Y) or 0)
 writeDouble(_params + 0x18, (Start and Start.Z) or 0)
 writeDouble(_params + 0x20, (End and End.X) or 0)
 writeDouble(_params + 0x28, (End and End.Y) or 0)
 writeDouble(_params + 0x30, (End and End.Z) or 0)
 writeFloat(_params + 0x38, Radius)
 writeQword(_params + 0x40, ObjectTypes)
 writeByte(_params + 0x50, bTraceComplex)
 writeQword(_params + 0x58, ActorsToIgnore)
 writeByte(_params + 0x68, DrawDebugType)
 writeQword(_params + 0x70, OutHits)
 writeByte(_params + 0x80, bIgnoreSelf)
 writeFloat(_params + 0x84, (TraceColor and TraceColor.R) or 0)
 writeFloat(_params + 0x88, (TraceColor and TraceColor.G) or 0)
 writeFloat(_params + 0x8C, (TraceColor and TraceColor.B) or 0)
 writeFloat(_params + 0x90, (TraceColor and TraceColor.A) or 0)
 writeFloat(_params + 0x94, (TraceHitColor and TraceHitColor.R) or 0)
 writeFloat(_params + 0x98, (TraceHitColor and TraceHitColor.G) or 0)
 writeFloat(_params + 0x9C, (TraceHitColor and TraceHitColor.B) or 0)
 writeFloat(_params + 0xA0, (TraceHitColor and TraceHitColor.A) or 0)
 writeFloat(_params + 0xA4, DrawTime)
 UE.CallProcessEventEx(WorldContextObject_Object, "SphereTraceMultiForObjects", _params);
 local RET=readByte(_params + 0xA8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SphereTraceMultiForObjects");

BL4.SphereTraceSingle = function(WorldContextObject_Object, Start, End, Radius, TraceChannel, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHit, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime)
 local _paramsSize = 0x188
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SphereTraceSingle: Failed To Allocate The Params");return;end;
 Start = Start or {X=0,Y=0,Z=0}
 End = End or {X=0,Y=0,Z=0}
 Radius = Radius or 0
 TraceChannel = TraceChannel or 0
 bTraceComplex = bTraceComplex or false
 DrawDebugType = DrawDebugType or 0
 bIgnoreSelf = bIgnoreSelf or false
 TraceColor = TraceColor or {R=0,G=0,B=0,A=0}
 TraceHitColor = TraceHitColor or {R=0,G=0,B=0,A=0}
 DrawTime = DrawTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Start at +0x8, End at +0x20, Radius at +0x38, TraceChannel at +0x3C, bTraceComplex at +0x3D, ActorsToIgnore at +0x40, DrawDebugType at +0x50, OutHit at +0x58, bIgnoreSelf at +0x158, TraceColor at +0x15C, TraceHitColor at +0x16C, DrawTime at +0x17C
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Start and Start.X) or 0)
 writeDouble(_params + 0x10, (Start and Start.Y) or 0)
 writeDouble(_params + 0x18, (Start and Start.Z) or 0)
 writeDouble(_params + 0x20, (End and End.X) or 0)
 writeDouble(_params + 0x28, (End and End.Y) or 0)
 writeDouble(_params + 0x30, (End and End.Z) or 0)
 writeFloat(_params + 0x38, Radius)
 writeByte(_params + 0x3C, TraceChannel)
 writeByte(_params + 0x3D, bTraceComplex)
 writeQword(_params + 0x40, ActorsToIgnore)
 writeByte(_params + 0x50, DrawDebugType)
 writeQword(_params + 0x58, OutHit)
 writeByte(_params + 0x158, bIgnoreSelf)
 writeFloat(_params + 0x15C, (TraceColor and TraceColor.R) or 0)
 writeFloat(_params + 0x160, (TraceColor and TraceColor.G) or 0)
 writeFloat(_params + 0x164, (TraceColor and TraceColor.B) or 0)
 writeFloat(_params + 0x168, (TraceColor and TraceColor.A) or 0)
 writeFloat(_params + 0x16C, (TraceHitColor and TraceHitColor.R) or 0)
 writeFloat(_params + 0x170, (TraceHitColor and TraceHitColor.G) or 0)
 writeFloat(_params + 0x174, (TraceHitColor and TraceHitColor.B) or 0)
 writeFloat(_params + 0x178, (TraceHitColor and TraceHitColor.A) or 0)
 writeFloat(_params + 0x17C, DrawTime)
 UE.CallProcessEventEx(WorldContextObject_Object, "SphereTraceSingle", _params);
 local RET=readByte(_params + 0x180);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SphereTraceSingle");

BL4.SphereTraceSingleByProfile = function(WorldContextObject_Object, Start, End, Radius, ProfileName, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHit, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime)
 local _paramsSize = 0x190
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SphereTraceSingleByProfile: Failed To Allocate The Params");return;end;
 Start = Start or {X=0,Y=0,Z=0}
 End = End or {X=0,Y=0,Z=0}
 Radius = Radius or 0
 bTraceComplex = bTraceComplex or false
 DrawDebugType = DrawDebugType or 0
 bIgnoreSelf = bIgnoreSelf or false
 TraceColor = TraceColor or {R=0,G=0,B=0,A=0}
 TraceHitColor = TraceHitColor or {R=0,G=0,B=0,A=0}
 DrawTime = DrawTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Start at +0x8, End at +0x20, Radius at +0x38, ProfileName at +0x3C, bTraceComplex at +0x44, ActorsToIgnore at +0x48, DrawDebugType at +0x58, OutHit at +0x60, bIgnoreSelf at +0x160, TraceColor at +0x164, TraceHitColor at +0x174, DrawTime at +0x184
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Start and Start.X) or 0)
 writeDouble(_params + 0x10, (Start and Start.Y) or 0)
 writeDouble(_params + 0x18, (Start and Start.Z) or 0)
 writeDouble(_params + 0x20, (End and End.X) or 0)
 writeDouble(_params + 0x28, (End and End.Y) or 0)
 writeDouble(_params + 0x30, (End and End.Z) or 0)
 writeFloat(_params + 0x38, Radius)
 writeQword(_params + 0x3C, ProfileName)
 writeByte(_params + 0x44, bTraceComplex)
 writeQword(_params + 0x48, ActorsToIgnore)
 writeByte(_params + 0x58, DrawDebugType)
 writeQword(_params + 0x60, OutHit)
 writeByte(_params + 0x160, bIgnoreSelf)
 writeFloat(_params + 0x164, (TraceColor and TraceColor.R) or 0)
 writeFloat(_params + 0x168, (TraceColor and TraceColor.G) or 0)
 writeFloat(_params + 0x16C, (TraceColor and TraceColor.B) or 0)
 writeFloat(_params + 0x170, (TraceColor and TraceColor.A) or 0)
 writeFloat(_params + 0x174, (TraceHitColor and TraceHitColor.R) or 0)
 writeFloat(_params + 0x178, (TraceHitColor and TraceHitColor.G) or 0)
 writeFloat(_params + 0x17C, (TraceHitColor and TraceHitColor.B) or 0)
 writeFloat(_params + 0x180, (TraceHitColor and TraceHitColor.A) or 0)
 writeFloat(_params + 0x184, DrawTime)
 UE.CallProcessEventEx(WorldContextObject_Object, "SphereTraceSingleByProfile", _params);
 local RET=readByte(_params + 0x188);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SphereTraceSingleByProfile");

BL4.SphereTraceSingleForObjects = function(WorldContextObject_Object, Start, End, Radius, ObjectTypes, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHit, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime)
 local _paramsSize = 0x1A0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SphereTraceSingleForObjects: Failed To Allocate The Params");return;end;
 Start = Start or {X=0,Y=0,Z=0}
 End = End or {X=0,Y=0,Z=0}
 Radius = Radius or 0
 bTraceComplex = bTraceComplex or false
 DrawDebugType = DrawDebugType or 0
 bIgnoreSelf = bIgnoreSelf or false
 TraceColor = TraceColor or {R=0,G=0,B=0,A=0}
 TraceHitColor = TraceHitColor or {R=0,G=0,B=0,A=0}
 DrawTime = DrawTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Start at +0x8, End at +0x20, Radius at +0x38, ObjectTypes at +0x40, bTraceComplex at +0x50, ActorsToIgnore at +0x58, DrawDebugType at +0x68, OutHit at +0x70, bIgnoreSelf at +0x170, TraceColor at +0x174, TraceHitColor at +0x184, DrawTime at +0x194
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeDouble(_params + 0x8, (Start and Start.X) or 0)
 writeDouble(_params + 0x10, (Start and Start.Y) or 0)
 writeDouble(_params + 0x18, (Start and Start.Z) or 0)
 writeDouble(_params + 0x20, (End and End.X) or 0)
 writeDouble(_params + 0x28, (End and End.Y) or 0)
 writeDouble(_params + 0x30, (End and End.Z) or 0)
 writeFloat(_params + 0x38, Radius)
 writeQword(_params + 0x40, ObjectTypes)
 writeByte(_params + 0x50, bTraceComplex)
 writeQword(_params + 0x58, ActorsToIgnore)
 writeByte(_params + 0x68, DrawDebugType)
 writeQword(_params + 0x70, OutHit)
 writeByte(_params + 0x170, bIgnoreSelf)
 writeFloat(_params + 0x174, (TraceColor and TraceColor.R) or 0)
 writeFloat(_params + 0x178, (TraceColor and TraceColor.G) or 0)
 writeFloat(_params + 0x17C, (TraceColor and TraceColor.B) or 0)
 writeFloat(_params + 0x180, (TraceColor and TraceColor.A) or 0)
 writeFloat(_params + 0x184, (TraceHitColor and TraceHitColor.R) or 0)
 writeFloat(_params + 0x188, (TraceHitColor and TraceHitColor.G) or 0)
 writeFloat(_params + 0x18C, (TraceHitColor and TraceHitColor.B) or 0)
 writeFloat(_params + 0x190, (TraceHitColor and TraceHitColor.A) or 0)
 writeFloat(_params + 0x194, DrawTime)
 UE.CallProcessEventEx(WorldContextObject_Object, "SphereTraceSingleForObjects", _params);
 local RET=readByte(_params + 0x198);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SphereTraceSingleForObjects");

BL4.TransactObject = function(Object)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TransactObject: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Object at +0x0
 writeQword(_params + 0x0, Object)
 UE.CallProcessEventEx(Object, "TransactObject", _params);
 deAlloc(_params);
end
FNR("BL4.TransactObject");

BL4.UnloadPrimaryAsset = function(OwnerAddress, PrimaryAssetId)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnloadPrimaryAsset: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PrimaryAssetId at +0x0
 writeQword(_params + 0x0, PrimaryAssetId)
 UE.CallProcessEventEx(OwnerAddress, "UnloadPrimaryAsset", _params);
 deAlloc(_params);
end
FNR("BL4.UnloadPrimaryAsset");

BL4.UnloadPrimaryAssetList = function(OwnerAddress, PrimaryAssetIdList)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnloadPrimaryAssetList: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PrimaryAssetIdList at +0x0
 writeQword(_params + 0x0, PrimaryAssetIdList)
 UE.CallProcessEventEx(OwnerAddress, "UnloadPrimaryAssetList", _params);
 deAlloc(_params);
end
FNR("BL4.UnloadPrimaryAssetList");

