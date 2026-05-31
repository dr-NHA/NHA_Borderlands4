BL4.ClearColorList = function(OwnerAddress, ColorList, ClearColor)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClearColorList: Failed To Allocate The Params");return;end;
 ClearColor = ClearColor or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ColorList at +0x0, ClearColor at +0x10
 writeQword(_params + 0x0, ColorList)
 writeFloat(_params + 0x10, (ClearColor and ClearColor.R) or 0)
 writeFloat(_params + 0x14, (ClearColor and ClearColor.G) or 0)
 writeFloat(_params + 0x18, (ClearColor and ClearColor.B) or 0)
 writeFloat(_params + 0x1C, (ClearColor and ClearColor.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "ClearColorList", _params);
 deAlloc(_params);
end
FNR("BL4.ClearColorList");

BL4.ClearIndexList = function(OwnerAddress, IndexList, ClearValue)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClearIndexList: Failed To Allocate The Params");return;end;
 ClearValue = ClearValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: IndexList at +0x0, ClearValue at +0x18
 writeQword(_params + 0x0, IndexList)
 writeInteger(_params + 0x18, ClearValue)
 UE.CallProcessEventEx(OwnerAddress, "ClearIndexList", _params);
 deAlloc(_params);
end
FNR("BL4.ClearIndexList");

BL4.ClearScalarList = function(OwnerAddress, ScalarList, ClearValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClearScalarList: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ScalarList at +0x0, ClearValue at +0x10
 writeQword(_params + 0x0, ScalarList)
 writeQword(_params + 0x10, ClearValue)
 UE.CallProcessEventEx(OwnerAddress, "ClearScalarList", _params);
 deAlloc(_params);
end
FNR("BL4.ClearScalarList");

BL4.ClearUVList = function(OwnerAddress, UVList, ClearUV)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClearUVList: Failed To Allocate The Params");return;end;
 ClearUV = ClearUV or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: UVList at +0x0, ClearUV at +0x10
 writeQword(_params + 0x0, UVList)
 writeDouble(_params + 0x10, (ClearUV and ClearUV.X) or 0)
 writeDouble(_params + 0x18, (ClearUV and ClearUV.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "ClearUVList", _params);
 deAlloc(_params);
end
FNR("BL4.ClearUVList");

BL4.ClearVectorList = function(OwnerAddress, VectorList, ClearValue)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClearVectorList: Failed To Allocate The Params");return;end;
 ClearValue = ClearValue or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VectorList at +0x0, ClearValue at +0x10
 writeQword(_params + 0x0, VectorList)
 writeDouble(_params + 0x10, (ClearValue and ClearValue.X) or 0)
 writeDouble(_params + 0x18, (ClearValue and ClearValue.Y) or 0)
 writeDouble(_params + 0x20, (ClearValue and ClearValue.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "ClearVectorList", _params);
 deAlloc(_params);
end
FNR("BL4.ClearVectorList");

BL4.ConvertArrayToColorList = function(OwnerAddress, ColorArray, ColorList)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConvertArrayToColorList: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ColorArray at +0x0, ColorList at +0x10
 writeQword(_params + 0x0, ColorArray)
 writeQword(_params + 0x10, ColorList)
 UE.CallProcessEventEx(OwnerAddress, "ConvertArrayToColorList", _params);
 deAlloc(_params);
end
FNR("BL4.ConvertArrayToColorList");

BL4.ConvertArrayToIndexList = function(OwnerAddress, IndexArray, IndexList, IndexType)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConvertArrayToIndexList: Failed To Allocate The Params");return;end;
 IndexType = IndexType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: IndexArray at +0x0, IndexList at +0x10, IndexType at +0x28
 writeQword(_params + 0x0, IndexArray)
 writeQword(_params + 0x10, IndexList)
 writeByte(_params + 0x28, IndexType)
 UE.CallProcessEventEx(OwnerAddress, "ConvertArrayToIndexList", _params);
 deAlloc(_params);
end
FNR("BL4.ConvertArrayToIndexList");

BL4.ConvertArrayToScalarList = function(OwnerAddress, VectorArray, ScalarList)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConvertArrayToScalarList: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VectorArray at +0x0, ScalarList at +0x10
 writeQword(_params + 0x0, VectorArray)
 writeQword(_params + 0x10, ScalarList)
 UE.CallProcessEventEx(OwnerAddress, "ConvertArrayToScalarList", _params);
 deAlloc(_params);
end
FNR("BL4.ConvertArrayToScalarList");

BL4.ConvertArrayToTriangleList = function(OwnerAddress, TriangleArray, TriangleList)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConvertArrayToTriangleList: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TriangleArray at +0x0, TriangleList at +0x10
 writeQword(_params + 0x0, TriangleArray)
 writeQword(_params + 0x10, TriangleList)
 UE.CallProcessEventEx(OwnerAddress, "ConvertArrayToTriangleList", _params);
 deAlloc(_params);
end
FNR("BL4.ConvertArrayToTriangleList");

BL4.ConvertArrayToUVList = function(OwnerAddress, UVArray, UVList)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConvertArrayToUVList: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: UVArray at +0x0, UVList at +0x10
 writeQword(_params + 0x0, UVArray)
 writeQword(_params + 0x10, UVList)
 UE.CallProcessEventEx(OwnerAddress, "ConvertArrayToUVList", _params);
 deAlloc(_params);
end
FNR("BL4.ConvertArrayToUVList");

BL4.ConvertArrayToVectorList = function(OwnerAddress, VectorArray, VectorList)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConvertArrayToVectorList: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VectorArray at +0x0, VectorList at +0x10
 writeQword(_params + 0x0, VectorArray)
 writeQword(_params + 0x10, VectorList)
 UE.CallProcessEventEx(OwnerAddress, "ConvertArrayToVectorList", _params);
 deAlloc(_params);
end
FNR("BL4.ConvertArrayToVectorList");

BL4.ConvertColorListToArray = function(OwnerAddress, ColorList, ColorArray)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConvertColorListToArray: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ColorList at +0x0, ColorArray at +0x10
 writeQword(_params + 0x0, ColorList)
 writeQword(_params + 0x10, ColorArray)
 UE.CallProcessEventEx(OwnerAddress, "ConvertColorListToArray", _params);
 deAlloc(_params);
end
FNR("BL4.ConvertColorListToArray");

BL4.ConvertIndexListToArray = function(OwnerAddress, IndexList, IndexArray)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConvertIndexListToArray: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: IndexList at +0x0, IndexArray at +0x18
 writeQword(_params + 0x0, IndexList)
 writeQword(_params + 0x18, IndexArray)
 UE.CallProcessEventEx(OwnerAddress, "ConvertIndexListToArray", _params);
 deAlloc(_params);
end
FNR("BL4.ConvertIndexListToArray");

BL4.ConvertScalarListToArray = function(OwnerAddress, ScalarList, ScalarArray)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConvertScalarListToArray: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ScalarList at +0x0, ScalarArray at +0x10
 writeQword(_params + 0x0, ScalarList)
 writeQword(_params + 0x10, ScalarArray)
 UE.CallProcessEventEx(OwnerAddress, "ConvertScalarListToArray", _params);
 deAlloc(_params);
end
FNR("BL4.ConvertScalarListToArray");

BL4.ConvertTriangleListToArray = function(OwnerAddress, TriangleList, TriangleArray)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConvertTriangleListToArray: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TriangleList at +0x0, TriangleArray at +0x10
 writeQword(_params + 0x0, TriangleList)
 writeQword(_params + 0x10, TriangleArray)
 UE.CallProcessEventEx(OwnerAddress, "ConvertTriangleListToArray", _params);
 deAlloc(_params);
end
FNR("BL4.ConvertTriangleListToArray");

BL4.ConvertUVListToArray = function(OwnerAddress, UVList, UVArray)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConvertUVListToArray: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: UVList at +0x0, UVArray at +0x10
 writeQword(_params + 0x0, UVList)
 writeQword(_params + 0x10, UVArray)
 UE.CallProcessEventEx(OwnerAddress, "ConvertUVListToArray", _params);
 deAlloc(_params);
end
FNR("BL4.ConvertUVListToArray");

BL4.ConvertVectorListToArray = function(OwnerAddress, VectorList, VectorArray)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConvertVectorListToArray: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VectorList at +0x0, VectorArray at +0x10
 writeQword(_params + 0x0, VectorList)
 writeQword(_params + 0x10, VectorArray)
 UE.CallProcessEventEx(OwnerAddress, "ConvertVectorListToArray", _params);
 deAlloc(_params);
end
FNR("BL4.ConvertVectorListToArray");

BL4.DuplicateColorList = function(OwnerAddress, ColorList, DuplicateList)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DuplicateColorList: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ColorList at +0x0, DuplicateList at +0x10
 writeQword(_params + 0x0, ColorList)
 writeQword(_params + 0x10, DuplicateList)
 UE.CallProcessEventEx(OwnerAddress, "DuplicateColorList", _params);
 deAlloc(_params);
end
FNR("BL4.DuplicateColorList");

BL4.DuplicateIndexList = function(OwnerAddress, IndexList, DuplicateList)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DuplicateIndexList: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: IndexList at +0x0, DuplicateList at +0x18
 writeQword(_params + 0x0, IndexList)
 writeQword(_params + 0x18, DuplicateList)
 UE.CallProcessEventEx(OwnerAddress, "DuplicateIndexList", _params);
 deAlloc(_params);
end
FNR("BL4.DuplicateIndexList");

BL4.DuplicateScalarList = function(OwnerAddress, ScalarList, DuplicateList)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DuplicateScalarList: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ScalarList at +0x0, DuplicateList at +0x10
 writeQword(_params + 0x0, ScalarList)
 writeQword(_params + 0x10, DuplicateList)
 UE.CallProcessEventEx(OwnerAddress, "DuplicateScalarList", _params);
 deAlloc(_params);
end
FNR("BL4.DuplicateScalarList");

BL4.DuplicateUVList = function(OwnerAddress, UVList, DuplicateList)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DuplicateUVList: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: UVList at +0x0, DuplicateList at +0x10
 writeQword(_params + 0x0, UVList)
 writeQword(_params + 0x10, DuplicateList)
 UE.CallProcessEventEx(OwnerAddress, "DuplicateUVList", _params);
 deAlloc(_params);
end
FNR("BL4.DuplicateUVList");

BL4.DuplicateVectorList = function(OwnerAddress, VectorList, DuplicateList)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DuplicateVectorList: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VectorList at +0x0, DuplicateList at +0x10
 writeQword(_params + 0x0, VectorList)
 writeQword(_params + 0x10, DuplicateList)
 UE.CallProcessEventEx(OwnerAddress, "DuplicateVectorList", _params);
 deAlloc(_params);
end
FNR("BL4.DuplicateVectorList");

BL4.ExtractColorListChannel = function(OwnerAddress, ColorList, ScalarList, ChannelIndex)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ExtractColorListChannel: Failed To Allocate The Params");return;end;
 ChannelIndex = ChannelIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ColorList at +0x0, ScalarList at +0x10, ChannelIndex at +0x20
 writeQword(_params + 0x0, ColorList)
 writeQword(_params + 0x10, ScalarList)
 writeInteger(_params + 0x20, ChannelIndex)
 UE.CallProcessEventEx(OwnerAddress, "ExtractColorListChannel", _params);
 deAlloc(_params);
end
FNR("BL4.ExtractColorListChannel");

BL4.ExtractColorListChannels = function(OwnerAddress, ColorList, VectorList, XChannelIndex, YChannelIndex, ZChannelIndex)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ExtractColorListChannels: Failed To Allocate The Params");return;end;
 XChannelIndex = XChannelIndex or 0
 YChannelIndex = YChannelIndex or 0
 ZChannelIndex = ZChannelIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ColorList at +0x0, VectorList at +0x10, XChannelIndex at +0x20, YChannelIndex at +0x24, ZChannelIndex at +0x28
 writeQword(_params + 0x0, ColorList)
 writeQword(_params + 0x10, VectorList)
 writeInteger(_params + 0x20, XChannelIndex)
 writeInteger(_params + 0x24, YChannelIndex)
 writeInteger(_params + 0x28, ZChannelIndex)
 UE.CallProcessEventEx(OwnerAddress, "ExtractColorListChannels", _params);
 deAlloc(_params);
end
FNR("BL4.ExtractColorListChannels");

BL4.GetColorListItem = function(OwnerAddress, ColorList, Index, bIsValidIndex)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetColorListItem: Failed To Allocate The Params");return;end;
 Index = Index or 0
 bIsValidIndex = bIsValidIndex or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ColorList at +0x0, Index at +0x10, bIsValidIndex at +0x14
 writeQword(_params + 0x0, ColorList)
 writeInteger(_params + 0x10, Index)
 writeByte(_params + 0x14, bIsValidIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetColorListItem", _params);
 local RET={R=readFloat(_params+0x18),G=readFloat(_params+0x1C),B=readFloat(_params+0x20),A=readFloat(_params+0x24)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetColorListItem");

BL4.GetColorListLastIndex = function(OwnerAddress, ColorList)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetColorListLastIndex: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ColorList at +0x0
 writeQword(_params + 0x0, ColorList)
 UE.CallProcessEventEx(OwnerAddress, "GetColorListLastIndex", _params);
 local RET=readInteger(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetColorListLastIndex");

BL4.GetColorListLength = function(OwnerAddress, ColorList)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetColorListLength: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ColorList at +0x0
 writeQword(_params + 0x0, ColorList)
 UE.CallProcessEventEx(OwnerAddress, "GetColorListLength", _params);
 local RET=readInteger(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetColorListLength");

BL4.GetIndexListItem = function(OwnerAddress, IndexList, Index, bIsValidIndex)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetIndexListItem: Failed To Allocate The Params");return;end;
 Index = Index or 0
 bIsValidIndex = bIsValidIndex or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: IndexList at +0x0, Index at +0x18, bIsValidIndex at +0x1C
 writeQword(_params + 0x0, IndexList)
 writeInteger(_params + 0x18, Index)
 writeByte(_params + 0x1C, bIsValidIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetIndexListItem", _params);
 local RET=readInteger(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetIndexListItem");

BL4.GetIndexListLastIndex = function(OwnerAddress, IndexList)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetIndexListLastIndex: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: IndexList at +0x0
 writeQword(_params + 0x0, IndexList)
 UE.CallProcessEventEx(OwnerAddress, "GetIndexListLastIndex", _params);
 local RET=readInteger(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetIndexListLastIndex");

BL4.GetIndexListLength = function(OwnerAddress, IndexList)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetIndexListLength: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: IndexList at +0x0
 writeQword(_params + 0x0, IndexList)
 UE.CallProcessEventEx(OwnerAddress, "GetIndexListLength", _params);
 local RET=readInteger(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetIndexListLength");

BL4.GetScalarListItem = function(OwnerAddress, ScalarList, Index, bIsValidIndex)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetScalarListItem: Failed To Allocate The Params");return;end;
 Index = Index or 0
 bIsValidIndex = bIsValidIndex or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ScalarList at +0x0, Index at +0x10, bIsValidIndex at +0x14
 writeQword(_params + 0x0, ScalarList)
 writeInteger(_params + 0x10, Index)
 writeByte(_params + 0x14, bIsValidIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetScalarListItem", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetScalarListItem");

BL4.GetScalarListLastIndex = function(OwnerAddress, ScalarList)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetScalarListLastIndex: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ScalarList at +0x0
 writeQword(_params + 0x0, ScalarList)
 UE.CallProcessEventEx(OwnerAddress, "GetScalarListLastIndex", _params);
 local RET=readInteger(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetScalarListLastIndex");

BL4.GetScalarListLength = function(OwnerAddress, ScalarList)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetScalarListLength: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ScalarList at +0x0
 writeQword(_params + 0x0, ScalarList)
 UE.CallProcessEventEx(OwnerAddress, "GetScalarListLength", _params);
 local RET=readInteger(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetScalarListLength");

BL4.GetTriangleListItem = function(OwnerAddress, TriangleList, Triangle, bIsValidTriangle)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTriangleListItem: Failed To Allocate The Params");return;end;
 Triangle = Triangle or 0
 bIsValidTriangle = bIsValidTriangle or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TriangleList at +0x0, Triangle at +0x10, bIsValidTriangle at +0x14
 writeQword(_params + 0x0, TriangleList)
 writeInteger(_params + 0x10, Triangle)
 writeByte(_params + 0x14, bIsValidTriangle)
 UE.CallProcessEventEx(OwnerAddress, "GetTriangleListItem", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTriangleListItem");

BL4.GetTriangleListLastTriangle = function(OwnerAddress, TriangleList)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTriangleListLastTriangle: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TriangleList at +0x0
 writeQword(_params + 0x0, TriangleList)
 UE.CallProcessEventEx(OwnerAddress, "GetTriangleListLastTriangle", _params);
 local RET=readInteger(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTriangleListLastTriangle");

BL4.GetTriangleListLength = function(OwnerAddress, TriangleList)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTriangleListLength: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TriangleList at +0x0
 writeQword(_params + 0x0, TriangleList)
 UE.CallProcessEventEx(OwnerAddress, "GetTriangleListLength", _params);
 local RET=readInteger(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTriangleListLength");

BL4.GetUVListItem = function(OwnerAddress, UVList, Index, bIsValidIndex)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetUVListItem: Failed To Allocate The Params");return;end;
 Index = Index or 0
 bIsValidIndex = bIsValidIndex or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: UVList at +0x0, Index at +0x10, bIsValidIndex at +0x14
 writeQword(_params + 0x0, UVList)
 writeInteger(_params + 0x10, Index)
 writeByte(_params + 0x14, bIsValidIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetUVListItem", _params);
 local RET={X=readFloat(_params+0x18),Y=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetUVListItem");

BL4.GetUVListLastIndex = function(OwnerAddress, UVList)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetUVListLastIndex: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: UVList at +0x0
 writeQword(_params + 0x0, UVList)
 UE.CallProcessEventEx(OwnerAddress, "GetUVListLastIndex", _params);
 local RET=readInteger(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetUVListLastIndex");

BL4.GetUVListLength = function(OwnerAddress, UVList)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetUVListLength: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: UVList at +0x0
 writeQword(_params + 0x0, UVList)
 UE.CallProcessEventEx(OwnerAddress, "GetUVListLength", _params);
 local RET=readInteger(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetUVListLength");

BL4.GetVectorListItem = function(OwnerAddress, VectorList, Index, bIsValidIndex)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVectorListItem: Failed To Allocate The Params");return;end;
 Index = Index or 0
 bIsValidIndex = bIsValidIndex or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VectorList at +0x0, Index at +0x10, bIsValidIndex at +0x14
 writeQword(_params + 0x0, VectorList)
 writeInteger(_params + 0x10, Index)
 writeByte(_params + 0x14, bIsValidIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetVectorListItem", _params);
 local RET={X=readFloat(_params+0x18),Y=readFloat(_params+0x20),Z=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVectorListItem");

BL4.GetVectorListLastIndex = function(OwnerAddress, VectorList)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVectorListLastIndex: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VectorList at +0x0
 writeQword(_params + 0x0, VectorList)
 UE.CallProcessEventEx(OwnerAddress, "GetVectorListLastIndex", _params);
 local RET=readInteger(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVectorListLastIndex");

BL4.GetVectorListLength = function(OwnerAddress, VectorList)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVectorListLength: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VectorList at +0x0
 writeQword(_params + 0x0, VectorList)
 UE.CallProcessEventEx(OwnerAddress, "GetVectorListLength", _params);
 local RET=readInteger(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVectorListLength");

BL4.SetColorListItem = function(OwnerAddress, ColorList, Index, NewColor, bIsValidIndex)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetColorListItem: Failed To Allocate The Params");return;end;
 Index = Index or 0
 NewColor = NewColor or {R=0,G=0,B=0,A=0}
 bIsValidIndex = bIsValidIndex or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ColorList at +0x0, Index at +0x10, NewColor at +0x14, bIsValidIndex at +0x24
 writeQword(_params + 0x0, ColorList)
 writeInteger(_params + 0x10, Index)
 writeFloat(_params + 0x14, (NewColor and NewColor.R) or 0)
 writeFloat(_params + 0x18, (NewColor and NewColor.G) or 0)
 writeFloat(_params + 0x1C, (NewColor and NewColor.B) or 0)
 writeFloat(_params + 0x20, (NewColor and NewColor.A) or 0)
 writeByte(_params + 0x24, bIsValidIndex)
 UE.CallProcessEventEx(OwnerAddress, "SetColorListItem", _params);
 deAlloc(_params);
end
FNR("BL4.SetColorListItem");

BL4.SetIndexListItem = function(OwnerAddress, IndexList, Index, NewValue, bIsValidIndex)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetIndexListItem: Failed To Allocate The Params");return;end;
 Index = Index or 0
 NewValue = NewValue or 0
 bIsValidIndex = bIsValidIndex or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: IndexList at +0x0, Index at +0x18, NewValue at +0x1C, bIsValidIndex at +0x20
 writeQword(_params + 0x0, IndexList)
 writeInteger(_params + 0x18, Index)
 writeInteger(_params + 0x1C, NewValue)
 writeByte(_params + 0x20, bIsValidIndex)
 UE.CallProcessEventEx(OwnerAddress, "SetIndexListItem", _params);
 deAlloc(_params);
end
FNR("BL4.SetIndexListItem");

BL4.SetScalarListItem = function(OwnerAddress, ScalarList, Index, NewValue, bIsValidIndex)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetScalarListItem: Failed To Allocate The Params");return;end;
 Index = Index or 0
 bIsValidIndex = bIsValidIndex or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ScalarList at +0x0, Index at +0x10, NewValue at +0x18, bIsValidIndex at +0x20
 writeQword(_params + 0x0, ScalarList)
 writeInteger(_params + 0x10, Index)
 writeQword(_params + 0x18, NewValue)
 writeByte(_params + 0x20, bIsValidIndex)
 UE.CallProcessEventEx(OwnerAddress, "SetScalarListItem", _params);
 deAlloc(_params);
end
FNR("BL4.SetScalarListItem");

BL4.SetUVListItem = function(OwnerAddress, UVList, Index, NewUV, bIsValidIndex)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetUVListItem: Failed To Allocate The Params");return;end;
 Index = Index or 0
 NewUV = NewUV or {X=0,Y=0}
 bIsValidIndex = bIsValidIndex or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: UVList at +0x0, Index at +0x10, NewUV at +0x18, bIsValidIndex at +0x28
 writeQword(_params + 0x0, UVList)
 writeInteger(_params + 0x10, Index)
 writeDouble(_params + 0x18, (NewUV and NewUV.X) or 0)
 writeDouble(_params + 0x20, (NewUV and NewUV.Y) or 0)
 writeByte(_params + 0x28, bIsValidIndex)
 UE.CallProcessEventEx(OwnerAddress, "SetUVListItem", _params);
 deAlloc(_params);
end
FNR("BL4.SetUVListItem");

BL4.SetVectorListItem = function(OwnerAddress, VectorList, Index, NewValue, bIsValidIndex)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVectorListItem: Failed To Allocate The Params");return;end;
 Index = Index or 0
 NewValue = NewValue or {X=0,Y=0,Z=0}
 bIsValidIndex = bIsValidIndex or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: VectorList at +0x0, Index at +0x10, NewValue at +0x18, bIsValidIndex at +0x30
 writeQword(_params + 0x0, VectorList)
 writeInteger(_params + 0x10, Index)
 writeDouble(_params + 0x18, (NewValue and NewValue.X) or 0)
 writeDouble(_params + 0x20, (NewValue and NewValue.Y) or 0)
 writeDouble(_params + 0x28, (NewValue and NewValue.Z) or 0)
 writeByte(_params + 0x30, bIsValidIndex)
 UE.CallProcessEventEx(OwnerAddress, "SetVectorListItem", _params);
 deAlloc(_params);
end
FNR("BL4.SetVectorListItem");

