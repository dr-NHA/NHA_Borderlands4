BL4.ConnectOutputToAnisotropy = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectOutputToAnisotropy: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "ConnectOutputToAnisotropy", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectOutputToAnisotropy");

BL4.ConnectOutputToBaseColor = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectOutputToBaseColor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "ConnectOutputToBaseColor", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectOutputToBaseColor");

BL4.ConnectOutputToClearCoat = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectOutputToClearCoat: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "ConnectOutputToClearCoat", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectOutputToClearCoat");

BL4.ConnectOutputToClearCoatNormal = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectOutputToClearCoatNormal: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "ConnectOutputToClearCoatNormal", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectOutputToClearCoatNormal");

BL4.ConnectOutputToClearCoatRoughness = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectOutputToClearCoatRoughness: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "ConnectOutputToClearCoatRoughness", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectOutputToClearCoatRoughness");

BL4.ConnectOutputToCloth = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectOutputToCloth: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "ConnectOutputToCloth", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectOutputToCloth");

BL4.ConnectOutputToDisplacement = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectOutputToDisplacement: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "ConnectOutputToDisplacement", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectOutputToDisplacement");

BL4.ConnectOutputToEmissiveColor = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectOutputToEmissiveColor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "ConnectOutputToEmissiveColor", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectOutputToEmissiveColor");

BL4.ConnectOutputToFuzzColor = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectOutputToFuzzColor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "ConnectOutputToFuzzColor", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectOutputToFuzzColor");

BL4.ConnectOutputToMetallic = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectOutputToMetallic: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "ConnectOutputToMetallic", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectOutputToMetallic");

BL4.ConnectOutputToNormal = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectOutputToNormal: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "ConnectOutputToNormal", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectOutputToNormal");

BL4.ConnectOutputToOcclusion = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectOutputToOcclusion: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "ConnectOutputToOcclusion", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectOutputToOcclusion");

BL4.ConnectOutputToOpacity = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectOutputToOpacity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "ConnectOutputToOpacity", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectOutputToOpacity");

BL4.ConnectOutputToRefraction = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectOutputToRefraction: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "ConnectOutputToRefraction", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectOutputToRefraction");

BL4.ConnectOutputToRoughness = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectOutputToRoughness: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "ConnectOutputToRoughness", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectOutputToRoughness");

BL4.ConnectOutputToSpecular = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectOutputToSpecular: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "ConnectOutputToSpecular", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectOutputToSpecular");

BL4.ConnectOutputToSubsurface = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectOutputToSubsurface: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "ConnectOutputToSubsurface", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectOutputToSubsurface");

BL4.ConnectOutputToSurfaceCoverage = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectOutputToSurfaceCoverage: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "ConnectOutputToSurfaceCoverage", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectOutputToSurfaceCoverage");

BL4.ConnectOutputToTangent = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectOutputToTangent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "ConnectOutputToTangent", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectOutputToTangent");

BL4.ConnectOutputToTransmissionColor = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectOutputToTransmissionColor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "ConnectOutputToTransmissionColor", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectOutputToTransmissionColor");

BL4.ConnectToAnisotropy = function(OwnerAddress, ExpressionNodeUid)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectToAnisotropy: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0
 writeQword(_params + 0x0, ExpressionNodeUid)
 UE.CallProcessEventEx(OwnerAddress, "ConnectToAnisotropy", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectToAnisotropy");

BL4.ConnectToBaseColor = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectToBaseColor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "ConnectToBaseColor", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectToBaseColor");

BL4.ConnectToClearCoat = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectToClearCoat: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "ConnectToClearCoat", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectToClearCoat");

BL4.ConnectToClearCoatNormal = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectToClearCoatNormal: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "ConnectToClearCoatNormal", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectToClearCoatNormal");

BL4.ConnectToClearCoatRoughness = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectToClearCoatRoughness: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "ConnectToClearCoatRoughness", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectToClearCoatRoughness");

BL4.ConnectToCloth = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectToCloth: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "ConnectToCloth", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectToCloth");

BL4.ConnectToDisplacement = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectToDisplacement: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "ConnectToDisplacement", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectToDisplacement");

BL4.ConnectToEmissiveColor = function(OwnerAddress, ExpressionNodeUid)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectToEmissiveColor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0
 writeQword(_params + 0x0, ExpressionNodeUid)
 UE.CallProcessEventEx(OwnerAddress, "ConnectToEmissiveColor", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectToEmissiveColor");

BL4.ConnectToFuzzColor = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectToFuzzColor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "ConnectToFuzzColor", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectToFuzzColor");

BL4.ConnectToMetallic = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectToMetallic: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "ConnectToMetallic", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectToMetallic");

BL4.ConnectToNormal = function(OwnerAddress, ExpressionNodeUid)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectToNormal: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0
 writeQword(_params + 0x0, ExpressionNodeUid)
 UE.CallProcessEventEx(OwnerAddress, "ConnectToNormal", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectToNormal");

BL4.ConnectToOcclusion = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectToOcclusion: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "ConnectToOcclusion", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectToOcclusion");

BL4.ConnectToOpacity = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectToOpacity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "ConnectToOpacity", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectToOpacity");

BL4.ConnectToRefraction = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectToRefraction: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "ConnectToRefraction", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectToRefraction");

BL4.ConnectToRoughness = function(OwnerAddress, ExpressionNodeUid)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectToRoughness: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0
 writeQword(_params + 0x0, ExpressionNodeUid)
 UE.CallProcessEventEx(OwnerAddress, "ConnectToRoughness", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectToRoughness");

BL4.ConnectToSpecular = function(OwnerAddress, ExpressionNodeUid)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectToSpecular: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0
 writeQword(_params + 0x0, ExpressionNodeUid)
 UE.CallProcessEventEx(OwnerAddress, "ConnectToSpecular", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectToSpecular");

BL4.ConnectToSubsurface = function(OwnerAddress, ExpressionNodeUid)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectToSubsurface: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0
 writeQword(_params + 0x0, ExpressionNodeUid)
 UE.CallProcessEventEx(OwnerAddress, "ConnectToSubsurface", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectToSubsurface");

BL4.ConnectToSurfaceCoverage = function(OwnerAddress, ExpressionUid)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectToSurfaceCoverage: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionUid at +0x0
 writeQword(_params + 0x0, ExpressionUid)
 UE.CallProcessEventEx(OwnerAddress, "ConnectToSurfaceCoverage", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectToSurfaceCoverage");

BL4.ConnectToTangent = function(OwnerAddress, ExpressionNodeUid)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectToTangent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0
 writeQword(_params + 0x0, ExpressionNodeUid)
 UE.CallProcessEventEx(OwnerAddress, "ConnectToTangent", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectToTangent");

BL4.ConnectToTransmissionColor = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConnectToTransmissionColor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "ConnectToTransmissionColor", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ConnectToTransmissionColor");

BL4.GetAnisotropyConnection = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAnisotropyConnection: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "GetAnisotropyConnection", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAnisotropyConnection");

BL4.GetBaseColorConnection = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBaseColorConnection: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "GetBaseColorConnection", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBaseColorConnection");

BL4.GetClearCoatConnection = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetClearCoatConnection: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "GetClearCoatConnection", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetClearCoatConnection");

BL4.GetClearCoatNormalConnection = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetClearCoatNormalConnection: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "GetClearCoatNormalConnection", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetClearCoatNormalConnection");

BL4.GetClearCoatRoughnessConnection = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetClearCoatRoughnessConnection: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "GetClearCoatRoughnessConnection", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetClearCoatRoughnessConnection");

BL4.GetClothConnection = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetClothConnection: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "GetClothConnection", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetClothConnection");

BL4.GetCustomBlendMode = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomBlendMode: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomBlendMode", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomBlendMode");

BL4.GetCustomOpacityMaskClipValue = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomOpacityMaskClipValue: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeFloat(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomOpacityMaskClipValue", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomOpacityMaskClipValue");

BL4.GetCustomRefractionMethod = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomRefractionMethod: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomRefractionMethod", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomRefractionMethod");

BL4.GetCustomScreenSpaceReflections = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomScreenSpaceReflections: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomScreenSpaceReflections", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomScreenSpaceReflections");

BL4.GetCustomShadingModel = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomShadingModel: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomShadingModel", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomShadingModel");

BL4.GetCustomTranslucencyLightingMode = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomTranslucencyLightingMode: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomTranslucencyLightingMode", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomTranslucencyLightingMode");

BL4.GetCustomTwoSided = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomTwoSided: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomTwoSided", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomTwoSided");

BL4.GetDisplacementConnection = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDisplacementConnection: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "GetDisplacementConnection", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDisplacementConnection");

BL4.GetEmissiveColorConnection = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetEmissiveColorConnection: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "GetEmissiveColorConnection", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetEmissiveColorConnection");

BL4.GetFuzzColorConnection = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetFuzzColorConnection: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "GetFuzzColorConnection", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetFuzzColorConnection");

BL4.GetMetallicConnection = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMetallicConnection: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "GetMetallicConnection", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMetallicConnection");

BL4.GetNormalConnection = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNormalConnection: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "GetNormalConnection", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNormalConnection");

BL4.GetObjectClass = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetObjectClass: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetObjectClass", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetObjectClass");

BL4.GetOcclusionConnection = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetOcclusionConnection: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "GetOcclusionConnection", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetOcclusionConnection");

BL4.GetOpacityConnection = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetOpacityConnection: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "GetOpacityConnection", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetOpacityConnection");

BL4.GetRefractionConnection = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRefractionConnection: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "GetRefractionConnection", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRefractionConnection");

BL4.GetRoughnessConnection = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRoughnessConnection: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "GetRoughnessConnection", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRoughnessConnection");

BL4.GetSpecularConnection = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSpecularConnection: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "GetSpecularConnection", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSpecularConnection");

BL4.GetSubsurfaceConnection = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSubsurfaceConnection: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "GetSubsurfaceConnection", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSubsurfaceConnection");

BL4.GetSurfaceCoverageConnection = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSurfaceCoverageConnection: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "GetSurfaceCoverageConnection", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSurfaceCoverageConnection");

BL4.GetTangentConnection = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTangentConnection: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "GetTangentConnection", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTangentConnection");

BL4.GetTransmissionColorConnection = function(OwnerAddress, ExpressionNodeUid, OutputName)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTransmissionColorConnection: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ExpressionNodeUid at +0x0, OutputName at +0x10
 writeQword(_params + 0x0, ExpressionNodeUid)
 writeQword(_params + 0x10, OutputName)
 UE.CallProcessEventEx(OwnerAddress, "GetTransmissionColorConnection", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTransmissionColorConnection");

BL4.SetCustomBlendMode = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomBlendMode: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x1
 writeByte(_params + 0x0, AttributeValue)
 writeByte(_params + 0x1, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomBlendMode", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomBlendMode");

BL4.SetCustomOpacityMaskClipValue = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomOpacityMaskClipValue: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x4
 writeFloat(_params + 0x0, AttributeValue)
 writeByte(_params + 0x4, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomOpacityMaskClipValue", _params);
 local RET=readByte(_params + 0x5);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomOpacityMaskClipValue");

BL4.SetCustomRefractionMethod = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomRefractionMethod: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x1
 writeByte(_params + 0x0, AttributeValue)
 writeByte(_params + 0x1, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomRefractionMethod", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomRefractionMethod");

BL4.SetCustomScreenSpaceReflections = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomScreenSpaceReflections: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomScreenSpaceReflections", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomScreenSpaceReflections");

BL4.SetCustomShadingModel = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomShadingModel: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x1
 writeByte(_params + 0x0, AttributeValue)
 writeByte(_params + 0x1, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomShadingModel", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomShadingModel");

BL4.SetCustomTranslucencyLightingMode = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomTranslucencyLightingMode: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x1
 writeByte(_params + 0x0, AttributeValue)
 writeByte(_params + 0x1, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomTranslucencyLightingMode", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomTranslucencyLightingMode");

BL4.SetCustomTwoSided = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomTwoSided: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x1
 writeByte(_params + 0x0, AttributeValue)
 writeByte(_params + 0x1, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomTwoSided", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomTwoSided");

