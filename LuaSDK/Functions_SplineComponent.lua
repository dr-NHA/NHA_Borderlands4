BL4.AddPoint = function(OwnerAddress, Point, bUpdateSpline)
 local _paramsSize = 0x90
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddPoint: Failed To Allocate The Params");return;end;
 bUpdateSpline = bUpdateSpline or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Point at +0x0, bUpdateSpline at +0x88
 writeQword(_params + 0x0, Point)
 writeByte(_params + 0x88, bUpdateSpline)
 UE.CallProcessEventEx(OwnerAddress, "AddPoint", _params);
 deAlloc(_params);
end
FNR("BL4.AddPoint");

BL4.AddPoints = function(OwnerAddress, points, bUpdateSpline)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddPoints: Failed To Allocate The Params");return;end;
 bUpdateSpline = bUpdateSpline or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: points at +0x0, bUpdateSpline at +0x10
 writeQword(_params + 0x0, points)
 writeByte(_params + 0x10, bUpdateSpline)
 UE.CallProcessEventEx(OwnerAddress, "AddPoints", _params);
 deAlloc(_params);
end
FNR("BL4.AddPoints");

BL4.AddSplineLocalPoint = function(OwnerAddress, position)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddSplineLocalPoint: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: position at +0x0
 writeDouble(_params + 0x0, (position and position.X) or 0)
 writeDouble(_params + 0x8, (position and position.Y) or 0)
 writeDouble(_params + 0x10, (position and position.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "AddSplineLocalPoint", _params);
 deAlloc(_params);
end
FNR("BL4.AddSplineLocalPoint");

BL4.AddSplinePoint = function(OwnerAddress, position, CoordinateSpace, bUpdateSpline)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddSplinePoint: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0,Z=0}
 CoordinateSpace = CoordinateSpace or 0
 bUpdateSpline = bUpdateSpline or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: position at +0x0, CoordinateSpace at +0x18, bUpdateSpline at +0x19
 writeDouble(_params + 0x0, (position and position.X) or 0)
 writeDouble(_params + 0x8, (position and position.Y) or 0)
 writeDouble(_params + 0x10, (position and position.Z) or 0)
 writeByte(_params + 0x18, CoordinateSpace)
 writeByte(_params + 0x19, bUpdateSpline)
 UE.CallProcessEventEx(OwnerAddress, "AddSplinePoint", _params);
 deAlloc(_params);
end
FNR("BL4.AddSplinePoint");

BL4.AddSplinePointAtIndex = function(OwnerAddress, position, Index, CoordinateSpace, bUpdateSpline)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddSplinePointAtIndex: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0,Z=0}
 Index = Index or 0
 CoordinateSpace = CoordinateSpace or 0
 bUpdateSpline = bUpdateSpline or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: position at +0x0, Index at +0x18, CoordinateSpace at +0x1C, bUpdateSpline at +0x1D
 writeDouble(_params + 0x0, (position and position.X) or 0)
 writeDouble(_params + 0x8, (position and position.Y) or 0)
 writeDouble(_params + 0x10, (position and position.Z) or 0)
 writeInteger(_params + 0x18, Index)
 writeByte(_params + 0x1C, CoordinateSpace)
 writeByte(_params + 0x1D, bUpdateSpline)
 UE.CallProcessEventEx(OwnerAddress, "AddSplinePointAtIndex", _params);
 deAlloc(_params);
end
FNR("BL4.AddSplinePointAtIndex");

BL4.AddSplineWorldPoint = function(OwnerAddress, position)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddSplineWorldPoint: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: position at +0x0
 writeDouble(_params + 0x0, (position and position.X) or 0)
 writeDouble(_params + 0x8, (position and position.Y) or 0)
 writeDouble(_params + 0x10, (position and position.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "AddSplineWorldPoint", _params);
 deAlloc(_params);
end
FNR("BL4.AddSplineWorldPoint");

BL4.ClearSplinePoints = function(OwnerAddress, bUpdateSpline)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClearSplinePoints: Failed To Allocate The Params");return;end;
 bUpdateSpline = bUpdateSpline or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bUpdateSpline at +0x0
 writeByte(_params + 0x0, bUpdateSpline)
 UE.CallProcessEventEx(OwnerAddress, "ClearSplinePoints", _params);
 deAlloc(_params);
end
FNR("BL4.ClearSplinePoints");

BL4.ConvertSplineSegmentToPolyLine = function(OwnerAddress, SplinePointStartIndex, CoordinateSpace, MaxSquareDistanceFromSpline, OutPoints)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConvertSplineSegmentToPolyLine: Failed To Allocate The Params");return;end;
 SplinePointStartIndex = SplinePointStartIndex or 0
 CoordinateSpace = CoordinateSpace or 0
 MaxSquareDistanceFromSpline = MaxSquareDistanceFromSpline or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SplinePointStartIndex at +0x0, CoordinateSpace at +0x4, MaxSquareDistanceFromSpline at +0x8, OutPoints at +0x10
 writeInteger(_params + 0x0, SplinePointStartIndex)
 writeByte(_params + 0x4, CoordinateSpace)
 writeFloat(_params + 0x8, MaxSquareDistanceFromSpline)
 writeQword(_params + 0x10, OutPoints)
 UE.CallProcessEventEx(OwnerAddress, "ConvertSplineSegmentToPolyLine", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConvertSplineSegmentToPolyLine");

BL4.ConvertSplineToPolyLine = function(OwnerAddress, CoordinateSpace, MaxSquareDistanceFromSpline, OutPoints)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConvertSplineToPolyLine: Failed To Allocate The Params");return;end;
 CoordinateSpace = CoordinateSpace or 0
 MaxSquareDistanceFromSpline = MaxSquareDistanceFromSpline or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CoordinateSpace at +0x0, MaxSquareDistanceFromSpline at +0x4, OutPoints at +0x8
 writeByte(_params + 0x0, CoordinateSpace)
 writeFloat(_params + 0x4, MaxSquareDistanceFromSpline)
 writeQword(_params + 0x8, OutPoints)
 UE.CallProcessEventEx(OwnerAddress, "ConvertSplineToPolyLine", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConvertSplineToPolyLine");

BL4.ConvertSplineToPolyline_InDistanceRange = function(OwnerAddress, CoordinateSpace, MaxSquareDistanceFromSpline, StartDistAlongSpline, EndDistAlongSpline, OutPoints, OutDistancesAlongSpline, bAllowWrappingIfClosed)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConvertSplineToPolyline_InDistanceRange: Failed To Allocate The Params");return;end;
 CoordinateSpace = CoordinateSpace or 0
 MaxSquareDistanceFromSpline = MaxSquareDistanceFromSpline or 0
 StartDistAlongSpline = StartDistAlongSpline or 0
 EndDistAlongSpline = EndDistAlongSpline or 0
 bAllowWrappingIfClosed = bAllowWrappingIfClosed or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CoordinateSpace at +0x0, MaxSquareDistanceFromSpline at +0x4, StartDistAlongSpline at +0x8, EndDistAlongSpline at +0xC, OutPoints at +0x10, OutDistancesAlongSpline at +0x20, bAllowWrappingIfClosed at +0x30
 writeByte(_params + 0x0, CoordinateSpace)
 writeFloat(_params + 0x4, MaxSquareDistanceFromSpline)
 writeFloat(_params + 0x8, StartDistAlongSpline)
 writeFloat(_params + 0xC, EndDistAlongSpline)
 writeQword(_params + 0x10, OutPoints)
 writeQword(_params + 0x20, OutDistancesAlongSpline)
 writeByte(_params + 0x30, bAllowWrappingIfClosed)
 UE.CallProcessEventEx(OwnerAddress, "ConvertSplineToPolyline_InDistanceRange", _params);
 local RET=readByte(_params + 0x31);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConvertSplineToPolyline_InDistanceRange");

BL4.ConvertSplineToPolyline_InTimeRange = function(OwnerAddress, CoordinateSpace, MaxSquareDistanceFromSpline, StartTimeAlongSpline, EndTimeAlongSpline, bUseConstantVelocity, OutPoints, OutDistancesAlongSpline, bAllowWrappingIfClosed)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConvertSplineToPolyline_InTimeRange: Failed To Allocate The Params");return;end;
 CoordinateSpace = CoordinateSpace or 0
 MaxSquareDistanceFromSpline = MaxSquareDistanceFromSpline or 0
 StartTimeAlongSpline = StartTimeAlongSpline or 0
 EndTimeAlongSpline = EndTimeAlongSpline or 0
 bUseConstantVelocity = bUseConstantVelocity or false
 bAllowWrappingIfClosed = bAllowWrappingIfClosed or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CoordinateSpace at +0x0, MaxSquareDistanceFromSpline at +0x4, StartTimeAlongSpline at +0x8, EndTimeAlongSpline at +0xC, bUseConstantVelocity at +0x10, OutPoints at +0x18, OutDistancesAlongSpline at +0x28, bAllowWrappingIfClosed at +0x38
 writeByte(_params + 0x0, CoordinateSpace)
 writeFloat(_params + 0x4, MaxSquareDistanceFromSpline)
 writeFloat(_params + 0x8, StartTimeAlongSpline)
 writeFloat(_params + 0xC, EndTimeAlongSpline)
 writeByte(_params + 0x10, bUseConstantVelocity)
 writeQword(_params + 0x18, OutPoints)
 writeQword(_params + 0x28, OutDistancesAlongSpline)
 writeByte(_params + 0x38, bAllowWrappingIfClosed)
 UE.CallProcessEventEx(OwnerAddress, "ConvertSplineToPolyline_InTimeRange", _params);
 local RET=readByte(_params + 0x39);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConvertSplineToPolyline_InTimeRange");

BL4.ConvertSplineToPolyLineWithDistances = function(OwnerAddress, CoordinateSpace, MaxSquareDistanceFromSpline, OutPoints, OutDistancesAlongSpline)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConvertSplineToPolyLineWithDistances: Failed To Allocate The Params");return;end;
 CoordinateSpace = CoordinateSpace or 0
 MaxSquareDistanceFromSpline = MaxSquareDistanceFromSpline or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CoordinateSpace at +0x0, MaxSquareDistanceFromSpline at +0x4, OutPoints at +0x8, OutDistancesAlongSpline at +0x18
 writeByte(_params + 0x0, CoordinateSpace)
 writeFloat(_params + 0x4, MaxSquareDistanceFromSpline)
 writeQword(_params + 0x8, OutPoints)
 writeQword(_params + 0x18, OutDistancesAlongSpline)
 UE.CallProcessEventEx(OwnerAddress, "ConvertSplineToPolyLineWithDistances", _params);
 local RET=readByte(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConvertSplineToPolyLineWithDistances");

BL4.DivideSplineIntoPolylineRecursive = function(OwnerAddress, StartDistanceAlongSpline, EndDistanceAlongSpline, CoordinateSpace, MaxSquareDistanceFromSpline, OutPoints)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DivideSplineIntoPolylineRecursive: Failed To Allocate The Params");return;end;
 StartDistanceAlongSpline = StartDistanceAlongSpline or 0
 EndDistanceAlongSpline = EndDistanceAlongSpline or 0
 CoordinateSpace = CoordinateSpace or 0
 MaxSquareDistanceFromSpline = MaxSquareDistanceFromSpline or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: StartDistanceAlongSpline at +0x0, EndDistanceAlongSpline at +0x4, CoordinateSpace at +0x8, MaxSquareDistanceFromSpline at +0xC, OutPoints at +0x10
 writeFloat(_params + 0x0, StartDistanceAlongSpline)
 writeFloat(_params + 0x4, EndDistanceAlongSpline)
 writeByte(_params + 0x8, CoordinateSpace)
 writeFloat(_params + 0xC, MaxSquareDistanceFromSpline)
 writeQword(_params + 0x10, OutPoints)
 UE.CallProcessEventEx(OwnerAddress, "DivideSplineIntoPolylineRecursive", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DivideSplineIntoPolylineRecursive");

BL4.DivideSplineIntoPolylineRecursiveWithDistances = function(OwnerAddress, StartDistanceAlongSpline, EndDistanceAlongSpline, CoordinateSpace, MaxSquareDistanceFromSpline, OutPoints, OutDistancesAlongSpline)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DivideSplineIntoPolylineRecursiveWithDistances: Failed To Allocate The Params");return;end;
 StartDistanceAlongSpline = StartDistanceAlongSpline or 0
 EndDistanceAlongSpline = EndDistanceAlongSpline or 0
 CoordinateSpace = CoordinateSpace or 0
 MaxSquareDistanceFromSpline = MaxSquareDistanceFromSpline or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: StartDistanceAlongSpline at +0x0, EndDistanceAlongSpline at +0x4, CoordinateSpace at +0x8, MaxSquareDistanceFromSpline at +0xC, OutPoints at +0x10, OutDistancesAlongSpline at +0x20
 writeFloat(_params + 0x0, StartDistanceAlongSpline)
 writeFloat(_params + 0x4, EndDistanceAlongSpline)
 writeByte(_params + 0x8, CoordinateSpace)
 writeFloat(_params + 0xC, MaxSquareDistanceFromSpline)
 writeQword(_params + 0x10, OutPoints)
 writeQword(_params + 0x20, OutDistancesAlongSpline)
 UE.CallProcessEventEx(OwnerAddress, "DivideSplineIntoPolylineRecursiveWithDistances", _params);
 local RET=readByte(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DivideSplineIntoPolylineRecursiveWithDistances");

BL4.FindDirectionClosestToWorldLocation = function(OwnerAddress, WorldLocation, CoordinateSpace)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindDirectionClosestToWorldLocation: Failed To Allocate The Params");return;end;
 WorldLocation = WorldLocation or {X=0,Y=0,Z=0}
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldLocation at +0x0, CoordinateSpace at +0x18
 writeDouble(_params + 0x0, (WorldLocation and WorldLocation.X) or 0)
 writeDouble(_params + 0x8, (WorldLocation and WorldLocation.Y) or 0)
 writeDouble(_params + 0x10, (WorldLocation and WorldLocation.Z) or 0)
 writeByte(_params + 0x18, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "FindDirectionClosestToWorldLocation", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindDirectionClosestToWorldLocation");

BL4.FindInputKeyClosestToWorldLocation = function(OwnerAddress, WorldLocation)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindInputKeyClosestToWorldLocation: Failed To Allocate The Params");return;end;
 WorldLocation = WorldLocation or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldLocation at +0x0
 writeDouble(_params + 0x0, (WorldLocation and WorldLocation.X) or 0)
 writeDouble(_params + 0x8, (WorldLocation and WorldLocation.Y) or 0)
 writeDouble(_params + 0x10, (WorldLocation and WorldLocation.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "FindInputKeyClosestToWorldLocation", _params);
 local RET=readFloat(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindInputKeyClosestToWorldLocation");

BL4.FindLocationClosestToWorldLocation = function(OwnerAddress, WorldLocation, CoordinateSpace)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindLocationClosestToWorldLocation: Failed To Allocate The Params");return;end;
 WorldLocation = WorldLocation or {X=0,Y=0,Z=0}
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldLocation at +0x0, CoordinateSpace at +0x18
 writeDouble(_params + 0x0, (WorldLocation and WorldLocation.X) or 0)
 writeDouble(_params + 0x8, (WorldLocation and WorldLocation.Y) or 0)
 writeDouble(_params + 0x10, (WorldLocation and WorldLocation.Z) or 0)
 writeByte(_params + 0x18, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "FindLocationClosestToWorldLocation", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindLocationClosestToWorldLocation");

BL4.FindRightVectorClosestToWorldLocation = function(OwnerAddress, WorldLocation, CoordinateSpace)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindRightVectorClosestToWorldLocation: Failed To Allocate The Params");return;end;
 WorldLocation = WorldLocation or {X=0,Y=0,Z=0}
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldLocation at +0x0, CoordinateSpace at +0x18
 writeDouble(_params + 0x0, (WorldLocation and WorldLocation.X) or 0)
 writeDouble(_params + 0x8, (WorldLocation and WorldLocation.Y) or 0)
 writeDouble(_params + 0x10, (WorldLocation and WorldLocation.Z) or 0)
 writeByte(_params + 0x18, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "FindRightVectorClosestToWorldLocation", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindRightVectorClosestToWorldLocation");

BL4.FindRollClosestToWorldLocation = function(OwnerAddress, WorldLocation, CoordinateSpace)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindRollClosestToWorldLocation: Failed To Allocate The Params");return;end;
 WorldLocation = WorldLocation or {X=0,Y=0,Z=0}
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldLocation at +0x0, CoordinateSpace at +0x18
 writeDouble(_params + 0x0, (WorldLocation and WorldLocation.X) or 0)
 writeDouble(_params + 0x8, (WorldLocation and WorldLocation.Y) or 0)
 writeDouble(_params + 0x10, (WorldLocation and WorldLocation.Z) or 0)
 writeByte(_params + 0x18, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "FindRollClosestToWorldLocation", _params);
 local RET=readFloat(_params + 0x1C);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindRollClosestToWorldLocation");

BL4.FindRotationClosestToWorldLocation = function(OwnerAddress, WorldLocation, CoordinateSpace)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindRotationClosestToWorldLocation: Failed To Allocate The Params");return;end;
 WorldLocation = WorldLocation or {X=0,Y=0,Z=0}
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldLocation at +0x0, CoordinateSpace at +0x18
 writeDouble(_params + 0x0, (WorldLocation and WorldLocation.X) or 0)
 writeDouble(_params + 0x8, (WorldLocation and WorldLocation.Y) or 0)
 writeDouble(_params + 0x10, (WorldLocation and WorldLocation.Z) or 0)
 writeByte(_params + 0x18, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "FindRotationClosestToWorldLocation", _params);
 local RET={Pitch=readFloat(_params+0x20),Yaw=readFloat(_params+0x28),Roll=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindRotationClosestToWorldLocation");

BL4.FindScaleClosestToWorldLocation = function(OwnerAddress, WorldLocation)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindScaleClosestToWorldLocation: Failed To Allocate The Params");return;end;
 WorldLocation = WorldLocation or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldLocation at +0x0
 writeDouble(_params + 0x0, (WorldLocation and WorldLocation.X) or 0)
 writeDouble(_params + 0x8, (WorldLocation and WorldLocation.Y) or 0)
 writeDouble(_params + 0x10, (WorldLocation and WorldLocation.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "FindScaleClosestToWorldLocation", _params);
 local RET={X=readFloat(_params+0x18),Y=readFloat(_params+0x20),Z=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindScaleClosestToWorldLocation");

BL4.FindTangentClosestToWorldLocation = function(OwnerAddress, WorldLocation, CoordinateSpace)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindTangentClosestToWorldLocation: Failed To Allocate The Params");return;end;
 WorldLocation = WorldLocation or {X=0,Y=0,Z=0}
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldLocation at +0x0, CoordinateSpace at +0x18
 writeDouble(_params + 0x0, (WorldLocation and WorldLocation.X) or 0)
 writeDouble(_params + 0x8, (WorldLocation and WorldLocation.Y) or 0)
 writeDouble(_params + 0x10, (WorldLocation and WorldLocation.Z) or 0)
 writeByte(_params + 0x18, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "FindTangentClosestToWorldLocation", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindTangentClosestToWorldLocation");

BL4.FindTransformClosestToWorldLocation = function(OwnerAddress, WorldLocation, CoordinateSpace, bUseScale)
 local _paramsSize = 0x80
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindTransformClosestToWorldLocation: Failed To Allocate The Params");return;end;
 WorldLocation = WorldLocation or {X=0,Y=0,Z=0}
 CoordinateSpace = CoordinateSpace or 0
 bUseScale = bUseScale or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldLocation at +0x0, CoordinateSpace at +0x18, bUseScale at +0x19
 writeDouble(_params + 0x0, (WorldLocation and WorldLocation.X) or 0)
 writeDouble(_params + 0x8, (WorldLocation and WorldLocation.Y) or 0)
 writeDouble(_params + 0x10, (WorldLocation and WorldLocation.Z) or 0)
 writeByte(_params + 0x18, CoordinateSpace)
 writeByte(_params + 0x19, bUseScale)
 UE.CallProcessEventEx(OwnerAddress, "FindTransformClosestToWorldLocation", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindTransformClosestToWorldLocation");

BL4.FindUpVectorClosestToWorldLocation = function(OwnerAddress, WorldLocation, CoordinateSpace)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindUpVectorClosestToWorldLocation: Failed To Allocate The Params");return;end;
 WorldLocation = WorldLocation or {X=0,Y=0,Z=0}
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldLocation at +0x0, CoordinateSpace at +0x18
 writeDouble(_params + 0x0, (WorldLocation and WorldLocation.X) or 0)
 writeDouble(_params + 0x8, (WorldLocation and WorldLocation.Y) or 0)
 writeDouble(_params + 0x10, (WorldLocation and WorldLocation.Z) or 0)
 writeByte(_params + 0x18, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "FindUpVectorClosestToWorldLocation", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindUpVectorClosestToWorldLocation");

BL4.GetArriveTangentAtSplinePoint = function(OwnerAddress, PointIndex, CoordinateSpace)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetArriveTangentAtSplinePoint: Failed To Allocate The Params");return;end;
 PointIndex = PointIndex or 0
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PointIndex at +0x0, CoordinateSpace at +0x4
 writeInteger(_params + 0x0, PointIndex)
 writeByte(_params + 0x4, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "GetArriveTangentAtSplinePoint", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetArriveTangentAtSplinePoint");

BL4.GetDefaultUpVector = function(OwnerAddress, CoordinateSpace)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDefaultUpVector: Failed To Allocate The Params");return;end;
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CoordinateSpace at +0x0
 writeByte(_params + 0x0, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "GetDefaultUpVector", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDefaultUpVector");

BL4.GetDirectionAtDistanceAlongSpline = function(OwnerAddress, Distance, CoordinateSpace)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDirectionAtDistanceAlongSpline: Failed To Allocate The Params");return;end;
 Distance = Distance or 0
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Distance at +0x0, CoordinateSpace at +0x4
 writeFloat(_params + 0x0, Distance)
 writeByte(_params + 0x4, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "GetDirectionAtDistanceAlongSpline", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDirectionAtDistanceAlongSpline");

BL4.GetDirectionAtSplineInputKey = function(OwnerAddress, InKey, CoordinateSpace)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDirectionAtSplineInputKey: Failed To Allocate The Params");return;end;
 InKey = InKey or 0
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, CoordinateSpace at +0x4
 writeFloat(_params + 0x0, InKey)
 writeByte(_params + 0x4, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "GetDirectionAtSplineInputKey", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDirectionAtSplineInputKey");

BL4.GetDirectionAtSplinePoint = function(OwnerAddress, PointIndex, CoordinateSpace)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDirectionAtSplinePoint: Failed To Allocate The Params");return;end;
 PointIndex = PointIndex or 0
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PointIndex at +0x0, CoordinateSpace at +0x4
 writeInteger(_params + 0x0, PointIndex)
 writeByte(_params + 0x4, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "GetDirectionAtSplinePoint", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDirectionAtSplinePoint");

BL4.GetDirectionAtTime = function(OwnerAddress, time, CoordinateSpace, bUseConstantVelocity)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDirectionAtTime: Failed To Allocate The Params");return;end;
 time = time or 0
 CoordinateSpace = CoordinateSpace or 0
 bUseConstantVelocity = bUseConstantVelocity or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: time at +0x0, CoordinateSpace at +0x4, bUseConstantVelocity at +0x5
 writeFloat(_params + 0x0, time)
 writeByte(_params + 0x4, CoordinateSpace)
 writeByte(_params + 0x5, bUseConstantVelocity)
 UE.CallProcessEventEx(OwnerAddress, "GetDirectionAtTime", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDirectionAtTime");

BL4.GetDistanceAlongSplineAtLocation = function(OwnerAddress, InLocation, CoordinateSpace)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDistanceAlongSplineAtLocation: Failed To Allocate The Params");return;end;
 InLocation = InLocation or {X=0,Y=0,Z=0}
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InLocation at +0x0, CoordinateSpace at +0x18
 writeDouble(_params + 0x0, (InLocation and InLocation.X) or 0)
 writeDouble(_params + 0x8, (InLocation and InLocation.Y) or 0)
 writeDouble(_params + 0x10, (InLocation and InLocation.Z) or 0)
 writeByte(_params + 0x18, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "GetDistanceAlongSplineAtLocation", _params);
 local RET=readFloat(_params + 0x1C);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDistanceAlongSplineAtLocation");

BL4.GetDistanceAlongSplineAtSplineInputKey = function(OwnerAddress, InKey)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDistanceAlongSplineAtSplineInputKey: Failed To Allocate The Params");return;end;
 InKey = InKey or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0
 writeFloat(_params + 0x0, InKey)
 UE.CallProcessEventEx(OwnerAddress, "GetDistanceAlongSplineAtSplineInputKey", _params);
 local RET=readFloat(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDistanceAlongSplineAtSplineInputKey");

BL4.GetDistanceAlongSplineAtSplinePoint = function(OwnerAddress, PointIndex)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDistanceAlongSplineAtSplinePoint: Failed To Allocate The Params");return;end;
 PointIndex = PointIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PointIndex at +0x0
 writeInteger(_params + 0x0, PointIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetDistanceAlongSplineAtSplinePoint", _params);
 local RET=readFloat(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDistanceAlongSplineAtSplinePoint");

BL4.GetFloatPropertyAtSplineInputKey = function(OwnerAddress, InKey, PropertyName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetFloatPropertyAtSplineInputKey: Failed To Allocate The Params");return;end;
 InKey = InKey or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, PropertyName at +0x4
 writeFloat(_params + 0x0, InKey)
 writeQword(_params + 0x4, PropertyName)
 UE.CallProcessEventEx(OwnerAddress, "GetFloatPropertyAtSplineInputKey", _params);
 local RET=readFloat(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetFloatPropertyAtSplineInputKey");

BL4.GetFloatPropertyAtSplinePoint = function(OwnerAddress, Index, PropertyName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetFloatPropertyAtSplinePoint: Failed To Allocate The Params");return;end;
 Index = Index or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Index at +0x0, PropertyName at +0x4
 writeInteger(_params + 0x0, Index)
 writeQword(_params + 0x4, PropertyName)
 UE.CallProcessEventEx(OwnerAddress, "GetFloatPropertyAtSplinePoint", _params);
 local RET=readFloat(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetFloatPropertyAtSplinePoint");

BL4.GetInputKeyAtDistanceAlongSpline = function(OwnerAddress, Distance)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInputKeyAtDistanceAlongSpline: Failed To Allocate The Params");return;end;
 Distance = Distance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Distance at +0x0
 writeFloat(_params + 0x0, Distance)
 UE.CallProcessEventEx(OwnerAddress, "GetInputKeyAtDistanceAlongSpline", _params);
 local RET=readFloat(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInputKeyAtDistanceAlongSpline");

BL4.GetInputKeyValueAtDistanceAlongSpline = function(OwnerAddress, Distance)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInputKeyValueAtDistanceAlongSpline: Failed To Allocate The Params");return;end;
 Distance = Distance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Distance at +0x0
 writeFloat(_params + 0x0, Distance)
 UE.CallProcessEventEx(OwnerAddress, "GetInputKeyValueAtDistanceAlongSpline", _params);
 local RET=readFloat(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInputKeyValueAtDistanceAlongSpline");

BL4.GetInputKeyValueAtSplinePoint = function(OwnerAddress, PointIndex)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInputKeyValueAtSplinePoint: Failed To Allocate The Params");return;end;
 PointIndex = PointIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PointIndex at +0x0
 writeInteger(_params + 0x0, PointIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetInputKeyValueAtSplinePoint", _params);
 local RET=readFloat(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInputKeyValueAtSplinePoint");

BL4.GetLeaveTangentAtSplinePoint = function(OwnerAddress, PointIndex, CoordinateSpace)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLeaveTangentAtSplinePoint: Failed To Allocate The Params");return;end;
 PointIndex = PointIndex or 0
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PointIndex at +0x0, CoordinateSpace at +0x4
 writeInteger(_params + 0x0, PointIndex)
 writeByte(_params + 0x4, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "GetLeaveTangentAtSplinePoint", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLeaveTangentAtSplinePoint");

BL4.GetLocalLocationAndTangentAtSplinePoint = function(OwnerAddress, PointIndex, LocalLocation, LocalTangent)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLocalLocationAndTangentAtSplinePoint: Failed To Allocate The Params");return;end;
 PointIndex = PointIndex or 0
 LocalLocation = LocalLocation or {X=0,Y=0,Z=0}
 LocalTangent = LocalTangent or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PointIndex at +0x0, LocalLocation at +0x8, LocalTangent at +0x20
 writeInteger(_params + 0x0, PointIndex)
 writeDouble(_params + 0x8, (LocalLocation and LocalLocation.X) or 0)
 writeDouble(_params + 0x10, (LocalLocation and LocalLocation.Y) or 0)
 writeDouble(_params + 0x18, (LocalLocation and LocalLocation.Z) or 0)
 writeDouble(_params + 0x20, (LocalTangent and LocalTangent.X) or 0)
 writeDouble(_params + 0x28, (LocalTangent and LocalTangent.Y) or 0)
 writeDouble(_params + 0x30, (LocalTangent and LocalTangent.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetLocalLocationAndTangentAtSplinePoint", _params);
 deAlloc(_params);
end
FNR("BL4.GetLocalLocationAndTangentAtSplinePoint");

BL4.GetLocationAndTangentAtSplinePoint = function(OwnerAddress, PointIndex, Location, Tangent, CoordinateSpace)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLocationAndTangentAtSplinePoint: Failed To Allocate The Params");return;end;
 PointIndex = PointIndex or 0
 Location = Location or {X=0,Y=0,Z=0}
 Tangent = Tangent or {X=0,Y=0,Z=0}
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PointIndex at +0x0, Location at +0x8, Tangent at +0x20, CoordinateSpace at +0x38
 writeInteger(_params + 0x0, PointIndex)
 writeDouble(_params + 0x8, (Location and Location.X) or 0)
 writeDouble(_params + 0x10, (Location and Location.Y) or 0)
 writeDouble(_params + 0x18, (Location and Location.Z) or 0)
 writeDouble(_params + 0x20, (Tangent and Tangent.X) or 0)
 writeDouble(_params + 0x28, (Tangent and Tangent.Y) or 0)
 writeDouble(_params + 0x30, (Tangent and Tangent.Z) or 0)
 writeByte(_params + 0x38, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "GetLocationAndTangentAtSplinePoint", _params);
 deAlloc(_params);
end
FNR("BL4.GetLocationAndTangentAtSplinePoint");

BL4.GetLocationAtDistanceAlongSpline = function(OwnerAddress, Distance, CoordinateSpace)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLocationAtDistanceAlongSpline: Failed To Allocate The Params");return;end;
 Distance = Distance or 0
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Distance at +0x0, CoordinateSpace at +0x4
 writeFloat(_params + 0x0, Distance)
 writeByte(_params + 0x4, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "GetLocationAtDistanceAlongSpline", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLocationAtDistanceAlongSpline");

BL4.GetLocationAtSplineInputKey = function(OwnerAddress, InKey, CoordinateSpace)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLocationAtSplineInputKey: Failed To Allocate The Params");return;end;
 InKey = InKey or 0
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, CoordinateSpace at +0x4
 writeFloat(_params + 0x0, InKey)
 writeByte(_params + 0x4, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "GetLocationAtSplineInputKey", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLocationAtSplineInputKey");

BL4.GetLocationAtSplinePoint = function(OwnerAddress, PointIndex, CoordinateSpace)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLocationAtSplinePoint: Failed To Allocate The Params");return;end;
 PointIndex = PointIndex or 0
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PointIndex at +0x0, CoordinateSpace at +0x4
 writeInteger(_params + 0x0, PointIndex)
 writeByte(_params + 0x4, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "GetLocationAtSplinePoint", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLocationAtSplinePoint");

BL4.GetLocationAtTime = function(OwnerAddress, time, CoordinateSpace, bUseConstantVelocity)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLocationAtTime: Failed To Allocate The Params");return;end;
 time = time or 0
 CoordinateSpace = CoordinateSpace or 0
 bUseConstantVelocity = bUseConstantVelocity or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: time at +0x0, CoordinateSpace at +0x4, bUseConstantVelocity at +0x5
 writeFloat(_params + 0x0, time)
 writeByte(_params + 0x4, CoordinateSpace)
 writeByte(_params + 0x5, bUseConstantVelocity)
 UE.CallProcessEventEx(OwnerAddress, "GetLocationAtTime", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLocationAtTime");

BL4.GetNumberOfSplinePoints = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumberOfSplinePoints: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetNumberOfSplinePoints", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumberOfSplinePoints");

BL4.GetNumberOfSplineSegments = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumberOfSplineSegments: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetNumberOfSplineSegments", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumberOfSplineSegments");

BL4.GetRightVectorAtDistanceAlongSpline = function(OwnerAddress, Distance, CoordinateSpace)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRightVectorAtDistanceAlongSpline: Failed To Allocate The Params");return;end;
 Distance = Distance or 0
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Distance at +0x0, CoordinateSpace at +0x4
 writeFloat(_params + 0x0, Distance)
 writeByte(_params + 0x4, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "GetRightVectorAtDistanceAlongSpline", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRightVectorAtDistanceAlongSpline");

BL4.GetRightVectorAtSplineInputKey = function(OwnerAddress, InKey, CoordinateSpace)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRightVectorAtSplineInputKey: Failed To Allocate The Params");return;end;
 InKey = InKey or 0
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, CoordinateSpace at +0x4
 writeFloat(_params + 0x0, InKey)
 writeByte(_params + 0x4, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "GetRightVectorAtSplineInputKey", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRightVectorAtSplineInputKey");

BL4.GetRightVectorAtSplinePoint = function(OwnerAddress, PointIndex, CoordinateSpace)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRightVectorAtSplinePoint: Failed To Allocate The Params");return;end;
 PointIndex = PointIndex or 0
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PointIndex at +0x0, CoordinateSpace at +0x4
 writeInteger(_params + 0x0, PointIndex)
 writeByte(_params + 0x4, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "GetRightVectorAtSplinePoint", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRightVectorAtSplinePoint");

BL4.GetRightVectorAtTime = function(OwnerAddress, time, CoordinateSpace, bUseConstantVelocity)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRightVectorAtTime: Failed To Allocate The Params");return;end;
 time = time or 0
 CoordinateSpace = CoordinateSpace or 0
 bUseConstantVelocity = bUseConstantVelocity or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: time at +0x0, CoordinateSpace at +0x4, bUseConstantVelocity at +0x5
 writeFloat(_params + 0x0, time)
 writeByte(_params + 0x4, CoordinateSpace)
 writeByte(_params + 0x5, bUseConstantVelocity)
 UE.CallProcessEventEx(OwnerAddress, "GetRightVectorAtTime", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRightVectorAtTime");

BL4.GetRollAtDistanceAlongSpline = function(OwnerAddress, Distance, CoordinateSpace)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRollAtDistanceAlongSpline: Failed To Allocate The Params");return;end;
 Distance = Distance or 0
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Distance at +0x0, CoordinateSpace at +0x4
 writeFloat(_params + 0x0, Distance)
 writeByte(_params + 0x4, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "GetRollAtDistanceAlongSpline", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRollAtDistanceAlongSpline");

BL4.GetRollAtSplineInputKey = function(OwnerAddress, InKey, CoordinateSpace)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRollAtSplineInputKey: Failed To Allocate The Params");return;end;
 InKey = InKey or 0
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, CoordinateSpace at +0x4
 writeFloat(_params + 0x0, InKey)
 writeByte(_params + 0x4, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "GetRollAtSplineInputKey", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRollAtSplineInputKey");

BL4.GetRollAtSplinePoint = function(OwnerAddress, PointIndex, CoordinateSpace)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRollAtSplinePoint: Failed To Allocate The Params");return;end;
 PointIndex = PointIndex or 0
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PointIndex at +0x0, CoordinateSpace at +0x4
 writeInteger(_params + 0x0, PointIndex)
 writeByte(_params + 0x4, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "GetRollAtSplinePoint", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRollAtSplinePoint");

BL4.GetRollAtTime = function(OwnerAddress, time, CoordinateSpace, bUseConstantVelocity)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRollAtTime: Failed To Allocate The Params");return;end;
 time = time or 0
 CoordinateSpace = CoordinateSpace or 0
 bUseConstantVelocity = bUseConstantVelocity or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: time at +0x0, CoordinateSpace at +0x4, bUseConstantVelocity at +0x5
 writeFloat(_params + 0x0, time)
 writeByte(_params + 0x4, CoordinateSpace)
 writeByte(_params + 0x5, bUseConstantVelocity)
 UE.CallProcessEventEx(OwnerAddress, "GetRollAtTime", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRollAtTime");

BL4.GetRotationAtDistanceAlongSpline = function(OwnerAddress, Distance, CoordinateSpace)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRotationAtDistanceAlongSpline: Failed To Allocate The Params");return;end;
 Distance = Distance or 0
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Distance at +0x0, CoordinateSpace at +0x4
 writeFloat(_params + 0x0, Distance)
 writeByte(_params + 0x4, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "GetRotationAtDistanceAlongSpline", _params);
 local RET={Pitch=readFloat(_params+0x8),Yaw=readFloat(_params+0x10),Roll=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRotationAtDistanceAlongSpline");

BL4.GetRotationAtSplineInputKey = function(OwnerAddress, InKey, CoordinateSpace)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRotationAtSplineInputKey: Failed To Allocate The Params");return;end;
 InKey = InKey or 0
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, CoordinateSpace at +0x4
 writeFloat(_params + 0x0, InKey)
 writeByte(_params + 0x4, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "GetRotationAtSplineInputKey", _params);
 local RET={Pitch=readFloat(_params+0x8),Yaw=readFloat(_params+0x10),Roll=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRotationAtSplineInputKey");

BL4.GetRotationAtSplinePoint = function(OwnerAddress, PointIndex, CoordinateSpace)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRotationAtSplinePoint: Failed To Allocate The Params");return;end;
 PointIndex = PointIndex or 0
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PointIndex at +0x0, CoordinateSpace at +0x4
 writeInteger(_params + 0x0, PointIndex)
 writeByte(_params + 0x4, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "GetRotationAtSplinePoint", _params);
 local RET={Pitch=readFloat(_params+0x8),Yaw=readFloat(_params+0x10),Roll=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRotationAtSplinePoint");

BL4.GetRotationAtTime = function(OwnerAddress, time, CoordinateSpace, bUseConstantVelocity)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRotationAtTime: Failed To Allocate The Params");return;end;
 time = time or 0
 CoordinateSpace = CoordinateSpace or 0
 bUseConstantVelocity = bUseConstantVelocity or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: time at +0x0, CoordinateSpace at +0x4, bUseConstantVelocity at +0x5
 writeFloat(_params + 0x0, time)
 writeByte(_params + 0x4, CoordinateSpace)
 writeByte(_params + 0x5, bUseConstantVelocity)
 UE.CallProcessEventEx(OwnerAddress, "GetRotationAtTime", _params);
 local RET={Pitch=readFloat(_params+0x8),Yaw=readFloat(_params+0x10),Roll=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRotationAtTime");

BL4.GetScaleAtDistanceAlongSpline = function(OwnerAddress, Distance)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetScaleAtDistanceAlongSpline: Failed To Allocate The Params");return;end;
 Distance = Distance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Distance at +0x0
 writeFloat(_params + 0x0, Distance)
 UE.CallProcessEventEx(OwnerAddress, "GetScaleAtDistanceAlongSpline", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetScaleAtDistanceAlongSpline");

BL4.GetScaleAtSplineInputKey = function(OwnerAddress, InKey)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetScaleAtSplineInputKey: Failed To Allocate The Params");return;end;
 InKey = InKey or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0
 writeFloat(_params + 0x0, InKey)
 UE.CallProcessEventEx(OwnerAddress, "GetScaleAtSplineInputKey", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetScaleAtSplineInputKey");

BL4.GetScaleAtSplinePoint = function(OwnerAddress, PointIndex)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetScaleAtSplinePoint: Failed To Allocate The Params");return;end;
 PointIndex = PointIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PointIndex at +0x0
 writeInteger(_params + 0x0, PointIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetScaleAtSplinePoint", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetScaleAtSplinePoint");

BL4.GetScaleAtTime = function(OwnerAddress, time, bUseConstantVelocity)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetScaleAtTime: Failed To Allocate The Params");return;end;
 time = time or 0
 bUseConstantVelocity = bUseConstantVelocity or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: time at +0x0, bUseConstantVelocity at +0x4
 writeFloat(_params + 0x0, time)
 writeByte(_params + 0x4, bUseConstantVelocity)
 UE.CallProcessEventEx(OwnerAddress, "GetScaleAtTime", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetScaleAtTime");

BL4.GetSplineLength = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSplineLength: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetSplineLength", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSplineLength");

BL4.GetSplinePointAt = function(OwnerAddress, PointIndex, CoordinateSpace)
 local _paramsSize = 0x90
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSplinePointAt: Failed To Allocate The Params");return;end;
 PointIndex = PointIndex or 0
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PointIndex at +0x0, CoordinateSpace at +0x4
 writeInteger(_params + 0x0, PointIndex)
 writeByte(_params + 0x4, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "GetSplinePointAt", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSplinePointAt");

BL4.GetSplinePointType = function(OwnerAddress, PointIndex)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSplinePointType: Failed To Allocate The Params");return;end;
 PointIndex = PointIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PointIndex at +0x0
 writeInteger(_params + 0x0, PointIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetSplinePointType", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSplinePointType");

BL4.GetTangentAtDistanceAlongSpline = function(OwnerAddress, Distance, CoordinateSpace)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTangentAtDistanceAlongSpline: Failed To Allocate The Params");return;end;
 Distance = Distance or 0
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Distance at +0x0, CoordinateSpace at +0x4
 writeFloat(_params + 0x0, Distance)
 writeByte(_params + 0x4, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "GetTangentAtDistanceAlongSpline", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTangentAtDistanceAlongSpline");

BL4.GetTangentAtSplineInputKey = function(OwnerAddress, InKey, CoordinateSpace)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTangentAtSplineInputKey: Failed To Allocate The Params");return;end;
 InKey = InKey or 0
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, CoordinateSpace at +0x4
 writeFloat(_params + 0x0, InKey)
 writeByte(_params + 0x4, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "GetTangentAtSplineInputKey", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTangentAtSplineInputKey");

BL4.GetTangentAtSplinePoint = function(OwnerAddress, PointIndex, CoordinateSpace)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTangentAtSplinePoint: Failed To Allocate The Params");return;end;
 PointIndex = PointIndex or 0
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PointIndex at +0x0, CoordinateSpace at +0x4
 writeInteger(_params + 0x0, PointIndex)
 writeByte(_params + 0x4, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "GetTangentAtSplinePoint", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTangentAtSplinePoint");

BL4.GetTangentAtTime = function(OwnerAddress, time, CoordinateSpace, bUseConstantVelocity)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTangentAtTime: Failed To Allocate The Params");return;end;
 time = time or 0
 CoordinateSpace = CoordinateSpace or 0
 bUseConstantVelocity = bUseConstantVelocity or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: time at +0x0, CoordinateSpace at +0x4, bUseConstantVelocity at +0x5
 writeFloat(_params + 0x0, time)
 writeByte(_params + 0x4, CoordinateSpace)
 writeByte(_params + 0x5, bUseConstantVelocity)
 UE.CallProcessEventEx(OwnerAddress, "GetTangentAtTime", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTangentAtTime");

BL4.GetTimeAtDistanceAlongSpline = function(OwnerAddress, Distance)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTimeAtDistanceAlongSpline: Failed To Allocate The Params");return;end;
 Distance = Distance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Distance at +0x0
 writeFloat(_params + 0x0, Distance)
 UE.CallProcessEventEx(OwnerAddress, "GetTimeAtDistanceAlongSpline", _params);
 local RET=readFloat(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTimeAtDistanceAlongSpline");

BL4.GetTransformAtDistanceAlongSpline = function(OwnerAddress, Distance, CoordinateSpace, bUseScale)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTransformAtDistanceAlongSpline: Failed To Allocate The Params");return;end;
 Distance = Distance or 0
 CoordinateSpace = CoordinateSpace or 0
 bUseScale = bUseScale or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Distance at +0x0, CoordinateSpace at +0x4, bUseScale at +0x5
 writeFloat(_params + 0x0, Distance)
 writeByte(_params + 0x4, CoordinateSpace)
 writeByte(_params + 0x5, bUseScale)
 UE.CallProcessEventEx(OwnerAddress, "GetTransformAtDistanceAlongSpline", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTransformAtDistanceAlongSpline");

BL4.GetTransformAtSplineInputKey = function(OwnerAddress, InKey, CoordinateSpace, bUseScale)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTransformAtSplineInputKey: Failed To Allocate The Params");return;end;
 InKey = InKey or 0
 CoordinateSpace = CoordinateSpace or 0
 bUseScale = bUseScale or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, CoordinateSpace at +0x4, bUseScale at +0x5
 writeFloat(_params + 0x0, InKey)
 writeByte(_params + 0x4, CoordinateSpace)
 writeByte(_params + 0x5, bUseScale)
 UE.CallProcessEventEx(OwnerAddress, "GetTransformAtSplineInputKey", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTransformAtSplineInputKey");

BL4.GetTransformAtSplinePoint = function(OwnerAddress, PointIndex, CoordinateSpace, bUseScale)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTransformAtSplinePoint: Failed To Allocate The Params");return;end;
 PointIndex = PointIndex or 0
 CoordinateSpace = CoordinateSpace or 0
 bUseScale = bUseScale or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PointIndex at +0x0, CoordinateSpace at +0x4, bUseScale at +0x5
 writeInteger(_params + 0x0, PointIndex)
 writeByte(_params + 0x4, CoordinateSpace)
 writeByte(_params + 0x5, bUseScale)
 UE.CallProcessEventEx(OwnerAddress, "GetTransformAtSplinePoint", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTransformAtSplinePoint");

BL4.GetTransformAtTime = function(OwnerAddress, time, CoordinateSpace, bUseConstantVelocity, bUseScale)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTransformAtTime: Failed To Allocate The Params");return;end;
 time = time or 0
 CoordinateSpace = CoordinateSpace or 0
 bUseConstantVelocity = bUseConstantVelocity or false
 bUseScale = bUseScale or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: time at +0x0, CoordinateSpace at +0x4, bUseConstantVelocity at +0x5, bUseScale at +0x6
 writeFloat(_params + 0x0, time)
 writeByte(_params + 0x4, CoordinateSpace)
 writeByte(_params + 0x5, bUseConstantVelocity)
 writeByte(_params + 0x6, bUseScale)
 UE.CallProcessEventEx(OwnerAddress, "GetTransformAtTime", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTransformAtTime");

BL4.GetUpVectorAtDistanceAlongSpline = function(OwnerAddress, Distance, CoordinateSpace)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetUpVectorAtDistanceAlongSpline: Failed To Allocate The Params");return;end;
 Distance = Distance or 0
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Distance at +0x0, CoordinateSpace at +0x4
 writeFloat(_params + 0x0, Distance)
 writeByte(_params + 0x4, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "GetUpVectorAtDistanceAlongSpline", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetUpVectorAtDistanceAlongSpline");

BL4.GetUpVectorAtSplineInputKey = function(OwnerAddress, InKey, CoordinateSpace)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetUpVectorAtSplineInputKey: Failed To Allocate The Params");return;end;
 InKey = InKey or 0
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, CoordinateSpace at +0x4
 writeFloat(_params + 0x0, InKey)
 writeByte(_params + 0x4, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "GetUpVectorAtSplineInputKey", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetUpVectorAtSplineInputKey");

BL4.GetUpVectorAtSplinePoint = function(OwnerAddress, PointIndex, CoordinateSpace)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetUpVectorAtSplinePoint: Failed To Allocate The Params");return;end;
 PointIndex = PointIndex or 0
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PointIndex at +0x0, CoordinateSpace at +0x4
 writeInteger(_params + 0x0, PointIndex)
 writeByte(_params + 0x4, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "GetUpVectorAtSplinePoint", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetUpVectorAtSplinePoint");

BL4.GetUpVectorAtTime = function(OwnerAddress, time, CoordinateSpace, bUseConstantVelocity)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetUpVectorAtTime: Failed To Allocate The Params");return;end;
 time = time or 0
 CoordinateSpace = CoordinateSpace or 0
 bUseConstantVelocity = bUseConstantVelocity or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: time at +0x0, CoordinateSpace at +0x4, bUseConstantVelocity at +0x5
 writeFloat(_params + 0x0, time)
 writeByte(_params + 0x4, CoordinateSpace)
 writeByte(_params + 0x5, bUseConstantVelocity)
 UE.CallProcessEventEx(OwnerAddress, "GetUpVectorAtTime", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetUpVectorAtTime");

BL4.GetVectorPropertyAtSplineInputKey = function(OwnerAddress, InKey, PropertyName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVectorPropertyAtSplineInputKey: Failed To Allocate The Params");return;end;
 InKey = InKey or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, PropertyName at +0x4
 writeFloat(_params + 0x0, InKey)
 writeQword(_params + 0x4, PropertyName)
 UE.CallProcessEventEx(OwnerAddress, "GetVectorPropertyAtSplineInputKey", _params);
 local RET={X=readFloat(_params+0x10),Y=readFloat(_params+0x18),Z=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVectorPropertyAtSplineInputKey");

BL4.GetVectorPropertyAtSplinePoint = function(OwnerAddress, Index, PropertyName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVectorPropertyAtSplinePoint: Failed To Allocate The Params");return;end;
 Index = Index or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Index at +0x0, PropertyName at +0x4
 writeInteger(_params + 0x0, Index)
 writeQword(_params + 0x4, PropertyName)
 UE.CallProcessEventEx(OwnerAddress, "GetVectorPropertyAtSplinePoint", _params);
 local RET={X=readFloat(_params+0x10),Y=readFloat(_params+0x18),Z=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVectorPropertyAtSplinePoint");

BL4.GetWorldDirectionAtDistanceAlongSpline = function(OwnerAddress, Distance)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetWorldDirectionAtDistanceAlongSpline: Failed To Allocate The Params");return;end;
 Distance = Distance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Distance at +0x0
 writeFloat(_params + 0x0, Distance)
 UE.CallProcessEventEx(OwnerAddress, "GetWorldDirectionAtDistanceAlongSpline", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetWorldDirectionAtDistanceAlongSpline");

BL4.GetWorldDirectionAtTime = function(OwnerAddress, time, bUseConstantVelocity)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetWorldDirectionAtTime: Failed To Allocate The Params");return;end;
 time = time or 0
 bUseConstantVelocity = bUseConstantVelocity or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: time at +0x0, bUseConstantVelocity at +0x4
 writeFloat(_params + 0x0, time)
 writeByte(_params + 0x4, bUseConstantVelocity)
 UE.CallProcessEventEx(OwnerAddress, "GetWorldDirectionAtTime", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetWorldDirectionAtTime");

BL4.GetWorldLocationAtDistanceAlongSpline = function(OwnerAddress, Distance)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetWorldLocationAtDistanceAlongSpline: Failed To Allocate The Params");return;end;
 Distance = Distance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Distance at +0x0
 writeFloat(_params + 0x0, Distance)
 UE.CallProcessEventEx(OwnerAddress, "GetWorldLocationAtDistanceAlongSpline", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetWorldLocationAtDistanceAlongSpline");

BL4.GetWorldLocationAtSplinePoint = function(OwnerAddress, PointIndex)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetWorldLocationAtSplinePoint: Failed To Allocate The Params");return;end;
 PointIndex = PointIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PointIndex at +0x0
 writeInteger(_params + 0x0, PointIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetWorldLocationAtSplinePoint", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetWorldLocationAtSplinePoint");

BL4.GetWorldLocationAtTime = function(OwnerAddress, time, bUseConstantVelocity)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetWorldLocationAtTime: Failed To Allocate The Params");return;end;
 time = time or 0
 bUseConstantVelocity = bUseConstantVelocity or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: time at +0x0, bUseConstantVelocity at +0x4
 writeFloat(_params + 0x0, time)
 writeByte(_params + 0x4, bUseConstantVelocity)
 UE.CallProcessEventEx(OwnerAddress, "GetWorldLocationAtTime", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetWorldLocationAtTime");

BL4.GetWorldRotationAtDistanceAlongSpline = function(OwnerAddress, Distance)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetWorldRotationAtDistanceAlongSpline: Failed To Allocate The Params");return;end;
 Distance = Distance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Distance at +0x0
 writeFloat(_params + 0x0, Distance)
 UE.CallProcessEventEx(OwnerAddress, "GetWorldRotationAtDistanceAlongSpline", _params);
 local RET={Pitch=readFloat(_params+0x8),Yaw=readFloat(_params+0x10),Roll=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetWorldRotationAtDistanceAlongSpline");

BL4.GetWorldRotationAtTime = function(OwnerAddress, time, bUseConstantVelocity)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetWorldRotationAtTime: Failed To Allocate The Params");return;end;
 time = time or 0
 bUseConstantVelocity = bUseConstantVelocity or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: time at +0x0, bUseConstantVelocity at +0x4
 writeFloat(_params + 0x0, time)
 writeByte(_params + 0x4, bUseConstantVelocity)
 UE.CallProcessEventEx(OwnerAddress, "GetWorldRotationAtTime", _params);
 local RET={Pitch=readFloat(_params+0x8),Yaw=readFloat(_params+0x10),Roll=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetWorldRotationAtTime");

BL4.GetWorldTangentAtDistanceAlongSpline = function(OwnerAddress, Distance)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetWorldTangentAtDistanceAlongSpline: Failed To Allocate The Params");return;end;
 Distance = Distance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Distance at +0x0
 writeFloat(_params + 0x0, Distance)
 UE.CallProcessEventEx(OwnerAddress, "GetWorldTangentAtDistanceAlongSpline", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetWorldTangentAtDistanceAlongSpline");

BL4.IsClosedLoop = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsClosedLoop: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsClosedLoop", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsClosedLoop");

BL4.RemoveSplinePoint = function(OwnerAddress, Index, bUpdateSpline)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveSplinePoint: Failed To Allocate The Params");return;end;
 Index = Index or 0
 bUpdateSpline = bUpdateSpline or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Index at +0x0, bUpdateSpline at +0x4
 writeInteger(_params + 0x0, Index)
 writeByte(_params + 0x4, bUpdateSpline)
 UE.CallProcessEventEx(OwnerAddress, "RemoveSplinePoint", _params);
 deAlloc(_params);
end
FNR("BL4.RemoveSplinePoint");

BL4.SetClosedLoop = function(OwnerAddress, bInClosedLoop, bUpdateSpline)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetClosedLoop: Failed To Allocate The Params");return;end;
 bInClosedLoop = bInClosedLoop or false
 bUpdateSpline = bUpdateSpline or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInClosedLoop at +0x0, bUpdateSpline at +0x1
 writeByte(_params + 0x0, bInClosedLoop)
 writeByte(_params + 0x1, bUpdateSpline)
 UE.CallProcessEventEx(OwnerAddress, "SetClosedLoop", _params);
 deAlloc(_params);
end
FNR("BL4.SetClosedLoop");

BL4.SetClosedLoopAtPosition = function(OwnerAddress, bInClosedLoop, Key, bUpdateSpline)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetClosedLoopAtPosition: Failed To Allocate The Params");return;end;
 bInClosedLoop = bInClosedLoop or false
 Key = Key or 0
 bUpdateSpline = bUpdateSpline or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bInClosedLoop at +0x0, Key at +0x4, bUpdateSpline at +0x8
 writeByte(_params + 0x0, bInClosedLoop)
 writeFloat(_params + 0x4, Key)
 writeByte(_params + 0x8, bUpdateSpline)
 UE.CallProcessEventEx(OwnerAddress, "SetClosedLoopAtPosition", _params);
 deAlloc(_params);
end
FNR("BL4.SetClosedLoopAtPosition");

BL4.SetDefaultUpVector = function(OwnerAddress, UpVector, CoordinateSpace)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDefaultUpVector: Failed To Allocate The Params");return;end;
 UpVector = UpVector or {X=0,Y=0,Z=0}
 CoordinateSpace = CoordinateSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: UpVector at +0x0, CoordinateSpace at +0x18
 writeDouble(_params + 0x0, (UpVector and UpVector.X) or 0)
 writeDouble(_params + 0x8, (UpVector and UpVector.Y) or 0)
 writeDouble(_params + 0x10, (UpVector and UpVector.Z) or 0)
 writeByte(_params + 0x18, CoordinateSpace)
 UE.CallProcessEventEx(OwnerAddress, "SetDefaultUpVector", _params);
 deAlloc(_params);
end
FNR("BL4.SetDefaultUpVector");

BL4.SetDrawDebug = function(OwnerAddress, bShow)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDrawDebug: Failed To Allocate The Params");return;end;
 bShow = bShow or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bShow at +0x0
 writeByte(_params + 0x0, bShow)
 UE.CallProcessEventEx(OwnerAddress, "SetDrawDebug", _params);
 deAlloc(_params);
end
FNR("BL4.SetDrawDebug");

BL4.SetLocationAtSplinePoint = function(OwnerAddress, PointIndex, InLocation, CoordinateSpace, bUpdateSpline)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLocationAtSplinePoint: Failed To Allocate The Params");return;end;
 PointIndex = PointIndex or 0
 InLocation = InLocation or {X=0,Y=0,Z=0}
 CoordinateSpace = CoordinateSpace or 0
 bUpdateSpline = bUpdateSpline or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PointIndex at +0x0, InLocation at +0x8, CoordinateSpace at +0x20, bUpdateSpline at +0x21
 writeInteger(_params + 0x0, PointIndex)
 writeDouble(_params + 0x8, (InLocation and InLocation.X) or 0)
 writeDouble(_params + 0x10, (InLocation and InLocation.Y) or 0)
 writeDouble(_params + 0x18, (InLocation and InLocation.Z) or 0)
 writeByte(_params + 0x20, CoordinateSpace)
 writeByte(_params + 0x21, bUpdateSpline)
 UE.CallProcessEventEx(OwnerAddress, "SetLocationAtSplinePoint", _params);
 deAlloc(_params);
end
FNR("BL4.SetLocationAtSplinePoint");

BL4.SetOverrideConstructionScript = function(OwnerAddress, InOverride)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetOverrideConstructionScript: Failed To Allocate The Params");return;end;
 InOverride = InOverride or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InOverride at +0x0
 writeByte(_params + 0x0, InOverride)
 UE.CallProcessEventEx(OwnerAddress, "SetOverrideConstructionScript", _params);
 deAlloc(_params);
end
FNR("BL4.SetOverrideConstructionScript");

BL4.SetRotationAtSplinePoint = function(OwnerAddress, PointIndex, InRotation, CoordinateSpace, bUpdateSpline)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRotationAtSplinePoint: Failed To Allocate The Params");return;end;
 PointIndex = PointIndex or 0
 InRotation = InRotation or {Pitch=0,Yaw=0,Roll=0}
 CoordinateSpace = CoordinateSpace or 0
 bUpdateSpline = bUpdateSpline or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PointIndex at +0x0, InRotation at +0x8, CoordinateSpace at +0x20, bUpdateSpline at +0x21
 writeInteger(_params + 0x0, PointIndex)
 writeDouble(_params + 0x8, (InRotation and InRotation.Pitch) or 0)
 writeDouble(_params + 0x10, (InRotation and InRotation.Yaw) or 0)
 writeDouble(_params + 0x18, (InRotation and InRotation.Roll) or 0)
 writeByte(_params + 0x20, CoordinateSpace)
 writeByte(_params + 0x21, bUpdateSpline)
 UE.CallProcessEventEx(OwnerAddress, "SetRotationAtSplinePoint", _params);
 deAlloc(_params);
end
FNR("BL4.SetRotationAtSplinePoint");

BL4.SetScaleAtSplinePoint = function(OwnerAddress, PointIndex, InScaleVector, bUpdateSpline)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetScaleAtSplinePoint: Failed To Allocate The Params");return;end;
 PointIndex = PointIndex or 0
 InScaleVector = InScaleVector or {X=0,Y=0,Z=0}
 bUpdateSpline = bUpdateSpline or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PointIndex at +0x0, InScaleVector at +0x8, bUpdateSpline at +0x20
 writeInteger(_params + 0x0, PointIndex)
 writeDouble(_params + 0x8, (InScaleVector and InScaleVector.X) or 0)
 writeDouble(_params + 0x10, (InScaleVector and InScaleVector.Y) or 0)
 writeDouble(_params + 0x18, (InScaleVector and InScaleVector.Z) or 0)
 writeByte(_params + 0x20, bUpdateSpline)
 UE.CallProcessEventEx(OwnerAddress, "SetScaleAtSplinePoint", _params);
 deAlloc(_params);
end
FNR("BL4.SetScaleAtSplinePoint");

BL4.SetSelectedSplineSegmentColor = function(OwnerAddress, SegmentColor)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSelectedSplineSegmentColor: Failed To Allocate The Params");return;end;
 SegmentColor = SegmentColor or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SegmentColor at +0x0
 writeFloat(_params + 0x0, (SegmentColor and SegmentColor.R) or 0)
 writeFloat(_params + 0x4, (SegmentColor and SegmentColor.G) or 0)
 writeFloat(_params + 0x8, (SegmentColor and SegmentColor.B) or 0)
 writeFloat(_params + 0xC, (SegmentColor and SegmentColor.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetSelectedSplineSegmentColor", _params);
 deAlloc(_params);
end
FNR("BL4.SetSelectedSplineSegmentColor");

BL4.SetSplineLocalPoints = function(OwnerAddress, points)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSplineLocalPoints: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: points at +0x0
 writeQword(_params + 0x0, points)
 UE.CallProcessEventEx(OwnerAddress, "SetSplineLocalPoints", _params);
 deAlloc(_params);
end
FNR("BL4.SetSplineLocalPoints");

BL4.SetSplinePoints = function(OwnerAddress, points, CoordinateSpace, bUpdateSpline)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSplinePoints: Failed To Allocate The Params");return;end;
 CoordinateSpace = CoordinateSpace or 0
 bUpdateSpline = bUpdateSpline or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: points at +0x0, CoordinateSpace at +0x10, bUpdateSpline at +0x11
 writeQword(_params + 0x0, points)
 writeByte(_params + 0x10, CoordinateSpace)
 writeByte(_params + 0x11, bUpdateSpline)
 UE.CallProcessEventEx(OwnerAddress, "SetSplinePoints", _params);
 deAlloc(_params);
end
FNR("BL4.SetSplinePoints");

BL4.SetSplinePointType = function(OwnerAddress, PointIndex, type, bUpdateSpline)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSplinePointType: Failed To Allocate The Params");return;end;
 PointIndex = PointIndex or 0
 type = type or 0
 bUpdateSpline = bUpdateSpline or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PointIndex at +0x0, type at +0x4, bUpdateSpline at +0x5
 writeInteger(_params + 0x0, PointIndex)
 writeByte(_params + 0x4, type)
 writeByte(_params + 0x5, bUpdateSpline)
 UE.CallProcessEventEx(OwnerAddress, "SetSplinePointType", _params);
 deAlloc(_params);
end
FNR("BL4.SetSplinePointType");

BL4.SetSplineWorldPoints = function(OwnerAddress, points)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSplineWorldPoints: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: points at +0x0
 writeQword(_params + 0x0, points)
 UE.CallProcessEventEx(OwnerAddress, "SetSplineWorldPoints", _params);
 deAlloc(_params);
end
FNR("BL4.SetSplineWorldPoints");

BL4.SetTangentAtSplinePoint = function(OwnerAddress, PointIndex, InTangent, CoordinateSpace, bUpdateSpline)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTangentAtSplinePoint: Failed To Allocate The Params");return;end;
 PointIndex = PointIndex or 0
 InTangent = InTangent or {X=0,Y=0,Z=0}
 CoordinateSpace = CoordinateSpace or 0
 bUpdateSpline = bUpdateSpline or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PointIndex at +0x0, InTangent at +0x8, CoordinateSpace at +0x20, bUpdateSpline at +0x21
 writeInteger(_params + 0x0, PointIndex)
 writeDouble(_params + 0x8, (InTangent and InTangent.X) or 0)
 writeDouble(_params + 0x10, (InTangent and InTangent.Y) or 0)
 writeDouble(_params + 0x18, (InTangent and InTangent.Z) or 0)
 writeByte(_params + 0x20, CoordinateSpace)
 writeByte(_params + 0x21, bUpdateSpline)
 UE.CallProcessEventEx(OwnerAddress, "SetTangentAtSplinePoint", _params);
 deAlloc(_params);
end
FNR("BL4.SetTangentAtSplinePoint");

BL4.SetTangentColor = function(OwnerAddress, TangentColor)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTangentColor: Failed To Allocate The Params");return;end;
 TangentColor = TangentColor or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TangentColor at +0x0
 writeFloat(_params + 0x0, (TangentColor and TangentColor.R) or 0)
 writeFloat(_params + 0x4, (TangentColor and TangentColor.G) or 0)
 writeFloat(_params + 0x8, (TangentColor and TangentColor.B) or 0)
 writeFloat(_params + 0xC, (TangentColor and TangentColor.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetTangentColor", _params);
 deAlloc(_params);
end
FNR("BL4.SetTangentColor");

BL4.SetTangentsAtSplinePoint = function(OwnerAddress, PointIndex, InArriveTangent, InLeaveTangent, CoordinateSpace, bUpdateSpline)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTangentsAtSplinePoint: Failed To Allocate The Params");return;end;
 PointIndex = PointIndex or 0
 InArriveTangent = InArriveTangent or {X=0,Y=0,Z=0}
 InLeaveTangent = InLeaveTangent or {X=0,Y=0,Z=0}
 CoordinateSpace = CoordinateSpace or 0
 bUpdateSpline = bUpdateSpline or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PointIndex at +0x0, InArriveTangent at +0x8, InLeaveTangent at +0x20, CoordinateSpace at +0x38, bUpdateSpline at +0x39
 writeInteger(_params + 0x0, PointIndex)
 writeDouble(_params + 0x8, (InArriveTangent and InArriveTangent.X) or 0)
 writeDouble(_params + 0x10, (InArriveTangent and InArriveTangent.Y) or 0)
 writeDouble(_params + 0x18, (InArriveTangent and InArriveTangent.Z) or 0)
 writeDouble(_params + 0x20, (InLeaveTangent and InLeaveTangent.X) or 0)
 writeDouble(_params + 0x28, (InLeaveTangent and InLeaveTangent.Y) or 0)
 writeDouble(_params + 0x30, (InLeaveTangent and InLeaveTangent.Z) or 0)
 writeByte(_params + 0x38, CoordinateSpace)
 writeByte(_params + 0x39, bUpdateSpline)
 UE.CallProcessEventEx(OwnerAddress, "SetTangentsAtSplinePoint", _params);
 deAlloc(_params);
end
FNR("BL4.SetTangentsAtSplinePoint");

BL4.SetUnselectedSplineSegmentColor = function(OwnerAddress, SegmentColor)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetUnselectedSplineSegmentColor: Failed To Allocate The Params");return;end;
 SegmentColor = SegmentColor or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SegmentColor at +0x0
 writeFloat(_params + 0x0, (SegmentColor and SegmentColor.R) or 0)
 writeFloat(_params + 0x4, (SegmentColor and SegmentColor.G) or 0)
 writeFloat(_params + 0x8, (SegmentColor and SegmentColor.B) or 0)
 writeFloat(_params + 0xC, (SegmentColor and SegmentColor.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetUnselectedSplineSegmentColor", _params);
 deAlloc(_params);
end
FNR("BL4.SetUnselectedSplineSegmentColor");

BL4.SetUpVectorAtSplinePoint = function(OwnerAddress, PointIndex, InUpVector, CoordinateSpace, bUpdateSpline)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetUpVectorAtSplinePoint: Failed To Allocate The Params");return;end;
 PointIndex = PointIndex or 0
 InUpVector = InUpVector or {X=0,Y=0,Z=0}
 CoordinateSpace = CoordinateSpace or 0
 bUpdateSpline = bUpdateSpline or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PointIndex at +0x0, InUpVector at +0x8, CoordinateSpace at +0x20, bUpdateSpline at +0x21
 writeInteger(_params + 0x0, PointIndex)
 writeDouble(_params + 0x8, (InUpVector and InUpVector.X) or 0)
 writeDouble(_params + 0x10, (InUpVector and InUpVector.Y) or 0)
 writeDouble(_params + 0x18, (InUpVector and InUpVector.Z) or 0)
 writeByte(_params + 0x20, CoordinateSpace)
 writeByte(_params + 0x21, bUpdateSpline)
 UE.CallProcessEventEx(OwnerAddress, "SetUpVectorAtSplinePoint", _params);
 deAlloc(_params);
end
FNR("BL4.SetUpVectorAtSplinePoint");

BL4.SetWorldLocationAtSplinePoint = function(OwnerAddress, PointIndex, InLocation)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetWorldLocationAtSplinePoint: Failed To Allocate The Params");return;end;
 PointIndex = PointIndex or 0
 InLocation = InLocation or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PointIndex at +0x0, InLocation at +0x8
 writeInteger(_params + 0x0, PointIndex)
 writeDouble(_params + 0x8, (InLocation and InLocation.X) or 0)
 writeDouble(_params + 0x10, (InLocation and InLocation.Y) or 0)
 writeDouble(_params + 0x18, (InLocation and InLocation.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetWorldLocationAtSplinePoint", _params);
 deAlloc(_params);
end
FNR("BL4.SetWorldLocationAtSplinePoint");

