BL4.AddDebugText = function(OwnerAddress, DebugText, SrcActor_Actor, Duration, Offset, DesiredOffset, TextColor, bSkipOverwriteCheck, bAbsoluteLocation, bKeepAttachedToActor, InFont_Font, FontScale, bDrawShadow)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddDebugText: Failed To Allocate The Params");return;end;
 Duration = Duration or 0
 Offset = Offset or {X=0,Y=0,Z=0}
 DesiredOffset = DesiredOffset or {X=0,Y=0,Z=0}
 bSkipOverwriteCheck = bSkipOverwriteCheck or false
 bAbsoluteLocation = bAbsoluteLocation or false
 bKeepAttachedToActor = bKeepAttachedToActor or false
 FontScale = FontScale or 0
 bDrawShadow = bDrawShadow or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DebugText at +0x0, SrcActor at +0x10, Duration at +0x18, Offset at +0x20, DesiredOffset at +0x38, TextColor at +0x50, bSkipOverwriteCheck at +0x54, bAbsoluteLocation at +0x55, bKeepAttachedToActor at +0x56, InFont at +0x58, FontScale at +0x60, bDrawShadow at +0x64
 writeQword(_params + 0x0, DebugText)
 writeQword(_params + 0x10, SrcActor_Actor)
 writeFloat(_params + 0x18, Duration)
 writeDouble(_params + 0x20, (Offset and Offset.X) or 0)
 writeDouble(_params + 0x28, (Offset and Offset.Y) or 0)
 writeDouble(_params + 0x30, (Offset and Offset.Z) or 0)
 writeDouble(_params + 0x38, (DesiredOffset and DesiredOffset.X) or 0)
 writeDouble(_params + 0x40, (DesiredOffset and DesiredOffset.Y) or 0)
 writeDouble(_params + 0x48, (DesiredOffset and DesiredOffset.Z) or 0)
 writeQword(_params + 0x50, TextColor)
 writeByte(_params + 0x54, bSkipOverwriteCheck)
 writeByte(_params + 0x55, bAbsoluteLocation)
 writeByte(_params + 0x56, bKeepAttachedToActor)
 writeQword(_params + 0x58, InFont_Font)
 writeFloat(_params + 0x60, FontScale)
 writeByte(_params + 0x64, bDrawShadow)
 UE.CallProcessEventEx(OwnerAddress, "AddDebugText", _params);
 deAlloc(_params);
end
FNR("BL4.AddDebugText");

BL4.AddHitBox = function(OwnerAddress, position, Size, InName, bConsumesInput, priority)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddHitBox: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 Size = Size or {X=0,Y=0}
 bConsumesInput = bConsumesInput or false
 priority = priority or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: position at +0x0, Size at +0x10, InName at +0x20, bConsumesInput at +0x28, priority at +0x2C
 writeDouble(_params + 0x0, (position and position.X) or 0)
 writeDouble(_params + 0x8, (position and position.Y) or 0)
 writeDouble(_params + 0x10, (Size and Size.X) or 0)
 writeDouble(_params + 0x18, (Size and Size.Y) or 0)
 writeQword(_params + 0x20, InName)
 writeByte(_params + 0x28, bConsumesInput)
 writeInteger(_params + 0x2C, priority)
 UE.CallProcessEventEx(OwnerAddress, "AddHitBox", _params);
 deAlloc(_params);
end
FNR("BL4.AddHitBox");

BL4.Deproject = function(OwnerAddress, ScreenX, ScreenY, WorldPosition, WorldDirection)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Deproject: Failed To Allocate The Params");return;end;
 ScreenX = ScreenX or 0
 ScreenY = ScreenY or 0
 WorldPosition = WorldPosition or {X=0,Y=0,Z=0}
 WorldDirection = WorldDirection or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ScreenX at +0x0, ScreenY at +0x4, WorldPosition at +0x8, WorldDirection at +0x20
 writeFloat(_params + 0x0, ScreenX)
 writeFloat(_params + 0x4, ScreenY)
 writeDouble(_params + 0x8, (WorldPosition and WorldPosition.X) or 0)
 writeDouble(_params + 0x10, (WorldPosition and WorldPosition.Y) or 0)
 writeDouble(_params + 0x18, (WorldPosition and WorldPosition.Z) or 0)
 writeDouble(_params + 0x20, (WorldDirection and WorldDirection.X) or 0)
 writeDouble(_params + 0x28, (WorldDirection and WorldDirection.Y) or 0)
 writeDouble(_params + 0x30, (WorldDirection and WorldDirection.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "Deproject", _params);
 deAlloc(_params);
end
FNR("BL4.Deproject");

BL4.DrawLine = function(OwnerAddress, StartScreenX, StartScreenY, EndScreenX, EndScreenY, LineColor, LineThickness)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawLine: Failed To Allocate The Params");return;end;
 StartScreenX = StartScreenX or 0
 StartScreenY = StartScreenY or 0
 EndScreenX = EndScreenX or 0
 EndScreenY = EndScreenY or 0
 LineColor = LineColor or {R=0,G=0,B=0,A=0}
 LineThickness = LineThickness or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: StartScreenX at +0x0, StartScreenY at +0x4, EndScreenX at +0x8, EndScreenY at +0xC, LineColor at +0x10, LineThickness at +0x20
 writeFloat(_params + 0x0, StartScreenX)
 writeFloat(_params + 0x4, StartScreenY)
 writeFloat(_params + 0x8, EndScreenX)
 writeFloat(_params + 0xC, EndScreenY)
 writeFloat(_params + 0x10, (LineColor and LineColor.R) or 0)
 writeFloat(_params + 0x14, (LineColor and LineColor.G) or 0)
 writeFloat(_params + 0x18, (LineColor and LineColor.B) or 0)
 writeFloat(_params + 0x1C, (LineColor and LineColor.A) or 0)
 writeFloat(_params + 0x20, LineThickness)
 UE.CallProcessEventEx(OwnerAddress, "DrawLine", _params);
 deAlloc(_params);
end
FNR("BL4.DrawLine");

BL4.DrawMaterial = function(Material_MaterialInterface, ScreenX, ScreenY, ScreenW, ScreenH, MaterialU, MaterialV, MaterialUWidth, MaterialVHeight, scale, bScalePosition, Rotation, RotPivot)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawMaterial: Failed To Allocate The Params");return;end;
 ScreenX = ScreenX or 0
 ScreenY = ScreenY or 0
 ScreenW = ScreenW or 0
 ScreenH = ScreenH or 0
 MaterialU = MaterialU or 0
 MaterialV = MaterialV or 0
 MaterialUWidth = MaterialUWidth or 0
 MaterialVHeight = MaterialVHeight or 0
 scale = scale or 0
 bScalePosition = bScalePosition or false
 Rotation = Rotation or 0
 RotPivot = RotPivot or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Material at +0x0, ScreenX at +0x8, ScreenY at +0xC, ScreenW at +0x10, ScreenH at +0x14, MaterialU at +0x18, MaterialV at +0x1C, MaterialUWidth at +0x20, MaterialVHeight at +0x24, scale at +0x28, bScalePosition at +0x2C, Rotation at +0x30, RotPivot at +0x38
 writeQword(_params + 0x0, Material_MaterialInterface)
 writeFloat(_params + 0x8, ScreenX)
 writeFloat(_params + 0xC, ScreenY)
 writeFloat(_params + 0x10, ScreenW)
 writeFloat(_params + 0x14, ScreenH)
 writeFloat(_params + 0x18, MaterialU)
 writeFloat(_params + 0x1C, MaterialV)
 writeFloat(_params + 0x20, MaterialUWidth)
 writeFloat(_params + 0x24, MaterialVHeight)
 writeFloat(_params + 0x28, scale)
 writeByte(_params + 0x2C, bScalePosition)
 writeFloat(_params + 0x30, Rotation)
 writeDouble(_params + 0x38, (RotPivot and RotPivot.X) or 0)
 writeDouble(_params + 0x40, (RotPivot and RotPivot.Y) or 0)
 UE.CallProcessEventEx(Material_MaterialInterface, "DrawMaterial", _params);
 deAlloc(_params);
end
FNR("BL4.DrawMaterial");

BL4.DrawMaterialSimple = function(Material_MaterialInterface, ScreenX, ScreenY, ScreenW, ScreenH, scale, bScalePosition)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawMaterialSimple: Failed To Allocate The Params");return;end;
 ScreenX = ScreenX or 0
 ScreenY = ScreenY or 0
 ScreenW = ScreenW or 0
 ScreenH = ScreenH or 0
 scale = scale or 0
 bScalePosition = bScalePosition or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Material at +0x0, ScreenX at +0x8, ScreenY at +0xC, ScreenW at +0x10, ScreenH at +0x14, scale at +0x18, bScalePosition at +0x1C
 writeQword(_params + 0x0, Material_MaterialInterface)
 writeFloat(_params + 0x8, ScreenX)
 writeFloat(_params + 0xC, ScreenY)
 writeFloat(_params + 0x10, ScreenW)
 writeFloat(_params + 0x14, ScreenH)
 writeFloat(_params + 0x18, scale)
 writeByte(_params + 0x1C, bScalePosition)
 UE.CallProcessEventEx(Material_MaterialInterface, "DrawMaterialSimple", _params);
 deAlloc(_params);
end
FNR("BL4.DrawMaterialSimple");

BL4.DrawMaterialTriangle = function(Material_MaterialInterface, V0_Pos, V1_Pos, V2_Pos, V0_UV, V1_UV, V2_UV, V0_Color, V1_Color, V2_Color)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawMaterialTriangle: Failed To Allocate The Params");return;end;
 V0_Pos = V0_Pos or {X=0,Y=0}
 V1_Pos = V1_Pos or {X=0,Y=0}
 V2_Pos = V2_Pos or {X=0,Y=0}
 V0_UV = V0_UV or {X=0,Y=0}
 V1_UV = V1_UV or {X=0,Y=0}
 V2_UV = V2_UV or {X=0,Y=0}
 V0_Color = V0_Color or {R=0,G=0,B=0,A=0}
 V1_Color = V1_Color or {R=0,G=0,B=0,A=0}
 V2_Color = V2_Color or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Material at +0x0, V0_Pos at +0x8, V1_Pos at +0x18, V2_Pos at +0x28, V0_UV at +0x38, V1_UV at +0x48, V2_UV at +0x58, V0_Color at +0x68, V1_Color at +0x78, V2_Color at +0x88
 writeQword(_params + 0x0, Material_MaterialInterface)
 writeDouble(_params + 0x8, (V0_Pos and V0_Pos.X) or 0)
 writeDouble(_params + 0x10, (V0_Pos and V0_Pos.Y) or 0)
 writeDouble(_params + 0x18, (V1_Pos and V1_Pos.X) or 0)
 writeDouble(_params + 0x20, (V1_Pos and V1_Pos.Y) or 0)
 writeDouble(_params + 0x28, (V2_Pos and V2_Pos.X) or 0)
 writeDouble(_params + 0x30, (V2_Pos and V2_Pos.Y) or 0)
 writeDouble(_params + 0x38, (V0_UV and V0_UV.X) or 0)
 writeDouble(_params + 0x40, (V0_UV and V0_UV.Y) or 0)
 writeDouble(_params + 0x48, (V1_UV and V1_UV.X) or 0)
 writeDouble(_params + 0x50, (V1_UV and V1_UV.Y) or 0)
 writeDouble(_params + 0x58, (V2_UV and V2_UV.X) or 0)
 writeDouble(_params + 0x60, (V2_UV and V2_UV.Y) or 0)
 writeFloat(_params + 0x68, (V0_Color and V0_Color.R) or 0)
 writeFloat(_params + 0x6C, (V0_Color and V0_Color.G) or 0)
 writeFloat(_params + 0x70, (V0_Color and V0_Color.B) or 0)
 writeFloat(_params + 0x74, (V0_Color and V0_Color.A) or 0)
 writeFloat(_params + 0x78, (V1_Color and V1_Color.R) or 0)
 writeFloat(_params + 0x7C, (V1_Color and V1_Color.G) or 0)
 writeFloat(_params + 0x80, (V1_Color and V1_Color.B) or 0)
 writeFloat(_params + 0x84, (V1_Color and V1_Color.A) or 0)
 writeFloat(_params + 0x88, (V2_Color and V2_Color.R) or 0)
 writeFloat(_params + 0x8C, (V2_Color and V2_Color.G) or 0)
 writeFloat(_params + 0x90, (V2_Color and V2_Color.B) or 0)
 writeFloat(_params + 0x94, (V2_Color and V2_Color.A) or 0)
 UE.CallProcessEventEx(Material_MaterialInterface, "DrawMaterialTriangle", _params);
 deAlloc(_params);
end
FNR("BL4.DrawMaterialTriangle");

BL4.DrawRect = function(OwnerAddress, RectColor, ScreenX, ScreenY, ScreenW, ScreenH)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawRect: Failed To Allocate The Params");return;end;
 RectColor = RectColor or {R=0,G=0,B=0,A=0}
 ScreenX = ScreenX or 0
 ScreenY = ScreenY or 0
 ScreenW = ScreenW or 0
 ScreenH = ScreenH or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: RectColor at +0x0, ScreenX at +0x10, ScreenY at +0x14, ScreenW at +0x18, ScreenH at +0x1C
 writeFloat(_params + 0x0, (RectColor and RectColor.R) or 0)
 writeFloat(_params + 0x4, (RectColor and RectColor.G) or 0)
 writeFloat(_params + 0x8, (RectColor and RectColor.B) or 0)
 writeFloat(_params + 0xC, (RectColor and RectColor.A) or 0)
 writeFloat(_params + 0x10, ScreenX)
 writeFloat(_params + 0x14, ScreenY)
 writeFloat(_params + 0x18, ScreenW)
 writeFloat(_params + 0x1C, ScreenH)
 UE.CallProcessEventEx(OwnerAddress, "DrawRect", _params);
 deAlloc(_params);
end
FNR("BL4.DrawRect");

BL4.DrawText = function(OwnerAddress, Text, TextColor, ScreenX, ScreenY, Font, scale, bScalePosition)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawText: Failed To Allocate The Params");return;end;
 TextColor = TextColor or {R=0,G=0,B=0,A=0}
 ScreenX = ScreenX or 0
 ScreenY = ScreenY or 0
 scale = scale or 0
 bScalePosition = bScalePosition or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Text at +0x0, TextColor at +0x10, ScreenX at +0x20, ScreenY at +0x24, Font at +0x28, scale at +0x30, bScalePosition at +0x34
 writeQword(_params + 0x0, Text)
 writeFloat(_params + 0x10, (TextColor and TextColor.R) or 0)
 writeFloat(_params + 0x14, (TextColor and TextColor.G) or 0)
 writeFloat(_params + 0x18, (TextColor and TextColor.B) or 0)
 writeFloat(_params + 0x1C, (TextColor and TextColor.A) or 0)
 writeFloat(_params + 0x20, ScreenX)
 writeFloat(_params + 0x24, ScreenY)
 writeQword(_params + 0x28, Font)
 writeFloat(_params + 0x30, scale)
 writeByte(_params + 0x34, bScalePosition)
 UE.CallProcessEventEx(OwnerAddress, "DrawText", _params);
 deAlloc(_params);
end
FNR("BL4.DrawText");

BL4.DrawTexture = function(Texture, ScreenX, ScreenY, ScreenW, ScreenH, TextureU, TextureV, TextureUWidth, TextureVHeight, TintColor, BlendMode, scale, bScalePosition, Rotation, RotPivot)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawTexture: Failed To Allocate The Params");return;end;
 ScreenX = ScreenX or 0
 ScreenY = ScreenY or 0
 ScreenW = ScreenW or 0
 ScreenH = ScreenH or 0
 TextureU = TextureU or 0
 TextureV = TextureV or 0
 TextureUWidth = TextureUWidth or 0
 TextureVHeight = TextureVHeight or 0
 TintColor = TintColor or {R=0,G=0,B=0,A=0}
 BlendMode = BlendMode or 0
 scale = scale or 0
 bScalePosition = bScalePosition or false
 Rotation = Rotation or 0
 RotPivot = RotPivot or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Texture at +0x0, ScreenX at +0x8, ScreenY at +0xC, ScreenW at +0x10, ScreenH at +0x14, TextureU at +0x18, TextureV at +0x1C, TextureUWidth at +0x20, TextureVHeight at +0x24, TintColor at +0x28, BlendMode at +0x38, scale at +0x3C, bScalePosition at +0x40, Rotation at +0x44, RotPivot at +0x48
 writeQword(_params + 0x0, Texture)
 writeFloat(_params + 0x8, ScreenX)
 writeFloat(_params + 0xC, ScreenY)
 writeFloat(_params + 0x10, ScreenW)
 writeFloat(_params + 0x14, ScreenH)
 writeFloat(_params + 0x18, TextureU)
 writeFloat(_params + 0x1C, TextureV)
 writeFloat(_params + 0x20, TextureUWidth)
 writeFloat(_params + 0x24, TextureVHeight)
 writeFloat(_params + 0x28, (TintColor and TintColor.R) or 0)
 writeFloat(_params + 0x2C, (TintColor and TintColor.G) or 0)
 writeFloat(_params + 0x30, (TintColor and TintColor.B) or 0)
 writeFloat(_params + 0x34, (TintColor and TintColor.A) or 0)
 writeByte(_params + 0x38, BlendMode)
 writeFloat(_params + 0x3C, scale)
 writeByte(_params + 0x40, bScalePosition)
 writeFloat(_params + 0x44, Rotation)
 writeDouble(_params + 0x48, (RotPivot and RotPivot.X) or 0)
 writeDouble(_params + 0x50, (RotPivot and RotPivot.Y) or 0)
 UE.CallProcessEventEx(Texture, "DrawTexture", _params);
 deAlloc(_params);
end
FNR("BL4.DrawTexture");

BL4.DrawTextureSimple = function(Texture, ScreenX, ScreenY, scale, bScalePosition)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawTextureSimple: Failed To Allocate The Params");return;end;
 ScreenX = ScreenX or 0
 ScreenY = ScreenY or 0
 scale = scale or 0
 bScalePosition = bScalePosition or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Texture at +0x0, ScreenX at +0x8, ScreenY at +0xC, scale at +0x10, bScalePosition at +0x14
 writeQword(_params + 0x0, Texture)
 writeFloat(_params + 0x8, ScreenX)
 writeFloat(_params + 0xC, ScreenY)
 writeFloat(_params + 0x10, scale)
 writeByte(_params + 0x14, bScalePosition)
 UE.CallProcessEventEx(Texture, "DrawTextureSimple", _params);
 deAlloc(_params);
end
FNR("BL4.DrawTextureSimple");

BL4.GetActorsInSelectionRectangle = function(ClassFilter_Class, FirstPoint, SecondPoint, OutActors, bIncludeNonCollidingComponents, bActorMustBeFullyEnclosed)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetActorsInSelectionRectangle: Failed To Allocate The Params");return;end;
 FirstPoint = FirstPoint or {X=0,Y=0}
 SecondPoint = SecondPoint or {X=0,Y=0}
 bIncludeNonCollidingComponents = bIncludeNonCollidingComponents or false
 bActorMustBeFullyEnclosed = bActorMustBeFullyEnclosed or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ClassFilter at +0x0, FirstPoint at +0x8, SecondPoint at +0x18, OutActors at +0x28, bIncludeNonCollidingComponents at +0x38, bActorMustBeFullyEnclosed at +0x39
 writeQword(_params + 0x0, ClassFilter_Class)
 writeDouble(_params + 0x8, (FirstPoint and FirstPoint.X) or 0)
 writeDouble(_params + 0x10, (FirstPoint and FirstPoint.Y) or 0)
 writeDouble(_params + 0x18, (SecondPoint and SecondPoint.X) or 0)
 writeDouble(_params + 0x20, (SecondPoint and SecondPoint.Y) or 0)
 writeQword(_params + 0x28, OutActors)
 writeByte(_params + 0x38, bIncludeNonCollidingComponents)
 writeByte(_params + 0x39, bActorMustBeFullyEnclosed)
 UE.CallProcessEventEx(ClassFilter_Class, "GetActorsInSelectionRectangle", _params);
 deAlloc(_params);
end
FNR("BL4.GetActorsInSelectionRectangle");

BL4.GetOwningPawn = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetOwningPawn: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetOwningPawn", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetOwningPawn");

BL4.GetOwningPlayerController = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetOwningPlayerController: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetOwningPlayerController", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetOwningPlayerController");

BL4.GetTextSize = function(OwnerAddress, Text, OutWidth, OutHeight, Font, scale)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTextSize: Failed To Allocate The Params");return;end;
 OutWidth = OutWidth or 0
 OutHeight = OutHeight or 0
 scale = scale or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Text at +0x0, OutWidth at +0x10, OutHeight at +0x14, Font at +0x18, scale at +0x20
 writeQword(_params + 0x0, Text)
 writeFloat(_params + 0x10, OutWidth)
 writeFloat(_params + 0x14, OutHeight)
 writeQword(_params + 0x18, Font)
 writeFloat(_params + 0x20, scale)
 UE.CallProcessEventEx(OwnerAddress, "GetTextSize", _params);
 deAlloc(_params);
end
FNR("BL4.GetTextSize");

BL4.Project = function(OwnerAddress, Location, bClampToZeroPlane)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Project: Failed To Allocate The Params");return;end;
 Location = Location or {X=0,Y=0,Z=0}
 bClampToZeroPlane = bClampToZeroPlane or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Location at +0x0, bClampToZeroPlane at +0x18
 writeDouble(_params + 0x0, (Location and Location.X) or 0)
 writeDouble(_params + 0x8, (Location and Location.Y) or 0)
 writeDouble(_params + 0x10, (Location and Location.Z) or 0)
 writeByte(_params + 0x18, bClampToZeroPlane)
 UE.CallProcessEventEx(OwnerAddress, "Project", _params);
 local RET={X=readFloat(_params+0x20),Y=readFloat(_params+0x28),Z=readFloat(_params+0x30)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.Project");

BL4.ReceiveDrawHUD = function(OwnerAddress, SizeX, SizeY)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReceiveDrawHUD: Failed To Allocate The Params");return;end;
 SizeX = SizeX or 0
 SizeY = SizeY or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: SizeX at +0x0, SizeY at +0x4
 writeInteger(_params + 0x0, SizeX)
 writeInteger(_params + 0x4, SizeY)
 UE.CallProcessEventEx(OwnerAddress, "ReceiveDrawHUD", _params);
 deAlloc(_params);
end
FNR("BL4.ReceiveDrawHUD");

BL4.ReceiveHitBoxBeginCursorOver = function(OwnerAddress, BoxName)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReceiveHitBoxBeginCursorOver: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: BoxName at +0x0
 writeQword(_params + 0x0, BoxName)
 UE.CallProcessEventEx(OwnerAddress, "ReceiveHitBoxBeginCursorOver", _params);
 deAlloc(_params);
end
FNR("BL4.ReceiveHitBoxBeginCursorOver");

BL4.ReceiveHitBoxClick = function(OwnerAddress, BoxName)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReceiveHitBoxClick: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: BoxName at +0x0
 writeQword(_params + 0x0, BoxName)
 UE.CallProcessEventEx(OwnerAddress, "ReceiveHitBoxClick", _params);
 deAlloc(_params);
end
FNR("BL4.ReceiveHitBoxClick");

BL4.ReceiveHitBoxEndCursorOver = function(OwnerAddress, BoxName)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReceiveHitBoxEndCursorOver: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: BoxName at +0x0
 writeQword(_params + 0x0, BoxName)
 UE.CallProcessEventEx(OwnerAddress, "ReceiveHitBoxEndCursorOver", _params);
 deAlloc(_params);
end
FNR("BL4.ReceiveHitBoxEndCursorOver");

BL4.ReceiveHitBoxRelease = function(OwnerAddress, BoxName)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReceiveHitBoxRelease: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: BoxName at +0x0
 writeQword(_params + 0x0, BoxName)
 UE.CallProcessEventEx(OwnerAddress, "ReceiveHitBoxRelease", _params);
 deAlloc(_params);
end
FNR("BL4.ReceiveHitBoxRelease");

BL4.RemoveDebugText = function(SrcActor_Actor, bLeaveDurationText)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveDebugText: Failed To Allocate The Params");return;end;
 bLeaveDurationText = bLeaveDurationText or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SrcActor at +0x0, bLeaveDurationText at +0x8
 writeQword(_params + 0x0, SrcActor_Actor)
 writeByte(_params + 0x8, bLeaveDurationText)
 UE.CallProcessEventEx(SrcActor_Actor, "RemoveDebugText", _params);
 deAlloc(_params);
end
FNR("BL4.RemoveDebugText");

BL4.ShowDebug = function(OwnerAddress, DebugType)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ShowDebug: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: DebugType at +0x0
 writeQword(_params + 0x0, DebugType)
 UE.CallProcessEventEx(OwnerAddress, "ShowDebug", _params);
 deAlloc(_params);
end
FNR("BL4.ShowDebug");

BL4.ShowDebugForReticleTargetToggle = function(DesiredClass_Class)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ShowDebugForReticleTargetToggle: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: DesiredClass at +0x0
 writeQword(_params + 0x0, DesiredClass_Class)
 UE.CallProcessEventEx(DesiredClass_Class, "ShowDebugForReticleTargetToggle", _params);
 deAlloc(_params);
end
FNR("BL4.ShowDebugForReticleTargetToggle");

BL4.ShowDebugToggleSubCategory = function(OwnerAddress, Category)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ShowDebugToggleSubCategory: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Category at +0x0
 writeQword(_params + 0x0, Category)
 UE.CallProcessEventEx(OwnerAddress, "ShowDebugToggleSubCategory", _params);
 deAlloc(_params);
end
FNR("BL4.ShowDebugToggleSubCategory");

