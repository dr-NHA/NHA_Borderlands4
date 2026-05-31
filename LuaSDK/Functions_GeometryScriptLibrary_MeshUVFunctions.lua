BL4.AddUVElementToMesh = function(TargetMesh_DynamicMesh, UvSetIndex, NewUVPosition, NewUVElementID, bIsValidUVSet, bDeferChangeNotifications)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddUVElementToMesh: Failed To Allocate The Params");return;end;
 UvSetIndex = UvSetIndex or 0
 NewUVPosition = NewUVPosition or {X=0,Y=0}
 NewUVElementID = NewUVElementID or 0
 bIsValidUVSet = bIsValidUVSet or false
 bDeferChangeNotifications = bDeferChangeNotifications or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, UvSetIndex at +0x8, NewUVPosition at +0x10, NewUVElementID at +0x20, bIsValidUVSet at +0x24, bDeferChangeNotifications at +0x25
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, UvSetIndex)
 writeDouble(_params + 0x10, (NewUVPosition and NewUVPosition.X) or 0)
 writeDouble(_params + 0x18, (NewUVPosition and NewUVPosition.Y) or 0)
 writeInteger(_params + 0x20, NewUVElementID)
 writeByte(_params + 0x24, bIsValidUVSet)
 writeByte(_params + 0x25, bDeferChangeNotifications)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AddUVElementToMesh", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddUVElementToMesh");

BL4.ApplyTexelDensityUVScaling = function(TargetMesh_DynamicMesh, UvSetIndex, options, Selection, debug_GeometryScriptDebug)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ApplyTexelDensityUVScaling: Failed To Allocate The Params");return;end;
 UvSetIndex = UvSetIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, UvSetIndex at +0x8, options at +0x10, Selection at +0x78, debug at +0x88
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, UvSetIndex)
 writeQword(_params + 0x10, options)
 writeQword(_params + 0x78, Selection)
 writeQword(_params + 0x88, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "ApplyTexelDensityUVScaling", _params);
 local RET=readQword(_params + 0x90);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ApplyTexelDensityUVScaling");

BL4.AutoGeneratePatchBuilderMeshUVs = function(TargetMesh_DynamicMesh, UvSetIndex, options, debug_GeometryScriptDebug)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AutoGeneratePatchBuilderMeshUVs: Failed To Allocate The Params");return;end;
 UvSetIndex = UvSetIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, UvSetIndex at +0x8, options at +0xC, debug at +0x40
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, UvSetIndex)
 writeQword(_params + 0xC, options)
 writeQword(_params + 0x40, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AutoGeneratePatchBuilderMeshUVs", _params);
 local RET=readQword(_params + 0x48);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AutoGeneratePatchBuilderMeshUVs");

BL4.AutoGenerateXAtlasMeshUVs = function(TargetMesh_DynamicMesh, UvSetIndex, options, debug_GeometryScriptDebug)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AutoGenerateXAtlasMeshUVs: Failed To Allocate The Params");return;end;
 UvSetIndex = UvSetIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, UvSetIndex at +0x8, options at +0xC, debug at +0x10
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, UvSetIndex)
 writeQword(_params + 0xC, options)
 writeQword(_params + 0x10, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "AutoGenerateXAtlasMeshUVs", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AutoGenerateXAtlasMeshUVs");

BL4.ComputeMeshLocalUVParam = function(TargetMesh_DynamicMesh, CenterPoint, CenterPointTriangleID, VertexIDs, VertexUVs, Radius, bUseInterpolatedNormal, TangentYDirection, UVRotationDeg, debug_GeometryScriptDebug)
 local _paramsSize = 0x88
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ComputeMeshLocalUVParam: Failed To Allocate The Params");return;end;
 CenterPoint = CenterPoint or {X=0,Y=0,Z=0}
 CenterPointTriangleID = CenterPointTriangleID or 0
 bUseInterpolatedNormal = bUseInterpolatedNormal or false
 TangentYDirection = TangentYDirection or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, CenterPoint at +0x8, CenterPointTriangleID at +0x20, VertexIDs at +0x28, VertexUVs at +0x38, Radius at +0x48, bUseInterpolatedNormal at +0x50, TangentYDirection at +0x58, UVRotationDeg at +0x70, debug at +0x78
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeDouble(_params + 0x8, (CenterPoint and CenterPoint.X) or 0)
 writeDouble(_params + 0x10, (CenterPoint and CenterPoint.Y) or 0)
 writeDouble(_params + 0x18, (CenterPoint and CenterPoint.Z) or 0)
 writeInteger(_params + 0x20, CenterPointTriangleID)
 writeQword(_params + 0x28, VertexIDs)
 writeQword(_params + 0x38, VertexUVs)
 writeQword(_params + 0x48, Radius)
 writeByte(_params + 0x50, bUseInterpolatedNormal)
 writeDouble(_params + 0x58, (TangentYDirection and TangentYDirection.X) or 0)
 writeDouble(_params + 0x60, (TangentYDirection and TangentYDirection.Y) or 0)
 writeDouble(_params + 0x68, (TangentYDirection and TangentYDirection.Z) or 0)
 writeQword(_params + 0x70, UVRotationDeg)
 writeQword(_params + 0x78, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "ComputeMeshLocalUVParam", _params);
 local RET=readQword(_params + 0x80);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ComputeMeshLocalUVParam");

BL4.CopyMeshToMeshUVLayer = function(CopyFromUVMesh_DynamicMesh, ToUVSetIndex, CopyToMesh_DynamicMesh, CopyToMeshOut_DynamicMesh, bFoundTopologyErrors, bIsValidUVSet, bOnlyUVPositions, debug_GeometryScriptDebug)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CopyMeshToMeshUVLayer: Failed To Allocate The Params");return;end;
 ToUVSetIndex = ToUVSetIndex or 0
 bFoundTopologyErrors = bFoundTopologyErrors or false
 bIsValidUVSet = bIsValidUVSet or false
 bOnlyUVPositions = bOnlyUVPositions or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CopyFromUVMesh at +0x0, ToUVSetIndex at +0x8, CopyToMesh at +0x10, CopyToMeshOut at +0x18, bFoundTopologyErrors at +0x20, bIsValidUVSet at +0x21, bOnlyUVPositions at +0x22, debug at +0x28
 writeQword(_params + 0x0, CopyFromUVMesh_DynamicMesh)
 writeInteger(_params + 0x8, ToUVSetIndex)
 writeQword(_params + 0x10, CopyToMesh_DynamicMesh)
 writeQword(_params + 0x18, CopyToMeshOut_DynamicMesh)
 writeByte(_params + 0x20, bFoundTopologyErrors)
 writeByte(_params + 0x21, bIsValidUVSet)
 writeByte(_params + 0x22, bOnlyUVPositions)
 writeQword(_params + 0x28, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(CopyFromUVMesh_DynamicMesh, "CopyMeshToMeshUVLayer", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CopyMeshToMeshUVLayer");

BL4.CopyMeshUVLayerToMesh = function(CopyFromMesh_DynamicMesh, UvSetIndex, CopyToUVMesh_DynamicMesh, CopyToUVMeshOut_DynamicMesh, bInvalidTopology, bIsValidUVSet, debug_GeometryScriptDebug)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CopyMeshUVLayerToMesh: Failed To Allocate The Params");return;end;
 UvSetIndex = UvSetIndex or 0
 bInvalidTopology = bInvalidTopology or false
 bIsValidUVSet = bIsValidUVSet or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CopyFromMesh at +0x0, UvSetIndex at +0x8, CopyToUVMesh at +0x10, CopyToUVMeshOut at +0x18, bInvalidTopology at +0x20, bIsValidUVSet at +0x21, debug at +0x28
 writeQword(_params + 0x0, CopyFromMesh_DynamicMesh)
 writeInteger(_params + 0x8, UvSetIndex)
 writeQword(_params + 0x10, CopyToUVMesh_DynamicMesh)
 writeQword(_params + 0x18, CopyToUVMeshOut_DynamicMesh)
 writeByte(_params + 0x20, bInvalidTopology)
 writeByte(_params + 0x21, bIsValidUVSet)
 writeQword(_params + 0x28, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(CopyFromMesh_DynamicMesh, "CopyMeshUVLayerToMesh", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CopyMeshUVLayerToMesh");

BL4.CopyUVSet = function(TargetMesh_DynamicMesh, FromUVSet, ToUVSet, debug_GeometryScriptDebug)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CopyUVSet: Failed To Allocate The Params");return;end;
 FromUVSet = FromUVSet or 0
 ToUVSet = ToUVSet or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, FromUVSet at +0x8, ToUVSet at +0xC, debug at +0x10
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, FromUVSet)
 writeInteger(_params + 0xC, ToUVSet)
 writeQword(_params + 0x10, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "CopyUVSet", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CopyUVSet");

BL4.GetMeshPerVertexUVs = function(TargetMesh_DynamicMesh, UvSetIndex, UVList, bIsValidUVSet, bHasVertexIDGaps, bHasSplitUVs, debug_GeometryScriptDebug)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMeshPerVertexUVs: Failed To Allocate The Params");return;end;
 UvSetIndex = UvSetIndex or 0
 bIsValidUVSet = bIsValidUVSet or false
 bHasVertexIDGaps = bHasVertexIDGaps or false
 bHasSplitUVs = bHasSplitUVs or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, UvSetIndex at +0x8, UVList at +0x10, bIsValidUVSet at +0x20, bHasVertexIDGaps at +0x21, bHasSplitUVs at +0x22, debug at +0x28
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, UvSetIndex)
 writeQword(_params + 0x10, UVList)
 writeByte(_params + 0x20, bIsValidUVSet)
 writeByte(_params + 0x21, bHasVertexIDGaps)
 writeByte(_params + 0x22, bHasSplitUVs)
 writeQword(_params + 0x28, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetMeshPerVertexUVs", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMeshPerVertexUVs");

BL4.GetMeshTriangleUVElementIDs = function(TargetMesh_DynamicMesh, UvSetIndex, TriangleID, TriangleUVElements, bHaveValidUVs)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMeshTriangleUVElementIDs: Failed To Allocate The Params");return;end;
 UvSetIndex = UvSetIndex or 0
 TriangleID = TriangleID or 0
 bHaveValidUVs = bHaveValidUVs or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, UvSetIndex at +0x8, TriangleID at +0xC, TriangleUVElements at +0x10, bHaveValidUVs at +0x1C
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, UvSetIndex)
 writeInteger(_params + 0xC, TriangleID)
 writeQword(_params + 0x10, TriangleUVElements)
 writeByte(_params + 0x1C, bHaveValidUVs)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetMeshTriangleUVElementIDs", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMeshTriangleUVElementIDs");

BL4.GetMeshUVElementPosition = function(TargetMesh_DynamicMesh, UvSetIndex, ElementID, UVPosition, bIsValidElementID)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMeshUVElementPosition: Failed To Allocate The Params");return;end;
 UvSetIndex = UvSetIndex or 0
 ElementID = ElementID or 0
 UVPosition = UVPosition or {X=0,Y=0}
 bIsValidElementID = bIsValidElementID or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, UvSetIndex at +0x8, ElementID at +0xC, UVPosition at +0x10, bIsValidElementID at +0x20
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, UvSetIndex)
 writeInteger(_params + 0xC, ElementID)
 writeDouble(_params + 0x10, (UVPosition and UVPosition.X) or 0)
 writeDouble(_params + 0x18, (UVPosition and UVPosition.Y) or 0)
 writeByte(_params + 0x20, bIsValidElementID)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetMeshUVElementPosition", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMeshUVElementPosition");

BL4.GetMeshUVSizeInfo = function(TargetMesh_DynamicMesh, UvSetIndex, Selection, MeshArea, UVArea, MeshBounds, UVBounds, bIsValidUVSet, bFoundUnsetUVs, bOnlyIncludeValidUVTris, debug_GeometryScriptDebug)
 local _paramsSize = 0xA8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMeshUVSizeInfo: Failed To Allocate The Params");return;end;
 UvSetIndex = UvSetIndex or 0
 bIsValidUVSet = bIsValidUVSet or false
 bFoundUnsetUVs = bFoundUnsetUVs or false
 bOnlyIncludeValidUVTris = bOnlyIncludeValidUVTris or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, UvSetIndex at +0x8, Selection at +0x10, MeshArea at +0x20, UVArea at +0x28, MeshBounds at +0x30, UVBounds at +0x68, bIsValidUVSet at +0x90, bFoundUnsetUVs at +0x91, bOnlyIncludeValidUVTris at +0x92, debug at +0x98
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, UvSetIndex)
 writeQword(_params + 0x10, Selection)
 writeQword(_params + 0x20, MeshArea)
 writeQword(_params + 0x28, UVArea)
 writeQword(_params + 0x30, MeshBounds)
 writeQword(_params + 0x68, UVBounds)
 writeByte(_params + 0x90, bIsValidUVSet)
 writeByte(_params + 0x91, bFoundUnsetUVs)
 writeByte(_params + 0x92, bOnlyIncludeValidUVTris)
 writeQword(_params + 0x98, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetMeshUVSizeInfo", _params);
 local RET=readQword(_params + 0xA0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMeshUVSizeInfo");

BL4.LayoutMeshUVs = function(TargetMesh_DynamicMesh, UvSetIndex, LayoutOptions, Selection, debug_GeometryScriptDebug)
 local _paramsSize = 0xA8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LayoutMeshUVs: Failed To Allocate The Params");return;end;
 UvSetIndex = UvSetIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, UvSetIndex at +0x8, LayoutOptions at +0x10, Selection at +0x88, debug at +0x98
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, UvSetIndex)
 writeQword(_params + 0x10, LayoutOptions)
 writeQword(_params + 0x88, Selection)
 writeQword(_params + 0x98, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "LayoutMeshUVs", _params);
 local RET=readQword(_params + 0xA0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.LayoutMeshUVs");

BL4.RecomputeMeshUVs = function(TargetMesh_DynamicMesh, UvSetIndex, options, Selection, debug_GeometryScriptDebug)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RecomputeMeshUVs: Failed To Allocate The Params");return;end;
 UvSetIndex = UvSetIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, UvSetIndex at +0x8, options at +0xC, Selection at +0x28, debug at +0x38
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, UvSetIndex)
 writeQword(_params + 0xC, options)
 writeQword(_params + 0x28, Selection)
 writeQword(_params + 0x38, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "RecomputeMeshUVs", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RecomputeMeshUVs");

BL4.RepackMeshUVs = function(TargetMesh_DynamicMesh, UvSetIndex, RepackOptions, debug_GeometryScriptDebug)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RepackMeshUVs: Failed To Allocate The Params");return;end;
 UvSetIndex = UvSetIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, UvSetIndex at +0x8, RepackOptions at +0xC, debug at +0x18
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, UvSetIndex)
 writeQword(_params + 0xC, RepackOptions)
 writeQword(_params + 0x18, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "RepackMeshUVs", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RepackMeshUVs");

BL4.RotateMeshUVs = function(TargetMesh_DynamicMesh, UvSetIndex, RotationAngle, RotationOrigin, Selection, debug_GeometryScriptDebug)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RotateMeshUVs: Failed To Allocate The Params");return;end;
 UvSetIndex = UvSetIndex or 0
 RotationAngle = RotationAngle or 0
 RotationOrigin = RotationOrigin or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, UvSetIndex at +0x8, RotationAngle at +0xC, RotationOrigin at +0x10, Selection at +0x20, debug at +0x30
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, UvSetIndex)
 writeFloat(_params + 0xC, RotationAngle)
 writeDouble(_params + 0x10, (RotationOrigin and RotationOrigin.X) or 0)
 writeDouble(_params + 0x18, (RotationOrigin and RotationOrigin.Y) or 0)
 writeQword(_params + 0x20, Selection)
 writeQword(_params + 0x30, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "RotateMeshUVs", _params);
 local RET=readQword(_params + 0x38);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RotateMeshUVs");

BL4.ScaleMeshUVs = function(TargetMesh_DynamicMesh, UvSetIndex, scale, ScaleOrigin, Selection, debug_GeometryScriptDebug)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ScaleMeshUVs: Failed To Allocate The Params");return;end;
 UvSetIndex = UvSetIndex or 0
 scale = scale or {X=0,Y=0}
 ScaleOrigin = ScaleOrigin or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, UvSetIndex at +0x8, scale at +0x10, ScaleOrigin at +0x20, Selection at +0x30, debug at +0x40
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, UvSetIndex)
 writeDouble(_params + 0x10, (scale and scale.X) or 0)
 writeDouble(_params + 0x18, (scale and scale.Y) or 0)
 writeDouble(_params + 0x20, (ScaleOrigin and ScaleOrigin.X) or 0)
 writeDouble(_params + 0x28, (ScaleOrigin and ScaleOrigin.Y) or 0)
 writeQword(_params + 0x30, Selection)
 writeQword(_params + 0x40, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "ScaleMeshUVs", _params);
 local RET=readQword(_params + 0x48);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ScaleMeshUVs");

BL4.SetMeshTriangleUVElementIDs = function(TargetMesh_DynamicMesh, UvSetIndex, TriangleID, TriangleUVElements, bIsValidTriangle, bDeferChangeNotifications)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMeshTriangleUVElementIDs: Failed To Allocate The Params");return;end;
 UvSetIndex = UvSetIndex or 0
 TriangleID = TriangleID or 0
 bIsValidTriangle = bIsValidTriangle or false
 bDeferChangeNotifications = bDeferChangeNotifications or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, UvSetIndex at +0x8, TriangleID at +0xC, TriangleUVElements at +0x10, bIsValidTriangle at +0x1C, bDeferChangeNotifications at +0x1D
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, UvSetIndex)
 writeInteger(_params + 0xC, TriangleID)
 writeQword(_params + 0x10, TriangleUVElements)
 writeByte(_params + 0x1C, bIsValidTriangle)
 writeByte(_params + 0x1D, bDeferChangeNotifications)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "SetMeshTriangleUVElementIDs", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetMeshTriangleUVElementIDs");

BL4.SetMeshTriangleUVs = function(TargetMesh_DynamicMesh, UvSetIndex, TriangleID, UVs, bIsValidTriangle, bDeferChangeNotifications)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMeshTriangleUVs: Failed To Allocate The Params");return;end;
 UvSetIndex = UvSetIndex or 0
 TriangleID = TriangleID or 0
 bIsValidTriangle = bIsValidTriangle or false
 bDeferChangeNotifications = bDeferChangeNotifications or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, UvSetIndex at +0x8, TriangleID at +0xC, UVs at +0x10, bIsValidTriangle at +0x40, bDeferChangeNotifications at +0x41
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, UvSetIndex)
 writeInteger(_params + 0xC, TriangleID)
 writeQword(_params + 0x10, UVs)
 writeByte(_params + 0x40, bIsValidTriangle)
 writeByte(_params + 0x41, bDeferChangeNotifications)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "SetMeshTriangleUVs", _params);
 local RET=readQword(_params + 0x48);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetMeshTriangleUVs");

BL4.SetMeshUVElementPosition = function(TargetMesh_DynamicMesh, UvSetIndex, ElementID, NewUVPosition, bIsValidElementID, bDeferChangeNotifications)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMeshUVElementPosition: Failed To Allocate The Params");return;end;
 UvSetIndex = UvSetIndex or 0
 ElementID = ElementID or 0
 NewUVPosition = NewUVPosition or {X=0,Y=0}
 bIsValidElementID = bIsValidElementID or false
 bDeferChangeNotifications = bDeferChangeNotifications or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, UvSetIndex at +0x8, ElementID at +0xC, NewUVPosition at +0x10, bIsValidElementID at +0x20, bDeferChangeNotifications at +0x21
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, UvSetIndex)
 writeInteger(_params + 0xC, ElementID)
 writeDouble(_params + 0x10, (NewUVPosition and NewUVPosition.X) or 0)
 writeDouble(_params + 0x18, (NewUVPosition and NewUVPosition.Y) or 0)
 writeByte(_params + 0x20, bIsValidElementID)
 writeByte(_params + 0x21, bDeferChangeNotifications)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "SetMeshUVElementPosition", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetMeshUVElementPosition");

BL4.SetMeshUVsFromBoxProjection = function(TargetMesh_DynamicMesh, UvSetIndex, BoxTransform, Selection, MinIslandTriCount, debug_GeometryScriptDebug)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMeshUVsFromBoxProjection: Failed To Allocate The Params");return;end;
 UvSetIndex = UvSetIndex or 0
 MinIslandTriCount = MinIslandTriCount or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, UvSetIndex at +0x8, BoxTransform at +0x10, Selection at +0x70, MinIslandTriCount at +0x80, debug at +0x88
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, UvSetIndex)
 writeQword(_params + 0x10, BoxTransform)
 writeQword(_params + 0x70, Selection)
 writeInteger(_params + 0x80, MinIslandTriCount)
 writeQword(_params + 0x88, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "SetMeshUVsFromBoxProjection", _params);
 local RET=readQword(_params + 0x90);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetMeshUVsFromBoxProjection");

BL4.SetMeshUVsFromCylinderProjection = function(TargetMesh_DynamicMesh, UvSetIndex, CylinderTransform, Selection, SplitAngle, debug_GeometryScriptDebug)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMeshUVsFromCylinderProjection: Failed To Allocate The Params");return;end;
 UvSetIndex = UvSetIndex or 0
 SplitAngle = SplitAngle or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, UvSetIndex at +0x8, CylinderTransform at +0x10, Selection at +0x70, SplitAngle at +0x80, debug at +0x88
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, UvSetIndex)
 writeQword(_params + 0x10, CylinderTransform)
 writeQword(_params + 0x70, Selection)
 writeFloat(_params + 0x80, SplitAngle)
 writeQword(_params + 0x88, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "SetMeshUVsFromCylinderProjection", _params);
 local RET=readQword(_params + 0x90);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetMeshUVsFromCylinderProjection");

BL4.SetMeshUVsFromPlanarProjection = function(TargetMesh_DynamicMesh, UvSetIndex, PlaneTransform, Selection, debug_GeometryScriptDebug)
 local _paramsSize = 0x90
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMeshUVsFromPlanarProjection: Failed To Allocate The Params");return;end;
 UvSetIndex = UvSetIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, UvSetIndex at +0x8, PlaneTransform at +0x10, Selection at +0x70, debug at +0x80
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, UvSetIndex)
 writeQword(_params + 0x10, PlaneTransform)
 writeQword(_params + 0x70, Selection)
 writeQword(_params + 0x80, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "SetMeshUVsFromPlanarProjection", _params);
 local RET=readQword(_params + 0x88);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetMeshUVsFromPlanarProjection");

BL4.SetNumUVSets = function(TargetMesh_DynamicMesh, NumUVSets, debug_GeometryScriptDebug)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNumUVSets: Failed To Allocate The Params");return;end;
 NumUVSets = NumUVSets or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, NumUVSets at +0x8, debug at +0x10
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, NumUVSets)
 writeQword(_params + 0x10, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "SetNumUVSets", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetNumUVSets");

BL4.SetUVSeamsAlongSelectedEdges = function(TargetMesh_DynamicMesh, UVChannel, Selection, bInsertSeams, bDeferChangeNotifications, debug_GeometryScriptDebug)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetUVSeamsAlongSelectedEdges: Failed To Allocate The Params");return;end;
 UVChannel = UVChannel or 0
 bInsertSeams = bInsertSeams or false
 bDeferChangeNotifications = bDeferChangeNotifications or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, UVChannel at +0x8, Selection at +0x10, bInsertSeams at +0x20, bDeferChangeNotifications at +0x21, debug at +0x28
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, UVChannel)
 writeQword(_params + 0x10, Selection)
 writeByte(_params + 0x20, bInsertSeams)
 writeByte(_params + 0x21, bDeferChangeNotifications)
 writeQword(_params + 0x28, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "SetUVSeamsAlongSelectedEdges", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetUVSeamsAlongSelectedEdges");

BL4.TranslateMeshUVs = function(TargetMesh_DynamicMesh, UvSetIndex, Translation, Selection, debug_GeometryScriptDebug)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TranslateMeshUVs: Failed To Allocate The Params");return;end;
 UvSetIndex = UvSetIndex or 0
 Translation = Translation or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, UvSetIndex at +0x8, Translation at +0x10, Selection at +0x20, debug at +0x30
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, UvSetIndex)
 writeDouble(_params + 0x10, (Translation and Translation.X) or 0)
 writeDouble(_params + 0x18, (Translation and Translation.Y) or 0)
 writeQword(_params + 0x20, Selection)
 writeQword(_params + 0x30, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "TranslateMeshUVs", _params);
 local RET=readQword(_params + 0x38);
 deAlloc(_params);
 return RET;
end
FNR("BL4.TranslateMeshUVs");

