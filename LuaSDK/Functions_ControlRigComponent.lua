BL4.AddMappedCompleteSkeletalMesh = function(SkeletalMeshComponent, InDirection)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddMappedCompleteSkeletalMesh: Failed To Allocate The Params");return;end;
 InDirection = InDirection or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SkeletalMeshComponent at +0x0, InDirection at +0x8
 writeQword(_params + 0x0, SkeletalMeshComponent)
 writeByte(_params + 0x8, InDirection)
 UE.CallProcessEventEx(SkeletalMeshComponent, "AddMappedCompleteSkeletalMesh", _params);
 deAlloc(_params);
end
FNR("BL4.AddMappedCompleteSkeletalMesh");

BL4.AddMappedComponents = function(OwnerAddress, Components)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddMappedComponents: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Components at +0x0
 writeQword(_params + 0x0, Components)
 UE.CallProcessEventEx(OwnerAddress, "AddMappedComponents", _params);
 deAlloc(_params);
end
FNR("BL4.AddMappedComponents");

BL4.AddMappedElements = function(OwnerAddress, NewMappedElements)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddMappedElements: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewMappedElements at +0x0
 writeQword(_params + 0x0, NewMappedElements)
 UE.CallProcessEventEx(OwnerAddress, "AddMappedElements", _params);
 deAlloc(_params);
end
FNR("BL4.AddMappedElements");

BL4.AddMappedSkeletalMesh = function(SkeletalMeshComponent, Bones, Curves, InDirection)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddMappedSkeletalMesh: Failed To Allocate The Params");return;end;
 InDirection = InDirection or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SkeletalMeshComponent at +0x0, Bones at +0x8, Curves at +0x18, InDirection at +0x28
 writeQword(_params + 0x0, SkeletalMeshComponent)
 writeQword(_params + 0x8, Bones)
 writeQword(_params + 0x18, Curves)
 writeByte(_params + 0x28, InDirection)
 UE.CallProcessEventEx(SkeletalMeshComponent, "AddMappedSkeletalMesh", _params);
 deAlloc(_params);
end
FNR("BL4.AddMappedSkeletalMesh");

BL4.CanExecute = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CanExecute: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "CanExecute", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CanExecute");

BL4.DoesElementExist = function(OwnerAddress, Name, ElementType)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DoesElementExist: Failed To Allocate The Params");return;end;
 ElementType = ElementType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Name at +0x0, ElementType at +0x8
 writeQword(_params + 0x0, Name)
 writeByte(_params + 0x8, ElementType)
 UE.CallProcessEventEx(OwnerAddress, "DoesElementExist", _params);
 local RET=readByte(_params + 0x9);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DoesElementExist");

BL4.GetAbsoluteTime = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAbsoluteTime: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAbsoluteTime", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAbsoluteTime");

BL4.GetBoneTransform = function(OwnerAddress, BoneName, Space)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetBoneTransform: Failed To Allocate The Params");return;end;
 Space = Space or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0, Space at +0x8
 writeQword(_params + 0x0, BoneName)
 writeByte(_params + 0x8, Space)
 UE.CallProcessEventEx(OwnerAddress, "GetBoneTransform", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetBoneTransform");

BL4.GetControlBool = function(OwnerAddress, ControlName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetControlBool: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ControlName at +0x0
 writeQword(_params + 0x0, ControlName)
 UE.CallProcessEventEx(OwnerAddress, "GetControlBool", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetControlBool");

BL4.GetControlFloat = function(OwnerAddress, ControlName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetControlFloat: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ControlName at +0x0
 writeQword(_params + 0x0, ControlName)
 UE.CallProcessEventEx(OwnerAddress, "GetControlFloat", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetControlFloat");

BL4.GetControlInt = function(OwnerAddress, ControlName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetControlInt: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ControlName at +0x0
 writeQword(_params + 0x0, ControlName)
 UE.CallProcessEventEx(OwnerAddress, "GetControlInt", _params);
 local RET=readInteger(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetControlInt");

BL4.GetControlOffset = function(OwnerAddress, ControlName, Space)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetControlOffset: Failed To Allocate The Params");return;end;
 Space = Space or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ControlName at +0x0, Space at +0x8
 writeQword(_params + 0x0, ControlName)
 writeByte(_params + 0x8, Space)
 UE.CallProcessEventEx(OwnerAddress, "GetControlOffset", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetControlOffset");

BL4.GetControlPosition = function(OwnerAddress, ControlName, Space)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetControlPosition: Failed To Allocate The Params");return;end;
 Space = Space or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ControlName at +0x0, Space at +0x8
 writeQword(_params + 0x0, ControlName)
 writeByte(_params + 0x8, Space)
 UE.CallProcessEventEx(OwnerAddress, "GetControlPosition", _params);
 local RET={X=readFloat(_params+0x10),Y=readFloat(_params+0x18),Z=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetControlPosition");

BL4.GetControlRig = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetControlRig: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetControlRig", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetControlRig");

BL4.GetControlRotator = function(OwnerAddress, ControlName, Space)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetControlRotator: Failed To Allocate The Params");return;end;
 Space = Space or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ControlName at +0x0, Space at +0x8
 writeQword(_params + 0x0, ControlName)
 writeByte(_params + 0x8, Space)
 UE.CallProcessEventEx(OwnerAddress, "GetControlRotator", _params);
 local RET={Pitch=readFloat(_params+0x10),Yaw=readFloat(_params+0x18),Roll=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetControlRotator");

BL4.GetControlScale = function(OwnerAddress, ControlName, Space)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetControlScale: Failed To Allocate The Params");return;end;
 Space = Space or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ControlName at +0x0, Space at +0x8
 writeQword(_params + 0x0, ControlName)
 writeByte(_params + 0x8, Space)
 UE.CallProcessEventEx(OwnerAddress, "GetControlScale", _params);
 local RET={X=readFloat(_params+0x10),Y=readFloat(_params+0x18),Z=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetControlScale");

BL4.GetControlTransform = function(OwnerAddress, ControlName, Space)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetControlTransform: Failed To Allocate The Params");return;end;
 Space = Space or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ControlName at +0x0, Space at +0x8
 writeQword(_params + 0x0, ControlName)
 writeByte(_params + 0x8, Space)
 UE.CallProcessEventEx(OwnerAddress, "GetControlTransform", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetControlTransform");

BL4.GetControlVector2D = function(OwnerAddress, ControlName)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetControlVector2D: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ControlName at +0x0
 writeQword(_params + 0x0, ControlName)
 UE.CallProcessEventEx(OwnerAddress, "GetControlVector2D", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetControlVector2D");

BL4.GetElementNames = function(OwnerAddress, ElementType)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetElementNames: Failed To Allocate The Params");return;end;
 ElementType = ElementType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ElementType at +0x0
 writeByte(_params + 0x0, ElementType)
 UE.CallProcessEventEx(OwnerAddress, "GetElementNames", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetElementNames");

BL4.GetInitialBoneTransform = function(OwnerAddress, BoneName, Space)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInitialBoneTransform: Failed To Allocate The Params");return;end;
 Space = Space or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0, Space at +0x8
 writeQword(_params + 0x0, BoneName)
 writeByte(_params + 0x8, Space)
 UE.CallProcessEventEx(OwnerAddress, "GetInitialBoneTransform", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInitialBoneTransform");

BL4.GetInitialSpaceTransform = function(OwnerAddress, SpaceName, Space)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInitialSpaceTransform: Failed To Allocate The Params");return;end;
 Space = Space or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SpaceName at +0x0, Space at +0x8
 writeQword(_params + 0x0, SpaceName)
 writeByte(_params + 0x8, Space)
 UE.CallProcessEventEx(OwnerAddress, "GetInitialSpaceTransform", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInitialSpaceTransform");

BL4.GetSpaceTransform = function(OwnerAddress, SpaceName, Space)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSpaceTransform: Failed To Allocate The Params");return;end;
 Space = Space or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SpaceName at +0x0, Space at +0x8
 writeQword(_params + 0x0, SpaceName)
 writeByte(_params + 0x8, Space)
 UE.CallProcessEventEx(OwnerAddress, "GetSpaceTransform", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSpaceTransform");

BL4.OnPostConstruction = function(Component_ControlRigComponent)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnPostConstruction: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Component at +0x0
 writeQword(_params + 0x0, Component_ControlRigComponent)
 UE.CallProcessEventEx(Component_ControlRigComponent, "OnPostConstruction", _params);
 deAlloc(_params);
end
FNR("BL4.OnPostConstruction");

BL4.OnPostForwardsSolve = function(Component_ControlRigComponent)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnPostForwardsSolve: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Component at +0x0
 writeQword(_params + 0x0, Component_ControlRigComponent)
 UE.CallProcessEventEx(Component_ControlRigComponent, "OnPostForwardsSolve", _params);
 deAlloc(_params);
end
FNR("BL4.OnPostForwardsSolve");

BL4.OnPostInitialize = function(Component_ControlRigComponent)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnPostInitialize: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Component at +0x0
 writeQword(_params + 0x0, Component_ControlRigComponent)
 UE.CallProcessEventEx(Component_ControlRigComponent, "OnPostInitialize", _params);
 deAlloc(_params);
end
FNR("BL4.OnPostInitialize");

BL4.OnPreConstruction = function(Component_ControlRigComponent)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnPreConstruction: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Component at +0x0
 writeQword(_params + 0x0, Component_ControlRigComponent)
 UE.CallProcessEventEx(Component_ControlRigComponent, "OnPreConstruction", _params);
 deAlloc(_params);
end
FNR("BL4.OnPreConstruction");

BL4.OnPreForwardsSolve = function(Component_ControlRigComponent)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnPreForwardsSolve: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Component at +0x0
 writeQword(_params + 0x0, Component_ControlRigComponent)
 UE.CallProcessEventEx(Component_ControlRigComponent, "OnPreForwardsSolve", _params);
 deAlloc(_params);
end
FNR("BL4.OnPreForwardsSolve");

BL4.OnPreInitialize = function(Component_ControlRigComponent)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnPreInitialize: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Component at +0x0
 writeQword(_params + 0x0, Component_ControlRigComponent)
 UE.CallProcessEventEx(Component_ControlRigComponent, "OnPreInitialize", _params);
 deAlloc(_params);
end
FNR("BL4.OnPreInitialize");

BL4.SetBoneInitialTransformsFromSkeletalMesh = function(InSkeletalMesh_SkeletalMesh)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBoneInitialTransformsFromSkeletalMesh: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InSkeletalMesh at +0x0
 writeQword(_params + 0x0, InSkeletalMesh_SkeletalMesh)
 UE.CallProcessEventEx(InSkeletalMesh_SkeletalMesh, "SetBoneInitialTransformsFromSkeletalMesh", _params);
 deAlloc(_params);
end
FNR("BL4.SetBoneInitialTransformsFromSkeletalMesh");

BL4.SetBoneTransform = function(OwnerAddress, BoneName, Transform, Space, Weight, bPropagateToChildren)
 local _paramsSize = 0x80
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetBoneTransform: Failed To Allocate The Params");return;end;
 Space = Space or 0
 Weight = Weight or 0
 bPropagateToChildren = bPropagateToChildren or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0, Transform at +0x10, Space at +0x70, Weight at +0x74, bPropagateToChildren at +0x78
 writeQword(_params + 0x0, BoneName)
 writeQword(_params + 0x10, Transform)
 writeByte(_params + 0x70, Space)
 writeFloat(_params + 0x74, Weight)
 writeByte(_params + 0x78, bPropagateToChildren)
 UE.CallProcessEventEx(OwnerAddress, "SetBoneTransform", _params);
 deAlloc(_params);
end
FNR("BL4.SetBoneTransform");

BL4.SetControlBool = function(OwnerAddress, ControlName, Value)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControlBool: Failed To Allocate The Params");return;end;
 Value = Value or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ControlName at +0x0, Value at +0x8
 writeQword(_params + 0x0, ControlName)
 writeByte(_params + 0x8, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetControlBool", _params);
 deAlloc(_params);
end
FNR("BL4.SetControlBool");

BL4.SetControlFloat = function(OwnerAddress, ControlName, Value)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControlFloat: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ControlName at +0x0, Value at +0x8
 writeQword(_params + 0x0, ControlName)
 writeFloat(_params + 0x8, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetControlFloat", _params);
 deAlloc(_params);
end
FNR("BL4.SetControlFloat");

BL4.SetControlInt = function(OwnerAddress, ControlName, Value)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControlInt: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ControlName at +0x0, Value at +0x8
 writeQword(_params + 0x0, ControlName)
 writeInteger(_params + 0x8, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetControlInt", _params);
 deAlloc(_params);
end
FNR("BL4.SetControlInt");

BL4.SetControlOffset = function(OwnerAddress, ControlName, OffsetTransform, Space)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControlOffset: Failed To Allocate The Params");return;end;
 Space = Space or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ControlName at +0x0, OffsetTransform at +0x10, Space at +0x70
 writeQword(_params + 0x0, ControlName)
 writeQword(_params + 0x10, OffsetTransform)
 writeByte(_params + 0x70, Space)
 UE.CallProcessEventEx(OwnerAddress, "SetControlOffset", _params);
 deAlloc(_params);
end
FNR("BL4.SetControlOffset");

BL4.SetControlPosition = function(OwnerAddress, ControlName, Value, Space)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControlPosition: Failed To Allocate The Params");return;end;
 Value = Value or {X=0,Y=0,Z=0}
 Space = Space or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ControlName at +0x0, Value at +0x8, Space at +0x20
 writeQword(_params + 0x0, ControlName)
 writeDouble(_params + 0x8, (Value and Value.X) or 0)
 writeDouble(_params + 0x10, (Value and Value.Y) or 0)
 writeDouble(_params + 0x18, (Value and Value.Z) or 0)
 writeByte(_params + 0x20, Space)
 UE.CallProcessEventEx(OwnerAddress, "SetControlPosition", _params);
 deAlloc(_params);
end
FNR("BL4.SetControlPosition");

BL4.SetControlRigClass = function(InControlRigClass_Class)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControlRigClass: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InControlRigClass at +0x0
 writeQword(_params + 0x0, InControlRigClass_Class)
 UE.CallProcessEventEx(InControlRigClass_Class, "SetControlRigClass", _params);
 deAlloc(_params);
end
FNR("BL4.SetControlRigClass");

BL4.SetControlRotator = function(OwnerAddress, ControlName, Value, Space)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControlRotator: Failed To Allocate The Params");return;end;
 Value = Value or {Pitch=0,Yaw=0,Roll=0}
 Space = Space or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ControlName at +0x0, Value at +0x8, Space at +0x20
 writeQword(_params + 0x0, ControlName)
 writeDouble(_params + 0x8, (Value and Value.Pitch) or 0)
 writeDouble(_params + 0x10, (Value and Value.Yaw) or 0)
 writeDouble(_params + 0x18, (Value and Value.Roll) or 0)
 writeByte(_params + 0x20, Space)
 UE.CallProcessEventEx(OwnerAddress, "SetControlRotator", _params);
 deAlloc(_params);
end
FNR("BL4.SetControlRotator");

BL4.SetControlScale = function(OwnerAddress, ControlName, Value, Space)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControlScale: Failed To Allocate The Params");return;end;
 Value = Value or {X=0,Y=0,Z=0}
 Space = Space or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ControlName at +0x0, Value at +0x8, Space at +0x20
 writeQword(_params + 0x0, ControlName)
 writeDouble(_params + 0x8, (Value and Value.X) or 0)
 writeDouble(_params + 0x10, (Value and Value.Y) or 0)
 writeDouble(_params + 0x18, (Value and Value.Z) or 0)
 writeByte(_params + 0x20, Space)
 UE.CallProcessEventEx(OwnerAddress, "SetControlScale", _params);
 deAlloc(_params);
end
FNR("BL4.SetControlScale");

BL4.SetControlTransform = function(OwnerAddress, ControlName, Value, Space)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControlTransform: Failed To Allocate The Params");return;end;
 Space = Space or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ControlName at +0x0, Value at +0x10, Space at +0x70
 writeQword(_params + 0x0, ControlName)
 writeQword(_params + 0x10, Value)
 writeByte(_params + 0x70, Space)
 UE.CallProcessEventEx(OwnerAddress, "SetControlTransform", _params);
 deAlloc(_params);
end
FNR("BL4.SetControlTransform");

BL4.SetControlVector2D = function(OwnerAddress, ControlName, Value)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetControlVector2D: Failed To Allocate The Params");return;end;
 Value = Value or {X=0,Y=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ControlName at +0x0, Value at +0x8
 writeQword(_params + 0x0, ControlName)
 writeDouble(_params + 0x8, (Value and Value.X) or 0)
 writeDouble(_params + 0x10, (Value and Value.Y) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetControlVector2D", _params);
 deAlloc(_params);
end
FNR("BL4.SetControlVector2D");

BL4.SetInitialBoneTransform = function(OwnerAddress, BoneName, InitialTransform, Space, bPropagateToChildren)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetInitialBoneTransform: Failed To Allocate The Params");return;end;
 Space = Space or 0
 bPropagateToChildren = bPropagateToChildren or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0, InitialTransform at +0x10, Space at +0x70, bPropagateToChildren at +0x71
 writeQword(_params + 0x0, BoneName)
 writeQword(_params + 0x10, InitialTransform)
 writeByte(_params + 0x70, Space)
 writeByte(_params + 0x71, bPropagateToChildren)
 UE.CallProcessEventEx(OwnerAddress, "SetInitialBoneTransform", _params);
 deAlloc(_params);
end
FNR("BL4.SetInitialBoneTransform");

BL4.SetInitialSpaceTransform = function(OwnerAddress, SpaceName, InitialTransform, Space)
 local _paramsSize = 0x78
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetInitialSpaceTransform: Failed To Allocate The Params");return;end;
 Space = Space or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SpaceName at +0x0, InitialTransform at +0x10, Space at +0x70
 writeQword(_params + 0x0, SpaceName)
 writeQword(_params + 0x10, InitialTransform)
 writeByte(_params + 0x70, Space)
 UE.CallProcessEventEx(OwnerAddress, "SetInitialSpaceTransform", _params);
 deAlloc(_params);
end
FNR("BL4.SetInitialSpaceTransform");

BL4.SetMappedElements = function(OwnerAddress, NewMappedElements)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMappedElements: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewMappedElements at +0x0
 writeQword(_params + 0x0, NewMappedElements)
 UE.CallProcessEventEx(OwnerAddress, "SetMappedElements", _params);
 deAlloc(_params);
end
FNR("BL4.SetMappedElements");

BL4.SetObjectBinding = function(InObjectToBind_Object)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetObjectBinding: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InObjectToBind at +0x0
 writeQword(_params + 0x0, InObjectToBind_Object)
 UE.CallProcessEventEx(InObjectToBind_Object, "SetObjectBinding", _params);
 deAlloc(_params);
end
FNR("BL4.SetObjectBinding");

BL4.Update = function(OwnerAddress, DeltaTime)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Update: Failed To Allocate The Params");return;end;
 DeltaTime = DeltaTime or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: DeltaTime at +0x0
 writeFloat(_params + 0x0, DeltaTime)
 UE.CallProcessEventEx(OwnerAddress, "Update", _params);
 deAlloc(_params);
end
FNR("BL4.Update");

