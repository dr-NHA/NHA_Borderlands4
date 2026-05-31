BL4.ComputePolygonTriangulation = function(OwnerAddress, PolygonID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ComputePolygonTriangulation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PolygonID at +0x0
 writeQword(_params + 0x0, PolygonID)
 UE.CallProcessEventEx(OwnerAddress, "ComputePolygonTriangulation", _params);
 deAlloc(_params);
end
FNR("BL4.ComputePolygonTriangulation");

BL4.CreateEdge = function(OwnerAddress, VertexID0, VertexID1)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CreateEdge: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VertexID0 at +0x0, VertexID1 at +0x4
 writeQword(_params + 0x0, VertexID0)
 writeQword(_params + 0x4, VertexID1)
 UE.CallProcessEventEx(OwnerAddress, "CreateEdge", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CreateEdge");

BL4.CreateEdgeWithID = function(OwnerAddress, EdgeID, VertexID0, VertexID1)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CreateEdgeWithID: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: EdgeID at +0x0, VertexID0 at +0x4, VertexID1 at +0x8
 writeQword(_params + 0x0, EdgeID)
 writeQword(_params + 0x4, VertexID0)
 writeQword(_params + 0x8, VertexID1)
 UE.CallProcessEventEx(OwnerAddress, "CreateEdgeWithID", _params);
 deAlloc(_params);
end
FNR("BL4.CreateEdgeWithID");

BL4.CreatePolygon = function(OwnerAddress, PolygonGroupID, VertexInstanceIDs, NewEdgeIDs)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CreatePolygon: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PolygonGroupID at +0x0, VertexInstanceIDs at +0x8, NewEdgeIDs at +0x18
 writeQword(_params + 0x0, PolygonGroupID)
 writeQword(_params + 0x8, VertexInstanceIDs)
 writeQword(_params + 0x18, NewEdgeIDs)
 UE.CallProcessEventEx(OwnerAddress, "CreatePolygon", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CreatePolygon");

BL4.CreatePolygonGroup = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CreatePolygonGroup: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "CreatePolygonGroup", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CreatePolygonGroup");

BL4.CreatePolygonGroupWithID = function(OwnerAddress, PolygonGroupID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CreatePolygonGroupWithID: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PolygonGroupID at +0x0
 writeQword(_params + 0x0, PolygonGroupID)
 UE.CallProcessEventEx(OwnerAddress, "CreatePolygonGroupWithID", _params);
 deAlloc(_params);
end
FNR("BL4.CreatePolygonGroupWithID");

BL4.CreatePolygonWithID = function(OwnerAddress, PolygonID, PolygonGroupID, VertexInstanceIDs, NewEdgeIDs)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CreatePolygonWithID: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PolygonID at +0x0, PolygonGroupID at +0x4, VertexInstanceIDs at +0x8, NewEdgeIDs at +0x18
 writeQword(_params + 0x0, PolygonID)
 writeQword(_params + 0x4, PolygonGroupID)
 writeQword(_params + 0x8, VertexInstanceIDs)
 writeQword(_params + 0x18, NewEdgeIDs)
 UE.CallProcessEventEx(OwnerAddress, "CreatePolygonWithID", _params);
 deAlloc(_params);
end
FNR("BL4.CreatePolygonWithID");

BL4.CreateTriangle = function(OwnerAddress, PolygonGroupID, VertexInstanceIDs, NewEdgeIDs)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CreateTriangle: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PolygonGroupID at +0x0, VertexInstanceIDs at +0x8, NewEdgeIDs at +0x18
 writeQword(_params + 0x0, PolygonGroupID)
 writeQword(_params + 0x8, VertexInstanceIDs)
 writeQword(_params + 0x18, NewEdgeIDs)
 UE.CallProcessEventEx(OwnerAddress, "CreateTriangle", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CreateTriangle");

BL4.CreateTriangleWithID = function(OwnerAddress, TriangleID, PolygonGroupID, VertexInstanceIDs, NewEdgeIDs)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CreateTriangleWithID: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TriangleID at +0x0, PolygonGroupID at +0x4, VertexInstanceIDs at +0x8, NewEdgeIDs at +0x18
 writeQword(_params + 0x0, TriangleID)
 writeQword(_params + 0x4, PolygonGroupID)
 writeQword(_params + 0x8, VertexInstanceIDs)
 writeQword(_params + 0x18, NewEdgeIDs)
 UE.CallProcessEventEx(OwnerAddress, "CreateTriangleWithID", _params);
 deAlloc(_params);
end
FNR("BL4.CreateTriangleWithID");

BL4.CreateVertex = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CreateVertex: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "CreateVertex", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CreateVertex");

BL4.CreateVertexInstance = function(OwnerAddress, VertexID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CreateVertexInstance: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: VertexID at +0x0
 writeQword(_params + 0x0, VertexID)
 UE.CallProcessEventEx(OwnerAddress, "CreateVertexInstance", _params);
 local RET=readQword(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CreateVertexInstance");

BL4.CreateVertexInstanceWithID = function(OwnerAddress, VertexInstanceID, VertexID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CreateVertexInstanceWithID: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: VertexInstanceID at +0x0, VertexID at +0x4
 writeQword(_params + 0x0, VertexInstanceID)
 writeQword(_params + 0x4, VertexID)
 UE.CallProcessEventEx(OwnerAddress, "CreateVertexInstanceWithID", _params);
 deAlloc(_params);
end
FNR("BL4.CreateVertexInstanceWithID");

BL4.CreateVertexWithID = function(OwnerAddress, VertexID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CreateVertexWithID: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: VertexID at +0x0
 writeQword(_params + 0x0, VertexID)
 UE.CallProcessEventEx(OwnerAddress, "CreateVertexWithID", _params);
 deAlloc(_params);
end
FNR("BL4.CreateVertexWithID");

BL4.DeleteEdge = function(OwnerAddress, EdgeID, OrphanedVertices)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DeleteEdge: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: EdgeID at +0x0, OrphanedVertices at +0x8
 writeQword(_params + 0x0, EdgeID)
 writeQword(_params + 0x8, OrphanedVertices)
 UE.CallProcessEventEx(OwnerAddress, "DeleteEdge", _params);
 deAlloc(_params);
end
FNR("BL4.DeleteEdge");

BL4.DeletePolygon = function(OwnerAddress, PolygonID, OrphanedEdges, OrphanedVertexInstances, OrphanedPolygonGroups)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DeletePolygon: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PolygonID at +0x0, OrphanedEdges at +0x8, OrphanedVertexInstances at +0x18, OrphanedPolygonGroups at +0x28
 writeQword(_params + 0x0, PolygonID)
 writeQword(_params + 0x8, OrphanedEdges)
 writeQword(_params + 0x18, OrphanedVertexInstances)
 writeQword(_params + 0x28, OrphanedPolygonGroups)
 UE.CallProcessEventEx(OwnerAddress, "DeletePolygon", _params);
 deAlloc(_params);
end
FNR("BL4.DeletePolygon");

BL4.DeletePolygonGroup = function(OwnerAddress, PolygonGroupID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DeletePolygonGroup: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PolygonGroupID at +0x0
 writeQword(_params + 0x0, PolygonGroupID)
 UE.CallProcessEventEx(OwnerAddress, "DeletePolygonGroup", _params);
 deAlloc(_params);
end
FNR("BL4.DeletePolygonGroup");

BL4.DeleteTriangle = function(OwnerAddress, TriangleID, OrphanedEdges, OrphanedVertexInstances, OrphanedPolygonGroupsPtr)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DeleteTriangle: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TriangleID at +0x0, OrphanedEdges at +0x8, OrphanedVertexInstances at +0x18, OrphanedPolygonGroupsPtr at +0x28
 writeQword(_params + 0x0, TriangleID)
 writeQword(_params + 0x8, OrphanedEdges)
 writeQword(_params + 0x18, OrphanedVertexInstances)
 writeQword(_params + 0x28, OrphanedPolygonGroupsPtr)
 UE.CallProcessEventEx(OwnerAddress, "DeleteTriangle", _params);
 deAlloc(_params);
end
FNR("BL4.DeleteTriangle");

BL4.DeleteVertex = function(OwnerAddress, VertexID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DeleteVertex: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: VertexID at +0x0
 writeQword(_params + 0x0, VertexID)
 UE.CallProcessEventEx(OwnerAddress, "DeleteVertex", _params);
 deAlloc(_params);
end
FNR("BL4.DeleteVertex");

BL4.DeleteVertexInstance = function(OwnerAddress, VertexInstanceID, OrphanedVertices)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DeleteVertexInstance: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VertexInstanceID at +0x0, OrphanedVertices at +0x8
 writeQword(_params + 0x0, VertexInstanceID)
 writeQword(_params + 0x8, OrphanedVertices)
 UE.CallProcessEventEx(OwnerAddress, "DeleteVertexInstance", _params);
 deAlloc(_params);
end
FNR("BL4.DeleteVertexInstance");

BL4.GetEdgeConnectedPolygons = function(OwnerAddress, EdgeID, OutConnectedPolygonIDs)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetEdgeConnectedPolygons: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: EdgeID at +0x0, OutConnectedPolygonIDs at +0x8
 writeQword(_params + 0x0, EdgeID)
 writeQword(_params + 0x8, OutConnectedPolygonIDs)
 UE.CallProcessEventEx(OwnerAddress, "GetEdgeConnectedPolygons", _params);
 deAlloc(_params);
end
FNR("BL4.GetEdgeConnectedPolygons");

BL4.GetEdgeConnectedTriangles = function(OwnerAddress, EdgeID, OutConnectedTriangleIDs)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetEdgeConnectedTriangles: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: EdgeID at +0x0, OutConnectedTriangleIDs at +0x8
 writeQword(_params + 0x0, EdgeID)
 writeQword(_params + 0x8, OutConnectedTriangleIDs)
 UE.CallProcessEventEx(OwnerAddress, "GetEdgeConnectedTriangles", _params);
 deAlloc(_params);
end
FNR("BL4.GetEdgeConnectedTriangles");

BL4.GetEdgeCount = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetEdgeCount: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetEdgeCount", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetEdgeCount");

BL4.GetEdgeVertex = function(OwnerAddress, EdgeID, VertexNumber)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetEdgeVertex: Failed To Allocate The Params");return;end;
 VertexNumber = VertexNumber or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: EdgeID at +0x0, VertexNumber at +0x4
 writeQword(_params + 0x0, EdgeID)
 writeInteger(_params + 0x4, VertexNumber)
 UE.CallProcessEventEx(OwnerAddress, "GetEdgeVertex", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetEdgeVertex");

BL4.GetEdgeVertices = function(OwnerAddress, EdgeID, OutVertexIDs)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetEdgeVertices: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: EdgeID at +0x0, OutVertexIDs at +0x8
 writeQword(_params + 0x0, EdgeID)
 writeQword(_params + 0x8, OutVertexIDs)
 UE.CallProcessEventEx(OwnerAddress, "GetEdgeVertices", _params);
 deAlloc(_params);
end
FNR("BL4.GetEdgeVertices");

BL4.GetNumEdgeConnectedPolygons = function(OwnerAddress, EdgeID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumEdgeConnectedPolygons: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: EdgeID at +0x0
 writeQword(_params + 0x0, EdgeID)
 UE.CallProcessEventEx(OwnerAddress, "GetNumEdgeConnectedPolygons", _params);
 local RET=readInteger(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumEdgeConnectedPolygons");

BL4.GetNumEdgeConnectedTriangles = function(OwnerAddress, EdgeID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumEdgeConnectedTriangles: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: EdgeID at +0x0
 writeQword(_params + 0x0, EdgeID)
 UE.CallProcessEventEx(OwnerAddress, "GetNumEdgeConnectedTriangles", _params);
 local RET=readInteger(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumEdgeConnectedTriangles");

BL4.GetNumPolygonGroupPolygons = function(OwnerAddress, PolygonGroupID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumPolygonGroupPolygons: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PolygonGroupID at +0x0
 writeQword(_params + 0x0, PolygonGroupID)
 UE.CallProcessEventEx(OwnerAddress, "GetNumPolygonGroupPolygons", _params);
 local RET=readInteger(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumPolygonGroupPolygons");

BL4.GetNumPolygonInternalEdges = function(OwnerAddress, PolygonID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumPolygonInternalEdges: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PolygonID at +0x0
 writeQword(_params + 0x0, PolygonID)
 UE.CallProcessEventEx(OwnerAddress, "GetNumPolygonInternalEdges", _params);
 local RET=readInteger(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumPolygonInternalEdges");

BL4.GetNumPolygonTriangles = function(OwnerAddress, PolygonID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumPolygonTriangles: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PolygonID at +0x0
 writeQword(_params + 0x0, PolygonID)
 UE.CallProcessEventEx(OwnerAddress, "GetNumPolygonTriangles", _params);
 local RET=readInteger(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumPolygonTriangles");

BL4.GetNumPolygonVertices = function(OwnerAddress, PolygonID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumPolygonVertices: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PolygonID at +0x0
 writeQword(_params + 0x0, PolygonID)
 UE.CallProcessEventEx(OwnerAddress, "GetNumPolygonVertices", _params);
 local RET=readInteger(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumPolygonVertices");

BL4.GetNumVertexConnectedEdges = function(OwnerAddress, VertexID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumVertexConnectedEdges: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: VertexID at +0x0
 writeQword(_params + 0x0, VertexID)
 UE.CallProcessEventEx(OwnerAddress, "GetNumVertexConnectedEdges", _params);
 local RET=readInteger(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumVertexConnectedEdges");

BL4.GetNumVertexConnectedPolygons = function(OwnerAddress, VertexID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumVertexConnectedPolygons: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: VertexID at +0x0
 writeQword(_params + 0x0, VertexID)
 UE.CallProcessEventEx(OwnerAddress, "GetNumVertexConnectedPolygons", _params);
 local RET=readInteger(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumVertexConnectedPolygons");

BL4.GetNumVertexConnectedTriangles = function(OwnerAddress, VertexID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumVertexConnectedTriangles: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: VertexID at +0x0
 writeQword(_params + 0x0, VertexID)
 UE.CallProcessEventEx(OwnerAddress, "GetNumVertexConnectedTriangles", _params);
 local RET=readInteger(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumVertexConnectedTriangles");

BL4.GetNumVertexInstanceConnectedPolygons = function(OwnerAddress, VertexInstanceID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumVertexInstanceConnectedPolygons: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: VertexInstanceID at +0x0
 writeQword(_params + 0x0, VertexInstanceID)
 UE.CallProcessEventEx(OwnerAddress, "GetNumVertexInstanceConnectedPolygons", _params);
 local RET=readInteger(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumVertexInstanceConnectedPolygons");

BL4.GetNumVertexInstanceConnectedTriangles = function(OwnerAddress, VertexInstanceID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumVertexInstanceConnectedTriangles: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: VertexInstanceID at +0x0
 writeQword(_params + 0x0, VertexInstanceID)
 UE.CallProcessEventEx(OwnerAddress, "GetNumVertexInstanceConnectedTriangles", _params);
 local RET=readInteger(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumVertexInstanceConnectedTriangles");

BL4.GetNumVertexVertexInstances = function(OwnerAddress, VertexID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumVertexVertexInstances: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: VertexID at +0x0
 writeQword(_params + 0x0, VertexID)
 UE.CallProcessEventEx(OwnerAddress, "GetNumVertexVertexInstances", _params);
 local RET=readInteger(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumVertexVertexInstances");

BL4.GetPolygonAdjacentPolygons = function(OwnerAddress, PolygonID, OutPolygonIDs)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPolygonAdjacentPolygons: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PolygonID at +0x0, OutPolygonIDs at +0x8
 writeQword(_params + 0x0, PolygonID)
 writeQword(_params + 0x8, OutPolygonIDs)
 UE.CallProcessEventEx(OwnerAddress, "GetPolygonAdjacentPolygons", _params);
 deAlloc(_params);
end
FNR("BL4.GetPolygonAdjacentPolygons");

BL4.GetPolygonCount = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPolygonCount: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetPolygonCount", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPolygonCount");

BL4.GetPolygonGroupCount = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPolygonGroupCount: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetPolygonGroupCount", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPolygonGroupCount");

BL4.GetPolygonGroupPolygons = function(OwnerAddress, PolygonGroupID, OutPolygonIDs)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPolygonGroupPolygons: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PolygonGroupID at +0x0, OutPolygonIDs at +0x8
 writeQword(_params + 0x0, PolygonGroupID)
 writeQword(_params + 0x8, OutPolygonIDs)
 UE.CallProcessEventEx(OwnerAddress, "GetPolygonGroupPolygons", _params);
 deAlloc(_params);
end
FNR("BL4.GetPolygonGroupPolygons");

BL4.GetPolygonInternalEdges = function(OwnerAddress, PolygonID, OutEdgeIDs)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPolygonInternalEdges: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PolygonID at +0x0, OutEdgeIDs at +0x8
 writeQword(_params + 0x0, PolygonID)
 writeQword(_params + 0x8, OutEdgeIDs)
 UE.CallProcessEventEx(OwnerAddress, "GetPolygonInternalEdges", _params);
 deAlloc(_params);
end
FNR("BL4.GetPolygonInternalEdges");

BL4.GetPolygonPerimeterEdges = function(OwnerAddress, PolygonID, OutEdgeIDs)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPolygonPerimeterEdges: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PolygonID at +0x0, OutEdgeIDs at +0x8
 writeQword(_params + 0x0, PolygonID)
 writeQword(_params + 0x8, OutEdgeIDs)
 UE.CallProcessEventEx(OwnerAddress, "GetPolygonPerimeterEdges", _params);
 deAlloc(_params);
end
FNR("BL4.GetPolygonPerimeterEdges");

BL4.GetPolygonPolygonGroup = function(OwnerAddress, PolygonID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPolygonPolygonGroup: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PolygonID at +0x0
 writeQword(_params + 0x0, PolygonID)
 UE.CallProcessEventEx(OwnerAddress, "GetPolygonPolygonGroup", _params);
 local RET=readQword(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPolygonPolygonGroup");

BL4.GetPolygonTriangles = function(OwnerAddress, PolygonID, OutTriangleIDs)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPolygonTriangles: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PolygonID at +0x0, OutTriangleIDs at +0x8
 writeQword(_params + 0x0, PolygonID)
 writeQword(_params + 0x8, OutTriangleIDs)
 UE.CallProcessEventEx(OwnerAddress, "GetPolygonTriangles", _params);
 deAlloc(_params);
end
FNR("BL4.GetPolygonTriangles");

BL4.GetPolygonVertexInstances = function(OwnerAddress, PolygonID, OutVertexInstanceIDs)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPolygonVertexInstances: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PolygonID at +0x0, OutVertexInstanceIDs at +0x8
 writeQword(_params + 0x0, PolygonID)
 writeQword(_params + 0x8, OutVertexInstanceIDs)
 UE.CallProcessEventEx(OwnerAddress, "GetPolygonVertexInstances", _params);
 deAlloc(_params);
end
FNR("BL4.GetPolygonVertexInstances");

BL4.GetPolygonVertices = function(OwnerAddress, PolygonID, OutVertexIDs)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPolygonVertices: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PolygonID at +0x0, OutVertexIDs at +0x8
 writeQword(_params + 0x0, PolygonID)
 writeQword(_params + 0x8, OutVertexIDs)
 UE.CallProcessEventEx(OwnerAddress, "GetPolygonVertices", _params);
 deAlloc(_params);
end
FNR("BL4.GetPolygonVertices");

BL4.GetTriangleAdjacentTriangles = function(OwnerAddress, TriangleID, OutTriangleIDs)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTriangleAdjacentTriangles: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TriangleID at +0x0, OutTriangleIDs at +0x8
 writeQword(_params + 0x0, TriangleID)
 writeQword(_params + 0x8, OutTriangleIDs)
 UE.CallProcessEventEx(OwnerAddress, "GetTriangleAdjacentTriangles", _params);
 deAlloc(_params);
end
FNR("BL4.GetTriangleAdjacentTriangles");

BL4.GetTriangleCount = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTriangleCount: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetTriangleCount", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTriangleCount");

BL4.GetTriangleEdges = function(OwnerAddress, TriangleID, OutEdgeIDs)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTriangleEdges: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TriangleID at +0x0, OutEdgeIDs at +0x8
 writeQword(_params + 0x0, TriangleID)
 writeQword(_params + 0x8, OutEdgeIDs)
 UE.CallProcessEventEx(OwnerAddress, "GetTriangleEdges", _params);
 deAlloc(_params);
end
FNR("BL4.GetTriangleEdges");

BL4.GetTrianglePolygon = function(OwnerAddress, TriangleID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTrianglePolygon: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: TriangleID at +0x0
 writeQword(_params + 0x0, TriangleID)
 UE.CallProcessEventEx(OwnerAddress, "GetTrianglePolygon", _params);
 local RET=readQword(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTrianglePolygon");

BL4.GetTrianglePolygonGroup = function(OwnerAddress, TriangleID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTrianglePolygonGroup: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: TriangleID at +0x0
 writeQword(_params + 0x0, TriangleID)
 UE.CallProcessEventEx(OwnerAddress, "GetTrianglePolygonGroup", _params);
 local RET=readQword(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTrianglePolygonGroup");

BL4.GetTriangleVertexInstance = function(OwnerAddress, TriangleID, Index)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTriangleVertexInstance: Failed To Allocate The Params");return;end;
 Index = Index or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TriangleID at +0x0, Index at +0x4
 writeQword(_params + 0x0, TriangleID)
 writeInteger(_params + 0x4, Index)
 UE.CallProcessEventEx(OwnerAddress, "GetTriangleVertexInstance", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTriangleVertexInstance");

BL4.GetTriangleVertexInstances = function(OwnerAddress, TriangleID, OutVertexInstanceIDs)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTriangleVertexInstances: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TriangleID at +0x0, OutVertexInstanceIDs at +0x8
 writeQword(_params + 0x0, TriangleID)
 writeQword(_params + 0x8, OutVertexInstanceIDs)
 UE.CallProcessEventEx(OwnerAddress, "GetTriangleVertexInstances", _params);
 deAlloc(_params);
end
FNR("BL4.GetTriangleVertexInstances");

BL4.GetTriangleVertices = function(OwnerAddress, TriangleID, OutVertexIDs)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTriangleVertices: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TriangleID at +0x0, OutVertexIDs at +0x8
 writeQword(_params + 0x0, TriangleID)
 writeQword(_params + 0x8, OutVertexIDs)
 UE.CallProcessEventEx(OwnerAddress, "GetTriangleVertices", _params);
 deAlloc(_params);
end
FNR("BL4.GetTriangleVertices");

BL4.GetVertexAdjacentVertices = function(OwnerAddress, VertexID, OutAdjacentVertexIDs)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVertexAdjacentVertices: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VertexID at +0x0, OutAdjacentVertexIDs at +0x8
 writeQword(_params + 0x0, VertexID)
 writeQword(_params + 0x8, OutAdjacentVertexIDs)
 UE.CallProcessEventEx(OwnerAddress, "GetVertexAdjacentVertices", _params);
 deAlloc(_params);
end
FNR("BL4.GetVertexAdjacentVertices");

BL4.GetVertexConnectedEdges = function(OwnerAddress, VertexID, OutEdgeIDs)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVertexConnectedEdges: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VertexID at +0x0, OutEdgeIDs at +0x8
 writeQword(_params + 0x0, VertexID)
 writeQword(_params + 0x8, OutEdgeIDs)
 UE.CallProcessEventEx(OwnerAddress, "GetVertexConnectedEdges", _params);
 deAlloc(_params);
end
FNR("BL4.GetVertexConnectedEdges");

BL4.GetVertexConnectedPolygons = function(OwnerAddress, VertexID, OutConnectedPolygonIDs)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVertexConnectedPolygons: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VertexID at +0x0, OutConnectedPolygonIDs at +0x8
 writeQword(_params + 0x0, VertexID)
 writeQword(_params + 0x8, OutConnectedPolygonIDs)
 UE.CallProcessEventEx(OwnerAddress, "GetVertexConnectedPolygons", _params);
 deAlloc(_params);
end
FNR("BL4.GetVertexConnectedPolygons");

BL4.GetVertexConnectedTriangles = function(OwnerAddress, VertexID, OutConnectedTriangleIDs)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVertexConnectedTriangles: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VertexID at +0x0, OutConnectedTriangleIDs at +0x8
 writeQword(_params + 0x0, VertexID)
 writeQword(_params + 0x8, OutConnectedTriangleIDs)
 UE.CallProcessEventEx(OwnerAddress, "GetVertexConnectedTriangles", _params);
 deAlloc(_params);
end
FNR("BL4.GetVertexConnectedTriangles");

BL4.GetVertexCount = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVertexCount: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetVertexCount", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVertexCount");

BL4.GetVertexInstanceConnectedPolygons = function(OwnerAddress, VertexInstanceID, OutConnectedPolygonIDs)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVertexInstanceConnectedPolygons: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VertexInstanceID at +0x0, OutConnectedPolygonIDs at +0x8
 writeQword(_params + 0x0, VertexInstanceID)
 writeQword(_params + 0x8, OutConnectedPolygonIDs)
 UE.CallProcessEventEx(OwnerAddress, "GetVertexInstanceConnectedPolygons", _params);
 deAlloc(_params);
end
FNR("BL4.GetVertexInstanceConnectedPolygons");

BL4.GetVertexInstanceConnectedTriangles = function(OwnerAddress, VertexInstanceID, OutConnectedTriangleIDs)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVertexInstanceConnectedTriangles: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VertexInstanceID at +0x0, OutConnectedTriangleIDs at +0x8
 writeQword(_params + 0x0, VertexInstanceID)
 writeQword(_params + 0x8, OutConnectedTriangleIDs)
 UE.CallProcessEventEx(OwnerAddress, "GetVertexInstanceConnectedTriangles", _params);
 deAlloc(_params);
end
FNR("BL4.GetVertexInstanceConnectedTriangles");

BL4.GetVertexInstanceCount = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVertexInstanceCount: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetVertexInstanceCount", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVertexInstanceCount");

BL4.GetVertexInstanceForPolygonVertex = function(OwnerAddress, PolygonID, VertexID)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVertexInstanceForPolygonVertex: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PolygonID at +0x0, VertexID at +0x4
 writeQword(_params + 0x0, PolygonID)
 writeQword(_params + 0x4, VertexID)
 UE.CallProcessEventEx(OwnerAddress, "GetVertexInstanceForPolygonVertex", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVertexInstanceForPolygonVertex");

BL4.GetVertexInstanceForTriangleVertex = function(OwnerAddress, TriangleID, VertexID)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVertexInstanceForTriangleVertex: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TriangleID at +0x0, VertexID at +0x4
 writeQword(_params + 0x0, TriangleID)
 writeQword(_params + 0x4, VertexID)
 UE.CallProcessEventEx(OwnerAddress, "GetVertexInstanceForTriangleVertex", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVertexInstanceForTriangleVertex");

BL4.GetVertexInstancePairEdge = function(OwnerAddress, VertexInstanceID0, VertexInstanceID1)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVertexInstancePairEdge: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VertexInstanceID0 at +0x0, VertexInstanceID1 at +0x4
 writeQword(_params + 0x0, VertexInstanceID0)
 writeQword(_params + 0x4, VertexInstanceID1)
 UE.CallProcessEventEx(OwnerAddress, "GetVertexInstancePairEdge", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVertexInstancePairEdge");

BL4.GetVertexInstanceVertex = function(OwnerAddress, VertexInstanceID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVertexInstanceVertex: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: VertexInstanceID at +0x0
 writeQword(_params + 0x0, VertexInstanceID)
 UE.CallProcessEventEx(OwnerAddress, "GetVertexInstanceVertex", _params);
 local RET=readQword(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVertexInstanceVertex");

BL4.GetVertexPairEdge = function(OwnerAddress, VertexID0, VertexID1)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVertexPairEdge: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VertexID0 at +0x0, VertexID1 at +0x4
 writeQword(_params + 0x0, VertexID0)
 writeQword(_params + 0x4, VertexID1)
 UE.CallProcessEventEx(OwnerAddress, "GetVertexPairEdge", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVertexPairEdge");

BL4.GetVertexPosition = function(OwnerAddress, VertexID)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVertexPosition: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VertexID at +0x0
 writeQword(_params + 0x0, VertexID)
 UE.CallProcessEventEx(OwnerAddress, "GetVertexPosition", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVertexPosition");

BL4.GetVertexVertexInstances = function(OwnerAddress, VertexID, OutVertexInstanceIDs)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVertexVertexInstances: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VertexID at +0x0, OutVertexInstanceIDs at +0x8
 writeQword(_params + 0x0, VertexID)
 writeQword(_params + 0x8, OutVertexInstanceIDs)
 UE.CallProcessEventEx(OwnerAddress, "GetVertexVertexInstances", _params);
 deAlloc(_params);
end
FNR("BL4.GetVertexVertexInstances");

BL4.IsEdgeInternal = function(OwnerAddress, EdgeID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsEdgeInternal: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: EdgeID at +0x0
 writeQword(_params + 0x0, EdgeID)
 UE.CallProcessEventEx(OwnerAddress, "IsEdgeInternal", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsEdgeInternal");

BL4.IsEdgeInternalToPolygon = function(OwnerAddress, EdgeID, PolygonID)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsEdgeInternalToPolygon: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: EdgeID at +0x0, PolygonID at +0x4
 writeQword(_params + 0x0, EdgeID)
 writeQword(_params + 0x4, PolygonID)
 UE.CallProcessEventEx(OwnerAddress, "IsEdgeInternalToPolygon", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsEdgeInternalToPolygon");

BL4.IsEdgeValid = function(OwnerAddress, EdgeID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsEdgeValid: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: EdgeID at +0x0
 writeQword(_params + 0x0, EdgeID)
 UE.CallProcessEventEx(OwnerAddress, "IsEdgeValid", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsEdgeValid");

BL4.IsEmpty = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsEmpty: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsEmpty", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsEmpty");

BL4.IsPolygonGroupValid = function(OwnerAddress, PolygonGroupID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsPolygonGroupValid: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PolygonGroupID at +0x0
 writeQword(_params + 0x0, PolygonGroupID)
 UE.CallProcessEventEx(OwnerAddress, "IsPolygonGroupValid", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsPolygonGroupValid");

BL4.IsPolygonValid = function(OwnerAddress, PolygonID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsPolygonValid: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PolygonID at +0x0
 writeQword(_params + 0x0, PolygonID)
 UE.CallProcessEventEx(OwnerAddress, "IsPolygonValid", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsPolygonValid");

BL4.IsTrianglePartOfNgon = function(OwnerAddress, TriangleID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsTrianglePartOfNgon: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: TriangleID at +0x0
 writeQword(_params + 0x0, TriangleID)
 UE.CallProcessEventEx(OwnerAddress, "IsTrianglePartOfNgon", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsTrianglePartOfNgon");

BL4.IsTriangleValid = function(OwnerAddress, TriangleID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsTriangleValid: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: TriangleID at +0x0
 writeQword(_params + 0x0, TriangleID)
 UE.CallProcessEventEx(OwnerAddress, "IsTriangleValid", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsTriangleValid");

BL4.IsVertexInstanceValid = function(OwnerAddress, VertexInstanceID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsVertexInstanceValid: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: VertexInstanceID at +0x0
 writeQword(_params + 0x0, VertexInstanceID)
 UE.CallProcessEventEx(OwnerAddress, "IsVertexInstanceValid", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsVertexInstanceValid");

BL4.IsVertexOrphaned = function(OwnerAddress, VertexID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsVertexOrphaned: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: VertexID at +0x0
 writeQword(_params + 0x0, VertexID)
 UE.CallProcessEventEx(OwnerAddress, "IsVertexOrphaned", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsVertexOrphaned");

BL4.IsVertexValid = function(OwnerAddress, VertexID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsVertexValid: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: VertexID at +0x0
 writeQword(_params + 0x0, VertexID)
 UE.CallProcessEventEx(OwnerAddress, "IsVertexValid", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsVertexValid");

BL4.ReserveNewEdges = function(OwnerAddress, NumberOfNewEdges)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReserveNewEdges: Failed To Allocate The Params");return;end;
 NumberOfNewEdges = NumberOfNewEdges or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NumberOfNewEdges at +0x0
 writeInteger(_params + 0x0, NumberOfNewEdges)
 UE.CallProcessEventEx(OwnerAddress, "ReserveNewEdges", _params);
 deAlloc(_params);
end
FNR("BL4.ReserveNewEdges");

BL4.ReserveNewPolygonGroups = function(OwnerAddress, NumberOfNewPolygonGroups)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReserveNewPolygonGroups: Failed To Allocate The Params");return;end;
 NumberOfNewPolygonGroups = NumberOfNewPolygonGroups or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NumberOfNewPolygonGroups at +0x0
 writeInteger(_params + 0x0, NumberOfNewPolygonGroups)
 UE.CallProcessEventEx(OwnerAddress, "ReserveNewPolygonGroups", _params);
 deAlloc(_params);
end
FNR("BL4.ReserveNewPolygonGroups");

BL4.ReserveNewPolygons = function(OwnerAddress, NumberOfNewPolygons)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReserveNewPolygons: Failed To Allocate The Params");return;end;
 NumberOfNewPolygons = NumberOfNewPolygons or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NumberOfNewPolygons at +0x0
 writeInteger(_params + 0x0, NumberOfNewPolygons)
 UE.CallProcessEventEx(OwnerAddress, "ReserveNewPolygons", _params);
 deAlloc(_params);
end
FNR("BL4.ReserveNewPolygons");

BL4.ReserveNewTriangles = function(OwnerAddress, NumberOfNewTriangles)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReserveNewTriangles: Failed To Allocate The Params");return;end;
 NumberOfNewTriangles = NumberOfNewTriangles or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NumberOfNewTriangles at +0x0
 writeInteger(_params + 0x0, NumberOfNewTriangles)
 UE.CallProcessEventEx(OwnerAddress, "ReserveNewTriangles", _params);
 deAlloc(_params);
end
FNR("BL4.ReserveNewTriangles");

BL4.ReserveNewVertexInstances = function(OwnerAddress, NumberOfNewVertexInstances)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReserveNewVertexInstances: Failed To Allocate The Params");return;end;
 NumberOfNewVertexInstances = NumberOfNewVertexInstances or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NumberOfNewVertexInstances at +0x0
 writeInteger(_params + 0x0, NumberOfNewVertexInstances)
 UE.CallProcessEventEx(OwnerAddress, "ReserveNewVertexInstances", _params);
 deAlloc(_params);
end
FNR("BL4.ReserveNewVertexInstances");

BL4.ReserveNewVertices = function(OwnerAddress, NumberOfNewVertices)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReserveNewVertices: Failed To Allocate The Params");return;end;
 NumberOfNewVertices = NumberOfNewVertices or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NumberOfNewVertices at +0x0
 writeInteger(_params + 0x0, NumberOfNewVertices)
 UE.CallProcessEventEx(OwnerAddress, "ReserveNewVertices", _params);
 deAlloc(_params);
end
FNR("BL4.ReserveNewVertices");

BL4.ReversePolygonFacing = function(OwnerAddress, PolygonID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReversePolygonFacing: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PolygonID at +0x0
 writeQword(_params + 0x0, PolygonID)
 UE.CallProcessEventEx(OwnerAddress, "ReversePolygonFacing", _params);
 deAlloc(_params);
end
FNR("BL4.ReversePolygonFacing");

BL4.SetPolygonPolygonGroup = function(OwnerAddress, PolygonID, PolygonGroupID)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPolygonPolygonGroup: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PolygonID at +0x0, PolygonGroupID at +0x4
 writeQword(_params + 0x0, PolygonID)
 writeQword(_params + 0x4, PolygonGroupID)
 UE.CallProcessEventEx(OwnerAddress, "SetPolygonPolygonGroup", _params);
 deAlloc(_params);
end
FNR("BL4.SetPolygonPolygonGroup");

BL4.SetPolygonVertexInstances = function(OwnerAddress, PolygonID, VertexInstanceIDs)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPolygonVertexInstances: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PolygonID at +0x0, VertexInstanceIDs at +0x8
 writeQword(_params + 0x0, PolygonID)
 writeQword(_params + 0x8, VertexInstanceIDs)
 UE.CallProcessEventEx(OwnerAddress, "SetPolygonVertexInstances", _params);
 deAlloc(_params);
end
FNR("BL4.SetPolygonVertexInstances");

BL4.SetVertexPosition = function(OwnerAddress, VertexID, position)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVertexPosition: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VertexID at +0x0, position at +0x8
 writeQword(_params + 0x0, VertexID)
 writeDouble(_params + 0x8, (position and position.X) or 0)
 writeDouble(_params + 0x10, (position and position.Y) or 0)
 writeDouble(_params + 0x18, (position and position.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetVertexPosition", _params);
 deAlloc(_params);
end
FNR("BL4.SetVertexPosition");

