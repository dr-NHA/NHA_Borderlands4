BL4.AddAnimationChannel_ForBlueprint = function(OwnerAddress, InName, InParentControl, InSettings, bSetupUndo, bPrintPythonCommand)
 local _paramsSize = 0x1E0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddAnimationChannel_ForBlueprint: Failed To Allocate The Params");return;end;
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommand = bPrintPythonCommand or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InName at +0x0, InParentControl at +0x8, InSettings at +0x18, bSetupUndo at +0x1D0, bPrintPythonCommand at +0x1D1
 writeQword(_params + 0x0, InName)
 writeQword(_params + 0x8, InParentControl)
 writeQword(_params + 0x18, InSettings)
 writeByte(_params + 0x1D0, bSetupUndo)
 writeByte(_params + 0x1D1, bPrintPythonCommand)
 UE.CallProcessEventEx(OwnerAddress, "AddAnimationChannel_ForBlueprint", _params);
 local RET=readQword(_params + 0x1D4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddAnimationChannel_ForBlueprint");

BL4.AddAvailableSpace = function(OwnerAddress, InControl, InSpace, bSetupUndo, bPrintPythonCommand)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddAvailableSpace: Failed To Allocate The Params");return;end;
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommand = bPrintPythonCommand or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InControl at +0x0, InSpace at +0xC, bSetupUndo at +0x18, bPrintPythonCommand at +0x19
 writeQword(_params + 0x0, InControl)
 writeQword(_params + 0xC, InSpace)
 writeByte(_params + 0x18, bSetupUndo)
 writeByte(_params + 0x19, bPrintPythonCommand)
 UE.CallProcessEventEx(OwnerAddress, "AddAvailableSpace", _params);
 local RET=readByte(_params + 0x1A);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddAvailableSpace");

BL4.AddBone = function(OwnerAddress, InName, InParent, InTransform, bTransformInGlobal, InBoneType, bSetupUndo, bPrintPythonCommand)
 local _paramsSize = 0x90
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddBone: Failed To Allocate The Params");return;end;
 bTransformInGlobal = bTransformInGlobal or false
 InBoneType = InBoneType or 0
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommand = bPrintPythonCommand or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InName at +0x0, InParent at +0x8, InTransform at +0x20, bTransformInGlobal at +0x80, InBoneType at +0x81, bSetupUndo at +0x82, bPrintPythonCommand at +0x83
 writeQword(_params + 0x0, InName)
 writeQword(_params + 0x8, InParent)
 writeQword(_params + 0x20, InTransform)
 writeByte(_params + 0x80, bTransformInGlobal)
 writeByte(_params + 0x81, InBoneType)
 writeByte(_params + 0x82, bSetupUndo)
 writeByte(_params + 0x83, bPrintPythonCommand)
 UE.CallProcessEventEx(OwnerAddress, "AddBone", _params);
 local RET=readQword(_params + 0x84);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddBone");

BL4.AddChannelHost = function(OwnerAddress, InChannel, InHost, bSetupUndo, bPrintPythonCommand)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddChannelHost: Failed To Allocate The Params");return;end;
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommand = bPrintPythonCommand or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InChannel at +0x0, InHost at +0xC, bSetupUndo at +0x18, bPrintPythonCommand at +0x19
 writeQword(_params + 0x0, InChannel)
 writeQword(_params + 0xC, InHost)
 writeByte(_params + 0x18, bSetupUndo)
 writeByte(_params + 0x19, bPrintPythonCommand)
 UE.CallProcessEventEx(OwnerAddress, "AddChannelHost", _params);
 local RET=readByte(_params + 0x1A);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddChannelHost");

BL4.AddConnector = function(OwnerAddress, InName, InSettings, bSetupUndo, bPrintPythonCommand)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddConnector: Failed To Allocate The Params");return;end;
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommand = bPrintPythonCommand or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InName at +0x0, InSettings at +0x8, bSetupUndo at +0x30, bPrintPythonCommand at +0x31
 writeQword(_params + 0x0, InName)
 writeQword(_params + 0x8, InSettings)
 writeByte(_params + 0x30, bSetupUndo)
 writeByte(_params + 0x31, bPrintPythonCommand)
 UE.CallProcessEventEx(OwnerAddress, "AddConnector", _params);
 local RET=readQword(_params + 0x34);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddConnector");

BL4.AddControl_ForBlueprint = function(OwnerAddress, InName, InParent, InSettings, InValue, bSetupUndo, bPrintPythonCommand)
 local _paramsSize = 0x268
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddControl_ForBlueprint: Failed To Allocate The Params");return;end;
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommand = bPrintPythonCommand or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InName at +0x0, InParent at +0x8, InSettings at +0x18, InValue at +0x1D0, bSetupUndo at +0x254, bPrintPythonCommand at +0x255
 writeQword(_params + 0x0, InName)
 writeQword(_params + 0x8, InParent)
 writeQword(_params + 0x18, InSettings)
 writeQword(_params + 0x1D0, InValue)
 writeByte(_params + 0x254, bSetupUndo)
 writeByte(_params + 0x255, bPrintPythonCommand)
 UE.CallProcessEventEx(OwnerAddress, "AddControl_ForBlueprint", _params);
 local RET=readQword(_params + 0x258);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddControl_ForBlueprint");

BL4.AddCurve = function(OwnerAddress, InName, InValue, bSetupUndo, bPrintPythonCommand)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddCurve: Failed To Allocate The Params");return;end;
 InValue = InValue or 0
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommand = bPrintPythonCommand or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InName at +0x0, InValue at +0x8, bSetupUndo at +0xC, bPrintPythonCommand at +0xD
 writeQword(_params + 0x0, InName)
 writeFloat(_params + 0x8, InValue)
 writeByte(_params + 0xC, bSetupUndo)
 writeByte(_params + 0xD, bPrintPythonCommand)
 UE.CallProcessEventEx(OwnerAddress, "AddCurve", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddCurve");

BL4.AddNull = function(OwnerAddress, InName, InParent, InTransform, bTransformInGlobal, bSetupUndo, bPrintPythonCommand)
 local _paramsSize = 0x90
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddNull: Failed To Allocate The Params");return;end;
 bTransformInGlobal = bTransformInGlobal or false
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommand = bPrintPythonCommand or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InName at +0x0, InParent at +0x8, InTransform at +0x20, bTransformInGlobal at +0x80, bSetupUndo at +0x81, bPrintPythonCommand at +0x82
 writeQword(_params + 0x0, InName)
 writeQword(_params + 0x8, InParent)
 writeQword(_params + 0x20, InTransform)
 writeByte(_params + 0x80, bTransformInGlobal)
 writeByte(_params + 0x81, bSetupUndo)
 writeByte(_params + 0x82, bPrintPythonCommand)
 UE.CallProcessEventEx(OwnerAddress, "AddNull", _params);
 local RET=readQword(_params + 0x84);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddNull");

BL4.AddParent = function(OwnerAddress, InChild, InParent, InWeight, bMaintainGlobalTransform, bSetupUndo)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddParent: Failed To Allocate The Params");return;end;
 InWeight = InWeight or 0
 bMaintainGlobalTransform = bMaintainGlobalTransform or false
 bSetupUndo = bSetupUndo or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InChild at +0x0, InParent at +0xC, InWeight at +0x18, bMaintainGlobalTransform at +0x1C, bSetupUndo at +0x1D
 writeQword(_params + 0x0, InChild)
 writeQword(_params + 0xC, InParent)
 writeFloat(_params + 0x18, InWeight)
 writeByte(_params + 0x1C, bMaintainGlobalTransform)
 writeByte(_params + 0x1D, bSetupUndo)
 UE.CallProcessEventEx(OwnerAddress, "AddParent", _params);
 local RET=readByte(_params + 0x1E);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddParent");

BL4.AddPhysicsElement = function(OwnerAddress, InName, InParent, InSolver, InSettings, InLocalTransform, bSetupUndo, bPrintPythonCommand)
 local _paramsSize = 0xA0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddPhysicsElement: Failed To Allocate The Params");return;end;
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommand = bPrintPythonCommand or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InName at +0x0, InParent at +0x8, InSolver at +0x14, InSettings at +0x24, InLocalTransform at +0x30, bSetupUndo at +0x90, bPrintPythonCommand at +0x91
 writeQword(_params + 0x0, InName)
 writeQword(_params + 0x8, InParent)
 writeQword(_params + 0x14, InSolver)
 writeQword(_params + 0x24, InSettings)
 writeQword(_params + 0x30, InLocalTransform)
 writeByte(_params + 0x90, bSetupUndo)
 writeByte(_params + 0x91, bPrintPythonCommand)
 UE.CallProcessEventEx(OwnerAddress, "AddPhysicsElement", _params);
 local RET=readQword(_params + 0x94);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddPhysicsElement");

BL4.AddSocket = function(OwnerAddress, InName, InParent, InTransform, bTransformInGlobal, InColor, InDescription, bSetupUndo, bPrintPythonCommand)
 local _paramsSize = 0xB8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddSocket: Failed To Allocate The Params");return;end;
 bTransformInGlobal = bTransformInGlobal or false
 InColor = InColor or {R=0,G=0,B=0,A=0}
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommand = bPrintPythonCommand or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InName at +0x0, InParent at +0x8, InTransform at +0x20, bTransformInGlobal at +0x80, InColor at +0x84, InDescription at +0x98, bSetupUndo at +0xA8, bPrintPythonCommand at +0xA9
 writeQword(_params + 0x0, InName)
 writeQword(_params + 0x8, InParent)
 writeQword(_params + 0x20, InTransform)
 writeByte(_params + 0x80, bTransformInGlobal)
 writeFloat(_params + 0x84, (InColor and InColor.R) or 0)
 writeFloat(_params + 0x88, (InColor and InColor.G) or 0)
 writeFloat(_params + 0x8C, (InColor and InColor.B) or 0)
 writeFloat(_params + 0x90, (InColor and InColor.A) or 0)
 writeQword(_params + 0x98, InDescription)
 writeByte(_params + 0xA8, bSetupUndo)
 writeByte(_params + 0xA9, bPrintPythonCommand)
 UE.CallProcessEventEx(OwnerAddress, "AddSocket", _params);
 local RET=readQword(_params + 0xAC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddSocket");

BL4.ClearSelection = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ClearSelection: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "ClearSelection", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ClearSelection");

BL4.DeselectElement = function(OwnerAddress, InKey)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DeselectElement: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0
 writeQword(_params + 0x0, InKey)
 UE.CallProcessEventEx(OwnerAddress, "DeselectElement", _params);
 local RET=readByte(_params + 0xC);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DeselectElement");

BL4.DuplicateElements = function(OwnerAddress, InKeys, bSelectNewElements, bSetupUndo, bPrintPythonCommands)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DuplicateElements: Failed To Allocate The Params");return;end;
 bSelectNewElements = bSelectNewElements or false
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommands = bPrintPythonCommands or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKeys at +0x0, bSelectNewElements at +0x10, bSetupUndo at +0x11, bPrintPythonCommands at +0x12
 writeQword(_params + 0x0, InKeys)
 writeByte(_params + 0x10, bSelectNewElements)
 writeByte(_params + 0x11, bSetupUndo)
 writeByte(_params + 0x12, bPrintPythonCommands)
 UE.CallProcessEventEx(OwnerAddress, "DuplicateElements", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DuplicateElements");

BL4.ExportSelectionToText = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ExportSelectionToText: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "ExportSelectionToText", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ExportSelectionToText");

BL4.ExportToText = function(OwnerAddress, InKeys)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ExportToText: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKeys at +0x0
 writeQword(_params + 0x0, InKeys)
 UE.CallProcessEventEx(OwnerAddress, "ExportToText", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ExportToText");

BL4.GetControlSettings = function(OwnerAddress, InKey)
 local _paramsSize = 0x1C8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetControlSettings: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0
 writeQword(_params + 0x0, InKey)
 UE.CallProcessEventEx(OwnerAddress, "GetControlSettings", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetControlSettings");

BL4.GetHierarchy = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHierarchy: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetHierarchy", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHierarchy");

BL4.ImportBones = function(InSkeleton_Skeleton, InNameSpace, bReplaceExistingBones, bRemoveObsoleteBones, bSelectBones, bSetupUndo, bPrintPythonCommand)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ImportBones: Failed To Allocate The Params");return;end;
 bReplaceExistingBones = bReplaceExistingBones or false
 bRemoveObsoleteBones = bRemoveObsoleteBones or false
 bSelectBones = bSelectBones or false
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommand = bPrintPythonCommand or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSkeleton at +0x0, InNameSpace at +0x8, bReplaceExistingBones at +0x10, bRemoveObsoleteBones at +0x11, bSelectBones at +0x12, bSetupUndo at +0x13, bPrintPythonCommand at +0x14
 writeQword(_params + 0x0, InSkeleton_Skeleton)
 writeQword(_params + 0x8, InNameSpace)
 writeByte(_params + 0x10, bReplaceExistingBones)
 writeByte(_params + 0x11, bRemoveObsoleteBones)
 writeByte(_params + 0x12, bSelectBones)
 writeByte(_params + 0x13, bSetupUndo)
 writeByte(_params + 0x14, bPrintPythonCommand)
 UE.CallProcessEventEx(InSkeleton_Skeleton, "ImportBones", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ImportBones");

BL4.ImportCurves = function(InSkeleton_Skeleton, InNameSpace, bSelectCurves, bSetupUndo, bPrintPythonCommand)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ImportCurves: Failed To Allocate The Params");return;end;
 bSelectCurves = bSelectCurves or false
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommand = bPrintPythonCommand or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSkeleton at +0x0, InNameSpace at +0x8, bSelectCurves at +0x10, bSetupUndo at +0x11, bPrintPythonCommand at +0x12
 writeQword(_params + 0x0, InSkeleton_Skeleton)
 writeQword(_params + 0x8, InNameSpace)
 writeByte(_params + 0x10, bSelectCurves)
 writeByte(_params + 0x11, bSetupUndo)
 writeByte(_params + 0x12, bPrintPythonCommand)
 UE.CallProcessEventEx(InSkeleton_Skeleton, "ImportCurves", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ImportCurves");

BL4.ImportCurvesFromSkeletalMesh = function(InSkeletalMesh_SkeletalMesh, InNameSpace, bSelectCurves, bSetupUndo, bPrintPythonCommand)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ImportCurvesFromSkeletalMesh: Failed To Allocate The Params");return;end;
 bSelectCurves = bSelectCurves or false
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommand = bPrintPythonCommand or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSkeletalMesh at +0x0, InNameSpace at +0x8, bSelectCurves at +0x10, bSetupUndo at +0x11, bPrintPythonCommand at +0x12
 writeQword(_params + 0x0, InSkeletalMesh_SkeletalMesh)
 writeQword(_params + 0x8, InNameSpace)
 writeByte(_params + 0x10, bSelectCurves)
 writeByte(_params + 0x11, bSetupUndo)
 writeByte(_params + 0x12, bPrintPythonCommand)
 UE.CallProcessEventEx(InSkeletalMesh_SkeletalMesh, "ImportCurvesFromSkeletalMesh", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ImportCurvesFromSkeletalMesh");

BL4.ImportFromText = function(OwnerAddress, InContent, bReplaceExistingElements, bSelectNewElements, bSetupUndo, bPrintPythonCommands)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ImportFromText: Failed To Allocate The Params");return;end;
 bReplaceExistingElements = bReplaceExistingElements or false
 bSelectNewElements = bSelectNewElements or false
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommands = bPrintPythonCommands or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InContent at +0x0, bReplaceExistingElements at +0x10, bSelectNewElements at +0x11, bSetupUndo at +0x12, bPrintPythonCommands at +0x13
 writeQword(_params + 0x0, InContent)
 writeByte(_params + 0x10, bReplaceExistingElements)
 writeByte(_params + 0x11, bSelectNewElements)
 writeByte(_params + 0x12, bSetupUndo)
 writeByte(_params + 0x13, bPrintPythonCommands)
 UE.CallProcessEventEx(OwnerAddress, "ImportFromText", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ImportFromText");

BL4.MirrorElements = function(OwnerAddress, InKeys, InSettings, bSelectNewElements, bSetupUndo, bPrintPythonCommands)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MirrorElements: Failed To Allocate The Params");return;end;
 bSelectNewElements = bSelectNewElements or false
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommands = bPrintPythonCommands or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKeys at +0x0, InSettings at +0x10, bSelectNewElements at +0x38, bSetupUndo at +0x39, bPrintPythonCommands at +0x3A
 writeQword(_params + 0x0, InKeys)
 writeQword(_params + 0x10, InSettings)
 writeByte(_params + 0x38, bSelectNewElements)
 writeByte(_params + 0x39, bSetupUndo)
 writeByte(_params + 0x3A, bPrintPythonCommands)
 UE.CallProcessEventEx(OwnerAddress, "MirrorElements", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MirrorElements");

BL4.RemoveAllParents = function(OwnerAddress, InChild, bMaintainGlobalTransform, bSetupUndo, bPrintPythonCommand)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveAllParents: Failed To Allocate The Params");return;end;
 bMaintainGlobalTransform = bMaintainGlobalTransform or false
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommand = bPrintPythonCommand or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InChild at +0x0, bMaintainGlobalTransform at +0xC, bSetupUndo at +0xD, bPrintPythonCommand at +0xE
 writeQword(_params + 0x0, InChild)
 writeByte(_params + 0xC, bMaintainGlobalTransform)
 writeByte(_params + 0xD, bSetupUndo)
 writeByte(_params + 0xE, bPrintPythonCommand)
 UE.CallProcessEventEx(OwnerAddress, "RemoveAllParents", _params);
 local RET=readByte(_params + 0xF);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RemoveAllParents");

BL4.RemoveAvailableSpace = function(OwnerAddress, InControl, InSpace, bSetupUndo, bPrintPythonCommand)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveAvailableSpace: Failed To Allocate The Params");return;end;
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommand = bPrintPythonCommand or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InControl at +0x0, InSpace at +0xC, bSetupUndo at +0x18, bPrintPythonCommand at +0x19
 writeQword(_params + 0x0, InControl)
 writeQword(_params + 0xC, InSpace)
 writeByte(_params + 0x18, bSetupUndo)
 writeByte(_params + 0x19, bPrintPythonCommand)
 UE.CallProcessEventEx(OwnerAddress, "RemoveAvailableSpace", _params);
 local RET=readByte(_params + 0x1A);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RemoveAvailableSpace");

BL4.RemoveChannelHost = function(OwnerAddress, InChannel, InHost, bSetupUndo, bPrintPythonCommand)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveChannelHost: Failed To Allocate The Params");return;end;
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommand = bPrintPythonCommand or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InChannel at +0x0, InHost at +0xC, bSetupUndo at +0x18, bPrintPythonCommand at +0x19
 writeQword(_params + 0x0, InChannel)
 writeQword(_params + 0xC, InHost)
 writeByte(_params + 0x18, bSetupUndo)
 writeByte(_params + 0x19, bPrintPythonCommand)
 UE.CallProcessEventEx(OwnerAddress, "RemoveChannelHost", _params);
 local RET=readByte(_params + 0x1A);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RemoveChannelHost");

BL4.RemoveElement = function(OwnerAddress, InElement, bSetupUndo, bPrintPythonCommand)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveElement: Failed To Allocate The Params");return;end;
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommand = bPrintPythonCommand or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InElement at +0x0, bSetupUndo at +0xC, bPrintPythonCommand at +0xD
 writeQword(_params + 0x0, InElement)
 writeByte(_params + 0xC, bSetupUndo)
 writeByte(_params + 0xD, bPrintPythonCommand)
 UE.CallProcessEventEx(OwnerAddress, "RemoveElement", _params);
 local RET=readByte(_params + 0xE);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RemoveElement");

BL4.RemoveParent = function(OwnerAddress, InChild, InParent, bMaintainGlobalTransform, bSetupUndo, bPrintPythonCommand)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveParent: Failed To Allocate The Params");return;end;
 bMaintainGlobalTransform = bMaintainGlobalTransform or false
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommand = bPrintPythonCommand or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InChild at +0x0, InParent at +0xC, bMaintainGlobalTransform at +0x18, bSetupUndo at +0x19, bPrintPythonCommand at +0x1A
 writeQword(_params + 0x0, InChild)
 writeQword(_params + 0xC, InParent)
 writeByte(_params + 0x18, bMaintainGlobalTransform)
 writeByte(_params + 0x19, bSetupUndo)
 writeByte(_params + 0x1A, bPrintPythonCommand)
 UE.CallProcessEventEx(OwnerAddress, "RemoveParent", _params);
 local RET=readByte(_params + 0x1B);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RemoveParent");

BL4.RenameElement = function(OwnerAddress, InElement, InName, bSetupUndo, bPrintPythonCommand, bClearSelection)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RenameElement: Failed To Allocate The Params");return;end;
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommand = bPrintPythonCommand or false
 bClearSelection = bClearSelection or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InElement at +0x0, InName at +0xC, bSetupUndo at +0x14, bPrintPythonCommand at +0x15, bClearSelection at +0x16
 writeQword(_params + 0x0, InElement)
 writeQword(_params + 0xC, InName)
 writeByte(_params + 0x14, bSetupUndo)
 writeByte(_params + 0x15, bPrintPythonCommand)
 writeByte(_params + 0x16, bClearSelection)
 UE.CallProcessEventEx(OwnerAddress, "RenameElement", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RenameElement");

BL4.ReorderElement = function(OwnerAddress, InElement, InIndex, bSetupUndo, bPrintPythonCommand)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReorderElement: Failed To Allocate The Params");return;end;
 InIndex = InIndex or 0
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommand = bPrintPythonCommand or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InElement at +0x0, InIndex at +0xC, bSetupUndo at +0x10, bPrintPythonCommand at +0x11
 writeQword(_params + 0x0, InElement)
 writeInteger(_params + 0xC, InIndex)
 writeByte(_params + 0x10, bSetupUndo)
 writeByte(_params + 0x11, bPrintPythonCommand)
 UE.CallProcessEventEx(OwnerAddress, "ReorderElement", _params);
 local RET=readByte(_params + 0x12);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ReorderElement");

BL4.SelectElement = function(OwnerAddress, InKey, bSelect, bClearSelection)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SelectElement: Failed To Allocate The Params");return;end;
 bSelect = bSelect or false
 bClearSelection = bClearSelection or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, bSelect at +0xC, bClearSelection at +0xD
 writeQword(_params + 0x0, InKey)
 writeByte(_params + 0xC, bSelect)
 writeByte(_params + 0xD, bClearSelection)
 UE.CallProcessEventEx(OwnerAddress, "SelectElement", _params);
 local RET=readByte(_params + 0xE);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SelectElement");

BL4.SetAvailableSpaceIndex = function(OwnerAddress, InControl, InSpace, InIndex, bSetupUndo, bPrintPythonCommand)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAvailableSpaceIndex: Failed To Allocate The Params");return;end;
 InIndex = InIndex or 0
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommand = bPrintPythonCommand or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InControl at +0x0, InSpace at +0xC, InIndex at +0x18, bSetupUndo at +0x1C, bPrintPythonCommand at +0x1D
 writeQword(_params + 0x0, InControl)
 writeQword(_params + 0xC, InSpace)
 writeInteger(_params + 0x18, InIndex)
 writeByte(_params + 0x1C, bSetupUndo)
 writeByte(_params + 0x1D, bPrintPythonCommand)
 UE.CallProcessEventEx(OwnerAddress, "SetAvailableSpaceIndex", _params);
 local RET=readByte(_params + 0x1E);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetAvailableSpaceIndex");

BL4.SetControlSettings = function(OwnerAddress, InKey, InSettings, bSetupUndo)
 local _paramsSize = 0x1D0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControlSettings: Failed To Allocate The Params");return;end;
 bSetupUndo = bSetupUndo or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKey at +0x0, InSettings at +0x10, bSetupUndo at +0x1C8
 writeQword(_params + 0x0, InKey)
 writeQword(_params + 0x10, InSettings)
 writeByte(_params + 0x1C8, bSetupUndo)
 UE.CallProcessEventEx(OwnerAddress, "SetControlSettings", _params);
 local RET=readByte(_params + 0x1C9);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetControlSettings");

BL4.SetDisplayName = function(OwnerAddress, InControl, InDisplayName, bRenameElement, bSetupUndo, bPrintPythonCommand)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDisplayName: Failed To Allocate The Params");return;end;
 bRenameElement = bRenameElement or false
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommand = bPrintPythonCommand or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InControl at +0x0, InDisplayName at +0xC, bRenameElement at +0x14, bSetupUndo at +0x15, bPrintPythonCommand at +0x16
 writeQword(_params + 0x0, InControl)
 writeQword(_params + 0xC, InDisplayName)
 writeByte(_params + 0x14, bRenameElement)
 writeByte(_params + 0x15, bSetupUndo)
 writeByte(_params + 0x16, bPrintPythonCommand)
 UE.CallProcessEventEx(OwnerAddress, "SetDisplayName", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetDisplayName");

BL4.SetHierarchy = function(InHierarchy_RigHierarchy)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetHierarchy: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InHierarchy at +0x0
 writeQword(_params + 0x0, InHierarchy_RigHierarchy)
 UE.CallProcessEventEx(InHierarchy_RigHierarchy, "SetHierarchy", _params);
 deAlloc(_params);
end
FNR("BL4.SetHierarchy");

BL4.SetParent = function(OwnerAddress, InChild, InParent, bMaintainGlobalTransform, bSetupUndo, bPrintPythonCommand)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetParent: Failed To Allocate The Params");return;end;
 bMaintainGlobalTransform = bMaintainGlobalTransform or false
 bSetupUndo = bSetupUndo or false
 bPrintPythonCommand = bPrintPythonCommand or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InChild at +0x0, InParent at +0xC, bMaintainGlobalTransform at +0x18, bSetupUndo at +0x19, bPrintPythonCommand at +0x1A
 writeQword(_params + 0x0, InChild)
 writeQword(_params + 0xC, InParent)
 writeByte(_params + 0x18, bMaintainGlobalTransform)
 writeByte(_params + 0x19, bSetupUndo)
 writeByte(_params + 0x1A, bPrintPythonCommand)
 UE.CallProcessEventEx(OwnerAddress, "SetParent", _params);
 local RET=readByte(_params + 0x1B);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetParent");

BL4.SetSelection = function(OwnerAddress, InKeys, bPrintPythonCommand)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSelection: Failed To Allocate The Params");return;end;
 bPrintPythonCommand = bPrintPythonCommand or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InKeys at +0x0, bPrintPythonCommand at +0x10
 writeQword(_params + 0x0, InKeys)
 writeByte(_params + 0x10, bPrintPythonCommand)
 UE.CallProcessEventEx(OwnerAddress, "SetSelection", _params);
 local RET=readByte(_params + 0x11);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetSelection");

