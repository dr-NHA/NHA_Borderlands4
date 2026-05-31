BL4.CombineMeshSelections = function(OwnerAddress, SelectionA, SelectionB, ResultSelection, CombineMode)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CombineMeshSelections: Failed To Allocate The Params");return;end;
 CombineMode = CombineMode or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SelectionA at +0x0, SelectionB at +0x10, ResultSelection at +0x20, CombineMode at +0x30
 writeQword(_params + 0x0, SelectionA)
 writeQword(_params + 0x10, SelectionB)
 writeQword(_params + 0x20, ResultSelection)
 writeByte(_params + 0x30, CombineMode)
 UE.CallProcessEventEx(OwnerAddress, "CombineMeshSelections", _params);
 deAlloc(_params);
end
FNR("BL4.CombineMeshSelections");

BL4.ConvertIndexArrayToMeshSelection = function(TargetMesh_DynamicMesh, IndexArray, SelectionType, Selection)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConvertIndexArrayToMeshSelection: Failed To Allocate The Params");return;end;
 SelectionType = SelectionType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, IndexArray at +0x8, SelectionType at +0x18, Selection at +0x20
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, IndexArray)
 writeByte(_params + 0x18, SelectionType)
 writeQword(_params + 0x20, Selection)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "ConvertIndexArrayToMeshSelection", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConvertIndexArrayToMeshSelection");

BL4.ConvertIndexListToMeshSelection = function(TargetMesh_DynamicMesh, IndexList, SelectionType, Selection)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConvertIndexListToMeshSelection: Failed To Allocate The Params");return;end;
 SelectionType = SelectionType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, IndexList at +0x8, SelectionType at +0x20, Selection at +0x28
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, IndexList)
 writeByte(_params + 0x20, SelectionType)
 writeQword(_params + 0x28, Selection)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "ConvertIndexListToMeshSelection", _params);
 local RET=readQword(_params + 0x38);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConvertIndexListToMeshSelection");

BL4.ConvertIndexSetToMeshSelection = function(TargetMesh_DynamicMesh, IndexSet, SelectionType, Selection)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConvertIndexSetToMeshSelection: Failed To Allocate The Params");return;end;
 SelectionType = SelectionType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, IndexSet at +0x8, SelectionType at +0x58, Selection at +0x60
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, IndexSet)
 writeByte(_params + 0x58, SelectionType)
 writeQword(_params + 0x60, Selection)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "ConvertIndexSetToMeshSelection", _params);
 local RET=readQword(_params + 0x70);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConvertIndexSetToMeshSelection");

BL4.ConvertMeshSelection = function(TargetMesh_DynamicMesh, FromSelection, ToSelection, NewType, bAllowPartialInclusion)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConvertMeshSelection: Failed To Allocate The Params");return;end;
 NewType = NewType or 0
 bAllowPartialInclusion = bAllowPartialInclusion or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, FromSelection at +0x8, ToSelection at +0x18, NewType at +0x28, bAllowPartialInclusion at +0x29
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, FromSelection)
 writeQword(_params + 0x18, ToSelection)
 writeByte(_params + 0x28, NewType)
 writeByte(_params + 0x29, bAllowPartialInclusion)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "ConvertMeshSelection", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConvertMeshSelection");

BL4.ConvertMeshSelectionToIndexArray = function(TargetMesh_DynamicMesh, Selection, IndexArray, SelectionType)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConvertMeshSelectionToIndexArray: Failed To Allocate The Params");return;end;
 SelectionType = SelectionType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, Selection at +0x8, IndexArray at +0x18, SelectionType at +0x28
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, Selection)
 writeQword(_params + 0x18, IndexArray)
 writeByte(_params + 0x28, SelectionType)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "ConvertMeshSelectionToIndexArray", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConvertMeshSelectionToIndexArray");

BL4.ConvertMeshSelectionToIndexList = function(TargetMesh_DynamicMesh, Selection, IndexList, ResultListType, ConvertToType)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConvertMeshSelectionToIndexList: Failed To Allocate The Params");return;end;
 ResultListType = ResultListType or 0
 ConvertToType = ConvertToType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, Selection at +0x8, IndexList at +0x18, ResultListType at +0x30, ConvertToType at +0x31
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, Selection)
 writeQword(_params + 0x18, IndexList)
 writeByte(_params + 0x30, ResultListType)
 writeByte(_params + 0x31, ConvertToType)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "ConvertMeshSelectionToIndexList", _params);
 local RET=readQword(_params + 0x38);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConvertMeshSelectionToIndexList");

BL4.CreateSelectAllMeshSelection = function(TargetMesh_DynamicMesh, Selection, SelectionType)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CreateSelectAllMeshSelection: Failed To Allocate The Params");return;end;
 SelectionType = SelectionType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, Selection at +0x8, SelectionType at +0x18
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, Selection)
 writeByte(_params + 0x18, SelectionType)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "CreateSelectAllMeshSelection", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CreateSelectAllMeshSelection");

BL4.DebugPrintMeshSelection = function(OwnerAddress, Selection, bDisable)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DebugPrintMeshSelection: Failed To Allocate The Params");return;end;
 bDisable = bDisable or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Selection at +0x0, bDisable at +0x10
 writeQword(_params + 0x0, Selection)
 writeByte(_params + 0x10, bDisable)
 UE.CallProcessEventEx(OwnerAddress, "DebugPrintMeshSelection", _params);
 deAlloc(_params);
end
FNR("BL4.DebugPrintMeshSelection");

BL4.ExpandContractMeshSelection = function(TargetMesh_DynamicMesh, Selection, NewSelection, Iterations, bContract, bOnlyExpandToFaceNeighbours)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ExpandContractMeshSelection: Failed To Allocate The Params");return;end;
 Iterations = Iterations or 0
 bContract = bContract or false
 bOnlyExpandToFaceNeighbours = bOnlyExpandToFaceNeighbours or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, Selection at +0x8, NewSelection at +0x18, Iterations at +0x28, bContract at +0x2C, bOnlyExpandToFaceNeighbours at +0x2D
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, Selection)
 writeQword(_params + 0x18, NewSelection)
 writeInteger(_params + 0x28, Iterations)
 writeByte(_params + 0x2C, bContract)
 writeByte(_params + 0x2D, bOnlyExpandToFaceNeighbours)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "ExpandContractMeshSelection", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ExpandContractMeshSelection");

BL4.ExpandMeshSelectionToConnected = function(TargetMesh_DynamicMesh, Selection, NewSelection, ConnectionType)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ExpandMeshSelectionToConnected: Failed To Allocate The Params");return;end;
 ConnectionType = ConnectionType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, Selection at +0x8, NewSelection at +0x18, ConnectionType at +0x28
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, Selection)
 writeQword(_params + 0x18, NewSelection)
 writeByte(_params + 0x28, ConnectionType)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "ExpandMeshSelectionToConnected", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ExpandMeshSelectionToConnected");

BL4.GetMeshSelectionInfo = function(OwnerAddress, Selection, SelectionType, NumSelected)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMeshSelectionInfo: Failed To Allocate The Params");return;end;
 SelectionType = SelectionType or 0
 NumSelected = NumSelected or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Selection at +0x0, SelectionType at +0x10, NumSelected at +0x14
 writeQword(_params + 0x0, Selection)
 writeByte(_params + 0x10, SelectionType)
 writeInteger(_params + 0x14, NumSelected)
 UE.CallProcessEventEx(OwnerAddress, "GetMeshSelectionInfo", _params);
 deAlloc(_params);
end
FNR("BL4.GetMeshSelectionInfo");

BL4.GetMeshUniqueSelectionInfo = function(TargetMesh_DynamicMesh, Selection, SelectionType, NumSelected)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMeshUniqueSelectionInfo: Failed To Allocate The Params");return;end;
 SelectionType = SelectionType or 0
 NumSelected = NumSelected or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, Selection at +0x8, SelectionType at +0x18, NumSelected at +0x1C
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, Selection)
 writeByte(_params + 0x18, SelectionType)
 writeInteger(_params + 0x1C, NumSelected)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "GetMeshUniqueSelectionInfo", _params);
 deAlloc(_params);
end
FNR("BL4.GetMeshUniqueSelectionInfo");

BL4.InvertMeshSelection = function(TargetMesh_DynamicMesh, Selection, NewSelection, bOnlyToConnected)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InvertMeshSelection: Failed To Allocate The Params");return;end;
 bOnlyToConnected = bOnlyToConnected or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, Selection at +0x8, NewSelection at +0x18, bOnlyToConnected at +0x28
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, Selection)
 writeQword(_params + 0x18, NewSelection)
 writeByte(_params + 0x28, bOnlyToConnected)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "InvertMeshSelection", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.InvertMeshSelection");

BL4.SelectMeshBoundaryEdges = function(TargetMesh_DynamicMesh, Selection)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SelectMeshBoundaryEdges: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, Selection at +0x8
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, Selection)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "SelectMeshBoundaryEdges", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SelectMeshBoundaryEdges");

BL4.SelectMeshElementsByMaterialID = function(TargetMesh_DynamicMesh, MaterialID, Selection, SelectionType)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SelectMeshElementsByMaterialID: Failed To Allocate The Params");return;end;
 MaterialID = MaterialID or 0
 SelectionType = SelectionType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, MaterialID at +0x8, Selection at +0x10, SelectionType at +0x20
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeInteger(_params + 0x8, MaterialID)
 writeQword(_params + 0x10, Selection)
 writeByte(_params + 0x20, SelectionType)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "SelectMeshElementsByMaterialID", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SelectMeshElementsByMaterialID");

BL4.SelectMeshElementsByNormalAngle = function(TargetMesh_DynamicMesh, Selection, Normal, MaxAngleDeg, SelectionType, bInvert, MinNumTrianglePoints)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SelectMeshElementsByNormalAngle: Failed To Allocate The Params");return;end;
 Normal = Normal or {X=0,Y=0,Z=0}
 SelectionType = SelectionType or 0
 bInvert = bInvert or false
 MinNumTrianglePoints = MinNumTrianglePoints or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, Selection at +0x8, Normal at +0x18, MaxAngleDeg at +0x30, SelectionType at +0x38, bInvert at +0x39, MinNumTrianglePoints at +0x3C
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, Selection)
 writeDouble(_params + 0x18, (Normal and Normal.X) or 0)
 writeDouble(_params + 0x20, (Normal and Normal.Y) or 0)
 writeDouble(_params + 0x28, (Normal and Normal.Z) or 0)
 writeQword(_params + 0x30, MaxAngleDeg)
 writeByte(_params + 0x38, SelectionType)
 writeByte(_params + 0x39, bInvert)
 writeInteger(_params + 0x3C, MinNumTrianglePoints)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "SelectMeshElementsByNormalAngle", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SelectMeshElementsByNormalAngle");

BL4.SelectMeshElementsByPolygroup = function(TargetMesh_DynamicMesh, GroupLayer, PolygroupID, Selection, SelectionType)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SelectMeshElementsByPolygroup: Failed To Allocate The Params");return;end;
 PolygroupID = PolygroupID or 0
 SelectionType = SelectionType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, GroupLayer at +0x8, PolygroupID at +0x10, Selection at +0x18, SelectionType at +0x28
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, GroupLayer)
 writeInteger(_params + 0x10, PolygroupID)
 writeQword(_params + 0x18, Selection)
 writeByte(_params + 0x28, SelectionType)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "SelectMeshElementsByPolygroup", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SelectMeshElementsByPolygroup");

BL4.SelectMeshElementsInBox = function(TargetMesh_DynamicMesh, Selection, Box, SelectionType, bInvert, MinNumTrianglePoints)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SelectMeshElementsInBox: Failed To Allocate The Params");return;end;
 SelectionType = SelectionType or 0
 bInvert = bInvert or false
 MinNumTrianglePoints = MinNumTrianglePoints or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, Selection at +0x8, Box at +0x18, SelectionType at +0x50, bInvert at +0x51, MinNumTrianglePoints at +0x54
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, Selection)
 writeQword(_params + 0x18, Box)
 writeByte(_params + 0x50, SelectionType)
 writeByte(_params + 0x51, bInvert)
 writeInteger(_params + 0x54, MinNumTrianglePoints)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "SelectMeshElementsInBox", _params);
 local RET=readQword(_params + 0x58);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SelectMeshElementsInBox");

BL4.SelectMeshElementsInsideMesh = function(TargetMesh_DynamicMesh, SelectionMesh_DynamicMesh, Selection, SelectionMeshTransform, SelectionType, bInvert, ShellDistance, WindingThreshold, MinNumTrianglePoints)
 local _paramsSize = 0xA8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SelectMeshElementsInsideMesh: Failed To Allocate The Params");return;end;
 SelectionType = SelectionType or 0
 bInvert = bInvert or false
 MinNumTrianglePoints = MinNumTrianglePoints or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, SelectionMesh at +0x8, Selection at +0x10, SelectionMeshTransform at +0x20, SelectionType at +0x80, bInvert at +0x81, ShellDistance at +0x88, WindingThreshold at +0x90, MinNumTrianglePoints at +0x98
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, SelectionMesh_DynamicMesh)
 writeQword(_params + 0x10, Selection)
 writeQword(_params + 0x20, SelectionMeshTransform)
 writeByte(_params + 0x80, SelectionType)
 writeByte(_params + 0x81, bInvert)
 writeQword(_params + 0x88, ShellDistance)
 writeQword(_params + 0x90, WindingThreshold)
 writeInteger(_params + 0x98, MinNumTrianglePoints)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "SelectMeshElementsInsideMesh", _params);
 local RET=readQword(_params + 0xA0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SelectMeshElementsInsideMesh");

BL4.SelectMeshElementsInSphere = function(TargetMesh_DynamicMesh, Selection, SphereOrigin, SphereRadius, SelectionType, bInvert, MinNumTrianglePoints)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SelectMeshElementsInSphere: Failed To Allocate The Params");return;end;
 SphereOrigin = SphereOrigin or {X=0,Y=0,Z=0}
 SelectionType = SelectionType or 0
 bInvert = bInvert or false
 MinNumTrianglePoints = MinNumTrianglePoints or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, Selection at +0x8, SphereOrigin at +0x18, SphereRadius at +0x30, SelectionType at +0x38, bInvert at +0x39, MinNumTrianglePoints at +0x3C
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, Selection)
 writeDouble(_params + 0x18, (SphereOrigin and SphereOrigin.X) or 0)
 writeDouble(_params + 0x20, (SphereOrigin and SphereOrigin.Y) or 0)
 writeDouble(_params + 0x28, (SphereOrigin and SphereOrigin.Z) or 0)
 writeQword(_params + 0x30, SphereRadius)
 writeByte(_params + 0x38, SelectionType)
 writeByte(_params + 0x39, bInvert)
 writeInteger(_params + 0x3C, MinNumTrianglePoints)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "SelectMeshElementsInSphere", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SelectMeshElementsInSphere");

BL4.SelectMeshElementsWithPlane = function(TargetMesh_DynamicMesh, Selection, PlaneOrigin, PlaneNormal, SelectionType, bInvert, MinNumTrianglePoints)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SelectMeshElementsWithPlane: Failed To Allocate The Params");return;end;
 PlaneOrigin = PlaneOrigin or {X=0,Y=0,Z=0}
 PlaneNormal = PlaneNormal or {X=0,Y=0,Z=0}
 SelectionType = SelectionType or 0
 bInvert = bInvert or false
 MinNumTrianglePoints = MinNumTrianglePoints or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, Selection at +0x8, PlaneOrigin at +0x18, PlaneNormal at +0x30, SelectionType at +0x48, bInvert at +0x49, MinNumTrianglePoints at +0x4C
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, Selection)
 writeDouble(_params + 0x18, (PlaneOrigin and PlaneOrigin.X) or 0)
 writeDouble(_params + 0x20, (PlaneOrigin and PlaneOrigin.Y) or 0)
 writeDouble(_params + 0x28, (PlaneOrigin and PlaneOrigin.Z) or 0)
 writeDouble(_params + 0x30, (PlaneNormal and PlaneNormal.X) or 0)
 writeDouble(_params + 0x38, (PlaneNormal and PlaneNormal.Y) or 0)
 writeDouble(_params + 0x40, (PlaneNormal and PlaneNormal.Z) or 0)
 writeByte(_params + 0x48, SelectionType)
 writeByte(_params + 0x49, bInvert)
 writeInteger(_params + 0x4C, MinNumTrianglePoints)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "SelectMeshElementsWithPlane", _params);
 local RET=readQword(_params + 0x50);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SelectMeshElementsWithPlane");

BL4.SelectMeshSharpEdges = function(TargetMesh_DynamicMesh, Selection, MinAngleDeg)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SelectMeshSharpEdges: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, Selection at +0x8, MinAngleDeg at +0x18
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, Selection)
 writeQword(_params + 0x18, MinAngleDeg)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "SelectMeshSharpEdges", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SelectMeshSharpEdges");

BL4.SelectSelectionBoundaryEdges = function(TargetMesh_DynamicMesh, Selection, BoundarySelection, bExcludeMeshBoundaryEdges)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SelectSelectionBoundaryEdges: Failed To Allocate The Params");return;end;
 bExcludeMeshBoundaryEdges = bExcludeMeshBoundaryEdges or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, Selection at +0x8, BoundarySelection at +0x18, bExcludeMeshBoundaryEdges at +0x28
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, Selection)
 writeQword(_params + 0x18, BoundarySelection)
 writeByte(_params + 0x28, bExcludeMeshBoundaryEdges)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "SelectSelectionBoundaryEdges", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SelectSelectionBoundaryEdges");

