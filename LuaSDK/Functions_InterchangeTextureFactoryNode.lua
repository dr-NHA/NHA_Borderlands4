BL4.GetCustomAdjustBrightness = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomAdjustBrightness: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeFloat(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomAdjustBrightness", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomAdjustBrightness");

BL4.GetCustomAdjustBrightnessCurve = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomAdjustBrightnessCurve: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeFloat(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomAdjustBrightnessCurve", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomAdjustBrightnessCurve");

BL4.GetCustomAdjustHue = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomAdjustHue: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeFloat(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomAdjustHue", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomAdjustHue");

BL4.GetCustomAdjustMaxAlpha = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomAdjustMaxAlpha: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeFloat(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomAdjustMaxAlpha", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomAdjustMaxAlpha");

BL4.GetCustomAdjustMinAlpha = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomAdjustMinAlpha: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeFloat(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomAdjustMinAlpha", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomAdjustMinAlpha");

BL4.GetCustomAdjustRGBCurve = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomAdjustRGBCurve: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeFloat(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomAdjustRGBCurve", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomAdjustRGBCurve");

BL4.GetCustomAdjustSaturation = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomAdjustSaturation: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeFloat(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomAdjustSaturation", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomAdjustSaturation");

BL4.GetCustomAdjustVibrance = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomAdjustVibrance: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeFloat(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomAdjustVibrance", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomAdjustVibrance");

BL4.GetCustomAllowNonPowerOfTwo = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomAllowNonPowerOfTwo: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomAllowNonPowerOfTwo", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomAllowNonPowerOfTwo");

BL4.GetCustomAlphaCoverageThresholds = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomAlphaCoverageThresholds: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomAlphaCoverageThresholds", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomAlphaCoverageThresholds");

BL4.GetCustombChromaKeyTexture = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustombChromaKeyTexture: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustombChromaKeyTexture", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustombChromaKeyTexture");

BL4.GetCustombDoScaleMipsForAlphaCoverage = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustombDoScaleMipsForAlphaCoverage: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustombDoScaleMipsForAlphaCoverage", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustombDoScaleMipsForAlphaCoverage");

BL4.GetCustombFlipGreenChannel = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustombFlipGreenChannel: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustombFlipGreenChannel", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustombFlipGreenChannel");

BL4.GetCustombPreserveBorder = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustombPreserveBorder: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustombPreserveBorder", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustombPreserveBorder");

BL4.GetCustombUseLegacyGamma = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustombUseLegacyGamma: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustombUseLegacyGamma", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustombUseLegacyGamma");

BL4.GetCustomChromaKeyColor = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomChromaKeyColor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomChromaKeyColor", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomChromaKeyColor");

BL4.GetCustomChromaKeyThreshold = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomChromaKeyThreshold: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeFloat(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomChromaKeyThreshold", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomChromaKeyThreshold");

BL4.GetCustomColorSpace = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomColorSpace: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomColorSpace", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomColorSpace");

BL4.GetCustomCompositePower = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomCompositePower: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeFloat(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomCompositePower", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomCompositePower");

BL4.GetCustomCompositeTextureMode = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomCompositeTextureMode: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomCompositeTextureMode", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomCompositeTextureMode");

BL4.GetCustomCompressionNoAlpha = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomCompressionNoAlpha: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomCompressionNoAlpha", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomCompressionNoAlpha");

BL4.GetCustomCompressionQuality = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomCompressionQuality: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomCompressionQuality", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomCompressionQuality");

BL4.GetCustomCompressionSettings = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomCompressionSettings: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomCompressionSettings", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomCompressionSettings");

BL4.GetCustomDeferCompression = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomDeferCompression: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomDeferCompression", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomDeferCompression");

BL4.GetCustomDownscale = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomDownscale: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeFloat(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomDownscale", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomDownscale");

BL4.GetCustomDownscaleOptions = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomDownscaleOptions: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomDownscaleOptions", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomDownscaleOptions");

BL4.GetCustomFilter = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomFilter: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomFilter", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomFilter");

BL4.GetCustomLODBias = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomLODBias: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeInteger(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomLODBias", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomLODBias");

BL4.GetCustomLODGroup = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomLODGroup: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomLODGroup", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomLODGroup");

BL4.GetCustomLossyCompressionAmount = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomLossyCompressionAmount: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomLossyCompressionAmount", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomLossyCompressionAmount");

BL4.GetCustomMaxTextureSize = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomMaxTextureSize: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeInteger(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomMaxTextureSize", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomMaxTextureSize");

BL4.GetCustomMipGenSettings = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomMipGenSettings: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomMipGenSettings", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomMipGenSettings");

BL4.GetCustomMipLoadOptions = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomMipLoadOptions: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomMipLoadOptions", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomMipLoadOptions");

BL4.GetCustomPaddingColor = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomPaddingColor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomPaddingColor", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomPaddingColor");

BL4.GetCustomPowerOfTwoMode = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomPowerOfTwoMode: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomPowerOfTwoMode", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomPowerOfTwoMode");

BL4.GetCustomPreferCompressedSourceData = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomPreferCompressedSourceData: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomPreferCompressedSourceData", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomPreferCompressedSourceData");

BL4.GetCustomSRGB = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomSRGB: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomSRGB", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomSRGB");

BL4.GetCustomTranslatedTextureNodeUid = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomTranslatedTextureNodeUid: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomTranslatedTextureNodeUid", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomTranslatedTextureNodeUid");

BL4.GetCustomVirtualTextureStreaming = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetCustomVirtualTextureStreaming: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "GetCustomVirtualTextureStreaming", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetCustomVirtualTextureStreaming");

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

BL4.InitializeTextureNode = function(OwnerAddress, UniqueID, DisplayLabel, InAssetName)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.InitializeTextureNode: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: UniqueID at +0x0, DisplayLabel at +0x10, InAssetName at +0x20
 writeQword(_params + 0x0, UniqueID)
 writeQword(_params + 0x10, DisplayLabel)
 writeQword(_params + 0x20, InAssetName)
 UE.CallProcessEventEx(OwnerAddress, "InitializeTextureNode", _params);
 deAlloc(_params);
end
FNR("BL4.InitializeTextureNode");

BL4.SetCustomAdjustBrightness = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomAdjustBrightness: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x4
 writeFloat(_params + 0x0, AttributeValue)
 writeByte(_params + 0x4, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomAdjustBrightness", _params);
 local RET=readByte(_params + 0x5);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomAdjustBrightness");

BL4.SetCustomAdjustBrightnessCurve = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomAdjustBrightnessCurve: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x4
 writeFloat(_params + 0x0, AttributeValue)
 writeByte(_params + 0x4, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomAdjustBrightnessCurve", _params);
 local RET=readByte(_params + 0x5);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomAdjustBrightnessCurve");

BL4.SetCustomAdjustHue = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomAdjustHue: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x4
 writeFloat(_params + 0x0, AttributeValue)
 writeByte(_params + 0x4, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomAdjustHue", _params);
 local RET=readByte(_params + 0x5);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomAdjustHue");

BL4.SetCustomAdjustMaxAlpha = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomAdjustMaxAlpha: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x4
 writeFloat(_params + 0x0, AttributeValue)
 writeByte(_params + 0x4, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomAdjustMaxAlpha", _params);
 local RET=readByte(_params + 0x5);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomAdjustMaxAlpha");

BL4.SetCustomAdjustMinAlpha = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomAdjustMinAlpha: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x4
 writeFloat(_params + 0x0, AttributeValue)
 writeByte(_params + 0x4, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomAdjustMinAlpha", _params);
 local RET=readByte(_params + 0x5);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomAdjustMinAlpha");

BL4.SetCustomAdjustRGBCurve = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomAdjustRGBCurve: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x4
 writeFloat(_params + 0x0, AttributeValue)
 writeByte(_params + 0x4, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomAdjustRGBCurve", _params);
 local RET=readByte(_params + 0x5);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomAdjustRGBCurve");

BL4.SetCustomAdjustSaturation = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomAdjustSaturation: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x4
 writeFloat(_params + 0x0, AttributeValue)
 writeByte(_params + 0x4, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomAdjustSaturation", _params);
 local RET=readByte(_params + 0x5);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomAdjustSaturation");

BL4.SetCustomAdjustVibrance = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomAdjustVibrance: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x4
 writeFloat(_params + 0x0, AttributeValue)
 writeByte(_params + 0x4, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomAdjustVibrance", _params);
 local RET=readByte(_params + 0x5);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomAdjustVibrance");

BL4.SetCustomAllowNonPowerOfTwo = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomAllowNonPowerOfTwo: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomAllowNonPowerOfTwo", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomAllowNonPowerOfTwo");

BL4.SetCustomAlphaCoverageThresholds = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomAlphaCoverageThresholds: Failed To Allocate The Params");return;end;
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x20
 writeQword(_params + 0x0, AttributeValue)
 writeByte(_params + 0x20, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomAlphaCoverageThresholds", _params);
 local RET=readByte(_params + 0x21);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomAlphaCoverageThresholds");

BL4.SetCustombChromaKeyTexture = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustombChromaKeyTexture: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x1
 writeByte(_params + 0x0, AttributeValue)
 writeByte(_params + 0x1, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustombChromaKeyTexture", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustombChromaKeyTexture");

BL4.SetCustombDoScaleMipsForAlphaCoverage = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustombDoScaleMipsForAlphaCoverage: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x1
 writeByte(_params + 0x0, AttributeValue)
 writeByte(_params + 0x1, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustombDoScaleMipsForAlphaCoverage", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustombDoScaleMipsForAlphaCoverage");

BL4.SetCustombFlipGreenChannel = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustombFlipGreenChannel: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x1
 writeByte(_params + 0x0, AttributeValue)
 writeByte(_params + 0x1, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustombFlipGreenChannel", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustombFlipGreenChannel");

BL4.SetCustombPreserveBorder = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustombPreserveBorder: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x1
 writeByte(_params + 0x0, AttributeValue)
 writeByte(_params + 0x1, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustombPreserveBorder", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustombPreserveBorder");

BL4.SetCustombUseLegacyGamma = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustombUseLegacyGamma: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x1
 writeByte(_params + 0x0, AttributeValue)
 writeByte(_params + 0x1, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustombUseLegacyGamma", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustombUseLegacyGamma");

BL4.SetCustomChromaKeyColor = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomChromaKeyColor: Failed To Allocate The Params");return;end;
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x4
 writeQword(_params + 0x0, AttributeValue)
 writeByte(_params + 0x4, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomChromaKeyColor", _params);
 local RET=readByte(_params + 0x5);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomChromaKeyColor");

BL4.SetCustomChromaKeyThreshold = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomChromaKeyThreshold: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x4
 writeFloat(_params + 0x0, AttributeValue)
 writeByte(_params + 0x4, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomChromaKeyThreshold", _params);
 local RET=readByte(_params + 0x5);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomChromaKeyThreshold");

BL4.SetCustomColorSpace = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomColorSpace: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x1
 writeByte(_params + 0x0, AttributeValue)
 writeByte(_params + 0x1, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomColorSpace", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomColorSpace");

BL4.SetCustomCompositePower = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomCompositePower: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x4
 writeFloat(_params + 0x0, AttributeValue)
 writeByte(_params + 0x4, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomCompositePower", _params);
 local RET=readByte(_params + 0x5);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomCompositePower");

BL4.SetCustomCompositeTextureMode = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomCompositeTextureMode: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x1
 writeByte(_params + 0x0, AttributeValue)
 writeByte(_params + 0x1, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomCompositeTextureMode", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomCompositeTextureMode");

BL4.SetCustomCompressionNoAlpha = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomCompressionNoAlpha: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x1
 writeByte(_params + 0x0, AttributeValue)
 writeByte(_params + 0x1, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomCompressionNoAlpha", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomCompressionNoAlpha");

BL4.SetCustomCompressionQuality = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomCompressionQuality: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x1
 writeByte(_params + 0x0, AttributeValue)
 writeByte(_params + 0x1, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomCompressionQuality", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomCompressionQuality");

BL4.SetCustomCompressionSettings = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomCompressionSettings: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x1
 writeByte(_params + 0x0, AttributeValue)
 writeByte(_params + 0x1, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomCompressionSettings", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomCompressionSettings");

BL4.SetCustomDeferCompression = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomDeferCompression: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x1
 writeByte(_params + 0x0, AttributeValue)
 writeByte(_params + 0x1, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomDeferCompression", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomDeferCompression");

BL4.SetCustomDownscale = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomDownscale: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x4
 writeFloat(_params + 0x0, AttributeValue)
 writeByte(_params + 0x4, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomDownscale", _params);
 local RET=readByte(_params + 0x5);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomDownscale");

BL4.SetCustomDownscaleOptions = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomDownscaleOptions: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x1
 writeByte(_params + 0x0, AttributeValue)
 writeByte(_params + 0x1, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomDownscaleOptions", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomDownscaleOptions");

BL4.SetCustomFilter = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomFilter: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x1
 writeByte(_params + 0x0, AttributeValue)
 writeByte(_params + 0x1, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomFilter", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomFilter");

BL4.SetCustomLODBias = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomLODBias: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x4
 writeInteger(_params + 0x0, AttributeValue)
 writeByte(_params + 0x4, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomLODBias", _params);
 local RET=readByte(_params + 0x5);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomLODBias");

BL4.SetCustomLODGroup = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomLODGroup: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x1
 writeByte(_params + 0x0, AttributeValue)
 writeByte(_params + 0x1, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomLODGroup", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomLODGroup");

BL4.SetCustomLossyCompressionAmount = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomLossyCompressionAmount: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x1
 writeByte(_params + 0x0, AttributeValue)
 writeByte(_params + 0x1, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomLossyCompressionAmount", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomLossyCompressionAmount");

BL4.SetCustomMaxTextureSize = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomMaxTextureSize: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x4
 writeInteger(_params + 0x0, AttributeValue)
 writeByte(_params + 0x4, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomMaxTextureSize", _params);
 local RET=readByte(_params + 0x5);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomMaxTextureSize");

BL4.SetCustomMipGenSettings = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomMipGenSettings: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x1
 writeByte(_params + 0x0, AttributeValue)
 writeByte(_params + 0x1, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomMipGenSettings", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomMipGenSettings");

BL4.SetCustomMipLoadOptions = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomMipLoadOptions: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x1
 writeByte(_params + 0x0, AttributeValue)
 writeByte(_params + 0x1, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomMipLoadOptions", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomMipLoadOptions");

BL4.SetCustomPaddingColor = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomPaddingColor: Failed To Allocate The Params");return;end;
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x4
 writeQword(_params + 0x0, AttributeValue)
 writeByte(_params + 0x4, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomPaddingColor", _params);
 local RET=readByte(_params + 0x5);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomPaddingColor");

BL4.SetCustomPowerOfTwoMode = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomPowerOfTwoMode: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or 0
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x1
 writeByte(_params + 0x0, AttributeValue)
 writeByte(_params + 0x1, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomPowerOfTwoMode", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomPowerOfTwoMode");

BL4.SetCustomPreferCompressedSourceData = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomPreferCompressedSourceData: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeByte(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomPreferCompressedSourceData", _params);
 local RET=readByte(_params + 0x1);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomPreferCompressedSourceData");

BL4.SetCustomSRGB = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomSRGB: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x1
 writeByte(_params + 0x0, AttributeValue)
 writeByte(_params + 0x1, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomSRGB", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomSRGB");

BL4.SetCustomTranslatedTextureNodeUid = function(OwnerAddress, AttributeValue)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomTranslatedTextureNodeUid: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0
 writeQword(_params + 0x0, AttributeValue)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomTranslatedTextureNodeUid", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomTranslatedTextureNodeUid");

BL4.SetCustomVirtualTextureStreaming = function(OwnerAddress, AttributeValue, bAddApplyDelegate)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCustomVirtualTextureStreaming: Failed To Allocate The Params");return;end;
 AttributeValue = AttributeValue or false
 bAddApplyDelegate = bAddApplyDelegate or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: AttributeValue at +0x0, bAddApplyDelegate at +0x1
 writeByte(_params + 0x0, AttributeValue)
 writeByte(_params + 0x1, bAddApplyDelegate)
 UE.CallProcessEventEx(OwnerAddress, "SetCustomVirtualTextureStreaming", _params);
 local RET=readByte(_params + 0x2);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetCustomVirtualTextureStreaming");

