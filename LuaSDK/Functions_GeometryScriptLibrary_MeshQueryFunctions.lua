BL4.ComputeTriangleBarycentricCoords = function(TargetMesh_DynamicMesh, TriangleID, bIsValidTriangle, Point, Vertex1, Vertex2, Vertex3, BarycentricCoords)
 local _paramsSize = 0x90
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ComputeTriangleBarycentricCoords: Failed To Allocate The Params");return;end;
 TriangleID = TriangleID or 0
 bIsValidTriangle = bIsValidTriangle or false
 Point = Point or {X=0,Y=0,Z=0}
 Vertex1 = Vertex1 or {X=0,Y=0,Z=0}
 Vertex2 = Vertex2 or {X=0,Y=0,Z=0}
 Vertex3 = Vertex3 or {X=0,Y=0,Z=0}
 BarycentricCoords = BarycentricCoords or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, TriangleID at +0x8, bIsValidTriangle at +0xC, Point at +0x10, Vertex1 at +0x28, Vertex2 at +0x40, Vertex3 at +0x58, BarycentricCoords at +0x70
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, TriangleID)
 writeByte(_params + 0xC, bIsValidTriangle)
 writeDouble(_params + 0x10, (Point and Point.X) or 0)
 writeDouble(_params + 0x18, (Point and Point.Y) or 0)
 writeDouble(_params + 0x20, (Point and Point.Z) or 0)
 writeDouble(_params + 0x28, (Vertex1 and Vertex1.X) or 0)
 writeDouble(_params + 0x30, (Vertex1 and Vertex1.Y) or 0)
 writeDouble(_params + 0x38, (Vertex1 and Vertex1.Z) or 0)
 writeDouble(_params + 0x40, (Vertex2 and Vertex2.X) or 0)
 writeDouble(_params + 0x48, (Vertex2 and Vertex2.Y) or 0)
 writeDouble(_params + 0x50, (Vertex2 and Vertex2.Z) or 0)
 writeDouble(_params + 0x58, (Vertex3 and Vertex3.X) or 0)
 writeDouble(_params + 0x60, (Vertex3 and Vertex3.Y) or 0)
 writeDouble(_params + 0x68, (Vertex3 and Vertex3.Z) or 0)
 writeDouble(_params + 0x70, (BarycentricCoords and BarycentricCoords.X) or 0)
 writeDouble(_params + 0x78, (BarycentricCoords and BarycentricCoords.Y) or 0)
 writeDouble(_params + 0x80, (BarycentricCoords and BarycentricCoords.Z) or 0)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "ComputeTriangleBarycentricCoords", _params);
 local RET=readQword(_params + 0x88);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ComputeTriangleBarycentricCoords");

BL4.GetAllSplitUVsAtVertex = function(TargetMesh_DynamicMesh, UvSetIndex, VertexID, ElementIDs, ElementUVs, bHaveValidUVs)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAllSplitUVsAtVertex: Failed To Allocate The Params");return;end;
 UvSetIndex = UvSetIndex or 0
 VertexID = VertexID or 0
 bHaveValidUVs = bHaveValidUVs or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, UvSetIndex at +0x8, VertexID at +0xC, ElementIDs at +0x10, ElementUVs at +0x20, bHaveValidUVs at +0x30
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, UvSetIndex)
 writeInteger(_params + 0xC, VertexID)
 writeQword(_params + 0x10, ElementIDs)
 writeQword(_params + 0x20, ElementUVs)
 writeByte(_params + 0x30, bHaveValidUVs)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetAllSplitUVsAtVertex", _params);
 local RET=readQword(_params + 0x38);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAllSplitUVsAtVertex");

BL4.GetAllTriangleIDs = function(TargetMesh_DynamicMesh, TriangleIDList, bHasTriangleIDGaps)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAllTriangleIDs: Failed To Allocate The Params");return;end;
 bHasTriangleIDGaps = bHasTriangleIDGaps or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, TriangleIDList at +0x8, bHasTriangleIDGaps at +0x20
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, TriangleIDList)
 writeByte(_params + 0x20, bHasTriangleIDGaps)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetAllTriangleIDs", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAllTriangleIDs");

BL4.GetAllTriangleIndices = function(TargetMesh_DynamicMesh, TriangleList, bSkipGaps, bHasTriangleIDGaps)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAllTriangleIndices: Failed To Allocate The Params");return;end;
 bSkipGaps = bSkipGaps or false
 bHasTriangleIDGaps = bHasTriangleIDGaps or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, TriangleList at +0x8, bSkipGaps at +0x18, bHasTriangleIDGaps at +0x19
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, TriangleList)
 writeByte(_params + 0x18, bSkipGaps)
 writeByte(_params + 0x19, bHasTriangleIDGaps)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetAllTriangleIndices", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAllTriangleIndices");

BL4.GetAllUVSeamEdges = function(TargetMesh_DynamicMesh, UvSetIndex, bHaveValidUVs, ElementIDs)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAllUVSeamEdges: Failed To Allocate The Params");return;end;
 UvSetIndex = UvSetIndex or 0
 bHaveValidUVs = bHaveValidUVs or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, UvSetIndex at +0x8, bHaveValidUVs at +0xC, ElementIDs at +0x10
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, UvSetIndex)
 writeByte(_params + 0xC, bHaveValidUVs)
 writeQword(_params + 0x10, ElementIDs)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetAllUVSeamEdges", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAllUVSeamEdges");

BL4.GetAllVertexIDs = function(TargetMesh_DynamicMesh, VertexIDList, bHasVertexIDGaps)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAllVertexIDs: Failed To Allocate The Params");return;end;
 bHasVertexIDGaps = bHasVertexIDGaps or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, VertexIDList at +0x8, bHasVertexIDGaps at +0x20
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, VertexIDList)
 writeByte(_params + 0x20, bHasVertexIDGaps)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetAllVertexIDs", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAllVertexIDs");

BL4.GetAllVertexPositions = function(TargetMesh_DynamicMesh, PositionList, bSkipGaps, bHasVertexIDGaps)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAllVertexPositions: Failed To Allocate The Params");return;end;
 bSkipGaps = bSkipGaps or false
 bHasVertexIDGaps = bHasVertexIDGaps or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, PositionList at +0x8, bSkipGaps at +0x18, bHasVertexIDGaps at +0x19
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, PositionList)
 writeByte(_params + 0x18, bSkipGaps)
 writeByte(_params + 0x19, bHasVertexIDGaps)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetAllVertexPositions", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAllVertexPositions");

BL4.GetAllVertexPositionsAtEdges = function(TargetMesh_DynamicMesh, EdgeIDs, Start, End)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAllVertexPositionsAtEdges: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, EdgeIDs at +0x8, Start at +0x20, End at +0x30
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, EdgeIDs)
 writeQword(_params + 0x20, Start)
 writeQword(_params + 0x30, End)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetAllVertexPositionsAtEdges", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAllVertexPositionsAtEdges");

BL4.GetHasMaterialIDs = function(TargetMesh_DynamicMesh)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHasMaterialIDs: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetHasMaterialIDs", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHasMaterialIDs");

BL4.GetHasPolygroups = function(TargetMesh_DynamicMesh)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHasPolygroups: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetHasPolygroups", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHasPolygroups");

BL4.GetHasTriangleIDGaps = function(TargetMesh_DynamicMesh)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHasTriangleIDGaps: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetHasTriangleIDGaps", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHasTriangleIDGaps");

BL4.GetHasTriangleNormals = function(TargetMesh_DynamicMesh)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHasTriangleNormals: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetHasTriangleNormals", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHasTriangleNormals");

BL4.GetHasVertexColors = function(TargetMesh_DynamicMesh)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHasVertexColors: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetHasVertexColors", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHasVertexColors");

BL4.GetHasVertexIDGaps = function(TargetMesh_DynamicMesh)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHasVertexIDGaps: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetHasVertexIDGaps", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHasVertexIDGaps");

BL4.GetInterpolatedTriangleNormal = function(TargetMesh_DynamicMesh, TriangleID, BarycentricCoords, bTriHasValidNormals, InterpolatedNormal)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInterpolatedTriangleNormal: Failed To Allocate The Params");return;end;
 TriangleID = TriangleID or 0
 BarycentricCoords = BarycentricCoords or {X=0,Y=0,Z=0}
 bTriHasValidNormals = bTriHasValidNormals or false
 InterpolatedNormal = InterpolatedNormal or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, TriangleID at +0x8, BarycentricCoords at +0x10, bTriHasValidNormals at +0x28, InterpolatedNormal at +0x30
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, TriangleID)
 writeDouble(_params + 0x10, (BarycentricCoords and BarycentricCoords.X) or 0)
 writeDouble(_params + 0x18, (BarycentricCoords and BarycentricCoords.Y) or 0)
 writeDouble(_params + 0x20, (BarycentricCoords and BarycentricCoords.Z) or 0)
 writeByte(_params + 0x28, bTriHasValidNormals)
 writeDouble(_params + 0x30, (InterpolatedNormal and InterpolatedNormal.X) or 0)
 writeDouble(_params + 0x38, (InterpolatedNormal and InterpolatedNormal.Y) or 0)
 writeDouble(_params + 0x40, (InterpolatedNormal and InterpolatedNormal.Z) or 0)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetInterpolatedTriangleNormal", _params);
 local RET=readQword(_params + 0x48);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInterpolatedTriangleNormal");

BL4.GetInterpolatedTriangleNormalTangents = function(TargetMesh_DynamicMesh, TriangleID, BarycentricCoords, bTriHasValidElements, InterpolatedNormal, InterpolatedTangent, InterpolatedBiTangent)
 local _paramsSize = 0x80
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInterpolatedTriangleNormalTangents: Failed To Allocate The Params");return;end;
 TriangleID = TriangleID or 0
 BarycentricCoords = BarycentricCoords or {X=0,Y=0,Z=0}
 bTriHasValidElements = bTriHasValidElements or false
 InterpolatedNormal = InterpolatedNormal or {X=0,Y=0,Z=0}
 InterpolatedTangent = InterpolatedTangent or {X=0,Y=0,Z=0}
 InterpolatedBiTangent = InterpolatedBiTangent or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, TriangleID at +0x8, BarycentricCoords at +0x10, bTriHasValidElements at +0x28, InterpolatedNormal at +0x30, InterpolatedTangent at +0x48, InterpolatedBiTangent at +0x60
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, TriangleID)
 writeDouble(_params + 0x10, (BarycentricCoords and BarycentricCoords.X) or 0)
 writeDouble(_params + 0x18, (BarycentricCoords and BarycentricCoords.Y) or 0)
 writeDouble(_params + 0x20, (BarycentricCoords and BarycentricCoords.Z) or 0)
 writeByte(_params + 0x28, bTriHasValidElements)
 writeDouble(_params + 0x30, (InterpolatedNormal and InterpolatedNormal.X) or 0)
 writeDouble(_params + 0x38, (InterpolatedNormal and InterpolatedNormal.Y) or 0)
 writeDouble(_params + 0x40, (InterpolatedNormal and InterpolatedNormal.Z) or 0)
 writeDouble(_params + 0x48, (InterpolatedTangent and InterpolatedTangent.X) or 0)
 writeDouble(_params + 0x50, (InterpolatedTangent and InterpolatedTangent.Y) or 0)
 writeDouble(_params + 0x58, (InterpolatedTangent and InterpolatedTangent.Z) or 0)
 writeDouble(_params + 0x60, (InterpolatedBiTangent and InterpolatedBiTangent.X) or 0)
 writeDouble(_params + 0x68, (InterpolatedBiTangent and InterpolatedBiTangent.Y) or 0)
 writeDouble(_params + 0x70, (InterpolatedBiTangent and InterpolatedBiTangent.Z) or 0)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetInterpolatedTriangleNormalTangents", _params);
 local RET=readQword(_params + 0x78);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInterpolatedTriangleNormalTangents");

BL4.GetInterpolatedTrianglePosition = function(TargetMesh_DynamicMesh, TriangleID, BarycentricCoords, bIsValidTriangle, InterpolatedPosition)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInterpolatedTrianglePosition: Failed To Allocate The Params");return;end;
 TriangleID = TriangleID or 0
 BarycentricCoords = BarycentricCoords or {X=0,Y=0,Z=0}
 bIsValidTriangle = bIsValidTriangle or false
 InterpolatedPosition = InterpolatedPosition or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, TriangleID at +0x8, BarycentricCoords at +0x10, bIsValidTriangle at +0x28, InterpolatedPosition at +0x30
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, TriangleID)
 writeDouble(_params + 0x10, (BarycentricCoords and BarycentricCoords.X) or 0)
 writeDouble(_params + 0x18, (BarycentricCoords and BarycentricCoords.Y) or 0)
 writeDouble(_params + 0x20, (BarycentricCoords and BarycentricCoords.Z) or 0)
 writeByte(_params + 0x28, bIsValidTriangle)
 writeDouble(_params + 0x30, (InterpolatedPosition and InterpolatedPosition.X) or 0)
 writeDouble(_params + 0x38, (InterpolatedPosition and InterpolatedPosition.Y) or 0)
 writeDouble(_params + 0x40, (InterpolatedPosition and InterpolatedPosition.Z) or 0)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetInterpolatedTrianglePosition", _params);
 local RET=readQword(_params + 0x48);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInterpolatedTrianglePosition");

BL4.GetInterpolatedTriangleUV = function(TargetMesh_DynamicMesh, UvSetIndex, TriangleID, BarycentricCoords, bTriHasValidUVs, InterpolatedUV)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInterpolatedTriangleUV: Failed To Allocate The Params");return;end;
 UvSetIndex = UvSetIndex or 0
 TriangleID = TriangleID or 0
 BarycentricCoords = BarycentricCoords or {X=0,Y=0,Z=0}
 bTriHasValidUVs = bTriHasValidUVs or false
 InterpolatedUV = InterpolatedUV or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, UvSetIndex at +0x8, TriangleID at +0xC, BarycentricCoords at +0x10, bTriHasValidUVs at +0x28, InterpolatedUV at +0x30
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, UvSetIndex)
 writeInteger(_params + 0xC, TriangleID)
 writeDouble(_params + 0x10, (BarycentricCoords and BarycentricCoords.X) or 0)
 writeDouble(_params + 0x18, (BarycentricCoords and BarycentricCoords.Y) or 0)
 writeDouble(_params + 0x20, (BarycentricCoords and BarycentricCoords.Z) or 0)
 writeByte(_params + 0x28, bTriHasValidUVs)
 writeDouble(_params + 0x30, (InterpolatedUV and InterpolatedUV.X) or 0)
 writeDouble(_params + 0x38, (InterpolatedUV and InterpolatedUV.Y) or 0)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetInterpolatedTriangleUV", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInterpolatedTriangleUV");

BL4.GetInterpolatedTriangleVertexColor = function(TargetMesh_DynamicMesh, TriangleID, BarycentricCoords, DefaultColor, bTriHasValidVertexColors, InterpolatedColor)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInterpolatedTriangleVertexColor: Failed To Allocate The Params");return;end;
 TriangleID = TriangleID or 0
 BarycentricCoords = BarycentricCoords or {X=0,Y=0,Z=0}
 DefaultColor = DefaultColor or {R=0,G=0,B=0,A=0}
 bTriHasValidVertexColors = bTriHasValidVertexColors or false
 InterpolatedColor = InterpolatedColor or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, TriangleID at +0x8, BarycentricCoords at +0x10, DefaultColor at +0x28, bTriHasValidVertexColors at +0x38, InterpolatedColor at +0x3C
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, TriangleID)
 writeDouble(_params + 0x10, (BarycentricCoords and BarycentricCoords.X) or 0)
 writeDouble(_params + 0x18, (BarycentricCoords and BarycentricCoords.Y) or 0)
 writeDouble(_params + 0x20, (BarycentricCoords and BarycentricCoords.Z) or 0)
 writeFloat(_params + 0x28, (DefaultColor and DefaultColor.R) or 0)
 writeFloat(_params + 0x2C, (DefaultColor and DefaultColor.G) or 0)
 writeFloat(_params + 0x30, (DefaultColor and DefaultColor.B) or 0)
 writeFloat(_params + 0x34, (DefaultColor and DefaultColor.A) or 0)
 writeByte(_params + 0x38, bTriHasValidVertexColors)
 writeFloat(_params + 0x3C, (InterpolatedColor and InterpolatedColor.R) or 0)
 writeFloat(_params + 0x40, (InterpolatedColor and InterpolatedColor.G) or 0)
 writeFloat(_params + 0x44, (InterpolatedColor and InterpolatedColor.B) or 0)
 writeFloat(_params + 0x48, (InterpolatedColor and InterpolatedColor.A) or 0)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetInterpolatedTriangleVertexColor", _params);
 local RET=readQword(_params + 0x50);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInterpolatedTriangleVertexColor");

BL4.GetIsClosedMesh = function(TargetMesh_DynamicMesh)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetIsClosedMesh: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetIsClosedMesh", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetIsClosedMesh");

BL4.GetIsDenseMesh = function(TargetMesh_DynamicMesh)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetIsDenseMesh: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetIsDenseMesh", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetIsDenseMesh");

BL4.GetMeshBoundingBox = function(TargetMesh_DynamicMesh)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMeshBoundingBox: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetMeshBoundingBox", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMeshBoundingBox");

BL4.GetMeshHasAttributeSet = function(TargetMesh_DynamicMesh)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMeshHasAttributeSet: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetMeshHasAttributeSet", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMeshHasAttributeSet");

BL4.GetMeshInfoString = function(TargetMesh_DynamicMesh)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMeshInfoString: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetMeshInfoString", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMeshInfoString");

BL4.GetMeshUVArea = function(TargetMesh_DynamicMesh, UVChannel, bIsValidUVChannel)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMeshUVArea: Failed To Allocate The Params");return;end;
 UVChannel = UVChannel or 0
 bIsValidUVChannel = bIsValidUVChannel or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, UVChannel at +0x8, bIsValidUVChannel at +0xC
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, UVChannel)
 writeByte(_params + 0xC, bIsValidUVChannel)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetMeshUVArea", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMeshUVArea");

BL4.GetMeshVolumeArea = function(TargetMesh_DynamicMesh, SurfaceArea, Volume)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMeshVolumeArea: Failed To Allocate The Params");return;end;
 SurfaceArea = SurfaceArea or 0
 Volume = Volume or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, SurfaceArea at +0x8, Volume at +0xC
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeFloat(_params + 0x8, SurfaceArea)
 writeFloat(_params + 0xC, Volume)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetMeshVolumeArea", _params);
 deAlloc(_params);
end
FNR("BL4.GetMeshVolumeArea");

BL4.GetMeshVolumeAreaCenter = function(TargetMesh_DynamicMesh, SurfaceArea, Volume, CenterOfMass)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMeshVolumeAreaCenter: Failed To Allocate The Params");return;end;
 SurfaceArea = SurfaceArea or 0
 Volume = Volume or 0
 CenterOfMass = CenterOfMass or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, SurfaceArea at +0x8, Volume at +0xC, CenterOfMass at +0x10
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeFloat(_params + 0x8, SurfaceArea)
 writeFloat(_params + 0xC, Volume)
 writeDouble(_params + 0x10, (CenterOfMass and CenterOfMass.X) or 0)
 writeDouble(_params + 0x18, (CenterOfMass and CenterOfMass.Y) or 0)
 writeDouble(_params + 0x20, (CenterOfMass and CenterOfMass.Z) or 0)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetMeshVolumeAreaCenter", _params);
 deAlloc(_params);
end
FNR("BL4.GetMeshVolumeAreaCenter");

BL4.GetNumConnectedComponents = function(TargetMesh_DynamicMesh)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumConnectedComponents: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetNumConnectedComponents", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumConnectedComponents");

BL4.GetNumExtendedPolygroupLayers = function(TargetMesh_DynamicMesh)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumExtendedPolygroupLayers: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetNumExtendedPolygroupLayers", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumExtendedPolygroupLayers");

BL4.GetNumOpenBorderEdges = function(TargetMesh_DynamicMesh)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumOpenBorderEdges: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetNumOpenBorderEdges", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumOpenBorderEdges");

BL4.GetNumOpenBorderLoops = function(TargetMesh_DynamicMesh, bAmbiguousTopologyFound)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumOpenBorderLoops: Failed To Allocate The Params");return;end;
 bAmbiguousTopologyFound = bAmbiguousTopologyFound or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, bAmbiguousTopologyFound at +0x8
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeByte(_params + 0x8, bAmbiguousTopologyFound)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetNumOpenBorderLoops", _params);
 local RET=readInteger(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumOpenBorderLoops");

BL4.GetNumTriangleIDs = function(TargetMesh_DynamicMesh)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumTriangleIDs: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetNumTriangleIDs", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumTriangleIDs");

BL4.GetNumUVIslands = function(TargetMesh_DynamicMesh, UVChannel, bIsValidUVChannel)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumUVIslands: Failed To Allocate The Params");return;end;
 UVChannel = UVChannel or 0
 bIsValidUVChannel = bIsValidUVChannel or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, UVChannel at +0x8, bIsValidUVChannel at +0xC
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, UVChannel)
 writeByte(_params + 0xC, bIsValidUVChannel)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetNumUVIslands", _params);
 local RET=readInteger(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumUVIslands");

BL4.GetNumUVSets = function(TargetMesh_DynamicMesh)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumUVSets: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetNumUVSets", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumUVSets");

BL4.GetNumVertexIDs = function(TargetMesh_DynamicMesh)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumVertexIDs: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetNumVertexIDs", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumVertexIDs");

BL4.GetTriangleFaceNormal = function(TargetMesh_DynamicMesh, TriangleID, bIsValidTriangle)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTriangleFaceNormal: Failed To Allocate The Params");return;end;
 TriangleID = TriangleID or 0
 bIsValidTriangle = bIsValidTriangle or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, TriangleID at +0x8, bIsValidTriangle at +0xC
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, TriangleID)
 writeByte(_params + 0xC, bIsValidTriangle)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetTriangleFaceNormal", _params);
 local RET={X=readFloat(_params+0x10),Y=readFloat(_params+0x18),Z=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTriangleFaceNormal");

BL4.GetTriangleIndices = function(TargetMesh_DynamicMesh, TriangleID, bIsValidTriangle)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTriangleIndices: Failed To Allocate The Params");return;end;
 TriangleID = TriangleID or 0
 bIsValidTriangle = bIsValidTriangle or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, TriangleID at +0x8, bIsValidTriangle at +0xC
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, TriangleID)
 writeByte(_params + 0xC, bIsValidTriangle)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetTriangleIndices", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTriangleIndices");

BL4.GetTriangleNormals = function(TargetMesh_DynamicMesh, TriangleID, Normal1, Normal2, Normal3, bTriHasValidNormals)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTriangleNormals: Failed To Allocate The Params");return;end;
 TriangleID = TriangleID or 0
 Normal1 = Normal1 or {X=0,Y=0,Z=0}
 Normal2 = Normal2 or {X=0,Y=0,Z=0}
 Normal3 = Normal3 or {X=0,Y=0,Z=0}
 bTriHasValidNormals = bTriHasValidNormals or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, TriangleID at +0x8, Normal1 at +0x10, Normal2 at +0x28, Normal3 at +0x40, bTriHasValidNormals at +0x58
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, TriangleID)
 writeDouble(_params + 0x10, (Normal1 and Normal1.X) or 0)
 writeDouble(_params + 0x18, (Normal1 and Normal1.Y) or 0)
 writeDouble(_params + 0x20, (Normal1 and Normal1.Z) or 0)
 writeDouble(_params + 0x28, (Normal2 and Normal2.X) or 0)
 writeDouble(_params + 0x30, (Normal2 and Normal2.Y) or 0)
 writeDouble(_params + 0x38, (Normal2 and Normal2.Z) or 0)
 writeDouble(_params + 0x40, (Normal3 and Normal3.X) or 0)
 writeDouble(_params + 0x48, (Normal3 and Normal3.Y) or 0)
 writeDouble(_params + 0x50, (Normal3 and Normal3.Z) or 0)
 writeByte(_params + 0x58, bTriHasValidNormals)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetTriangleNormals", _params);
 local RET=readQword(_params + 0x60);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTriangleNormals");

BL4.GetTriangleNormalTangents = function(TargetMesh_DynamicMesh, TriangleID, bTriHasValidElements, Normals, Tangents, BiTangents)
 local _paramsSize = 0xF0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTriangleNormalTangents: Failed To Allocate The Params");return;end;
 TriangleID = TriangleID or 0
 bTriHasValidElements = bTriHasValidElements or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, TriangleID at +0x8, bTriHasValidElements at +0xC, Normals at +0x10, Tangents at +0x58, BiTangents at +0xA0
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, TriangleID)
 writeByte(_params + 0xC, bTriHasValidElements)
 writeQword(_params + 0x10, Normals)
 writeQword(_params + 0x58, Tangents)
 writeQword(_params + 0xA0, BiTangents)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetTriangleNormalTangents", _params);
 local RET=readQword(_params + 0xE8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTriangleNormalTangents");

BL4.GetTrianglePositions = function(TargetMesh_DynamicMesh, TriangleID, bIsValidTriangle, Vertex1, Vertex2, Vertex3)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTrianglePositions: Failed To Allocate The Params");return;end;
 TriangleID = TriangleID or 0
 bIsValidTriangle = bIsValidTriangle or false
 Vertex1 = Vertex1 or {X=0,Y=0,Z=0}
 Vertex2 = Vertex2 or {X=0,Y=0,Z=0}
 Vertex3 = Vertex3 or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, TriangleID at +0x8, bIsValidTriangle at +0xC, Vertex1 at +0x10, Vertex2 at +0x28, Vertex3 at +0x40
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, TriangleID)
 writeByte(_params + 0xC, bIsValidTriangle)
 writeDouble(_params + 0x10, (Vertex1 and Vertex1.X) or 0)
 writeDouble(_params + 0x18, (Vertex1 and Vertex1.Y) or 0)
 writeDouble(_params + 0x20, (Vertex1 and Vertex1.Z) or 0)
 writeDouble(_params + 0x28, (Vertex2 and Vertex2.X) or 0)
 writeDouble(_params + 0x30, (Vertex2 and Vertex2.Y) or 0)
 writeDouble(_params + 0x38, (Vertex2 and Vertex2.Z) or 0)
 writeDouble(_params + 0x40, (Vertex3 and Vertex3.X) or 0)
 writeDouble(_params + 0x48, (Vertex3 and Vertex3.Y) or 0)
 writeDouble(_params + 0x50, (Vertex3 and Vertex3.Z) or 0)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetTrianglePositions", _params);
 deAlloc(_params);
end
FNR("BL4.GetTrianglePositions");

BL4.GetTriangleUVs = function(TargetMesh_DynamicMesh, UvSetIndex, TriangleID, UV1, UV2, UV3, bHaveValidUVs)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTriangleUVs: Failed To Allocate The Params");return;end;
 UvSetIndex = UvSetIndex or 0
 TriangleID = TriangleID or 0
 UV1 = UV1 or {X=0,Y=0}
 UV2 = UV2 or {X=0,Y=0}
 UV3 = UV3 or {X=0,Y=0}
 bHaveValidUVs = bHaveValidUVs or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, UvSetIndex at +0x8, TriangleID at +0xC, UV1 at +0x10, UV2 at +0x20, UV3 at +0x30, bHaveValidUVs at +0x40
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, UvSetIndex)
 writeInteger(_params + 0xC, TriangleID)
 writeDouble(_params + 0x10, (UV1 and UV1.X) or 0)
 writeDouble(_params + 0x18, (UV1 and UV1.Y) or 0)
 writeDouble(_params + 0x20, (UV2 and UV2.X) or 0)
 writeDouble(_params + 0x28, (UV2 and UV2.Y) or 0)
 writeDouble(_params + 0x30, (UV3 and UV3.X) or 0)
 writeDouble(_params + 0x38, (UV3 and UV3.Y) or 0)
 writeByte(_params + 0x40, bHaveValidUVs)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetTriangleUVs", _params);
 deAlloc(_params);
end
FNR("BL4.GetTriangleUVs");

BL4.GetTriangleVertexColors = function(TargetMesh_DynamicMesh, TriangleID, Color1, Color2, Color3, bTriHasValidVertexColors)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTriangleVertexColors: Failed To Allocate The Params");return;end;
 TriangleID = TriangleID or 0
 Color1 = Color1 or {R=0,G=0,B=0,A=0}
 Color2 = Color2 or {R=0,G=0,B=0,A=0}
 Color3 = Color3 or {R=0,G=0,B=0,A=0}
 bTriHasValidVertexColors = bTriHasValidVertexColors or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, TriangleID at +0x8, Color1 at +0xC, Color2 at +0x1C, Color3 at +0x2C, bTriHasValidVertexColors at +0x3C
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, TriangleID)
 writeFloat(_params + 0xC, (Color1 and Color1.R) or 0)
 writeFloat(_params + 0x10, (Color1 and Color1.G) or 0)
 writeFloat(_params + 0x14, (Color1 and Color1.B) or 0)
 writeFloat(_params + 0x18, (Color1 and Color1.A) or 0)
 writeFloat(_params + 0x1C, (Color2 and Color2.R) or 0)
 writeFloat(_params + 0x20, (Color2 and Color2.G) or 0)
 writeFloat(_params + 0x24, (Color2 and Color2.B) or 0)
 writeFloat(_params + 0x28, (Color2 and Color2.A) or 0)
 writeFloat(_params + 0x2C, (Color3 and Color3.R) or 0)
 writeFloat(_params + 0x30, (Color3 and Color3.G) or 0)
 writeFloat(_params + 0x34, (Color3 and Color3.B) or 0)
 writeFloat(_params + 0x38, (Color3 and Color3.A) or 0)
 writeByte(_params + 0x3C, bTriHasValidVertexColors)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetTriangleVertexColors", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTriangleVertexColors");

BL4.GetUVSetBoundingBox = function(TargetMesh_DynamicMesh, UvSetIndex, bIsValidUVSet, bUVSetIsEmpty)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetUVSetBoundingBox: Failed To Allocate The Params");return;end;
 UvSetIndex = UvSetIndex or 0
 bIsValidUVSet = bIsValidUVSet or false
 bUVSetIsEmpty = bUVSetIsEmpty or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, UvSetIndex at +0x8, bIsValidUVSet at +0xC, bUVSetIsEmpty at +0xD
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, UvSetIndex)
 writeByte(_params + 0xC, bIsValidUVSet)
 writeByte(_params + 0xD, bUVSetIsEmpty)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetUVSetBoundingBox", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetUVSetBoundingBox");

BL4.GetVertexConnectedTriangles = function(TargetMesh_DynamicMesh, VertexID, Triangles)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVertexConnectedTriangles: Failed To Allocate The Params");return;end;
 VertexID = VertexID or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, VertexID at +0x8, Triangles at +0x10
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, VertexID)
 writeQword(_params + 0x10, Triangles)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetVertexConnectedTriangles", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVertexConnectedTriangles");

BL4.GetVertexConnectedVertices = function(TargetMesh_DynamicMesh, VertexID, Vertices)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVertexConnectedVertices: Failed To Allocate The Params");return;end;
 VertexID = VertexID or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, VertexID at +0x8, Vertices at +0x10
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, VertexID)
 writeQword(_params + 0x10, Vertices)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetVertexConnectedVertices", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVertexConnectedVertices");

BL4.GetVertexCount = function(TargetMesh_DynamicMesh)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVertexCount: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetVertexCount", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVertexCount");

BL4.GetVertexPosition = function(TargetMesh_DynamicMesh, VertexID, bIsValidVertex)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVertexPosition: Failed To Allocate The Params");return;end;
 VertexID = VertexID or 0
 bIsValidVertex = bIsValidVertex or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, VertexID at +0x8, bIsValidVertex at +0xC
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, VertexID)
 writeByte(_params + 0xC, bIsValidVertex)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetVertexPosition", _params);
 local RET={X=readFloat(_params+0x10),Y=readFloat(_params+0x18),Z=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVertexPosition");

BL4.IsValidTriangleID = function(TargetMesh_DynamicMesh, TriangleID)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsValidTriangleID: Failed To Allocate The Params");return;end;
 TriangleID = TriangleID or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, TriangleID at +0x8
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, TriangleID)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "IsValidTriangleID", _params);
 local RET=readByte(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsValidTriangleID");

BL4.IsValidVertexID = function(TargetMesh_DynamicMesh, VertexID)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsValidVertexID: Failed To Allocate The Params");return;end;
 VertexID = VertexID or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, VertexID at +0x8
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, VertexID)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "IsValidVertexID", _params);
 local RET=readByte(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsValidVertexID");

