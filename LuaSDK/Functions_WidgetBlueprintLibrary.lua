BL4.CaptureJoystick = function(OwnerAddress, Reply, CapturingWidget_Widget, bInAllJoysticks)
 local _paramsSize = 0x180
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CaptureJoystick: Failed To Allocate The Params");return;end;
 bInAllJoysticks = bInAllJoysticks or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Reply at +0x0, CapturingWidget at +0xB8, bInAllJoysticks at +0xC0
 writeQword(_params + 0x0, Reply)
 writeQword(_params + 0xB8, CapturingWidget_Widget)
 writeByte(_params + 0xC0, bInAllJoysticks)
 UE.CallProcessEventEx(OwnerAddress, "CaptureJoystick", _params);
 local RET=readQword(_params + 0xC8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CaptureJoystick");

BL4.CaptureMouse = function(OwnerAddress, Reply, CapturingWidget_Widget)
 local _paramsSize = 0x178
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CaptureMouse: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Reply at +0x0, CapturingWidget at +0xB8
 writeQword(_params + 0x0, Reply)
 writeQword(_params + 0xB8, CapturingWidget_Widget)
 UE.CallProcessEventEx(OwnerAddress, "CaptureMouse", _params);
 local RET=readQword(_params + 0xC0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CaptureMouse");

BL4.ClearUserFocus = function(OwnerAddress, Reply, bInAllUsers)
 local _paramsSize = 0x178
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClearUserFocus: Failed To Allocate The Params");return;end;
 bInAllUsers = bInAllUsers or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Reply at +0x0, bInAllUsers at +0xB8
 writeQword(_params + 0x0, Reply)
 writeByte(_params + 0xB8, bInAllUsers)
 UE.CallProcessEventEx(OwnerAddress, "ClearUserFocus", _params);
 local RET=readQword(_params + 0xC0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ClearUserFocus");

BL4.Create = function(WorldContextObject_Object, WidgetType_Class, OwningPlayer_PlayerController)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Create: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, WidgetType at +0x8, OwningPlayer at +0x10
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, WidgetType_Class)
 writeQword(_params + 0x10, OwningPlayer_PlayerController)
 UE.CallProcessEventEx(WorldContextObject_Object, "Create", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Create");

BL4.CreateDragDropOperation = function(OperationClass_Class)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CreateDragDropOperation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OperationClass at +0x0
 writeQword(_params + 0x0, OperationClass_Class)
 UE.CallProcessEventEx(OperationClass_Class, "CreateDragDropOperation", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CreateDragDropOperation");

BL4.DetectDrag = function(OwnerAddress, Reply, WidgetDetectingDrag_Widget, DragKey)
 local _paramsSize = 0x190
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DetectDrag: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Reply at +0x0, WidgetDetectingDrag at +0xB8, DragKey at +0xC0
 writeQword(_params + 0x0, Reply)
 writeQword(_params + 0xB8, WidgetDetectingDrag_Widget)
 writeQword(_params + 0xC0, DragKey)
 UE.CallProcessEventEx(OwnerAddress, "DetectDrag", _params);
 local RET=readQword(_params + 0xD8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DetectDrag");

BL4.DetectDragIfPressed = function(OwnerAddress, PointerEvent, WidgetDetectingDrag_Widget, DragKey)
 local _paramsSize = 0x150
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DetectDragIfPressed: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PointerEvent at +0x0, WidgetDetectingDrag at +0x78, DragKey at +0x80
 writeQword(_params + 0x0, PointerEvent)
 writeQword(_params + 0x78, WidgetDetectingDrag_Widget)
 writeQword(_params + 0x80, DragKey)
 UE.CallProcessEventEx(OwnerAddress, "DetectDragIfPressed", _params);
 local RET=readQword(_params + 0x98);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DetectDragIfPressed");

BL4.DrawBox = function(OwnerAddress, Context, position, Size, Brush_SlateBrushAsset, Tint)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawBox: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 Size = Size or {X=0,Y=0}
 Tint = Tint or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, position at +0x30, Size at +0x40, Brush at +0x50, Tint at +0x58
 writeQword(_params + 0x0, Context)
 writeDouble(_params + 0x30, (position and position.X) or 0)
 writeDouble(_params + 0x38, (position and position.Y) or 0)
 writeDouble(_params + 0x40, (Size and Size.X) or 0)
 writeDouble(_params + 0x48, (Size and Size.Y) or 0)
 writeQword(_params + 0x50, Brush_SlateBrushAsset)
 writeFloat(_params + 0x58, (Tint and Tint.R) or 0)
 writeFloat(_params + 0x5C, (Tint and Tint.G) or 0)
 writeFloat(_params + 0x60, (Tint and Tint.B) or 0)
 writeFloat(_params + 0x64, (Tint and Tint.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "DrawBox", _params);
 deAlloc(_params);
end
FNR("BL4.DrawBox");

BL4.DrawLine = function(OwnerAddress, Context, PositionA, PositionB, Tint, bAntiAlias, Thickness)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawLine: Failed To Allocate The Params");return;end;
 PositionA = PositionA or {X=0,Y=0}
 PositionB = PositionB or {X=0,Y=0}
 Tint = Tint or {R=0,G=0,B=0,A=0}
 bAntiAlias = bAntiAlias or false
 Thickness = Thickness or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, PositionA at +0x30, PositionB at +0x40, Tint at +0x50, bAntiAlias at +0x60, Thickness at +0x64
 writeQword(_params + 0x0, Context)
 writeDouble(_params + 0x30, (PositionA and PositionA.X) or 0)
 writeDouble(_params + 0x38, (PositionA and PositionA.Y) or 0)
 writeDouble(_params + 0x40, (PositionB and PositionB.X) or 0)
 writeDouble(_params + 0x48, (PositionB and PositionB.Y) or 0)
 writeFloat(_params + 0x50, (Tint and Tint.R) or 0)
 writeFloat(_params + 0x54, (Tint and Tint.G) or 0)
 writeFloat(_params + 0x58, (Tint and Tint.B) or 0)
 writeFloat(_params + 0x5C, (Tint and Tint.A) or 0)
 writeByte(_params + 0x60, bAntiAlias)
 writeFloat(_params + 0x64, Thickness)
 UE.CallProcessEventEx(OwnerAddress, "DrawLine", _params);
 deAlloc(_params);
end
FNR("BL4.DrawLine");

BL4.DrawLines = function(OwnerAddress, Context, points, Tint, bAntiAlias, Thickness)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawLines: Failed To Allocate The Params");return;end;
 Tint = Tint or {R=0,G=0,B=0,A=0}
 bAntiAlias = bAntiAlias or false
 Thickness = Thickness or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, points at +0x30, Tint at +0x40, bAntiAlias at +0x50, Thickness at +0x54
 writeQword(_params + 0x0, Context)
 writeQword(_params + 0x30, points)
 writeFloat(_params + 0x40, (Tint and Tint.R) or 0)
 writeFloat(_params + 0x44, (Tint and Tint.G) or 0)
 writeFloat(_params + 0x48, (Tint and Tint.B) or 0)
 writeFloat(_params + 0x4C, (Tint and Tint.A) or 0)
 writeByte(_params + 0x50, bAntiAlias)
 writeFloat(_params + 0x54, Thickness)
 UE.CallProcessEventEx(OwnerAddress, "DrawLines", _params);
 deAlloc(_params);
end
FNR("BL4.DrawLines");

BL4.DrawSpline = function(OwnerAddress, Context, Start, StartDir, End, EndDir, Tint, Thickness)
 local _paramsSize = 0x88
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawSpline: Failed To Allocate The Params");return;end;
 Start = Start or {X=0,Y=0}
 StartDir = StartDir or {X=0,Y=0}
 End = End or {X=0,Y=0}
 EndDir = EndDir or {X=0,Y=0}
 Tint = Tint or {R=0,G=0,B=0,A=0}
 Thickness = Thickness or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, Start at +0x30, StartDir at +0x40, End at +0x50, EndDir at +0x60, Tint at +0x70, Thickness at +0x80
 writeQword(_params + 0x0, Context)
 writeDouble(_params + 0x30, (Start and Start.X) or 0)
 writeDouble(_params + 0x38, (Start and Start.Y) or 0)
 writeDouble(_params + 0x40, (StartDir and StartDir.X) or 0)
 writeDouble(_params + 0x48, (StartDir and StartDir.Y) or 0)
 writeDouble(_params + 0x50, (End and End.X) or 0)
 writeDouble(_params + 0x58, (End and End.Y) or 0)
 writeDouble(_params + 0x60, (EndDir and EndDir.X) or 0)
 writeDouble(_params + 0x68, (EndDir and EndDir.Y) or 0)
 writeFloat(_params + 0x70, (Tint and Tint.R) or 0)
 writeFloat(_params + 0x74, (Tint and Tint.G) or 0)
 writeFloat(_params + 0x78, (Tint and Tint.B) or 0)
 writeFloat(_params + 0x7C, (Tint and Tint.A) or 0)
 writeFloat(_params + 0x80, Thickness)
 UE.CallProcessEventEx(OwnerAddress, "DrawSpline", _params);
 deAlloc(_params);
end
FNR("BL4.DrawSpline");

BL4.DrawText = function(OwnerAddress, Context, InString, position, Tint)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawText: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 Tint = Tint or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, InString at +0x30, position at +0x40, Tint at +0x50
 writeQword(_params + 0x0, Context)
 writeQword(_params + 0x30, InString)
 writeDouble(_params + 0x40, (position and position.X) or 0)
 writeDouble(_params + 0x48, (position and position.Y) or 0)
 writeFloat(_params + 0x50, (Tint and Tint.R) or 0)
 writeFloat(_params + 0x54, (Tint and Tint.G) or 0)
 writeFloat(_params + 0x58, (Tint and Tint.B) or 0)
 writeFloat(_params + 0x5C, (Tint and Tint.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "DrawText", _params);
 deAlloc(_params);
end
FNR("BL4.DrawText");

BL4.DrawTextFormatted = function(OwnerAddress, Context, Text, position, Font, FontSize, FontTypeFace, Tint)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DrawTextFormatted: Failed To Allocate The Params");return;end;
 position = position or {X=0,Y=0}
 FontSize = FontSize or 0
 Tint = Tint or {R=0,G=0,B=0,A=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, Text at +0x30, position at +0x40, Font at +0x50, FontSize at +0x58, FontTypeFace at +0x5C, Tint at +0x64
 writeQword(_params + 0x0, Context)
 writeQword(_params + 0x30, Text)
 writeDouble(_params + 0x40, (position and position.X) or 0)
 writeDouble(_params + 0x48, (position and position.Y) or 0)
 writeQword(_params + 0x50, Font)
 writeFloat(_params + 0x58, FontSize)
 writeQword(_params + 0x5C, FontTypeFace)
 writeFloat(_params + 0x64, (Tint and Tint.R) or 0)
 writeFloat(_params + 0x68, (Tint and Tint.G) or 0)
 writeFloat(_params + 0x6C, (Tint and Tint.B) or 0)
 writeFloat(_params + 0x70, (Tint and Tint.A) or 0)
 UE.CallProcessEventEx(OwnerAddress, "DrawTextFormatted", _params);
 deAlloc(_params);
end
FNR("BL4.DrawTextFormatted");

BL4.EndDragDrop = function(OwnerAddress, Reply)
 local _paramsSize = 0x170
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EndDragDrop: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Reply at +0x0
 writeQword(_params + 0x0, Reply)
 UE.CallProcessEventEx(OwnerAddress, "EndDragDrop", _params);
 local RET=readQword(_params + 0xB8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EndDragDrop");

BL4.GetAllWidgetsOfClass = function(WorldContextObject_Object, FoundWidgets, WidgetClass_Class, TopLevelOnly)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAllWidgetsOfClass: Failed To Allocate The Params");return;end;
 TopLevelOnly = TopLevelOnly or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, FoundWidgets at +0x8, WidgetClass at +0x18, TopLevelOnly at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, FoundWidgets)
 writeQword(_params + 0x18, WidgetClass_Class)
 writeByte(_params + 0x20, TopLevelOnly)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetAllWidgetsOfClass", _params);
 deAlloc(_params);
end
FNR("BL4.GetAllWidgetsOfClass");

BL4.GetAllWidgetsWithInterface = function(WorldContextObject_Object, FoundWidgets, Interface_Class, TopLevelOnly)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAllWidgetsWithInterface: Failed To Allocate The Params");return;end;
 TopLevelOnly = TopLevelOnly or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, FoundWidgets at +0x8, Interface at +0x18, TopLevelOnly at +0x20
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, FoundWidgets)
 writeQword(_params + 0x18, Interface_Class)
 writeByte(_params + 0x20, TopLevelOnly)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetAllWidgetsWithInterface", _params);
 deAlloc(_params);
end
FNR("BL4.GetAllWidgetsWithInterface");

BL4.GetBrushResource = function(OwnerAddress, Brush)
 local _paramsSize = 0xB8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBrushResource: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Brush at +0x0
 writeQword(_params + 0x0, Brush)
 UE.CallProcessEventEx(OwnerAddress, "GetBrushResource", _params);
 local RET=readQword(_params + 0xB0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBrushResource");

BL4.GetBrushResourceAsMaterial = function(OwnerAddress, Brush)
 local _paramsSize = 0xB8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBrushResourceAsMaterial: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Brush at +0x0
 writeQword(_params + 0x0, Brush)
 UE.CallProcessEventEx(OwnerAddress, "GetBrushResourceAsMaterial", _params);
 local RET=readQword(_params + 0xB0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBrushResourceAsMaterial");

BL4.GetBrushResourceAsTexture2D = function(OwnerAddress, Brush)
 local _paramsSize = 0xB8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBrushResourceAsTexture2D: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Brush at +0x0
 writeQword(_params + 0x0, Brush)
 UE.CallProcessEventEx(OwnerAddress, "GetBrushResourceAsTexture2D", _params);
 local RET=readQword(_params + 0xB0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBrushResourceAsTexture2D");

BL4.GetDragDroppingContent = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDragDroppingContent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetDragDroppingContent", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDragDroppingContent");

BL4.GetDynamicMaterial = function(OwnerAddress, Brush)
 local _paramsSize = 0xB8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDynamicMaterial: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Brush at +0x0
 writeQword(_params + 0x0, Brush)
 UE.CallProcessEventEx(OwnerAddress, "GetDynamicMaterial", _params);
 local RET=readQword(_params + 0xB0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDynamicMaterial");

BL4.GetInputEventFromCharacterEvent = function(OwnerAddress, Event)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInputEventFromCharacterEvent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Event at +0x0
 writeQword(_params + 0x0, Event)
 UE.CallProcessEventEx(OwnerAddress, "GetInputEventFromCharacterEvent", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInputEventFromCharacterEvent");

BL4.GetInputEventFromKeyEvent = function(OwnerAddress, Event)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInputEventFromKeyEvent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Event at +0x0
 writeQword(_params + 0x0, Event)
 UE.CallProcessEventEx(OwnerAddress, "GetInputEventFromKeyEvent", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInputEventFromKeyEvent");

BL4.GetInputEventFromNavigationEvent = function(OwnerAddress, Event)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInputEventFromNavigationEvent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Event at +0x0
 writeQword(_params + 0x0, Event)
 UE.CallProcessEventEx(OwnerAddress, "GetInputEventFromNavigationEvent", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInputEventFromNavigationEvent");

BL4.GetInputEventFromPointerEvent = function(OwnerAddress, Event)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInputEventFromPointerEvent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Event at +0x0
 writeQword(_params + 0x0, Event)
 UE.CallProcessEventEx(OwnerAddress, "GetInputEventFromPointerEvent", _params);
 local RET=readQword(_params + 0x78);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInputEventFromPointerEvent");

BL4.GetKeyEventFromAnalogInputEvent = function(OwnerAddress, Event)
 local _paramsSize = 0x88
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetKeyEventFromAnalogInputEvent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Event at +0x0
 writeQword(_params + 0x0, Event)
 UE.CallProcessEventEx(OwnerAddress, "GetKeyEventFromAnalogInputEvent", _params);
 local RET=readQword(_params + 0x48);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetKeyEventFromAnalogInputEvent");

BL4.GetSafeZonePadding = function(WorldContextObject_Object, SafePadding, SafePaddingScale, SpillOverPadding)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSafeZonePadding: Failed To Allocate The Params");return;end;
 SafePaddingScale = SafePaddingScale or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, SafePadding at +0x10, SafePaddingScale at +0x30, SpillOverPadding at +0x40
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x10, SafePadding)
 writeDouble(_params + 0x30, (SafePaddingScale and SafePaddingScale.X) or 0)
 writeDouble(_params + 0x38, (SafePaddingScale and SafePaddingScale.Y) or 0)
 writeQword(_params + 0x40, SpillOverPadding)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetSafeZonePadding", _params);
 deAlloc(_params);
end
FNR("BL4.GetSafeZonePadding");

BL4.Handled = function(OwnerAddress)
 local _paramsSize = 0xB8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Handled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "Handled", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Handled");

BL4.IsDragDropping = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsDragDropping: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsDragDropping", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsDragDropping");

BL4.LockMouse = function(OwnerAddress, Reply, CapturingWidget_Widget)
 local _paramsSize = 0x178
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.LockMouse: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Reply at +0x0, CapturingWidget at +0xB8
 writeQword(_params + 0x0, Reply)
 writeQword(_params + 0xB8, CapturingWidget_Widget)
 UE.CallProcessEventEx(OwnerAddress, "LockMouse", _params);
 local RET=readQword(_params + 0xC0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.LockMouse");

BL4.MakeBrushFromAsset = function(BrushAsset_SlateBrushAsset)
 local _paramsSize = 0xC0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeBrushFromAsset: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BrushAsset at +0x0
 writeQword(_params + 0x0, BrushAsset_SlateBrushAsset)
 UE.CallProcessEventEx(BrushAsset_SlateBrushAsset, "MakeBrushFromAsset", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeBrushFromAsset");

BL4.MakeBrushFromMaterial = function(Material_MaterialInterface, Width, Height)
 local _paramsSize = 0xC0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeBrushFromMaterial: Failed To Allocate The Params");return;end;
 Width = Width or 0
 Height = Height or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Material at +0x0, Width at +0x8, Height at +0xC
 writeQword(_params + 0x0, Material_MaterialInterface)
 writeInteger(_params + 0x8, Width)
 writeInteger(_params + 0xC, Height)
 UE.CallProcessEventEx(Material_MaterialInterface, "MakeBrushFromMaterial", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeBrushFromMaterial");

BL4.MakeBrushFromTexture = function(Texture_Texture2D, Width, Height)
 local _paramsSize = 0xC0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeBrushFromTexture: Failed To Allocate The Params");return;end;
 Width = Width or 0
 Height = Height or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Texture at +0x0, Width at +0x8, Height at +0xC
 writeQword(_params + 0x0, Texture_Texture2D)
 writeInteger(_params + 0x8, Width)
 writeInteger(_params + 0xC, Height)
 UE.CallProcessEventEx(Texture_Texture2D, "MakeBrushFromTexture", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeBrushFromTexture");

BL4.NoResourceBrush = function(OwnerAddress)
 local _paramsSize = 0xB0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NoResourceBrush: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "NoResourceBrush", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NoResourceBrush");

BL4.ReleaseJoystickCapture = function(OwnerAddress, Reply, bInAllJoysticks)
 local _paramsSize = 0x178
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReleaseJoystickCapture: Failed To Allocate The Params");return;end;
 bInAllJoysticks = bInAllJoysticks or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Reply at +0x0, bInAllJoysticks at +0xB8
 writeQword(_params + 0x0, Reply)
 writeByte(_params + 0xB8, bInAllJoysticks)
 UE.CallProcessEventEx(OwnerAddress, "ReleaseJoystickCapture", _params);
 local RET=readQword(_params + 0xC0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ReleaseJoystickCapture");

BL4.ReleaseMouseCapture = function(OwnerAddress, Reply)
 local _paramsSize = 0x170
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReleaseMouseCapture: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Reply at +0x0
 writeQword(_params + 0x0, Reply)
 UE.CallProcessEventEx(OwnerAddress, "ReleaseMouseCapture", _params);
 local RET=readQword(_params + 0xB8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ReleaseMouseCapture");

BL4.SetBrushResourceToMaterial = function(OwnerAddress, Brush, Material_MaterialInterface)
 local _paramsSize = 0xB8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBrushResourceToMaterial: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Brush at +0x0, Material at +0xB0
 writeQword(_params + 0x0, Brush)
 writeQword(_params + 0xB0, Material_MaterialInterface)
 UE.CallProcessEventEx(OwnerAddress, "SetBrushResourceToMaterial", _params);
 deAlloc(_params);
end
FNR("BL4.SetBrushResourceToMaterial");

BL4.SetBrushResourceToTexture = function(OwnerAddress, Brush, Texture_Texture2D)
 local _paramsSize = 0xB8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBrushResourceToTexture: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Brush at +0x0, Texture at +0xB0
 writeQword(_params + 0x0, Brush)
 writeQword(_params + 0xB0, Texture_Texture2D)
 UE.CallProcessEventEx(OwnerAddress, "SetBrushResourceToTexture", _params);
 deAlloc(_params);
end
FNR("BL4.SetBrushResourceToTexture");

BL4.SetColorVisionDeficiencyType = function(OwnerAddress, type, Severity, CorrectDeficiency, ShowCorrectionWithDeficiency)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetColorVisionDeficiencyType: Failed To Allocate The Params");return;end;
 type = type or 0
 Severity = Severity or 0
 CorrectDeficiency = CorrectDeficiency or false
 ShowCorrectionWithDeficiency = ShowCorrectionWithDeficiency or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: type at +0x0, Severity at +0x4, CorrectDeficiency at +0x8, ShowCorrectionWithDeficiency at +0x9
 writeByte(_params + 0x0, type)
 writeFloat(_params + 0x4, Severity)
 writeByte(_params + 0x8, CorrectDeficiency)
 writeByte(_params + 0x9, ShowCorrectionWithDeficiency)
 UE.CallProcessEventEx(OwnerAddress, "SetColorVisionDeficiencyType", _params);
 deAlloc(_params);
end
FNR("BL4.SetColorVisionDeficiencyType");

BL4.SetHardwareCursor = function(WorldContextObject_Object, CursorShape, CursorName, HotSpot)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetHardwareCursor: Failed To Allocate The Params");return;end;
 CursorShape = CursorShape or 0
 HotSpot = HotSpot or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, CursorShape at +0x8, CursorName at +0xC, HotSpot at +0x18
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeByte(_params + 0x8, CursorShape)
 writeQword(_params + 0xC, CursorName)
 writeDouble(_params + 0x18, (HotSpot and HotSpot.X) or 0)
 writeDouble(_params + 0x20, (HotSpot and HotSpot.Y) or 0)
 UE.CallProcessEventEx(WorldContextObject_Object, "SetHardwareCursor", _params);
 local RET=readByte(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetHardwareCursor");

BL4.SetInputMode_GameAndUIEx = function(PlayerController, InWidgetToFocus_Widget, InMouseLockMode, bHideCursorDuringCapture, bFlushInput)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetInputMode_GameAndUIEx: Failed To Allocate The Params");return;end;
 InMouseLockMode = InMouseLockMode or 0
 bHideCursorDuringCapture = bHideCursorDuringCapture or false
 bFlushInput = bFlushInput or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PlayerController at +0x0, InWidgetToFocus at +0x8, InMouseLockMode at +0x10, bHideCursorDuringCapture at +0x11, bFlushInput at +0x12
 writeQword(_params + 0x0, PlayerController)
 writeQword(_params + 0x8, InWidgetToFocus_Widget)
 writeByte(_params + 0x10, InMouseLockMode)
 writeByte(_params + 0x11, bHideCursorDuringCapture)
 writeByte(_params + 0x12, bFlushInput)
 UE.CallProcessEventEx(PlayerController, "SetInputMode_GameAndUIEx", _params);
 deAlloc(_params);
end
FNR("BL4.SetInputMode_GameAndUIEx");

BL4.SetInputMode_GameOnly = function(PlayerController, bFlushInput)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetInputMode_GameOnly: Failed To Allocate The Params");return;end;
 bFlushInput = bFlushInput or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PlayerController at +0x0, bFlushInput at +0x8
 writeQword(_params + 0x0, PlayerController)
 writeByte(_params + 0x8, bFlushInput)
 UE.CallProcessEventEx(PlayerController, "SetInputMode_GameOnly", _params);
 deAlloc(_params);
end
FNR("BL4.SetInputMode_GameOnly");

BL4.SetInputMode_UIOnlyEx = function(PlayerController, InWidgetToFocus_Widget, InMouseLockMode, bFlushInput)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetInputMode_UIOnlyEx: Failed To Allocate The Params");return;end;
 InMouseLockMode = InMouseLockMode or 0
 bFlushInput = bFlushInput or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: PlayerController at +0x0, InWidgetToFocus at +0x8, InMouseLockMode at +0x10, bFlushInput at +0x11
 writeQword(_params + 0x0, PlayerController)
 writeQword(_params + 0x8, InWidgetToFocus_Widget)
 writeByte(_params + 0x10, InMouseLockMode)
 writeByte(_params + 0x11, bFlushInput)
 UE.CallProcessEventEx(PlayerController, "SetInputMode_UIOnlyEx", _params);
 deAlloc(_params);
end
FNR("BL4.SetInputMode_UIOnlyEx");

BL4.SetMousePosition = function(OwnerAddress, Reply, NewMousePosition)
 local _paramsSize = 0x180
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMousePosition: Failed To Allocate The Params");return;end;
 NewMousePosition = NewMousePosition or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Reply at +0x0, NewMousePosition at +0xB8
 writeQword(_params + 0x0, Reply)
 writeDouble(_params + 0xB8, (NewMousePosition and NewMousePosition.X) or 0)
 writeDouble(_params + 0xC0, (NewMousePosition and NewMousePosition.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetMousePosition", _params);
 local RET=readQword(_params + 0xC8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetMousePosition");

BL4.SetUserFocus = function(OwnerAddress, Reply, FocusWidget_Widget, bInAllUsers)
 local _paramsSize = 0x180
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetUserFocus: Failed To Allocate The Params");return;end;
 bInAllUsers = bInAllUsers or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Reply at +0x0, FocusWidget at +0xB8, bInAllUsers at +0xC0
 writeQword(_params + 0x0, Reply)
 writeQword(_params + 0xB8, FocusWidget_Widget)
 writeByte(_params + 0xC0, bInAllUsers)
 UE.CallProcessEventEx(OwnerAddress, "SetUserFocus", _params);
 local RET=readQword(_params + 0xC8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetUserFocus");

BL4.SetWindowTitleBarCloseButtonActive = function(OwnerAddress, bActive)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetWindowTitleBarCloseButtonActive: Failed To Allocate The Params");return;end;
 bActive = bActive or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bActive at +0x0
 writeByte(_params + 0x0, bActive)
 UE.CallProcessEventEx(OwnerAddress, "SetWindowTitleBarCloseButtonActive", _params);
 deAlloc(_params);
end
FNR("BL4.SetWindowTitleBarCloseButtonActive");

BL4.SetWindowTitleBarOnCloseClickedDelegate = function(OwnerAddress, Delegate)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetWindowTitleBarOnCloseClickedDelegate: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Delegate at +0x0
 writeQword(_params + 0x0, Delegate)
 UE.CallProcessEventEx(OwnerAddress, "SetWindowTitleBarOnCloseClickedDelegate", _params);
 deAlloc(_params);
end
FNR("BL4.SetWindowTitleBarOnCloseClickedDelegate");

BL4.SetWindowTitleBarState = function(TitleBarContent_Widget, Mode, bTitleBarDragEnabled, bWindowButtonsVisible, bTitleBarVisible)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetWindowTitleBarState: Failed To Allocate The Params");return;end;
 Mode = Mode or 0
 bTitleBarDragEnabled = bTitleBarDragEnabled or false
 bWindowButtonsVisible = bWindowButtonsVisible or false
 bTitleBarVisible = bTitleBarVisible or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TitleBarContent at +0x0, Mode at +0x8, bTitleBarDragEnabled at +0x9, bWindowButtonsVisible at +0xA, bTitleBarVisible at +0xB
 writeQword(_params + 0x0, TitleBarContent_Widget)
 writeByte(_params + 0x8, Mode)
 writeByte(_params + 0x9, bTitleBarDragEnabled)
 writeByte(_params + 0xA, bWindowButtonsVisible)
 writeByte(_params + 0xB, bTitleBarVisible)
 UE.CallProcessEventEx(TitleBarContent_Widget, "SetWindowTitleBarState", _params);
 deAlloc(_params);
end
FNR("BL4.SetWindowTitleBarState");

BL4.Unhandled = function(OwnerAddress)
 local _paramsSize = 0xB8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Unhandled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "Unhandled", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Unhandled");

BL4.UnlockMouse = function(OwnerAddress, Reply)
 local _paramsSize = 0x170
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.UnlockMouse: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Reply at +0x0
 writeQword(_params + 0x0, Reply)
 UE.CallProcessEventEx(OwnerAddress, "UnlockMouse", _params);
 local RET=readQword(_params + 0xB8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.UnlockMouse");

