BL4.AddTrianglesToMesh = function(TargetMesh_DynamicMesh, NewTrianglesList, NewIndicesList, NewTriangleGroupID, bDeferChangeNotifications, debug_GeometryScriptDebug)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddTrianglesToMesh: Failed To Allocate The Params");return;end;
 NewTriangleGroupID = NewTriangleGroupID or 0
 bDeferChangeNotifications = bDeferChangeNotifications or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, NewTrianglesList at +0x8, NewIndicesList at +0x18, NewTriangleGroupID at +0x30, bDeferChangeNotifications at +0x34, debug at +0x38
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, NewTrianglesList)
 writeQword(_params + 0x18, NewIndicesList)
 writeInteger(_params + 0x30, NewTriangleGroupID)
 writeByte(_params + 0x34, bDeferChangeNotifications)
 writeQword(_params + 0x38, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AddTrianglesToMesh", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddTrianglesToMesh");

BL4.AddTriangleToMesh = function(TargetMesh_DynamicMesh, NewTriangle, NewTriangleIndex, NewTriangleGroupID, bDeferChangeNotifications, debug_GeometryScriptDebug)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddTriangleToMesh: Failed To Allocate The Params");return;end;
 NewTriangleIndex = NewTriangleIndex or 0
 NewTriangleGroupID = NewTriangleGroupID or 0
 bDeferChangeNotifications = bDeferChangeNotifications or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, NewTriangle at +0x8, NewTriangleIndex at +0x14, NewTriangleGroupID at +0x18, bDeferChangeNotifications at +0x1C, debug at +0x20
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, NewTriangle)
 writeInteger(_params + 0x14, NewTriangleIndex)
 writeInteger(_params + 0x18, NewTriangleGroupID)
 writeByte(_params + 0x1C, bDeferChangeNotifications)
 writeQword(_params + 0x20, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AddTriangleToMesh", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddTriangleToMesh");

BL4.AddVertexToMesh = function(TargetMesh_DynamicMesh, NewPosition, NewVertexIndex, bDeferChangeNotifications)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddVertexToMesh: Failed To Allocate The Params");return;end;
 NewPosition = NewPosition or {X=0,Y=0,Z=0}
 NewVertexIndex = NewVertexIndex or 0
 bDeferChangeNotifications = bDeferChangeNotifications or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, NewPosition at +0x8, NewVertexIndex at +0x20, bDeferChangeNotifications at +0x24
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeDouble(_params + 0x8, (NewPosition and NewPosition.X) or 0)
 writeDouble(_params + 0x10, (NewPosition and NewPosition.Y) or 0)
 writeDouble(_params + 0x18, (NewPosition and NewPosition.Z) or 0)
 writeInteger(_params + 0x20, NewVertexIndex)
 writeByte(_params + 0x24, bDeferChangeNotifications)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AddVertexToMesh", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddVertexToMesh");

BL4.AddVerticesToMesh = function(TargetMesh_DynamicMesh, NewPositionsList, NewIndicesList, bDeferChangeNotifications)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddVerticesToMesh: Failed To Allocate The Params");return;end;
 bDeferChangeNotifications = bDeferChangeNotifications or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, NewPositionsList at +0x8, NewIndicesList at +0x18, bDeferChangeNotifications at +0x30
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, NewPositionsList)
 writeQword(_params + 0x18, NewIndicesList)
 writeByte(_params + 0x30, bDeferChangeNotifications)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AddVerticesToMesh", _params);
 local RET=readQword(_params + 0x38);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddVerticesToMesh");

BL4.AppendBuffersToMesh = function(TargetMesh_DynamicMesh, Buffers, NewTriangleIndicesList, MaterialID, bDeferChangeNotifications, debug_GeometryScriptDebug)
 local _paramsSize = 0x108
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendBuffersToMesh: Failed To Allocate The Params");return;end;
 MaterialID = MaterialID or 0
 bDeferChangeNotifications = bDeferChangeNotifications or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, Buffers at +0x8, NewTriangleIndicesList at +0xD8, MaterialID at +0xF0, bDeferChangeNotifications at +0xF4, debug at +0xF8
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, Buffers)
 writeQword(_params + 0xD8, NewTriangleIndicesList)
 writeInteger(_params + 0xF0, MaterialID)
 writeByte(_params + 0xF4, bDeferChangeNotifications)
 writeQword(_params + 0xF8, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendBuffersToMesh", _params);
 local RET=readQword(_params + 0x100);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendBuffersToMesh");

BL4.AppendMesh = function(TargetMesh_DynamicMesh, AppendMesh_DynamicMesh, AppendTransform, bDeferChangeNotifications, AppendOptions, debug_GeometryScriptDebug)
 local _paramsSize = 0x88
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendMesh: Failed To Allocate The Params");return;end;
 bDeferChangeNotifications = bDeferChangeNotifications or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, AppendMesh at +0x8, AppendTransform at +0x10, bDeferChangeNotifications at +0x70, AppendOptions at +0x71, debug at +0x78
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, AppendMesh_DynamicMesh)
 writeQword(_params + 0x10, AppendTransform)
 writeByte(_params + 0x70, bDeferChangeNotifications)
 writeQword(_params + 0x71, AppendOptions)
 writeQword(_params + 0x78, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendMesh", _params);
 local RET=readQword(_params + 0x80);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendMesh");

BL4.AppendMeshRepeated = function(TargetMesh_DynamicMesh, AppendMesh_DynamicMesh, AppendTransform, RepeatCount, bApplyTransformToFirstInstance, bDeferChangeNotifications, AppendOptions, debug_GeometryScriptDebug)
 local _paramsSize = 0x88
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendMeshRepeated: Failed To Allocate The Params");return;end;
 RepeatCount = RepeatCount or 0
 bApplyTransformToFirstInstance = bApplyTransformToFirstInstance or false
 bDeferChangeNotifications = bDeferChangeNotifications or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, AppendMesh at +0x8, AppendTransform at +0x10, RepeatCount at +0x70, bApplyTransformToFirstInstance at +0x74, bDeferChangeNotifications at +0x75, AppendOptions at +0x76, debug at +0x78
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, AppendMesh_DynamicMesh)
 writeQword(_params + 0x10, AppendTransform)
 writeInteger(_params + 0x70, RepeatCount)
 writeByte(_params + 0x74, bApplyTransformToFirstInstance)
 writeByte(_params + 0x75, bDeferChangeNotifications)
 writeQword(_params + 0x76, AppendOptions)
 writeQword(_params + 0x78, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendMeshRepeated", _params);
 local RET=readQword(_params + 0x80);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendMeshRepeated");

BL4.AppendMeshRepeatedWithMaterials = function(TargetMesh_DynamicMesh, TargetMeshMaterialList, AppendMesh_DynamicMesh, AppendMeshMaterialList, ResultMeshMaterialList, AppendTransform, RepeatCount, bApplyTransformToFirstInstance, bDeferChangeNotifications, AppendOptions, bCompactAppendedMaterials, debug_GeometryScriptDebug)
 local _paramsSize = 0xB8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendMeshRepeatedWithMaterials: Failed To Allocate The Params");return;end;
 RepeatCount = RepeatCount or 0
 bApplyTransformToFirstInstance = bApplyTransformToFirstInstance or false
 bDeferChangeNotifications = bDeferChangeNotifications or false
 bCompactAppendedMaterials = bCompactAppendedMaterials or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, TargetMeshMaterialList at +0x8, AppendMesh at +0x18, AppendMeshMaterialList at +0x20, ResultMeshMaterialList at +0x30, AppendTransform at +0x40, RepeatCount at +0xA0, bApplyTransformToFirstInstance at +0xA4, bDeferChangeNotifications at +0xA5, AppendOptions at +0xA6, bCompactAppendedMaterials at +0xA7, debug at +0xA8
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, TargetMeshMaterialList)
 writeQword(_params + 0x18, AppendMesh_DynamicMesh)
 writeQword(_params + 0x20, AppendMeshMaterialList)
 writeQword(_params + 0x30, ResultMeshMaterialList)
 writeQword(_params + 0x40, AppendTransform)
 writeInteger(_params + 0xA0, RepeatCount)
 writeByte(_params + 0xA4, bApplyTransformToFirstInstance)
 writeByte(_params + 0xA5, bDeferChangeNotifications)
 writeQword(_params + 0xA6, AppendOptions)
 writeByte(_params + 0xA7, bCompactAppendedMaterials)
 writeQword(_params + 0xA8, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendMeshRepeatedWithMaterials", _params);
 local RET=readQword(_params + 0xB0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendMeshRepeatedWithMaterials");

BL4.AppendMeshTransformed = function(TargetMesh_DynamicMesh, AppendMesh_DynamicMesh, AppendTransforms, ConstantTransform, bConstantTransformIsRelative, bDeferChangeNotifications, AppendOptions, debug_GeometryScriptDebug)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendMeshTransformed: Failed To Allocate The Params");return;end;
 bConstantTransformIsRelative = bConstantTransformIsRelative or false
 bDeferChangeNotifications = bDeferChangeNotifications or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, AppendMesh at +0x8, AppendTransforms at +0x10, ConstantTransform at +0x20, bConstantTransformIsRelative at +0x80, bDeferChangeNotifications at +0x81, AppendOptions at +0x82, debug at +0x88
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, AppendMesh_DynamicMesh)
 writeQword(_params + 0x10, AppendTransforms)
 writeQword(_params + 0x20, ConstantTransform)
 writeByte(_params + 0x80, bConstantTransformIsRelative)
 writeByte(_params + 0x81, bDeferChangeNotifications)
 writeQword(_params + 0x82, AppendOptions)
 writeQword(_params + 0x88, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendMeshTransformed", _params);
 local RET=readQword(_params + 0x90);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendMeshTransformed");

BL4.AppendMeshTransformedWithMaterials = function(TargetMesh_DynamicMesh, TargetMeshMaterialList, AppendMesh_DynamicMesh, AppendMeshMaterialList, ResultMeshMaterialList, AppendTransforms, ConstantTransform, bConstantTransformIsRelative, bDeferChangeNotifications, AppendOptions, bCompactAppendedMaterials, debug_GeometryScriptDebug)
 local _paramsSize = 0xC8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendMeshTransformedWithMaterials: Failed To Allocate The Params");return;end;
 bConstantTransformIsRelative = bConstantTransformIsRelative or false
 bDeferChangeNotifications = bDeferChangeNotifications or false
 bCompactAppendedMaterials = bCompactAppendedMaterials or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, TargetMeshMaterialList at +0x8, AppendMesh at +0x18, AppendMeshMaterialList at +0x20, ResultMeshMaterialList at +0x30, AppendTransforms at +0x40, ConstantTransform at +0x50, bConstantTransformIsRelative at +0xB0, bDeferChangeNotifications at +0xB1, AppendOptions at +0xB2, bCompactAppendedMaterials at +0xB3, debug at +0xB8
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, TargetMeshMaterialList)
 writeQword(_params + 0x18, AppendMesh_DynamicMesh)
 writeQword(_params + 0x20, AppendMeshMaterialList)
 writeQword(_params + 0x30, ResultMeshMaterialList)
 writeQword(_params + 0x40, AppendTransforms)
 writeQword(_params + 0x50, ConstantTransform)
 writeByte(_params + 0xB0, bConstantTransformIsRelative)
 writeByte(_params + 0xB1, bDeferChangeNotifications)
 writeQword(_params + 0xB2, AppendOptions)
 writeByte(_params + 0xB3, bCompactAppendedMaterials)
 writeQword(_params + 0xB8, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendMeshTransformedWithMaterials", _params);
 local RET=readQword(_params + 0xC0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendMeshTransformedWithMaterials");

BL4.AppendMeshWithMaterials = function(TargetMesh_DynamicMesh, TargetMeshMaterialList, AppendMesh_DynamicMesh, AppendMeshMaterialList, ResultMeshMaterialList, AppendTransform, bDeferChangeNotifications, AppendOptions, bCompactAppendedMaterials, debug_GeometryScriptDebug)
 local _paramsSize = 0xB8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendMeshWithMaterials: Failed To Allocate The Params");return;end;
 bDeferChangeNotifications = bDeferChangeNotifications or false
 bCompactAppendedMaterials = bCompactAppendedMaterials or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, TargetMeshMaterialList at +0x8, AppendMesh at +0x18, AppendMeshMaterialList at +0x20, ResultMeshMaterialList at +0x30, AppendTransform at +0x40, bDeferChangeNotifications at +0xA0, AppendOptions at +0xA1, bCompactAppendedMaterials at +0xA2, debug at +0xA8
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, TargetMeshMaterialList)
 writeQword(_params + 0x18, AppendMesh_DynamicMesh)
 writeQword(_params + 0x20, AppendMeshMaterialList)
 writeQword(_params + 0x30, ResultMeshMaterialList)
 writeQword(_params + 0x40, AppendTransform)
 writeByte(_params + 0xA0, bDeferChangeNotifications)
 writeQword(_params + 0xA1, AppendOptions)
 writeByte(_params + 0xA2, bCompactAppendedMaterials)
 writeQword(_params + 0xA8, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AppendMeshWithMaterials", _params);
 local RET=readQword(_params + 0xB0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AppendMeshWithMaterials");

BL4.DeleteSelectedTrianglesFromMesh = function(TargetMesh_DynamicMesh, Selection, NumDeleted, bDeferChangeNotifications)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DeleteSelectedTrianglesFromMesh: Failed To Allocate The Params");return;end;
 NumDeleted = NumDeleted or 0
 bDeferChangeNotifications = bDeferChangeNotifications or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, Selection at +0x8, NumDeleted at +0x18, bDeferChangeNotifications at +0x1C
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, Selection)
 writeInteger(_params + 0x18, NumDeleted)
 writeByte(_params + 0x1C, bDeferChangeNotifications)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "DeleteSelectedTrianglesFromMesh", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DeleteSelectedTrianglesFromMesh");

BL4.DeleteTriangleFromMesh = function(TargetMesh_DynamicMesh, TriangleID, bWasTriangleDeleted, bDeferChangeNotifications)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DeleteTriangleFromMesh: Failed To Allocate The Params");return;end;
 TriangleID = TriangleID or 0
 bWasTriangleDeleted = bWasTriangleDeleted or false
 bDeferChangeNotifications = bDeferChangeNotifications or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, TriangleID at +0x8, bWasTriangleDeleted at +0xC, bDeferChangeNotifications at +0xD
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, TriangleID)
 writeByte(_params + 0xC, bWasTriangleDeleted)
 writeByte(_params + 0xD, bDeferChangeNotifications)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "DeleteTriangleFromMesh", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DeleteTriangleFromMesh");

BL4.DeleteTrianglesFromMesh = function(TargetMesh_DynamicMesh, TriangleList, NumDeleted, bDeferChangeNotifications)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DeleteTrianglesFromMesh: Failed To Allocate The Params");return;end;
 NumDeleted = NumDeleted or 0
 bDeferChangeNotifications = bDeferChangeNotifications or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, TriangleList at +0x8, NumDeleted at +0x20, bDeferChangeNotifications at +0x24
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, TriangleList)
 writeInteger(_params + 0x20, NumDeleted)
 writeByte(_params + 0x24, bDeferChangeNotifications)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "DeleteTrianglesFromMesh", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DeleteTrianglesFromMesh");

BL4.DeleteVertexFromMesh = function(TargetMesh_DynamicMesh, VertexID, bWasVertexDeleted, bDeferChangeNotifications)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DeleteVertexFromMesh: Failed To Allocate The Params");return;end;
 VertexID = VertexID or 0
 bWasVertexDeleted = bWasVertexDeleted or false
 bDeferChangeNotifications = bDeferChangeNotifications or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, VertexID at +0x8, bWasVertexDeleted at +0xC, bDeferChangeNotifications at +0xD
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, VertexID)
 writeByte(_params + 0xC, bWasVertexDeleted)
 writeByte(_params + 0xD, bDeferChangeNotifications)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "DeleteVertexFromMesh", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DeleteVertexFromMesh");

BL4.DeleteVerticesFromMesh = function(TargetMesh_DynamicMesh, VertexList, NumDeleted, bDeferChangeNotifications)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DeleteVerticesFromMesh: Failed To Allocate The Params");return;end;
 NumDeleted = NumDeleted or 0
 bDeferChangeNotifications = bDeferChangeNotifications or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, VertexList at +0x8, NumDeleted at +0x20, bDeferChangeNotifications at +0x24
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, VertexList)
 writeInteger(_params + 0x20, NumDeleted)
 writeByte(_params + 0x24, bDeferChangeNotifications)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "DeleteVerticesFromMesh", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DeleteVerticesFromMesh");

BL4.DiscardMeshAttributes = function(TargetMesh_DynamicMesh, bDeferChangeNotifications)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DiscardMeshAttributes: Failed To Allocate The Params");return;end;
 bDeferChangeNotifications = bDeferChangeNotifications or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, bDeferChangeNotifications at +0x8
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeByte(_params + 0x8, bDeferChangeNotifications)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "DiscardMeshAttributes", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DiscardMeshAttributes");

BL4.SetAllMeshVertexPositions = function(TargetMesh_DynamicMesh, PositionList, debug_GeometryScriptDebug)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAllMeshVertexPositions: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, PositionList at +0x8, debug at +0x18
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, PositionList)
 writeQword(_params + 0x18, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "SetAllMeshVertexPositions", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetAllMeshVertexPositions");

BL4.SetVertexPosition = function(TargetMesh_DynamicMesh, VertexID, NewPosition, bIsValidVertex, bDeferChangeNotifications)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVertexPosition: Failed To Allocate The Params");return;end;
 VertexID = VertexID or 0
 NewPosition = NewPosition or {X=0,Y=0,Z=0}
 bIsValidVertex = bIsValidVertex or false
 bDeferChangeNotifications = bDeferChangeNotifications or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, VertexID at +0x8, NewPosition at +0x10, bIsValidVertex at +0x28, bDeferChangeNotifications at +0x29
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, VertexID)
 writeDouble(_params + 0x10, (NewPosition and NewPosition.X) or 0)
 writeDouble(_params + 0x18, (NewPosition and NewPosition.Y) or 0)
 writeDouble(_params + 0x20, (NewPosition and NewPosition.Z) or 0)
 writeByte(_params + 0x28, bIsValidVertex)
 writeByte(_params + 0x29, bDeferChangeNotifications)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "SetVertexPosition", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetVertexPosition");

