BL4.BeginDrawCanvasToRenderTarget = function(WorldContextObject_Object, TextureRenderTarget_TextureRenderTarget2D, Canvas, Size, Context)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BeginDrawCanvasToRenderTarget: Failed To Allocate The Params");return;end;
 Size = Size or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, TextureRenderTarget at +0x8, Canvas at +0x10, Size at +0x18, Context at +0x28
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, TextureRenderTarget_TextureRenderTarget2D)
 writeQword(_params + 0x10, Canvas)
 writeDouble(_params + 0x18, (Size and Size.X) or 0)
 writeDouble(_params + 0x20, (Size and Size.Y) or 0)
 writeQword(_params + 0x28, Context)
 UE.CallProcessEventEx(WorldContextObject_Object, "BeginDrawCanvasToRenderTarget", _params);
 deAlloc(_params);
end
FNR("BL4.BeginDrawCanvasToRenderTarget");

BL4.BreakSkinWeightInfo = function(OwnerAddress, InWeight, Bone0, Weight0, Bone1, Weight1, Bone2, Weight2, Bone3, Weight3)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakSkinWeightInfo: Failed To Allocate The Params");return;end;
 Bone0 = Bone0 or 0
 Weight0 = Weight0 or 0
 Bone1 = Bone1 or 0
 Weight1 = Weight1 or 0
 Bone2 = Bone2 or 0
 Weight2 = Weight2 or 0
 Bone3 = Bone3 or 0
 Weight3 = Weight3 or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InWeight at +0x0, Bone0 at +0x3C, Weight0 at +0x40, Bone1 at +0x44, Weight1 at +0x48, Bone2 at +0x4C, Weight2 at +0x50, Bone3 at +0x54, Weight3 at +0x58
 writeQword(_params + 0x0, InWeight)
 writeInteger(_params + 0x3C, Bone0)
 writeByte(_params + 0x40, Weight0)
 writeInteger(_params + 0x44, Bone1)
 writeByte(_params + 0x48, Weight1)
 writeInteger(_params + 0x4C, Bone2)
 writeByte(_params + 0x50, Weight2)
 writeInteger(_params + 0x54, Bone3)
 writeByte(_params + 0x58, Weight3)
 UE.CallProcessEventEx(OwnerAddress, "BreakSkinWeightInfo", _params);
 deAlloc(_params);
end
FNR("BL4.BreakSkinWeightInfo");

BL4.CalculateProjectionMatrix = function(OwnerAddress, MinimalViewInfo)
 local _paramsSize = 0xAB0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CalculateProjectionMatrix: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MinimalViewInfo at +0x0
 writeQword(_params + 0x0, MinimalViewInfo)
 UE.CallProcessEventEx(OwnerAddress, "CalculateProjectionMatrix", _params);
 local RET=readQword(_params + 0xA30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CalculateProjectionMatrix");

BL4.ClearRenderTarget2D = function(WorldContextObject_Object, TextureRenderTarget_TextureRenderTarget2D, ClearColor)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClearRenderTarget2D: Failed To Allocate The Params");return;end;
 ClearColor = ClearColor or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, TextureRenderTarget at +0x8, ClearColor at +0x10
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, TextureRenderTarget_TextureRenderTarget2D)
 writeFloat(_params + 0x10, (ClearColor and ClearColor.R) or 0)
 writeFloat(_params + 0x14, (ClearColor and ClearColor.G) or 0)
 writeFloat(_params + 0x18, (ClearColor and ClearColor.B) or 0)
 writeFloat(_params + 0x1C, (ClearColor and ClearColor.A) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "ClearRenderTarget2D", _params);
 deAlloc(_params);
end
FNR("BL4.ClearRenderTarget2D");

BL4.ConvertRenderTargetToTexture2DArrayEditorOnly = function(WorldContextObject_Object, RenderTarget_TextureRenderTarget2DArray, Texture_Texture2DArray)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConvertRenderTargetToTexture2DArrayEditorOnly: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, RenderTarget at +0x8, Texture at +0x10
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, RenderTarget_TextureRenderTarget2DArray)
 writeQword(_params + 0x10, Texture_Texture2DArray)
 UE.CallProcessEventEx(WorldContextObject_Object, "ConvertRenderTargetToTexture2DArrayEditorOnly", _params);
 deAlloc(_params);
end
FNR("BL4.ConvertRenderTargetToTexture2DArrayEditorOnly");

BL4.ConvertRenderTargetToTexture2DEditorOnly = function(WorldContextObject_Object, RenderTarget_TextureRenderTarget2D, Texture_Texture2D)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConvertRenderTargetToTexture2DEditorOnly: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, RenderTarget at +0x8, Texture at +0x10
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, RenderTarget_TextureRenderTarget2D)
 writeQword(_params + 0x10, Texture_Texture2D)
 UE.CallProcessEventEx(WorldContextObject_Object, "ConvertRenderTargetToTexture2DEditorOnly", _params);
 deAlloc(_params);
end
FNR("BL4.ConvertRenderTargetToTexture2DEditorOnly");

BL4.ConvertRenderTargetToTextureCubeEditorOnly = function(WorldContextObject_Object, RenderTarget_TextureRenderTargetCube, Texture_TextureCube)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConvertRenderTargetToTextureCubeEditorOnly: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, RenderTarget at +0x8, Texture at +0x10
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, RenderTarget_TextureRenderTargetCube)
 writeQword(_params + 0x10, Texture_TextureCube)
 UE.CallProcessEventEx(WorldContextObject_Object, "ConvertRenderTargetToTextureCubeEditorOnly", _params);
 deAlloc(_params);
end
FNR("BL4.ConvertRenderTargetToTextureCubeEditorOnly");

BL4.ConvertRenderTargetToTextureVolumeEditorOnly = function(WorldContextObject_Object, RenderTarget_TextureRenderTargetVolume, Texture_VolumeTexture)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ConvertRenderTargetToTextureVolumeEditorOnly: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, RenderTarget at +0x8, Texture at +0x10
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, RenderTarget_TextureRenderTargetVolume)
 writeQword(_params + 0x10, Texture_VolumeTexture)
 UE.CallProcessEventEx(WorldContextObject_Object, "ConvertRenderTargetToTextureVolumeEditorOnly", _params);
 deAlloc(_params);
end
FNR("BL4.ConvertRenderTargetToTextureVolumeEditorOnly");

BL4.CreateRenderTarget2D = function(WorldContextObject_Object, Width, Height, Format, ClearColor, bAutoGenerateMipMaps, bSupportUAVs)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CreateRenderTarget2D: Failed To Allocate The Params");return;end;
 Width = Width or 0
 Height = Height or 0
 Format = Format or 0
 ClearColor = ClearColor or {R=0,G=0,B=0,A=0}
 bAutoGenerateMipMaps = bAutoGenerateMipMaps or false
 bSupportUAVs = bSupportUAVs or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Width at +0x8, Height at +0xC, Format at +0x10, ClearColor at +0x14, bAutoGenerateMipMaps at +0x24, bSupportUAVs at +0x25
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeInteger(_params + 0x8, Width)
 writeInteger(_params + 0xC, Height)
 writeByte(_params + 0x10, Format)
 writeFloat(_params + 0x14, (ClearColor and ClearColor.R) or 0)
 writeFloat(_params + 0x18, (ClearColor and ClearColor.G) or 0)
 writeFloat(_params + 0x1C, (ClearColor and ClearColor.B) or 0)
 writeFloat(_params + 0x20, (ClearColor and ClearColor.A) or 0)
 writeByte(_params + 0x24, bAutoGenerateMipMaps)
 writeByte(_params + 0x25, bSupportUAVs)
 UE.CallProcessEventEx(WorldContextObject_Object, "CreateRenderTarget2D", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CreateRenderTarget2D");

BL4.CreateRenderTarget2DArray = function(WorldContextObject_Object, Width, Height, Slices, Format, ClearColor, bAutoGenerateMipMaps, bSupportUAVs)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CreateRenderTarget2DArray: Failed To Allocate The Params");return;end;
 Width = Width or 0
 Height = Height or 0
 Slices = Slices or 0
 Format = Format or 0
 ClearColor = ClearColor or {R=0,G=0,B=0,A=0}
 bAutoGenerateMipMaps = bAutoGenerateMipMaps or false
 bSupportUAVs = bSupportUAVs or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Width at +0x8, Height at +0xC, Slices at +0x10, Format at +0x14, ClearColor at +0x18, bAutoGenerateMipMaps at +0x28, bSupportUAVs at +0x29
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeInteger(_params + 0x8, Width)
 writeInteger(_params + 0xC, Height)
 writeInteger(_params + 0x10, Slices)
 writeByte(_params + 0x14, Format)
 writeFloat(_params + 0x18, (ClearColor and ClearColor.R) or 0)
 writeFloat(_params + 0x1C, (ClearColor and ClearColor.G) or 0)
 writeFloat(_params + 0x20, (ClearColor and ClearColor.B) or 0)
 writeFloat(_params + 0x24, (ClearColor and ClearColor.A) or 0)
 writeByte(_params + 0x28, bAutoGenerateMipMaps)
 writeByte(_params + 0x29, bSupportUAVs)
 UE.CallProcessEventEx(WorldContextObject_Object, "CreateRenderTarget2DArray", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CreateRenderTarget2DArray");

BL4.CreateRenderTargetVolume = function(WorldContextObject_Object, Width, Height, Depth, Format, ClearColor, bAutoGenerateMipMaps, bSupportUAVs)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CreateRenderTargetVolume: Failed To Allocate The Params");return;end;
 Width = Width or 0
 Height = Height or 0
 Depth = Depth or 0
 Format = Format or 0
 ClearColor = ClearColor or {R=0,G=0,B=0,A=0}
 bAutoGenerateMipMaps = bAutoGenerateMipMaps or false
 bSupportUAVs = bSupportUAVs or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Width at +0x8, Height at +0xC, Depth at +0x10, Format at +0x14, ClearColor at +0x18, bAutoGenerateMipMaps at +0x28, bSupportUAVs at +0x29
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeInteger(_params + 0x8, Width)
 writeInteger(_params + 0xC, Height)
 writeInteger(_params + 0x10, Depth)
 writeByte(_params + 0x14, Format)
 writeFloat(_params + 0x18, (ClearColor and ClearColor.R) or 0)
 writeFloat(_params + 0x1C, (ClearColor and ClearColor.G) or 0)
 writeFloat(_params + 0x20, (ClearColor and ClearColor.B) or 0)
 writeFloat(_params + 0x24, (ClearColor and ClearColor.A) or 0)
 writeByte(_params + 0x28, bAutoGenerateMipMaps)
 writeByte(_params + 0x29, bSupportUAVs)
 UE.CallProcessEventEx(WorldContextObject_Object, "CreateRenderTargetVolume", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CreateRenderTargetVolume");

BL4.DrawMaterialToRenderTarget = function(WorldContextObject_Object, TextureRenderTarget_TextureRenderTarget2D, Material_MaterialInterface)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawMaterialToRenderTarget: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, TextureRenderTarget at +0x8, Material at +0x10
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, TextureRenderTarget_TextureRenderTarget2D)
 writeQword(_params + 0x10, Material_MaterialInterface)
 UE.CallProcessEventEx(WorldContextObject_Object, "DrawMaterialToRenderTarget", _params);
 deAlloc(_params);
end
FNR("BL4.DrawMaterialToRenderTarget");

BL4.EnablePathTracing = function(OwnerAddress, bEnablePathTracer)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EnablePathTracing: Failed To Allocate The Params");return;end;
 bEnablePathTracer = bEnablePathTracer or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnablePathTracer at +0x0
 writeByte(_params + 0x0, bEnablePathTracer)
 UE.CallProcessEventEx(OwnerAddress, "EnablePathTracing", _params);
 deAlloc(_params);
end
FNR("BL4.EnablePathTracing");

BL4.EndDrawCanvasToRenderTarget = function(WorldContextObject_Object, Context)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EndDrawCanvasToRenderTarget: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Context at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Context)
 UE.CallProcessEventEx(WorldContextObject_Object, "EndDrawCanvasToRenderTarget", _params);
 deAlloc(_params);
end
FNR("BL4.EndDrawCanvasToRenderTarget");

BL4.ExportRenderTarget = function(WorldContextObject_Object, TextureRenderTarget_TextureRenderTarget2D, FilePath, Filename)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ExportRenderTarget: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, TextureRenderTarget at +0x8, FilePath at +0x10, Filename at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, TextureRenderTarget_TextureRenderTarget2D)
 writeQword(_params + 0x10, FilePath)
 writeQword(_params + 0x20, Filename)
 UE.CallProcessEventEx(WorldContextObject_Object, "ExportRenderTarget", _params);
 deAlloc(_params);
end
FNR("BL4.ExportRenderTarget");

BL4.ExportTexture2D = function(WorldContextObject_Object, Texture_Texture2D, FilePath, Filename)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ExportTexture2D: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Texture at +0x8, FilePath at +0x10, Filename at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Texture_Texture2D)
 writeQword(_params + 0x10, FilePath)
 writeQword(_params + 0x20, Filename)
 UE.CallProcessEventEx(WorldContextObject_Object, "ExportTexture2D", _params);
 deAlloc(_params);
end
FNR("BL4.ExportTexture2D");

BL4.ImportBufferAsTexture2D = function(WorldContextObject_Object, Buffer)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ImportBufferAsTexture2D: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Buffer at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Buffer)
 UE.CallProcessEventEx(WorldContextObject_Object, "ImportBufferAsTexture2D", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ImportBufferAsTexture2D");

BL4.ImportFileAsTexture2D = function(WorldContextObject_Object, Filename)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ImportFileAsTexture2D: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, Filename at +0x8
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, Filename)
 UE.CallProcessEventEx(WorldContextObject_Object, "ImportFileAsTexture2D", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ImportFileAsTexture2D");

BL4.MakeSkinWeightInfo = function(OwnerAddress, Bone0, Weight0, Bone1, Weight1, Bone2, Weight2, Bone3, Weight3)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeSkinWeightInfo: Failed To Allocate The Params");return;end;
 Bone0 = Bone0 or 0
 Weight0 = Weight0 or 0
 Bone1 = Bone1 or 0
 Weight1 = Weight1 or 0
 Bone2 = Bone2 or 0
 Weight2 = Weight2 or 0
 Bone3 = Bone3 or 0
 Weight3 = Weight3 or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Bone0 at +0x0, Weight0 at +0x4, Bone1 at +0x8, Weight1 at +0xC, Bone2 at +0x10, Weight2 at +0x14, Bone3 at +0x18, Weight3 at +0x1C
 writeInteger(_params + 0x0, Bone0)
 writeByte(_params + 0x4, Weight0)
 writeInteger(_params + 0x8, Bone1)
 writeByte(_params + 0xC, Weight1)
 writeInteger(_params + 0x10, Bone2)
 writeByte(_params + 0x14, Weight2)
 writeInteger(_params + 0x18, Bone3)
 writeByte(_params + 0x1C, Weight3)
 UE.CallProcessEventEx(OwnerAddress, "MakeSkinWeightInfo", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeSkinWeightInfo");

BL4.ReadRenderTarget = function(WorldContextObject_Object, TextureRenderTarget_TextureRenderTarget2D, OutSamples, bNormalize)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReadRenderTarget: Failed To Allocate The Params");return;end;
 bNormalize = bNormalize or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, TextureRenderTarget at +0x8, OutSamples at +0x10, bNormalize at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, TextureRenderTarget_TextureRenderTarget2D)
 writeQword(_params + 0x10, OutSamples)
 writeByte(_params + 0x20, bNormalize)
 UE.CallProcessEventEx(WorldContextObject_Object, "ReadRenderTarget", _params);
 local RET=readByte(_params + 0x21);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ReadRenderTarget");

BL4.ReadRenderTargetPixel = function(WorldContextObject_Object, TextureRenderTarget_TextureRenderTarget2D, X, Y)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReadRenderTargetPixel: Failed To Allocate The Params");return;end;
 X = X or 0
 Y = Y or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, TextureRenderTarget at +0x8, X at +0x10, Y at +0x14
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, TextureRenderTarget_TextureRenderTarget2D)
 writeInteger(_params + 0x10, X)
 writeInteger(_params + 0x14, Y)
 UE.CallProcessEventEx(WorldContextObject_Object, "ReadRenderTargetPixel", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ReadRenderTargetPixel");

BL4.ReadRenderTargetRaw = function(WorldContextObject_Object, TextureRenderTarget_TextureRenderTarget2D, OutLinearSamples, bNormalize)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReadRenderTargetRaw: Failed To Allocate The Params");return;end;
 bNormalize = bNormalize or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, TextureRenderTarget at +0x8, OutLinearSamples at +0x10, bNormalize at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, TextureRenderTarget_TextureRenderTarget2D)
 writeQword(_params + 0x10, OutLinearSamples)
 writeByte(_params + 0x20, bNormalize)
 UE.CallProcessEventEx(WorldContextObject_Object, "ReadRenderTargetRaw", _params);
 local RET=readByte(_params + 0x21);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ReadRenderTargetRaw");

BL4.ReadRenderTargetRawPixel = function(WorldContextObject_Object, TextureRenderTarget_TextureRenderTarget2D, X, Y, bNormalize)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReadRenderTargetRawPixel: Failed To Allocate The Params");return;end;
 X = X or 0
 Y = Y or 0
 bNormalize = bNormalize or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, TextureRenderTarget at +0x8, X at +0x10, Y at +0x14, bNormalize at +0x18
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, TextureRenderTarget_TextureRenderTarget2D)
 writeInteger(_params + 0x10, X)
 writeInteger(_params + 0x14, Y)
 writeByte(_params + 0x18, bNormalize)
 UE.CallProcessEventEx(WorldContextObject_Object, "ReadRenderTargetRawPixel", _params);
 local RET={R=readFloat(_params+0x1C),G=readFloat(_params+0x20),B=readFloat(_params+0x24),A=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.ReadRenderTargetRawPixel");

BL4.ReadRenderTargetRawPixelArea = function(WorldContextObject_Object, TextureRenderTarget_TextureRenderTarget2D, MinX, MinY, MaxX, MaxY, bNormalize)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReadRenderTargetRawPixelArea: Failed To Allocate The Params");return;end;
 MinX = MinX or 0
 MinY = MinY or 0
 MaxX = MaxX or 0
 MaxY = MaxY or 0
 bNormalize = bNormalize or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, TextureRenderTarget at +0x8, MinX at +0x10, MinY at +0x14, MaxX at +0x18, MaxY at +0x1C, bNormalize at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, TextureRenderTarget_TextureRenderTarget2D)
 writeInteger(_params + 0x10, MinX)
 writeInteger(_params + 0x14, MinY)
 writeInteger(_params + 0x18, MaxX)
 writeInteger(_params + 0x1C, MaxY)
 writeByte(_params + 0x20, bNormalize)
 UE.CallProcessEventEx(WorldContextObject_Object, "ReadRenderTargetRawPixelArea", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ReadRenderTargetRawPixelArea");

BL4.ReadRenderTargetRawUV = function(WorldContextObject_Object, TextureRenderTarget_TextureRenderTarget2D, U, V, bNormalize)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReadRenderTargetRawUV: Failed To Allocate The Params");return;end;
 U = U or 0
 V = V or 0
 bNormalize = bNormalize or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, TextureRenderTarget at +0x8, U at +0x10, V at +0x14, bNormalize at +0x18
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, TextureRenderTarget_TextureRenderTarget2D)
 writeFloat(_params + 0x10, U)
 writeFloat(_params + 0x14, V)
 writeByte(_params + 0x18, bNormalize)
 UE.CallProcessEventEx(WorldContextObject_Object, "ReadRenderTargetRawUV", _params);
 local RET={R=readFloat(_params+0x1C),G=readFloat(_params+0x20),B=readFloat(_params+0x24),A=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.ReadRenderTargetRawUV");

BL4.ReadRenderTargetRawUVArea = function(WorldContextObject_Object, TextureRenderTarget_TextureRenderTarget2D, Area, bNormalize)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReadRenderTargetRawUVArea: Failed To Allocate The Params");return;end;
 bNormalize = bNormalize or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, TextureRenderTarget at +0x8, Area at +0x10, bNormalize at +0x38
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, TextureRenderTarget_TextureRenderTarget2D)
 writeQword(_params + 0x10, Area)
 writeByte(_params + 0x38, bNormalize)
 UE.CallProcessEventEx(WorldContextObject_Object, "ReadRenderTargetRawUVArea", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ReadRenderTargetRawUVArea");

BL4.ReadRenderTargetUV = function(WorldContextObject_Object, TextureRenderTarget_TextureRenderTarget2D, U, V)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReadRenderTargetUV: Failed To Allocate The Params");return;end;
 U = U or 0
 V = V or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, TextureRenderTarget at +0x8, U at +0x10, V at +0x14
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, TextureRenderTarget_TextureRenderTarget2D)
 writeFloat(_params + 0x10, U)
 writeFloat(_params + 0x14, V)
 UE.CallProcessEventEx(WorldContextObject_Object, "ReadRenderTargetUV", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ReadRenderTargetUV");

BL4.ReleaseRenderTarget2D = function(TextureRenderTarget_TextureRenderTarget2D)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReleaseRenderTarget2D: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: TextureRenderTarget at +0x0
 writeQword(_params + 0x0, TextureRenderTarget_TextureRenderTarget2D)
 UE.CallProcessEventEx(TextureRenderTarget_TextureRenderTarget2D, "ReleaseRenderTarget2D", _params);
 deAlloc(_params);
end
FNR("BL4.ReleaseRenderTarget2D");

BL4.RenderTargetCreateStaticTexture2DArrayEditorOnly = function(RenderTarget_TextureRenderTarget2DArray, Name, CompressionSettings, MipSettings)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RenderTargetCreateStaticTexture2DArrayEditorOnly: Failed To Allocate The Params");return;end;
 CompressionSettings = CompressionSettings or 0
 MipSettings = MipSettings or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: RenderTarget at +0x0, Name at +0x8, CompressionSettings at +0x18, MipSettings at +0x19
 writeQword(_params + 0x0, RenderTarget_TextureRenderTarget2DArray)
 writeQword(_params + 0x8, Name)
 writeByte(_params + 0x18, CompressionSettings)
 writeByte(_params + 0x19, MipSettings)
 UE.CallProcessEventEx(RenderTarget_TextureRenderTarget2DArray, "RenderTargetCreateStaticTexture2DArrayEditorOnly", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RenderTargetCreateStaticTexture2DArrayEditorOnly");

BL4.RenderTargetCreateStaticTexture2DEditorOnly = function(RenderTarget_TextureRenderTarget2D, Name, CompressionSettings, MipSettings)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RenderTargetCreateStaticTexture2DEditorOnly: Failed To Allocate The Params");return;end;
 CompressionSettings = CompressionSettings or 0
 MipSettings = MipSettings or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: RenderTarget at +0x0, Name at +0x8, CompressionSettings at +0x18, MipSettings at +0x19
 writeQword(_params + 0x0, RenderTarget_TextureRenderTarget2D)
 writeQword(_params + 0x8, Name)
 writeByte(_params + 0x18, CompressionSettings)
 writeByte(_params + 0x19, MipSettings)
 UE.CallProcessEventEx(RenderTarget_TextureRenderTarget2D, "RenderTargetCreateStaticTexture2DEditorOnly", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RenderTargetCreateStaticTexture2DEditorOnly");

BL4.RenderTargetCreateStaticTextureCubeEditorOnly = function(RenderTarget_TextureRenderTargetCube, Name, CompressionSettings, MipSettings)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RenderTargetCreateStaticTextureCubeEditorOnly: Failed To Allocate The Params");return;end;
 CompressionSettings = CompressionSettings or 0
 MipSettings = MipSettings or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: RenderTarget at +0x0, Name at +0x8, CompressionSettings at +0x18, MipSettings at +0x19
 writeQword(_params + 0x0, RenderTarget_TextureRenderTargetCube)
 writeQword(_params + 0x8, Name)
 writeByte(_params + 0x18, CompressionSettings)
 writeByte(_params + 0x19, MipSettings)
 UE.CallProcessEventEx(RenderTarget_TextureRenderTargetCube, "RenderTargetCreateStaticTextureCubeEditorOnly", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RenderTargetCreateStaticTextureCubeEditorOnly");

BL4.RenderTargetCreateStaticVolumeTextureEditorOnly = function(RenderTarget_TextureRenderTargetVolume, Name, CompressionSettings, MipSettings)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RenderTargetCreateStaticVolumeTextureEditorOnly: Failed To Allocate The Params");return;end;
 CompressionSettings = CompressionSettings or 0
 MipSettings = MipSettings or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: RenderTarget at +0x0, Name at +0x8, CompressionSettings at +0x18, MipSettings at +0x19
 writeQword(_params + 0x0, RenderTarget_TextureRenderTargetVolume)
 writeQword(_params + 0x8, Name)
 writeByte(_params + 0x18, CompressionSettings)
 writeByte(_params + 0x19, MipSettings)
 UE.CallProcessEventEx(RenderTarget_TextureRenderTargetVolume, "RenderTargetCreateStaticVolumeTextureEditorOnly", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RenderTargetCreateStaticVolumeTextureEditorOnly");

BL4.ResizeRenderTarget2D = function(TextureRenderTarget_TextureRenderTarget2D, Width, Height)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ResizeRenderTarget2D: Failed To Allocate The Params");return;end;
 Width = Width or 0
 Height = Height or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TextureRenderTarget at +0x0, Width at +0x8, Height at +0xC
 writeQword(_params + 0x0, TextureRenderTarget_TextureRenderTarget2D)
 writeInteger(_params + 0x8, Width)
 writeInteger(_params + 0xC, Height)
 UE.CallProcessEventEx(TextureRenderTarget_TextureRenderTarget2D, "ResizeRenderTarget2D", _params);
 deAlloc(_params);
end
FNR("BL4.ResizeRenderTarget2D");

BL4.SetCastInsetShadowForAllAttachments = function(PrimitiveComponent, bCastInsetShadow, bLightAttachmentsAsGroup)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetCastInsetShadowForAllAttachments: Failed To Allocate The Params");return;end;
 bCastInsetShadow = bCastInsetShadow or false
 bLightAttachmentsAsGroup = bLightAttachmentsAsGroup or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PrimitiveComponent at +0x0, bCastInsetShadow at +0x8, bLightAttachmentsAsGroup at +0x9
 writeQword(_params + 0x0, PrimitiveComponent)
 writeByte(_params + 0x8, bCastInsetShadow)
 writeByte(_params + 0x9, bLightAttachmentsAsGroup)
 UE.CallProcessEventEx(PrimitiveComponent, "SetCastInsetShadowForAllAttachments", _params);
 deAlloc(_params);
end
FNR("BL4.SetCastInsetShadowForAllAttachments");

