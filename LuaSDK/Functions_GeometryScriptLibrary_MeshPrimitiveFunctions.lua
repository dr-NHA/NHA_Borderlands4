BL4.AppendBoundingBox = function(TargetMesh_DynamicMesh, PrimitiveOptions, Transform, Box, StepsX, StepsY, StepsZ, debug_GeometryScriptDebug)
 local _paramsSize = 0xC8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendBoundingBox: Failed To Allocate The Params");return;end;
 StepsX = StepsX or 0
 StepsY = StepsY or 0
 StepsZ = StepsZ or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, PrimitiveOptions at +0x8, Transform at +0x10, Box at +0x70, StepsX at +0xA8, StepsY at +0xAC, StepsZ at +0xB0, debug at +0xB8
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, PrimitiveOptions)
 writeQword(_params + 0x10, Transform)
 writeQword(_params + 0x70, Box)
 writeInteger(_params + 0xA8, StepsX)
 writeInteger(_params + 0xAC, StepsY)
 writeInteger(_params + 0xB0, StepsZ)
 writeQword(_params + 0xB8, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendBoundingBox", _params);
 local RET=readQword(_params + 0xC0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendBoundingBox");

BL4.AppendBoundingBoxWithCollision = function(TargetMesh_DynamicMesh, SimpleCollision, PrimitiveOptions, Transform, Box, StepsX, StepsY, StepsZ, debug_GeometryScriptDebug)
 local _paramsSize = 0x148
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendBoundingBoxWithCollision: Failed To Allocate The Params");return;end;
 StepsX = StepsX or 0
 StepsY = StepsY or 0
 StepsZ = StepsZ or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, SimpleCollision at +0x8, PrimitiveOptions at +0x88, Transform at +0x90, Box at +0xF0, StepsX at +0x128, StepsY at +0x12C, StepsZ at +0x130, debug at +0x138
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, SimpleCollision)
 writeQword(_params + 0x88, PrimitiveOptions)
 writeQword(_params + 0x90, Transform)
 writeQword(_params + 0xF0, Box)
 writeInteger(_params + 0x128, StepsX)
 writeInteger(_params + 0x12C, StepsY)
 writeInteger(_params + 0x130, StepsZ)
 writeQword(_params + 0x138, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendBoundingBoxWithCollision", _params);
 local RET=readQword(_params + 0x140);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendBoundingBoxWithCollision");

BL4.AppendBox = function(TargetMesh_DynamicMesh, PrimitiveOptions, Transform, DimensionX, DimensionY, DimensionZ, StepsX, StepsY, StepsZ, Origin, debug_GeometryScriptDebug)
 local _paramsSize = 0xA0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendBox: Failed To Allocate The Params");return;end;
 DimensionX = DimensionX or 0
 DimensionY = DimensionY or 0
 DimensionZ = DimensionZ or 0
 StepsX = StepsX or 0
 StepsY = StepsY or 0
 StepsZ = StepsZ or 0
 Origin = Origin or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, PrimitiveOptions at +0x8, Transform at +0x10, DimensionX at +0x70, DimensionY at +0x74, DimensionZ at +0x78, StepsX at +0x7C, StepsY at +0x80, StepsZ at +0x84, Origin at +0x88, debug at +0x90
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, PrimitiveOptions)
 writeQword(_params + 0x10, Transform)
 writeFloat(_params + 0x70, DimensionX)
 writeFloat(_params + 0x74, DimensionY)
 writeFloat(_params + 0x78, DimensionZ)
 writeInteger(_params + 0x7C, StepsX)
 writeInteger(_params + 0x80, StepsY)
 writeInteger(_params + 0x84, StepsZ)
 writeByte(_params + 0x88, Origin)
 writeQword(_params + 0x90, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendBox", _params);
 local RET=readQword(_params + 0x98);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendBox");

BL4.AppendBoxWithCollision = function(TargetMesh_DynamicMesh, SimpleCollision, PrimitiveOptions, Transform, DimensionX, DimensionY, DimensionZ, StepsX, StepsY, StepsZ, Origin, debug_GeometryScriptDebug)
 local _paramsSize = 0x120
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendBoxWithCollision: Failed To Allocate The Params");return;end;
 DimensionX = DimensionX or 0
 DimensionY = DimensionY or 0
 DimensionZ = DimensionZ or 0
 StepsX = StepsX or 0
 StepsY = StepsY or 0
 StepsZ = StepsZ or 0
 Origin = Origin or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, SimpleCollision at +0x8, PrimitiveOptions at +0x88, Transform at +0x90, DimensionX at +0xF0, DimensionY at +0xF4, DimensionZ at +0xF8, StepsX at +0xFC, StepsY at +0x100, StepsZ at +0x104, Origin at +0x108, debug at +0x110
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, SimpleCollision)
 writeQword(_params + 0x88, PrimitiveOptions)
 writeQword(_params + 0x90, Transform)
 writeFloat(_params + 0xF0, DimensionX)
 writeFloat(_params + 0xF4, DimensionY)
 writeFloat(_params + 0xF8, DimensionZ)
 writeInteger(_params + 0xFC, StepsX)
 writeInteger(_params + 0x100, StepsY)
 writeInteger(_params + 0x104, StepsZ)
 writeByte(_params + 0x108, Origin)
 writeQword(_params + 0x110, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendBoxWithCollision", _params);
 local RET=readQword(_params + 0x118);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendBoxWithCollision");

BL4.AppendCapsule = function(TargetMesh_DynamicMesh, PrimitiveOptions, Transform, Radius, LineLength, HemisphereSteps, CircleSteps, SegmentSteps, Origin, debug_GeometryScriptDebug)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendCapsule: Failed To Allocate The Params");return;end;
 Radius = Radius or 0
 LineLength = LineLength or 0
 HemisphereSteps = HemisphereSteps or 0
 CircleSteps = CircleSteps or 0
 SegmentSteps = SegmentSteps or 0
 Origin = Origin or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, PrimitiveOptions at +0x8, Transform at +0x10, Radius at +0x70, LineLength at +0x74, HemisphereSteps at +0x78, CircleSteps at +0x7C, SegmentSteps at +0x80, Origin at +0x84, debug at +0x88
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, PrimitiveOptions)
 writeQword(_params + 0x10, Transform)
 writeFloat(_params + 0x70, Radius)
 writeFloat(_params + 0x74, LineLength)
 writeInteger(_params + 0x78, HemisphereSteps)
 writeInteger(_params + 0x7C, CircleSteps)
 writeInteger(_params + 0x80, SegmentSteps)
 writeByte(_params + 0x84, Origin)
 writeQword(_params + 0x88, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendCapsule", _params);
 local RET=readQword(_params + 0x90);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendCapsule");

BL4.AppendCapsuleWithCollision = function(TargetMesh_DynamicMesh, SimpleCollision, PrimitiveOptions, Transform, Radius, LineLength, HemisphereSteps, CircleSteps, SegmentSteps, Origin, debug_GeometryScriptDebug)
 local _paramsSize = 0x118
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendCapsuleWithCollision: Failed To Allocate The Params");return;end;
 Radius = Radius or 0
 LineLength = LineLength or 0
 HemisphereSteps = HemisphereSteps or 0
 CircleSteps = CircleSteps or 0
 SegmentSteps = SegmentSteps or 0
 Origin = Origin or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, SimpleCollision at +0x8, PrimitiveOptions at +0x88, Transform at +0x90, Radius at +0xF0, LineLength at +0xF4, HemisphereSteps at +0xF8, CircleSteps at +0xFC, SegmentSteps at +0x100, Origin at +0x104, debug at +0x108
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, SimpleCollision)
 writeQword(_params + 0x88, PrimitiveOptions)
 writeQword(_params + 0x90, Transform)
 writeFloat(_params + 0xF0, Radius)
 writeFloat(_params + 0xF4, LineLength)
 writeInteger(_params + 0xF8, HemisphereSteps)
 writeInteger(_params + 0xFC, CircleSteps)
 writeInteger(_params + 0x100, SegmentSteps)
 writeByte(_params + 0x104, Origin)
 writeQword(_params + 0x108, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendCapsuleWithCollision", _params);
 local RET=readQword(_params + 0x110);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendCapsuleWithCollision");

BL4.AppendCone = function(TargetMesh_DynamicMesh, PrimitiveOptions, Transform, BaseRadius, TopRadius, Height, RadialSteps, HeightSteps, bCapped, Origin, debug_GeometryScriptDebug)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendCone: Failed To Allocate The Params");return;end;
 BaseRadius = BaseRadius or 0
 TopRadius = TopRadius or 0
 Height = Height or 0
 RadialSteps = RadialSteps or 0
 HeightSteps = HeightSteps or 0
 bCapped = bCapped or false
 Origin = Origin or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, PrimitiveOptions at +0x8, Transform at +0x10, BaseRadius at +0x70, TopRadius at +0x74, Height at +0x78, RadialSteps at +0x7C, HeightSteps at +0x80, bCapped at +0x84, Origin at +0x85, debug at +0x88
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, PrimitiveOptions)
 writeQword(_params + 0x10, Transform)
 writeFloat(_params + 0x70, BaseRadius)
 writeFloat(_params + 0x74, TopRadius)
 writeFloat(_params + 0x78, Height)
 writeInteger(_params + 0x7C, RadialSteps)
 writeInteger(_params + 0x80, HeightSteps)
 writeByte(_params + 0x84, bCapped)
 writeByte(_params + 0x85, Origin)
 writeQword(_params + 0x88, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendCone", _params);
 local RET=readQword(_params + 0x90);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendCone");

BL4.AppendCurvedStairs = function(TargetMesh_DynamicMesh, PrimitiveOptions, Transform, StepWidth, StepHeight, InnerRadius, CurveAngle, NumSteps, bFloating, debug_GeometryScriptDebug)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendCurvedStairs: Failed To Allocate The Params");return;end;
 StepWidth = StepWidth or 0
 StepHeight = StepHeight or 0
 InnerRadius = InnerRadius or 0
 CurveAngle = CurveAngle or 0
 NumSteps = NumSteps or 0
 bFloating = bFloating or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, PrimitiveOptions at +0x8, Transform at +0x10, StepWidth at +0x70, StepHeight at +0x74, InnerRadius at +0x78, CurveAngle at +0x7C, NumSteps at +0x80, bFloating at +0x84, debug at +0x88
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, PrimitiveOptions)
 writeQword(_params + 0x10, Transform)
 writeFloat(_params + 0x70, StepWidth)
 writeFloat(_params + 0x74, StepHeight)
 writeFloat(_params + 0x78, InnerRadius)
 writeFloat(_params + 0x7C, CurveAngle)
 writeInteger(_params + 0x80, NumSteps)
 writeByte(_params + 0x84, bFloating)
 writeQword(_params + 0x88, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendCurvedStairs", _params);
 local RET=readQword(_params + 0x90);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendCurvedStairs");

BL4.AppendCylinder = function(TargetMesh_DynamicMesh, PrimitiveOptions, Transform, Radius, Height, RadialSteps, HeightSteps, bCapped, Origin, debug_GeometryScriptDebug)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendCylinder: Failed To Allocate The Params");return;end;
 Radius = Radius or 0
 Height = Height or 0
 RadialSteps = RadialSteps or 0
 HeightSteps = HeightSteps or 0
 bCapped = bCapped or false
 Origin = Origin or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, PrimitiveOptions at +0x8, Transform at +0x10, Radius at +0x70, Height at +0x74, RadialSteps at +0x78, HeightSteps at +0x7C, bCapped at +0x80, Origin at +0x81, debug at +0x88
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, PrimitiveOptions)
 writeQword(_params + 0x10, Transform)
 writeFloat(_params + 0x70, Radius)
 writeFloat(_params + 0x74, Height)
 writeInteger(_params + 0x78, RadialSteps)
 writeInteger(_params + 0x7C, HeightSteps)
 writeByte(_params + 0x80, bCapped)
 writeByte(_params + 0x81, Origin)
 writeQword(_params + 0x88, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendCylinder", _params);
 local RET=readQword(_params + 0x90);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendCylinder");

BL4.AppendDelaunayTriangulation2D = function(TargetMesh_DynamicMesh, PrimitiveOptions, Transform, VertexPositions, ConstrainedEdges, TriangulationOptions, PositionsToVertexIDs, bHasDuplicateVertices, debug_GeometryScriptDebug)
 local _paramsSize = 0xC0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendDelaunayTriangulation2D: Failed To Allocate The Params");return;end;
 bHasDuplicateVertices = bHasDuplicateVertices or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, PrimitiveOptions at +0x8, Transform at +0x10, VertexPositions at +0x70, ConstrainedEdges at +0x80, TriangulationOptions at +0x90, PositionsToVertexIDs at +0x98, bHasDuplicateVertices at +0xA8, debug at +0xB0
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, PrimitiveOptions)
 writeQword(_params + 0x10, Transform)
 writeQword(_params + 0x70, VertexPositions)
 writeQword(_params + 0x80, ConstrainedEdges)
 writeQword(_params + 0x90, TriangulationOptions)
 writeQword(_params + 0x98, PositionsToVertexIDs)
 writeByte(_params + 0xA8, bHasDuplicateVertices)
 writeQword(_params + 0xB0, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendDelaunayTriangulation2D", _params);
 local RET=readQword(_params + 0xB8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendDelaunayTriangulation2D");

BL4.AppendDisc = function(TargetMesh_DynamicMesh, PrimitiveOptions, Transform, Radius, AngleSteps, SpokeSteps, StartAngle, EndAngle, HoleRadius, debug_GeometryScriptDebug)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendDisc: Failed To Allocate The Params");return;end;
 Radius = Radius or 0
 AngleSteps = AngleSteps or 0
 SpokeSteps = SpokeSteps or 0
 StartAngle = StartAngle or 0
 EndAngle = EndAngle or 0
 HoleRadius = HoleRadius or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, PrimitiveOptions at +0x8, Transform at +0x10, Radius at +0x70, AngleSteps at +0x74, SpokeSteps at +0x78, StartAngle at +0x7C, EndAngle at +0x80, HoleRadius at +0x84, debug at +0x88
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, PrimitiveOptions)
 writeQword(_params + 0x10, Transform)
 writeFloat(_params + 0x70, Radius)
 writeInteger(_params + 0x74, AngleSteps)
 writeInteger(_params + 0x78, SpokeSteps)
 writeFloat(_params + 0x7C, StartAngle)
 writeFloat(_params + 0x80, EndAngle)
 writeFloat(_params + 0x84, HoleRadius)
 writeQword(_params + 0x88, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendDisc", _params);
 local RET=readQword(_params + 0x90);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendDisc");

BL4.AppendLinearStairs = function(TargetMesh_DynamicMesh, PrimitiveOptions, Transform, StepWidth, StepHeight, StepDepth, NumSteps, bFloating, debug_GeometryScriptDebug)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendLinearStairs: Failed To Allocate The Params");return;end;
 StepWidth = StepWidth or 0
 StepHeight = StepHeight or 0
 StepDepth = StepDepth or 0
 NumSteps = NumSteps or 0
 bFloating = bFloating or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, PrimitiveOptions at +0x8, Transform at +0x10, StepWidth at +0x70, StepHeight at +0x74, StepDepth at +0x78, NumSteps at +0x7C, bFloating at +0x80, debug at +0x88
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, PrimitiveOptions)
 writeQword(_params + 0x10, Transform)
 writeFloat(_params + 0x70, StepWidth)
 writeFloat(_params + 0x74, StepHeight)
 writeFloat(_params + 0x78, StepDepth)
 writeInteger(_params + 0x7C, NumSteps)
 writeByte(_params + 0x80, bFloating)
 writeQword(_params + 0x88, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendLinearStairs", _params);
 local RET=readQword(_params + 0x90);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendLinearStairs");

BL4.AppendPolygonListTriangulation = function(TargetMesh_DynamicMesh, PrimitiveOptions, Transform, PolygonList, TriangulationOptions, bTriangulationError, debug_GeometryScriptDebug)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendPolygonListTriangulation: Failed To Allocate The Params");return;end;
 bTriangulationError = bTriangulationError or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, PrimitiveOptions at +0x8, Transform at +0x10, PolygonList at +0x70, TriangulationOptions at +0x80, bTriangulationError at +0x81, debug at +0x88
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, PrimitiveOptions)
 writeQword(_params + 0x10, Transform)
 writeQword(_params + 0x70, PolygonList)
 writeQword(_params + 0x80, TriangulationOptions)
 writeByte(_params + 0x81, bTriangulationError)
 writeQword(_params + 0x88, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendPolygonListTriangulation", _params);
 local RET=readQword(_params + 0x90);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendPolygonListTriangulation");

BL4.AppendRectangle_Compatibility_5 = function(TargetMesh_DynamicMesh, PrimitiveOptions, Transform, DimensionX, DimensionY, StepsWidth, StepsHeight, debug_GeometryScriptDebug)
 local _paramsSize = 0x90
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendRectangle_Compatibility_5: Failed To Allocate The Params");return;end;
 DimensionX = DimensionX or 0
 DimensionY = DimensionY or 0
 StepsWidth = StepsWidth or 0
 StepsHeight = StepsHeight or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, PrimitiveOptions at +0x8, Transform at +0x10, DimensionX at +0x70, DimensionY at +0x74, StepsWidth at +0x78, StepsHeight at +0x7C, debug at +0x80
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, PrimitiveOptions)
 writeQword(_params + 0x10, Transform)
 writeFloat(_params + 0x70, DimensionX)
 writeFloat(_params + 0x74, DimensionY)
 writeInteger(_params + 0x78, StepsWidth)
 writeInteger(_params + 0x7C, StepsHeight)
 writeQword(_params + 0x80, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendRectangle_Compatibility_5", _params);
 local RET=readQword(_params + 0x88);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendRectangle_Compatibility_5");

BL4.AppendRectangleXY = function(TargetMesh_DynamicMesh, PrimitiveOptions, Transform, DimensionX, DimensionY, StepsWidth, StepsHeight, debug_GeometryScriptDebug)
 local _paramsSize = 0x90
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendRectangleXY: Failed To Allocate The Params");return;end;
 DimensionX = DimensionX or 0
 DimensionY = DimensionY or 0
 StepsWidth = StepsWidth or 0
 StepsHeight = StepsHeight or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, PrimitiveOptions at +0x8, Transform at +0x10, DimensionX at +0x70, DimensionY at +0x74, StepsWidth at +0x78, StepsHeight at +0x7C, debug at +0x80
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, PrimitiveOptions)
 writeQword(_params + 0x10, Transform)
 writeFloat(_params + 0x70, DimensionX)
 writeFloat(_params + 0x74, DimensionY)
 writeInteger(_params + 0x78, StepsWidth)
 writeInteger(_params + 0x7C, StepsHeight)
 writeQword(_params + 0x80, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendRectangleXY", _params);
 local RET=readQword(_params + 0x88);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendRectangleXY");

BL4.AppendRevolvePath = function(TargetMesh_DynamicMesh, PrimitiveOptions, Transform, PathVertices, RevolveOptions, steps, bCapped, debug_GeometryScriptDebug)
 local _paramsSize = 0xB0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendRevolvePath: Failed To Allocate The Params");return;end;
 steps = steps or 0
 bCapped = bCapped or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, PrimitiveOptions at +0x8, Transform at +0x10, PathVertices at +0x70, RevolveOptions at +0x80, steps at +0x94, bCapped at +0x98, debug at +0xA0
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, PrimitiveOptions)
 writeQword(_params + 0x10, Transform)
 writeQword(_params + 0x70, PathVertices)
 writeQword(_params + 0x80, RevolveOptions)
 writeInteger(_params + 0x94, steps)
 writeByte(_params + 0x98, bCapped)
 writeQword(_params + 0xA0, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendRevolvePath", _params);
 local RET=readQword(_params + 0xA8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendRevolvePath");

BL4.AppendRevolvePolygon = function(TargetMesh_DynamicMesh, PrimitiveOptions, Transform, PolygonVertices, RevolveOptions, Radius, steps, debug_GeometryScriptDebug)
 local _paramsSize = 0xB0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendRevolvePolygon: Failed To Allocate The Params");return;end;
 Radius = Radius or 0
 steps = steps or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, PrimitiveOptions at +0x8, Transform at +0x10, PolygonVertices at +0x70, RevolveOptions at +0x80, Radius at +0x94, steps at +0x98, debug at +0xA0
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, PrimitiveOptions)
 writeQword(_params + 0x10, Transform)
 writeQword(_params + 0x70, PolygonVertices)
 writeQword(_params + 0x80, RevolveOptions)
 writeFloat(_params + 0x94, Radius)
 writeInteger(_params + 0x98, steps)
 writeQword(_params + 0xA0, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendRevolvePolygon", _params);
 local RET=readQword(_params + 0xA8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendRevolvePolygon");

BL4.AppendRoundRectangle_Compatibility_5 = function(TargetMesh_DynamicMesh, PrimitiveOptions, Transform, DimensionX, DimensionY, CornerRadius, StepsWidth, StepsHeight, StepsRound, debug_GeometryScriptDebug)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendRoundRectangle_Compatibility_5: Failed To Allocate The Params");return;end;
 DimensionX = DimensionX or 0
 DimensionY = DimensionY or 0
 CornerRadius = CornerRadius or 0
 StepsWidth = StepsWidth or 0
 StepsHeight = StepsHeight or 0
 StepsRound = StepsRound or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, PrimitiveOptions at +0x8, Transform at +0x10, DimensionX at +0x70, DimensionY at +0x74, CornerRadius at +0x78, StepsWidth at +0x7C, StepsHeight at +0x80, StepsRound at +0x84, debug at +0x88
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, PrimitiveOptions)
 writeQword(_params + 0x10, Transform)
 writeFloat(_params + 0x70, DimensionX)
 writeFloat(_params + 0x74, DimensionY)
 writeFloat(_params + 0x78, CornerRadius)
 writeInteger(_params + 0x7C, StepsWidth)
 writeInteger(_params + 0x80, StepsHeight)
 writeInteger(_params + 0x84, StepsRound)
 writeQword(_params + 0x88, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendRoundRectangle_Compatibility_5", _params);
 local RET=readQword(_params + 0x90);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendRoundRectangle_Compatibility_5");

BL4.AppendRoundRectangleXY = function(TargetMesh_DynamicMesh, PrimitiveOptions, Transform, DimensionX, DimensionY, CornerRadius, StepsWidth, StepsHeight, StepsRound, debug_GeometryScriptDebug)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendRoundRectangleXY: Failed To Allocate The Params");return;end;
 DimensionX = DimensionX or 0
 DimensionY = DimensionY or 0
 CornerRadius = CornerRadius or 0
 StepsWidth = StepsWidth or 0
 StepsHeight = StepsHeight or 0
 StepsRound = StepsRound or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, PrimitiveOptions at +0x8, Transform at +0x10, DimensionX at +0x70, DimensionY at +0x74, CornerRadius at +0x78, StepsWidth at +0x7C, StepsHeight at +0x80, StepsRound at +0x84, debug at +0x88
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, PrimitiveOptions)
 writeQword(_params + 0x10, Transform)
 writeFloat(_params + 0x70, DimensionX)
 writeFloat(_params + 0x74, DimensionY)
 writeFloat(_params + 0x78, CornerRadius)
 writeInteger(_params + 0x7C, StepsWidth)
 writeInteger(_params + 0x80, StepsHeight)
 writeInteger(_params + 0x84, StepsRound)
 writeQword(_params + 0x88, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendRoundRectangleXY", _params);
 local RET=readQword(_params + 0x90);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendRoundRectangleXY");

BL4.AppendSimpleCollisionShapes = function(TargetMesh_DynamicMesh, PrimitiveOptions, Transform, SimpleCollision, TriangulationOptions, debug_GeometryScriptDebug)
 local _paramsSize = 0x110
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendSimpleCollisionShapes: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, PrimitiveOptions at +0x8, Transform at +0x10, SimpleCollision at +0x70, TriangulationOptions at +0xF0, debug at +0x100
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, PrimitiveOptions)
 writeQword(_params + 0x10, Transform)
 writeQword(_params + 0x70, SimpleCollision)
 writeQword(_params + 0xF0, TriangulationOptions)
 writeQword(_params + 0x100, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendSimpleCollisionShapes", _params);
 local RET=readQword(_params + 0x108);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendSimpleCollisionShapes");

BL4.AppendSimpleExtrudePolygon = function(TargetMesh_DynamicMesh, PrimitiveOptions, Transform, PolygonVertices, Height, HeightSteps, bCapped, Origin, debug_GeometryScriptDebug)
 local _paramsSize = 0xA0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendSimpleExtrudePolygon: Failed To Allocate The Params");return;end;
 Height = Height or 0
 HeightSteps = HeightSteps or 0
 bCapped = bCapped or false
 Origin = Origin or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, PrimitiveOptions at +0x8, Transform at +0x10, PolygonVertices at +0x70, Height at +0x80, HeightSteps at +0x84, bCapped at +0x88, Origin at +0x89, debug at +0x90
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, PrimitiveOptions)
 writeQword(_params + 0x10, Transform)
 writeQword(_params + 0x70, PolygonVertices)
 writeFloat(_params + 0x80, Height)
 writeInteger(_params + 0x84, HeightSteps)
 writeByte(_params + 0x88, bCapped)
 writeByte(_params + 0x89, Origin)
 writeQword(_params + 0x90, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendSimpleExtrudePolygon", _params);
 local RET=readQword(_params + 0x98);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendSimpleExtrudePolygon");

BL4.AppendSimpleSweptPolygon = function(TargetMesh_DynamicMesh, PrimitiveOptions, Transform, PolygonVertices, SweepPath, bLoop, bCapped, StartScale, EndScale, RotationAngleDeg, MiterLimit, debug_GeometryScriptDebug)
 local _paramsSize = 0xB8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendSimpleSweptPolygon: Failed To Allocate The Params");return;end;
 bLoop = bLoop or false
 bCapped = bCapped or false
 StartScale = StartScale or 0
 EndScale = EndScale or 0
 RotationAngleDeg = RotationAngleDeg or 0
 MiterLimit = MiterLimit or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, PrimitiveOptions at +0x8, Transform at +0x10, PolygonVertices at +0x70, SweepPath at +0x80, bLoop at +0x90, bCapped at +0x91, StartScale at +0x94, EndScale at +0x98, RotationAngleDeg at +0x9C, MiterLimit at +0xA0, debug at +0xA8
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, PrimitiveOptions)
 writeQword(_params + 0x10, Transform)
 writeQword(_params + 0x70, PolygonVertices)
 writeQword(_params + 0x80, SweepPath)
 writeByte(_params + 0x90, bLoop)
 writeByte(_params + 0x91, bCapped)
 writeFloat(_params + 0x94, StartScale)
 writeFloat(_params + 0x98, EndScale)
 writeFloat(_params + 0x9C, RotationAngleDeg)
 writeFloat(_params + 0xA0, MiterLimit)
 writeQword(_params + 0xA8, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendSimpleSweptPolygon", _params);
 local RET=readQword(_params + 0xB0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendSimpleSweptPolygon");

BL4.AppendSphereBox = function(TargetMesh_DynamicMesh, PrimitiveOptions, Transform, Radius, StepsX, StepsY, StepsZ, Origin, debug_GeometryScriptDebug)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendSphereBox: Failed To Allocate The Params");return;end;
 Radius = Radius or 0
 StepsX = StepsX or 0
 StepsY = StepsY or 0
 StepsZ = StepsZ or 0
 Origin = Origin or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, PrimitiveOptions at +0x8, Transform at +0x10, Radius at +0x70, StepsX at +0x74, StepsY at +0x78, StepsZ at +0x7C, Origin at +0x80, debug at +0x88
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, PrimitiveOptions)
 writeQword(_params + 0x10, Transform)
 writeFloat(_params + 0x70, Radius)
 writeInteger(_params + 0x74, StepsX)
 writeInteger(_params + 0x78, StepsY)
 writeInteger(_params + 0x7C, StepsZ)
 writeByte(_params + 0x80, Origin)
 writeQword(_params + 0x88, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendSphereBox", _params);
 local RET=readQword(_params + 0x90);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendSphereBox");

BL4.AppendSphereBoxWithCollision = function(TargetMesh_DynamicMesh, SimpleCollision, PrimitiveOptions, Transform, Radius, StepsX, StepsY, StepsZ, Origin, debug_GeometryScriptDebug)
 local _paramsSize = 0x118
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendSphereBoxWithCollision: Failed To Allocate The Params");return;end;
 Radius = Radius or 0
 StepsX = StepsX or 0
 StepsY = StepsY or 0
 StepsZ = StepsZ or 0
 Origin = Origin or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, SimpleCollision at +0x8, PrimitiveOptions at +0x88, Transform at +0x90, Radius at +0xF0, StepsX at +0xF4, StepsY at +0xF8, StepsZ at +0xFC, Origin at +0x100, debug at +0x108
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, SimpleCollision)
 writeQword(_params + 0x88, PrimitiveOptions)
 writeQword(_params + 0x90, Transform)
 writeFloat(_params + 0xF0, Radius)
 writeInteger(_params + 0xF4, StepsX)
 writeInteger(_params + 0xF8, StepsY)
 writeInteger(_params + 0xFC, StepsZ)
 writeByte(_params + 0x100, Origin)
 writeQword(_params + 0x108, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendSphereBoxWithCollision", _params);
 local RET=readQword(_params + 0x110);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendSphereBoxWithCollision");

BL4.AppendSphereCovering = function(TargetMesh_DynamicMesh, PrimitiveOptions, Transform, SphereCovering, StepsX, StepsY, StepsZ, debug_GeometryScriptDebug)
 local _paramsSize = 0xA0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendSphereCovering: Failed To Allocate The Params");return;end;
 StepsX = StepsX or 0
 StepsY = StepsY or 0
 StepsZ = StepsZ or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, PrimitiveOptions at +0x8, Transform at +0x10, SphereCovering at +0x70, StepsX at +0x80, StepsY at +0x84, StepsZ at +0x88, debug at +0x90
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, PrimitiveOptions)
 writeQword(_params + 0x10, Transform)
 writeQword(_params + 0x70, SphereCovering)
 writeInteger(_params + 0x80, StepsX)
 writeInteger(_params + 0x84, StepsY)
 writeInteger(_params + 0x88, StepsZ)
 writeQword(_params + 0x90, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendSphereCovering", _params);
 local RET=readQword(_params + 0x98);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendSphereCovering");

BL4.AppendSphereLatLong = function(TargetMesh_DynamicMesh, PrimitiveOptions, Transform, Radius, StepsPhi, StepsTheta, Origin, debug_GeometryScriptDebug)
 local _paramsSize = 0x90
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendSphereLatLong: Failed To Allocate The Params");return;end;
 Radius = Radius or 0
 StepsPhi = StepsPhi or 0
 StepsTheta = StepsTheta or 0
 Origin = Origin or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, PrimitiveOptions at +0x8, Transform at +0x10, Radius at +0x70, StepsPhi at +0x74, StepsTheta at +0x78, Origin at +0x7C, debug at +0x80
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, PrimitiveOptions)
 writeQword(_params + 0x10, Transform)
 writeFloat(_params + 0x70, Radius)
 writeInteger(_params + 0x74, StepsPhi)
 writeInteger(_params + 0x78, StepsTheta)
 writeByte(_params + 0x7C, Origin)
 writeQword(_params + 0x80, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendSphereLatLong", _params);
 local RET=readQword(_params + 0x88);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendSphereLatLong");

BL4.AppendSphereLatLongWithCollision = function(TargetMesh_DynamicMesh, SimpleCollision, PrimitiveOptions, Transform, Radius, StepsPhi, StepsTheta, Origin, debug_GeometryScriptDebug)
 local _paramsSize = 0x110
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendSphereLatLongWithCollision: Failed To Allocate The Params");return;end;
 Radius = Radius or 0
 StepsPhi = StepsPhi or 0
 StepsTheta = StepsTheta or 0
 Origin = Origin or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, SimpleCollision at +0x8, PrimitiveOptions at +0x88, Transform at +0x90, Radius at +0xF0, StepsPhi at +0xF4, StepsTheta at +0xF8, Origin at +0xFC, debug at +0x100
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, SimpleCollision)
 writeQword(_params + 0x88, PrimitiveOptions)
 writeQword(_params + 0x90, Transform)
 writeFloat(_params + 0xF0, Radius)
 writeInteger(_params + 0xF4, StepsPhi)
 writeInteger(_params + 0xF8, StepsTheta)
 writeByte(_params + 0xFC, Origin)
 writeQword(_params + 0x100, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendSphereLatLongWithCollision", _params);
 local RET=readQword(_params + 0x108);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendSphereLatLongWithCollision");

BL4.AppendSpiralRevolvePolygon = function(TargetMesh_DynamicMesh, PrimitiveOptions, Transform, PolygonVertices, RevolveOptions, Radius, steps, RisePerRevolution, debug_GeometryScriptDebug)
 local _paramsSize = 0xB0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendSpiralRevolvePolygon: Failed To Allocate The Params");return;end;
 Radius = Radius or 0
 steps = steps or 0
 RisePerRevolution = RisePerRevolution or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, PrimitiveOptions at +0x8, Transform at +0x10, PolygonVertices at +0x70, RevolveOptions at +0x80, Radius at +0x94, steps at +0x98, RisePerRevolution at +0x9C, debug at +0xA0
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, PrimitiveOptions)
 writeQword(_params + 0x10, Transform)
 writeQword(_params + 0x70, PolygonVertices)
 writeQword(_params + 0x80, RevolveOptions)
 writeFloat(_params + 0x94, Radius)
 writeInteger(_params + 0x98, steps)
 writeFloat(_params + 0x9C, RisePerRevolution)
 writeQword(_params + 0xA0, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendSpiralRevolvePolygon", _params);
 local RET=readQword(_params + 0xA8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendSpiralRevolvePolygon");

BL4.AppendSweepPolygon = function(TargetMesh_DynamicMesh, PrimitiveOptions, Transform, PolygonVertices, SweepPath, bLoop, bCapped, StartScale, EndScale, RotationAngleDeg, MiterLimit, debug_GeometryScriptDebug)
 local _paramsSize = 0xB8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendSweepPolygon: Failed To Allocate The Params");return;end;
 bLoop = bLoop or false
 bCapped = bCapped or false
 StartScale = StartScale or 0
 EndScale = EndScale or 0
 RotationAngleDeg = RotationAngleDeg or 0
 MiterLimit = MiterLimit or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, PrimitiveOptions at +0x8, Transform at +0x10, PolygonVertices at +0x70, SweepPath at +0x80, bLoop at +0x90, bCapped at +0x91, StartScale at +0x94, EndScale at +0x98, RotationAngleDeg at +0x9C, MiterLimit at +0xA0, debug at +0xA8
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, PrimitiveOptions)
 writeQword(_params + 0x10, Transform)
 writeQword(_params + 0x70, PolygonVertices)
 writeQword(_params + 0x80, SweepPath)
 writeByte(_params + 0x90, bLoop)
 writeByte(_params + 0x91, bCapped)
 writeFloat(_params + 0x94, StartScale)
 writeFloat(_params + 0x98, EndScale)
 writeFloat(_params + 0x9C, RotationAngleDeg)
 writeFloat(_params + 0xA0, MiterLimit)
 writeQword(_params + 0xA8, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendSweepPolygon", _params);
 local RET=readQword(_params + 0xB0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendSweepPolygon");

BL4.AppendSweepPolyline = function(TargetMesh_DynamicMesh, PrimitiveOptions, Transform, PolylineVertices, SweepPath, PolylineTexParamU, SweepPathTexParamV, bLoop, StartScale, EndScale, RotationAngleDeg, MiterLimit, debug_GeometryScriptDebug)
 local _paramsSize = 0xD8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendSweepPolyline: Failed To Allocate The Params");return;end;
 bLoop = bLoop or false
 StartScale = StartScale or 0
 EndScale = EndScale or 0
 RotationAngleDeg = RotationAngleDeg or 0
 MiterLimit = MiterLimit or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, PrimitiveOptions at +0x8, Transform at +0x10, PolylineVertices at +0x70, SweepPath at +0x80, PolylineTexParamU at +0x90, SweepPathTexParamV at +0xA0, bLoop at +0xB0, StartScale at +0xB4, EndScale at +0xB8, RotationAngleDeg at +0xBC, MiterLimit at +0xC0, debug at +0xC8
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, PrimitiveOptions)
 writeQword(_params + 0x10, Transform)
 writeQword(_params + 0x70, PolylineVertices)
 writeQword(_params + 0x80, SweepPath)
 writeQword(_params + 0x90, PolylineTexParamU)
 writeQword(_params + 0xA0, SweepPathTexParamV)
 writeByte(_params + 0xB0, bLoop)
 writeFloat(_params + 0xB4, StartScale)
 writeFloat(_params + 0xB8, EndScale)
 writeFloat(_params + 0xBC, RotationAngleDeg)
 writeFloat(_params + 0xC0, MiterLimit)
 writeQword(_params + 0xC8, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendSweepPolyline", _params);
 local RET=readQword(_params + 0xD0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendSweepPolyline");

BL4.AppendTorus = function(TargetMesh_DynamicMesh, PrimitiveOptions, Transform, RevolveOptions, MajorRadius, MinorRadius, MajorSteps, MinorSteps, Origin, debug_GeometryScriptDebug)
 local _paramsSize = 0xA8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendTorus: Failed To Allocate The Params");return;end;
 MajorRadius = MajorRadius or 0
 MinorRadius = MinorRadius or 0
 MajorSteps = MajorSteps or 0
 MinorSteps = MinorSteps or 0
 Origin = Origin or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, PrimitiveOptions at +0x8, Transform at +0x10, RevolveOptions at +0x70, MajorRadius at +0x84, MinorRadius at +0x88, MajorSteps at +0x8C, MinorSteps at +0x90, Origin at +0x94, debug at +0x98
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, PrimitiveOptions)
 writeQword(_params + 0x10, Transform)
 writeQword(_params + 0x70, RevolveOptions)
 writeFloat(_params + 0x84, MajorRadius)
 writeFloat(_params + 0x88, MinorRadius)
 writeInteger(_params + 0x8C, MajorSteps)
 writeInteger(_params + 0x90, MinorSteps)
 writeByte(_params + 0x94, Origin)
 writeQword(_params + 0x98, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendTorus", _params);
 local RET=readQword(_params + 0xA0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendTorus");

BL4.AppendTriangulatedPolygon = function(TargetMesh_DynamicMesh, PrimitiveOptions, Transform, PolygonVertices, bAllowSelfIntersections, debug_GeometryScriptDebug)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendTriangulatedPolygon: Failed To Allocate The Params");return;end;
 bAllowSelfIntersections = bAllowSelfIntersections or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, PrimitiveOptions at +0x8, Transform at +0x10, PolygonVertices at +0x70, bAllowSelfIntersections at +0x80, debug at +0x88
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, PrimitiveOptions)
 writeQword(_params + 0x10, Transform)
 writeQword(_params + 0x70, PolygonVertices)
 writeByte(_params + 0x80, bAllowSelfIntersections)
 writeQword(_params + 0x88, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendTriangulatedPolygon", _params);
 local RET=readQword(_params + 0x90);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendTriangulatedPolygon");

BL4.AppendTriangulatedPolygon3D = function(TargetMesh_DynamicMesh, PrimitiveOptions, Transform, PolygonVertices3D, debug_GeometryScriptDebug)
 local _paramsSize = 0x90
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendTriangulatedPolygon3D: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, PrimitiveOptions at +0x8, Transform at +0x10, PolygonVertices3D at +0x70, debug at +0x80
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, PrimitiveOptions)
 writeQword(_params + 0x10, Transform)
 writeQword(_params + 0x70, PolygonVertices3D)
 writeQword(_params + 0x80, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendTriangulatedPolygon3D", _params);
 local RET=readQword(_params + 0x88);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendTriangulatedPolygon3D");

BL4.AppendVoronoiDiagram2D = function(TargetMesh_DynamicMesh, PrimitiveOptions, Transform, VoronoiSites, VoronoiOptions, debug_GeometryScriptDebug)
 local _paramsSize = 0xE8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendVoronoiDiagram2D: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, PrimitiveOptions at +0x8, Transform at +0x10, VoronoiSites at +0x70, VoronoiOptions at +0x80, debug at +0xD8
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, PrimitiveOptions)
 writeQword(_params + 0x10, Transform)
 writeQword(_params + 0x70, VoronoiSites)
 writeQword(_params + 0x80, VoronoiOptions)
 writeQword(_params + 0xD8, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendVoronoiDiagram2D", _params);
 local RET=readQword(_params + 0xE0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendVoronoiDiagram2D");

BL4.CreateConstrainedEdgesChain = function(OwnerAddress, NumVertices, Start)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CreateConstrainedEdgesChain: Failed To Allocate The Params");return;end;
 NumVertices = NumVertices or 0
 Start = Start or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NumVertices at +0x0, Start at +0x4
 writeInteger(_params + 0x0, NumVertices)
 writeInteger(_params + 0x4, Start)
 UE.CallProcessEventEx(OwnerAddress, "CreateConstrainedEdgesChain", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CreateConstrainedEdgesChain");

BL4.CreateConstrainedEdgesLoop = function(OwnerAddress, NumVertices, Start)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CreateConstrainedEdgesLoop: Failed To Allocate The Params");return;end;
 NumVertices = NumVertices or 0
 Start = Start or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NumVertices at +0x0, Start at +0x4
 writeInteger(_params + 0x0, NumVertices)
 writeInteger(_params + 0x4, Start)
 UE.CallProcessEventEx(OwnerAddress, "CreateConstrainedEdgesLoop", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CreateConstrainedEdgesLoop");

