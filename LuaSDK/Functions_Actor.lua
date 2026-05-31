BL4.ActorHasTag = function(OwnerAddress, Tag)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ActorHasTag: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Tag at +0x0
 writeQword(_params + 0x0, Tag)
 UE.CallProcessEventEx(OwnerAddress, "ActorHasTag", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ActorHasTag");

BL4.AddComponent = function(OwnerAddress, TemplateName, bManualAttachment, RelativeTransform, ComponentTemplateContext_Object, bDeferredFinish)
 local _paramsSize = 0x88
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddComponent: Failed To Allocate The Params");return;end;
 bManualAttachment = bManualAttachment or false
 bDeferredFinish = bDeferredFinish or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TemplateName at +0x0, bManualAttachment at +0x8, RelativeTransform at +0x10, ComponentTemplateContext at +0x70, bDeferredFinish at +0x78
 writeQword(_params + 0x0, TemplateName)
 writeByte(_params + 0x8, bManualAttachment)
 writeQword(_params + 0x10, RelativeTransform)
 writeQword(_params + 0x70, ComponentTemplateContext_Object)
 writeByte(_params + 0x78, bDeferredFinish)
 UE.CallProcessEventEx(OwnerAddress, "AddComponent", _params);
 local RET=readQword(_params + 0x80);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddComponent");

BL4.AddComponentByClass = function(Class, bManualAttachment, RelativeTransform, bDeferredFinish)
 local _paramsSize = 0x80
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddComponentByClass: Failed To Allocate The Params");return;end;
 bManualAttachment = bManualAttachment or false
 bDeferredFinish = bDeferredFinish or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Class at +0x0, bManualAttachment at +0x8, RelativeTransform at +0x10, bDeferredFinish at +0x70
 writeQword(_params + 0x0, Class)
 writeByte(_params + 0x8, bManualAttachment)
 writeQword(_params + 0x10, RelativeTransform)
 writeByte(_params + 0x70, bDeferredFinish)
 UE.CallProcessEventEx(Class, "AddComponentByClass", _params);
 local RET=readQword(_params + 0x78);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AddComponentByClass");

BL4.AddTickPrerequisiteActor = function(PrerequisiteActor_Actor)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddTickPrerequisiteActor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PrerequisiteActor at +0x0
 writeQword(_params + 0x0, PrerequisiteActor_Actor)
 UE.CallProcessEventEx(PrerequisiteActor_Actor, "AddTickPrerequisiteActor", _params);
 deAlloc(_params);
end
FNR("BL4.AddTickPrerequisiteActor");

BL4.AddTickPrerequisiteComponent = function(PrerequisiteComponent_ActorComponent)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddTickPrerequisiteComponent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PrerequisiteComponent at +0x0
 writeQword(_params + 0x0, PrerequisiteComponent_ActorComponent)
 UE.CallProcessEventEx(PrerequisiteComponent_ActorComponent, "AddTickPrerequisiteComponent", _params);
 deAlloc(_params);
end
FNR("BL4.AddTickPrerequisiteComponent");

BL4.CanTriggerResimulation = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CanTriggerResimulation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "CanTriggerResimulation", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.CanTriggerResimulation");

BL4.CreateInputComponent = function(InputComponentToCreate_Class)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CreateInputComponent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InputComponentToCreate at +0x0
 writeQword(_params + 0x0, InputComponentToCreate_Class)
 UE.CallProcessEventEx(InputComponentToCreate_Class, "CreateInputComponent", _params);
 deAlloc(_params);
end
FNR("BL4.CreateInputComponent");

BL4.DetachRootComponentFromParent = function(OwnerAddress, bMaintainWorldPosition)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DetachRootComponentFromParent: Failed To Allocate The Params");return;end;
 bMaintainWorldPosition = bMaintainWorldPosition or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bMaintainWorldPosition at +0x0
 writeByte(_params + 0x0, bMaintainWorldPosition)
 UE.CallProcessEventEx(OwnerAddress, "DetachRootComponentFromParent", _params);
 deAlloc(_params);
end
FNR("BL4.DetachRootComponentFromParent");

BL4.DisableInput = function(PlayerController)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DisableInput: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PlayerController at +0x0
 writeQword(_params + 0x0, PlayerController)
 UE.CallProcessEventEx(PlayerController, "DisableInput", _params);
 deAlloc(_params);
end
FNR("BL4.DisableInput");

BL4.EnableInput = function(PlayerController)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EnableInput: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PlayerController at +0x0
 writeQword(_params + 0x0, PlayerController)
 UE.CallProcessEventEx(PlayerController, "EnableInput", _params);
 deAlloc(_params);
end
FNR("BL4.EnableInput");

BL4.FindComponentByTag = function(ComponentClass_Class, Tag)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FindComponentByTag: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ComponentClass at +0x0, Tag at +0x8
 writeQword(_params + 0x0, ComponentClass_Class)
 writeQword(_params + 0x8, Tag)
 UE.CallProcessEventEx(ComponentClass_Class, "FindComponentByTag", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.FindComponentByTag");

BL4.FinishAddComponent = function(Component_ActorComponent, bManualAttachment, RelativeTransform)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.FinishAddComponent: Failed To Allocate The Params");return;end;
 bManualAttachment = bManualAttachment or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Component at +0x0, bManualAttachment at +0x8, RelativeTransform at +0x10
 writeQword(_params + 0x0, Component_ActorComponent)
 writeByte(_params + 0x8, bManualAttachment)
 writeQword(_params + 0x10, RelativeTransform)
 UE.CallProcessEventEx(Component_ActorComponent, "FinishAddComponent", _params);
 deAlloc(_params);
end
FNR("BL4.FinishAddComponent");

BL4.GbxDestroyActor = function(OwnerAddress, bDestroyImmediately)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GbxDestroyActor: Failed To Allocate The Params");return;end;
 bDestroyImmediately = bDestroyImmediately or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bDestroyImmediately at +0x0
 writeByte(_params + 0x0, bDestroyImmediately)
 UE.CallProcessEventEx(OwnerAddress, "GbxDestroyActor", _params);
 deAlloc(_params);
end
FNR("BL4.GbxDestroyActor");

BL4.GetActorBounds = function(OwnerAddress, bOnlyCollidingComponents, Origin, BoxExtent, bIncludeFromChildActors)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetActorBounds: Failed To Allocate The Params");return;end;
 bOnlyCollidingComponents = bOnlyCollidingComponents or false
 Origin = Origin or {X=0,Y=0,Z=0}
 BoxExtent = BoxExtent or {X=0,Y=0,Z=0}
 bIncludeFromChildActors = bIncludeFromChildActors or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bOnlyCollidingComponents at +0x0, Origin at +0x8, BoxExtent at +0x20, bIncludeFromChildActors at +0x38
 writeByte(_params + 0x0, bOnlyCollidingComponents)
 writeDouble(_params + 0x8, (Origin and Origin.X) or 0)
 writeDouble(_params + 0x10, (Origin and Origin.Y) or 0)
 writeDouble(_params + 0x18, (Origin and Origin.Z) or 0)
 writeDouble(_params + 0x20, (BoxExtent and BoxExtent.X) or 0)
 writeDouble(_params + 0x28, (BoxExtent and BoxExtent.Y) or 0)
 writeDouble(_params + 0x30, (BoxExtent and BoxExtent.Z) or 0)
 writeByte(_params + 0x38, bIncludeFromChildActors)
 UE.CallProcessEventEx(OwnerAddress, "GetActorBounds", _params);
 deAlloc(_params);
end
FNR("BL4.GetActorBounds");

BL4.GetActorEnableCollision = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetActorEnableCollision: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetActorEnableCollision", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetActorEnableCollision");

BL4.GetActorEyesViewPoint = function(OwnerAddress, OutLocation, OutRotation)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetActorEyesViewPoint: Failed To Allocate The Params");return;end;
 OutLocation = OutLocation or {X=0,Y=0,Z=0}
 OutRotation = OutRotation or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OutLocation at +0x0, OutRotation at +0x18
 writeDouble(_params + 0x0, (OutLocation and OutLocation.X) or 0)
 writeDouble(_params + 0x8, (OutLocation and OutLocation.Y) or 0)
 writeDouble(_params + 0x10, (OutLocation and OutLocation.Z) or 0)
 writeDouble(_params + 0x18, (OutRotation and OutRotation.Pitch) or 0)
 writeDouble(_params + 0x20, (OutRotation and OutRotation.Yaw) or 0)
 writeDouble(_params + 0x28, (OutRotation and OutRotation.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "GetActorEyesViewPoint", _params);
 deAlloc(_params);
end
FNR("BL4.GetActorEyesViewPoint");

BL4.GetActorForwardVector = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetActorForwardVector: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetActorForwardVector", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8),Z=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetActorForwardVector");

BL4.GetActorRelativeScale3D = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetActorRelativeScale3D: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetActorRelativeScale3D", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8),Z=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetActorRelativeScale3D");

BL4.GetActorRightVector = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetActorRightVector: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetActorRightVector", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8),Z=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetActorRightVector");

BL4.GetActorScale3D = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetActorScale3D: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetActorScale3D", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8),Z=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetActorScale3D");

BL4.GetActorTickInterval = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetActorTickInterval: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetActorTickInterval", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetActorTickInterval");

BL4.GetActorTimeDilation = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetActorTimeDilation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetActorTimeDilation", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetActorTimeDilation");

BL4.GetActorUpVector = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetActorUpVector: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetActorUpVector", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8),Z=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetActorUpVector");

BL4.GetAllChildActors = function(OwnerAddress, ChildActors, bIncludeDescendants)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAllChildActors: Failed To Allocate The Params");return;end;
 bIncludeDescendants = bIncludeDescendants or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ChildActors at +0x0, bIncludeDescendants at +0x10
 writeQword(_params + 0x0, ChildActors)
 writeByte(_params + 0x10, bIncludeDescendants)
 UE.CallProcessEventEx(OwnerAddress, "GetAllChildActors", _params);
 deAlloc(_params);
end
FNR("BL4.GetAllChildActors");

BL4.GetAssociatedCharacter = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAssociatedCharacter: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAssociatedCharacter", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAssociatedCharacter");

BL4.GetAssociatedPawn = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAssociatedPawn: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAssociatedPawn", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAssociatedPawn");

BL4.GetAssociatedVehicle = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAssociatedVehicle: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAssociatedVehicle", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAssociatedVehicle");

BL4.GetAttachedActors = function(OwnerAddress, OutActors, bResetArray, bRecursivelyIncludeAttachedActors)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAttachedActors: Failed To Allocate The Params");return;end;
 bResetArray = bResetArray or false
 bRecursivelyIncludeAttachedActors = bRecursivelyIncludeAttachedActors or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OutActors at +0x0, bResetArray at +0x10, bRecursivelyIncludeAttachedActors at +0x11
 writeQword(_params + 0x0, OutActors)
 writeByte(_params + 0x10, bResetArray)
 writeByte(_params + 0x11, bRecursivelyIncludeAttachedActors)
 UE.CallProcessEventEx(OwnerAddress, "GetAttachedActors", _params);
 deAlloc(_params);
end
FNR("BL4.GetAttachedActors");

BL4.GetAttachParentActor = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAttachParentActor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAttachParentActor", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAttachParentActor");

BL4.GetAttachParentSocketName = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAttachParentSocketName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAttachParentSocketName", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAttachParentSocketName");

BL4.GetComponentByClass = function(ComponentClass_Class)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetComponentByClass: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ComponentClass at +0x0
 writeQword(_params + 0x0, ComponentClass_Class)
 UE.CallProcessEventEx(ComponentClass_Class, "GetComponentByClass", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetComponentByClass");

BL4.GetComponentsByInterface = function(Interface_Class)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetComponentsByInterface: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Interface at +0x0
 writeQword(_params + 0x0, Interface_Class)
 UE.CallProcessEventEx(Interface_Class, "GetComponentsByInterface", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetComponentsByInterface");

BL4.GetComponentsByTag = function(ComponentClass_Class, Tag)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetComponentsByTag: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ComponentClass at +0x0, Tag at +0x8
 writeQword(_params + 0x0, ComponentClass_Class)
 writeQword(_params + 0x8, Tag)
 UE.CallProcessEventEx(ComponentClass_Class, "GetComponentsByTag", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetComponentsByTag");

BL4.GetDistanceTo = function(OtherActor_Actor)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDistanceTo: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OtherActor at +0x0
 writeQword(_params + 0x0, OtherActor_Actor)
 UE.CallProcessEventEx(OtherActor_Actor, "GetDistanceTo", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDistanceTo");

BL4.GetDotProductTo = function(OtherActor_Actor)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDotProductTo: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OtherActor at +0x0
 writeQword(_params + 0x0, OtherActor_Actor)
 UE.CallProcessEventEx(OtherActor_Actor, "GetDotProductTo", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDotProductTo");

BL4.GetGameTimeSinceCreation = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetGameTimeSinceCreation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetGameTimeSinceCreation", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetGameTimeSinceCreation");

BL4.GetHorizontalDistanceTo = function(OtherActor_Actor)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHorizontalDistanceTo: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OtherActor at +0x0
 writeQword(_params + 0x0, OtherActor_Actor)
 UE.CallProcessEventEx(OtherActor_Actor, "GetHorizontalDistanceTo", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHorizontalDistanceTo");

BL4.GetHorizontalDotProductTo = function(OtherActor_Actor)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetHorizontalDotProductTo: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OtherActor at +0x0
 writeQword(_params + 0x0, OtherActor_Actor)
 UE.CallProcessEventEx(OtherActor_Actor, "GetHorizontalDotProductTo", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetHorizontalDotProductTo");

BL4.GetInputAxisKeyValue = function(OwnerAddress, InputAxisKey)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInputAxisKeyValue: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InputAxisKey at +0x0
 writeQword(_params + 0x0, InputAxisKey)
 UE.CallProcessEventEx(OwnerAddress, "GetInputAxisKeyValue", _params);
 local RET=readFloat(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInputAxisKeyValue");

BL4.GetInputAxisValue = function(OwnerAddress, InputAxisName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInputAxisValue: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InputAxisName at +0x0
 writeQword(_params + 0x0, InputAxisName)
 UE.CallProcessEventEx(OwnerAddress, "GetInputAxisValue", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInputAxisValue");

BL4.GetInputVectorAxisValue = function(OwnerAddress, InputAxisKey)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInputVectorAxisValue: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InputAxisKey at +0x0
 writeQword(_params + 0x0, InputAxisKey)
 UE.CallProcessEventEx(OwnerAddress, "GetInputVectorAxisValue", _params);
 local RET={X=readFloat(_params+0x18),Y=readFloat(_params+0x20),Z=readFloat(_params+0x28)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInputVectorAxisValue");

BL4.GetInstigator = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInstigator: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetInstigator", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInstigator");

BL4.GetInstigatorController = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetInstigatorController: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetInstigatorController", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetInstigatorController");

BL4.GetLevel = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLevel: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetLevel", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLevel");

BL4.GetLevelTransform = function(OwnerAddress)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLevelTransform: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetLevelTransform", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLevelTransform");

BL4.GetLifeSpan = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLifeSpan: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetLifeSpan", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLifeSpan");

BL4.GetLocalRole = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetLocalRole: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetLocalRole", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetLocalRole");

BL4.GetMinNetUpdateFrequency = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetMinNetUpdateFrequency: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetMinNetUpdateFrequency", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetMinNetUpdateFrequency");

BL4.GetNetCullDistanceSquared = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNetCullDistanceSquared: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetNetCullDistanceSquared", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNetCullDistanceSquared");

BL4.GetNetUpdateFrequency = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNetUpdateFrequency: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetNetUpdateFrequency", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNetUpdateFrequency");

BL4.GetOverlappingActors = function(OwnerAddress, OverlappingActors, ClassFilter_Class)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetOverlappingActors: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OverlappingActors at +0x0, ClassFilter at +0x10
 writeQword(_params + 0x0, OverlappingActors)
 writeQword(_params + 0x10, ClassFilter_Class)
 UE.CallProcessEventEx(OwnerAddress, "GetOverlappingActors", _params);
 deAlloc(_params);
end
FNR("BL4.GetOverlappingActors");

BL4.GetOverlappingComponents = function(OwnerAddress, OverlappingComponents)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetOverlappingComponents: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OverlappingComponents at +0x0
 writeQword(_params + 0x0, OverlappingComponents)
 UE.CallProcessEventEx(OwnerAddress, "GetOverlappingComponents", _params);
 deAlloc(_params);
end
FNR("BL4.GetOverlappingComponents");

BL4.GetOwner = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetOwner: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetOwner", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetOwner");

BL4.GetParentActor = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetParentActor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetParentActor", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetParentActor");

BL4.GetParentComponent = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetParentComponent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetParentComponent", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetParentComponent");

BL4.GetPhysicsReplicationMode = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPhysicsReplicationMode: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetPhysicsReplicationMode", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPhysicsReplicationMode");

BL4.GetRayTracingGroupId = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRayTracingGroupId: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetRayTracingGroupId", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRayTracingGroupId");

BL4.GetRemoteRole = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRemoteRole: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetRemoteRole", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRemoteRole");

BL4.GetResimulationThreshold = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetResimulationThreshold: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetResimulationThreshold", _params);
 local RET=readFloat(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetResimulationThreshold");

BL4.GetSquaredDistanceTo = function(OtherActor_Actor)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSquaredDistanceTo: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OtherActor at +0x0
 writeQword(_params + 0x0, OtherActor_Actor)
 UE.CallProcessEventEx(OtherActor_Actor, "GetSquaredDistanceTo", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSquaredDistanceTo");

BL4.GetSquaredHorizontalDistanceTo = function(OtherActor_Actor)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSquaredHorizontalDistanceTo: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OtherActor at +0x0
 writeQword(_params + 0x0, OtherActor_Actor)
 UE.CallProcessEventEx(OtherActor_Actor, "GetSquaredHorizontalDistanceTo", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSquaredHorizontalDistanceTo");

BL4.GetTickableWhenPaused = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTickableWhenPaused: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetTickableWhenPaused", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTickableWhenPaused");

BL4.GetTransform = function(OwnerAddress)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTransform: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetTransform", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTransform");

BL4.GetVelocity = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVelocity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetVelocity", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8),Z=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVelocity");

BL4.GetVerticalDistanceTo = function(OtherActor_Actor)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetVerticalDistanceTo: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: OtherActor at +0x0
 writeQword(_params + 0x0, OtherActor_Actor)
 UE.CallProcessEventEx(OtherActor_Actor, "GetVerticalDistanceTo", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetVerticalDistanceTo");

BL4.HasAuthority = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.HasAuthority: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "HasAuthority", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.HasAuthority");

BL4.IsActorBeingDestroyed = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsActorBeingDestroyed: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsActorBeingDestroyed", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsActorBeingDestroyed");

BL4.IsActorTickEnabled = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsActorTickEnabled: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsActorTickEnabled", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsActorTickEnabled");

BL4.IsChildActor = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsChildActor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsChildActor", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsChildActor");

BL4.IsOverlappingActor = function(Other_Actor)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsOverlappingActor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Other at +0x0
 writeQword(_params + 0x0, Other_Actor)
 UE.CallProcessEventEx(Other_Actor, "IsOverlappingActor", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsOverlappingActor");

BL4.K2_AddActorLocalOffset = function(OwnerAddress, DeltaLocation, bSweep, SweepHitResult, bTeleport)
 local _paramsSize = 0x128
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_AddActorLocalOffset: Failed To Allocate The Params");return;end;
 DeltaLocation = DeltaLocation or {X=0,Y=0,Z=0}
 bSweep = bSweep or false
 bTeleport = bTeleport or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DeltaLocation at +0x0, bSweep at +0x18, SweepHitResult at +0x20, bTeleport at +0x120
 writeDouble(_params + 0x0, (DeltaLocation and DeltaLocation.X) or 0)
 writeDouble(_params + 0x8, (DeltaLocation and DeltaLocation.Y) or 0)
 writeDouble(_params + 0x10, (DeltaLocation and DeltaLocation.Z) or 0)
 writeByte(_params + 0x18, bSweep)
 writeQword(_params + 0x20, SweepHitResult)
 writeByte(_params + 0x120, bTeleport)
 UE.CallProcessEventEx(OwnerAddress, "K2_AddActorLocalOffset", _params);
 deAlloc(_params);
end
FNR("BL4.K2_AddActorLocalOffset");

BL4.K2_AddActorLocalRotation = function(OwnerAddress, DeltaRotation, bSweep, SweepHitResult, bTeleport)
 local _paramsSize = 0x128
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_AddActorLocalRotation: Failed To Allocate The Params");return;end;
 DeltaRotation = DeltaRotation or {Pitch=0,Yaw=0,Roll=0}
 bSweep = bSweep or false
 bTeleport = bTeleport or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DeltaRotation at +0x0, bSweep at +0x18, SweepHitResult at +0x20, bTeleport at +0x120
 writeDouble(_params + 0x0, (DeltaRotation and DeltaRotation.Pitch) or 0)
 writeDouble(_params + 0x8, (DeltaRotation and DeltaRotation.Yaw) or 0)
 writeDouble(_params + 0x10, (DeltaRotation and DeltaRotation.Roll) or 0)
 writeByte(_params + 0x18, bSweep)
 writeQword(_params + 0x20, SweepHitResult)
 writeByte(_params + 0x120, bTeleport)
 UE.CallProcessEventEx(OwnerAddress, "K2_AddActorLocalRotation", _params);
 deAlloc(_params);
end
FNR("BL4.K2_AddActorLocalRotation");

BL4.K2_AddActorLocalTransform = function(OwnerAddress, NewTransform, bSweep, SweepHitResult, bTeleport)
 local _paramsSize = 0x170
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_AddActorLocalTransform: Failed To Allocate The Params");return;end;
 bSweep = bSweep or false
 bTeleport = bTeleport or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewTransform at +0x0, bSweep at +0x60, SweepHitResult at +0x68, bTeleport at +0x168
 writeQword(_params + 0x0, NewTransform)
 writeByte(_params + 0x60, bSweep)
 writeQword(_params + 0x68, SweepHitResult)
 writeByte(_params + 0x168, bTeleport)
 UE.CallProcessEventEx(OwnerAddress, "K2_AddActorLocalTransform", _params);
 deAlloc(_params);
end
FNR("BL4.K2_AddActorLocalTransform");

BL4.K2_AddActorWorldOffset = function(OwnerAddress, DeltaLocation, bSweep, SweepHitResult, bTeleport)
 local _paramsSize = 0x128
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_AddActorWorldOffset: Failed To Allocate The Params");return;end;
 DeltaLocation = DeltaLocation or {X=0,Y=0,Z=0}
 bSweep = bSweep or false
 bTeleport = bTeleport or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DeltaLocation at +0x0, bSweep at +0x18, SweepHitResult at +0x20, bTeleport at +0x120
 writeDouble(_params + 0x0, (DeltaLocation and DeltaLocation.X) or 0)
 writeDouble(_params + 0x8, (DeltaLocation and DeltaLocation.Y) or 0)
 writeDouble(_params + 0x10, (DeltaLocation and DeltaLocation.Z) or 0)
 writeByte(_params + 0x18, bSweep)
 writeQword(_params + 0x20, SweepHitResult)
 writeByte(_params + 0x120, bTeleport)
 UE.CallProcessEventEx(OwnerAddress, "K2_AddActorWorldOffset", _params);
 deAlloc(_params);
end
FNR("BL4.K2_AddActorWorldOffset");

BL4.K2_AddActorWorldRotation = function(OwnerAddress, DeltaRotation, bSweep, SweepHitResult, bTeleport)
 local _paramsSize = 0x128
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_AddActorWorldRotation: Failed To Allocate The Params");return;end;
 DeltaRotation = DeltaRotation or {Pitch=0,Yaw=0,Roll=0}
 bSweep = bSweep or false
 bTeleport = bTeleport or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DeltaRotation at +0x0, bSweep at +0x18, SweepHitResult at +0x20, bTeleport at +0x120
 writeDouble(_params + 0x0, (DeltaRotation and DeltaRotation.Pitch) or 0)
 writeDouble(_params + 0x8, (DeltaRotation and DeltaRotation.Yaw) or 0)
 writeDouble(_params + 0x10, (DeltaRotation and DeltaRotation.Roll) or 0)
 writeByte(_params + 0x18, bSweep)
 writeQword(_params + 0x20, SweepHitResult)
 writeByte(_params + 0x120, bTeleport)
 UE.CallProcessEventEx(OwnerAddress, "K2_AddActorWorldRotation", _params);
 deAlloc(_params);
end
FNR("BL4.K2_AddActorWorldRotation");

BL4.K2_AddActorWorldTransform = function(OwnerAddress, DeltaTransform, bSweep, SweepHitResult, bTeleport)
 local _paramsSize = 0x170
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_AddActorWorldTransform: Failed To Allocate The Params");return;end;
 bSweep = bSweep or false
 bTeleport = bTeleport or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DeltaTransform at +0x0, bSweep at +0x60, SweepHitResult at +0x68, bTeleport at +0x168
 writeQword(_params + 0x0, DeltaTransform)
 writeByte(_params + 0x60, bSweep)
 writeQword(_params + 0x68, SweepHitResult)
 writeByte(_params + 0x168, bTeleport)
 UE.CallProcessEventEx(OwnerAddress, "K2_AddActorWorldTransform", _params);
 deAlloc(_params);
end
FNR("BL4.K2_AddActorWorldTransform");

BL4.K2_AddActorWorldTransformKeepScale = function(OwnerAddress, DeltaTransform, bSweep, SweepHitResult, bTeleport)
 local _paramsSize = 0x170
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_AddActorWorldTransformKeepScale: Failed To Allocate The Params");return;end;
 bSweep = bSweep or false
 bTeleport = bTeleport or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DeltaTransform at +0x0, bSweep at +0x60, SweepHitResult at +0x68, bTeleport at +0x168
 writeQword(_params + 0x0, DeltaTransform)
 writeByte(_params + 0x60, bSweep)
 writeQword(_params + 0x68, SweepHitResult)
 writeByte(_params + 0x168, bTeleport)
 UE.CallProcessEventEx(OwnerAddress, "K2_AddActorWorldTransformKeepScale", _params);
 deAlloc(_params);
end
FNR("BL4.K2_AddActorWorldTransformKeepScale");

BL4.K2_AttachRootComponentTo = function(InParent_SceneComponent, InSocketName, AttachLocationType, bWeldSimulatedBodies)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_AttachRootComponentTo: Failed To Allocate The Params");return;end;
 AttachLocationType = AttachLocationType or 0
 bWeldSimulatedBodies = bWeldSimulatedBodies or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InParent at +0x0, InSocketName at +0x8, AttachLocationType at +0x10, bWeldSimulatedBodies at +0x11
 writeQword(_params + 0x0, InParent_SceneComponent)
 writeQword(_params + 0x8, InSocketName)
 writeByte(_params + 0x10, AttachLocationType)
 writeByte(_params + 0x11, bWeldSimulatedBodies)
 UE.CallProcessEventEx(InParent_SceneComponent, "K2_AttachRootComponentTo", _params);
 deAlloc(_params);
end
FNR("BL4.K2_AttachRootComponentTo");

BL4.K2_AttachRootComponentToActor = function(InParentActor_Actor, InSocketName, AttachLocationType, bWeldSimulatedBodies)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_AttachRootComponentToActor: Failed To Allocate The Params");return;end;
 AttachLocationType = AttachLocationType or 0
 bWeldSimulatedBodies = bWeldSimulatedBodies or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InParentActor at +0x0, InSocketName at +0x8, AttachLocationType at +0x10, bWeldSimulatedBodies at +0x11
 writeQword(_params + 0x0, InParentActor_Actor)
 writeQword(_params + 0x8, InSocketName)
 writeByte(_params + 0x10, AttachLocationType)
 writeByte(_params + 0x11, bWeldSimulatedBodies)
 UE.CallProcessEventEx(InParentActor_Actor, "K2_AttachRootComponentToActor", _params);
 deAlloc(_params);
end
FNR("BL4.K2_AttachRootComponentToActor");

BL4.K2_AttachToActor = function(ParentActor_Actor, SocketName, LocationRule, RotationRule, ScaleRule, bWeldSimulatedBodies)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_AttachToActor: Failed To Allocate The Params");return;end;
 LocationRule = LocationRule or 0
 RotationRule = RotationRule or 0
 ScaleRule = ScaleRule or 0
 bWeldSimulatedBodies = bWeldSimulatedBodies or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ParentActor at +0x0, SocketName at +0x8, LocationRule at +0x10, RotationRule at +0x11, ScaleRule at +0x12, bWeldSimulatedBodies at +0x13
 writeQword(_params + 0x0, ParentActor_Actor)
 writeQword(_params + 0x8, SocketName)
 writeByte(_params + 0x10, LocationRule)
 writeByte(_params + 0x11, RotationRule)
 writeByte(_params + 0x12, ScaleRule)
 writeByte(_params + 0x13, bWeldSimulatedBodies)
 UE.CallProcessEventEx(ParentActor_Actor, "K2_AttachToActor", _params);
 local RET=readByte(_params + 0x14);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_AttachToActor");

BL4.K2_AttachToComponent = function(Parent_SceneComponent, SocketName, LocationRule, RotationRule, ScaleRule, bWeldSimulatedBodies)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_AttachToComponent: Failed To Allocate The Params");return;end;
 LocationRule = LocationRule or 0
 RotationRule = RotationRule or 0
 ScaleRule = ScaleRule or 0
 bWeldSimulatedBodies = bWeldSimulatedBodies or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Parent at +0x0, SocketName at +0x8, LocationRule at +0x10, RotationRule at +0x11, ScaleRule at +0x12, bWeldSimulatedBodies at +0x13
 writeQword(_params + 0x0, Parent_SceneComponent)
 writeQword(_params + 0x8, SocketName)
 writeByte(_params + 0x10, LocationRule)
 writeByte(_params + 0x11, RotationRule)
 writeByte(_params + 0x12, ScaleRule)
 writeByte(_params + 0x13, bWeldSimulatedBodies)
 UE.CallProcessEventEx(Parent_SceneComponent, "K2_AttachToComponent", _params);
 local RET=readByte(_params + 0x14);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_AttachToComponent");

BL4.K2_DetachFromActor = function(OwnerAddress, LocationRule, RotationRule, ScaleRule)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_DetachFromActor: Failed To Allocate The Params");return;end;
 LocationRule = LocationRule or 0
 RotationRule = RotationRule or 0
 ScaleRule = ScaleRule or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: LocationRule at +0x0, RotationRule at +0x1, ScaleRule at +0x2
 writeByte(_params + 0x0, LocationRule)
 writeByte(_params + 0x1, RotationRule)
 writeByte(_params + 0x2, ScaleRule)
 UE.CallProcessEventEx(OwnerAddress, "K2_DetachFromActor", _params);
 deAlloc(_params);
end
FNR("BL4.K2_DetachFromActor");

BL4.K2_GetActorLocation = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_GetActorLocation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "K2_GetActorLocation", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8),Z=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_GetActorLocation");

BL4.K2_GetActorRotation = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_GetActorRotation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "K2_GetActorRotation", _params);
 local RET={Pitch=readFloat(_params+0x0),Yaw=readFloat(_params+0x8),Roll=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_GetActorRotation");

BL4.K2_GetComponentsByClass = function(ComponentClass_Class)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_GetComponentsByClass: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ComponentClass at +0x0
 writeQword(_params + 0x0, ComponentClass_Class)
 UE.CallProcessEventEx(ComponentClass_Class, "K2_GetComponentsByClass", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_GetComponentsByClass");

BL4.K2_GetRootComponent = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_GetRootComponent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "K2_GetRootComponent", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_GetRootComponent");

BL4.K2_OnBecomeViewTarget = function(PC_PlayerController)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_OnBecomeViewTarget: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PC at +0x0
 writeQword(_params + 0x0, PC_PlayerController)
 UE.CallProcessEventEx(PC_PlayerController, "K2_OnBecomeViewTarget", _params);
 deAlloc(_params);
end
FNR("BL4.K2_OnBecomeViewTarget");

BL4.K2_OnEndViewTarget = function(PC_PlayerController)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_OnEndViewTarget: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PC at +0x0
 writeQword(_params + 0x0, PC_PlayerController)
 UE.CallProcessEventEx(PC_PlayerController, "K2_OnEndViewTarget", _params);
 deAlloc(_params);
end
FNR("BL4.K2_OnEndViewTarget");

BL4.K2_SetActorLocation = function(OwnerAddress, NewLocation, bSweep, SweepHitResult, bTeleport)
 local _paramsSize = 0x128
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_SetActorLocation: Failed To Allocate The Params");return;end;
 NewLocation = NewLocation or {X=0,Y=0,Z=0}
 bSweep = bSweep or false
 bTeleport = bTeleport or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewLocation at +0x0, bSweep at +0x18, SweepHitResult at +0x20, bTeleport at +0x120
 writeDouble(_params + 0x0, (NewLocation and NewLocation.X) or 0)
 writeDouble(_params + 0x8, (NewLocation and NewLocation.Y) or 0)
 writeDouble(_params + 0x10, (NewLocation and NewLocation.Z) or 0)
 writeByte(_params + 0x18, bSweep)
 writeQword(_params + 0x20, SweepHitResult)
 writeByte(_params + 0x120, bTeleport)
 UE.CallProcessEventEx(OwnerAddress, "K2_SetActorLocation", _params);
 local RET=readByte(_params + 0x121);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_SetActorLocation");

BL4.K2_SetActorLocationAndRotation = function(OwnerAddress, NewLocation, NewRotation, bSweep, SweepHitResult, bTeleport)
 local _paramsSize = 0x140
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_SetActorLocationAndRotation: Failed To Allocate The Params");return;end;
 NewLocation = NewLocation or {X=0,Y=0,Z=0}
 NewRotation = NewRotation or {Pitch=0,Yaw=0,Roll=0}
 bSweep = bSweep or false
 bTeleport = bTeleport or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewLocation at +0x0, NewRotation at +0x18, bSweep at +0x30, SweepHitResult at +0x38, bTeleport at +0x138
 writeDouble(_params + 0x0, (NewLocation and NewLocation.X) or 0)
 writeDouble(_params + 0x8, (NewLocation and NewLocation.Y) or 0)
 writeDouble(_params + 0x10, (NewLocation and NewLocation.Z) or 0)
 writeDouble(_params + 0x18, (NewRotation and NewRotation.Pitch) or 0)
 writeDouble(_params + 0x20, (NewRotation and NewRotation.Yaw) or 0)
 writeDouble(_params + 0x28, (NewRotation and NewRotation.Roll) or 0)
 writeByte(_params + 0x30, bSweep)
 writeQword(_params + 0x38, SweepHitResult)
 writeByte(_params + 0x138, bTeleport)
 UE.CallProcessEventEx(OwnerAddress, "K2_SetActorLocationAndRotation", _params);
 local RET=readByte(_params + 0x139);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_SetActorLocationAndRotation");

BL4.K2_SetActorRelativeLocation = function(OwnerAddress, NewRelativeLocation, bSweep, SweepHitResult, bTeleport)
 local _paramsSize = 0x128
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_SetActorRelativeLocation: Failed To Allocate The Params");return;end;
 NewRelativeLocation = NewRelativeLocation or {X=0,Y=0,Z=0}
 bSweep = bSweep or false
 bTeleport = bTeleport or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewRelativeLocation at +0x0, bSweep at +0x18, SweepHitResult at +0x20, bTeleport at +0x120
 writeDouble(_params + 0x0, (NewRelativeLocation and NewRelativeLocation.X) or 0)
 writeDouble(_params + 0x8, (NewRelativeLocation and NewRelativeLocation.Y) or 0)
 writeDouble(_params + 0x10, (NewRelativeLocation and NewRelativeLocation.Z) or 0)
 writeByte(_params + 0x18, bSweep)
 writeQword(_params + 0x20, SweepHitResult)
 writeByte(_params + 0x120, bTeleport)
 UE.CallProcessEventEx(OwnerAddress, "K2_SetActorRelativeLocation", _params);
 deAlloc(_params);
end
FNR("BL4.K2_SetActorRelativeLocation");

BL4.K2_SetActorRelativeRotation = function(OwnerAddress, NewRelativeRotation, bSweep, SweepHitResult, bTeleport)
 local _paramsSize = 0x128
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_SetActorRelativeRotation: Failed To Allocate The Params");return;end;
 NewRelativeRotation = NewRelativeRotation or {Pitch=0,Yaw=0,Roll=0}
 bSweep = bSweep or false
 bTeleport = bTeleport or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewRelativeRotation at +0x0, bSweep at +0x18, SweepHitResult at +0x20, bTeleport at +0x120
 writeDouble(_params + 0x0, (NewRelativeRotation and NewRelativeRotation.Pitch) or 0)
 writeDouble(_params + 0x8, (NewRelativeRotation and NewRelativeRotation.Yaw) or 0)
 writeDouble(_params + 0x10, (NewRelativeRotation and NewRelativeRotation.Roll) or 0)
 writeByte(_params + 0x18, bSweep)
 writeQword(_params + 0x20, SweepHitResult)
 writeByte(_params + 0x120, bTeleport)
 UE.CallProcessEventEx(OwnerAddress, "K2_SetActorRelativeRotation", _params);
 deAlloc(_params);
end
FNR("BL4.K2_SetActorRelativeRotation");

BL4.K2_SetActorRelativeTransform = function(OwnerAddress, NewRelativeTransform, bSweep, SweepHitResult, bTeleport)
 local _paramsSize = 0x170
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_SetActorRelativeTransform: Failed To Allocate The Params");return;end;
 bSweep = bSweep or false
 bTeleport = bTeleport or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewRelativeTransform at +0x0, bSweep at +0x60, SweepHitResult at +0x68, bTeleport at +0x168
 writeQword(_params + 0x0, NewRelativeTransform)
 writeByte(_params + 0x60, bSweep)
 writeQword(_params + 0x68, SweepHitResult)
 writeByte(_params + 0x168, bTeleport)
 UE.CallProcessEventEx(OwnerAddress, "K2_SetActorRelativeTransform", _params);
 deAlloc(_params);
end
FNR("BL4.K2_SetActorRelativeTransform");

BL4.K2_SetActorRotation = function(OwnerAddress, NewRotation, bTeleportPhysics)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_SetActorRotation: Failed To Allocate The Params");return;end;
 NewRotation = NewRotation or {Pitch=0,Yaw=0,Roll=0}
 bTeleportPhysics = bTeleportPhysics or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewRotation at +0x0, bTeleportPhysics at +0x18
 writeDouble(_params + 0x0, (NewRotation and NewRotation.Pitch) or 0)
 writeDouble(_params + 0x8, (NewRotation and NewRotation.Yaw) or 0)
 writeDouble(_params + 0x10, (NewRotation and NewRotation.Roll) or 0)
 writeByte(_params + 0x18, bTeleportPhysics)
 UE.CallProcessEventEx(OwnerAddress, "K2_SetActorRotation", _params);
 local RET=readByte(_params + 0x19);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_SetActorRotation");

BL4.K2_SetActorTransform = function(OwnerAddress, NewTransform, bSweep, SweepHitResult, bTeleport)
 local _paramsSize = 0x170
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_SetActorTransform: Failed To Allocate The Params");return;end;
 bSweep = bSweep or false
 bTeleport = bTeleport or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewTransform at +0x0, bSweep at +0x60, SweepHitResult at +0x68, bTeleport at +0x168
 writeQword(_params + 0x0, NewTransform)
 writeByte(_params + 0x60, bSweep)
 writeQword(_params + 0x68, SweepHitResult)
 writeByte(_params + 0x168, bTeleport)
 UE.CallProcessEventEx(OwnerAddress, "K2_SetActorTransform", _params);
 local RET=readByte(_params + 0x169);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_SetActorTransform");

BL4.K2_TeleportTo = function(OwnerAddress, DestLocation, DestRotation)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_TeleportTo: Failed To Allocate The Params");return;end;
 DestLocation = DestLocation or {X=0,Y=0,Z=0}
 DestRotation = DestRotation or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DestLocation at +0x0, DestRotation at +0x18
 writeDouble(_params + 0x0, (DestLocation and DestLocation.X) or 0)
 writeDouble(_params + 0x8, (DestLocation and DestLocation.Y) or 0)
 writeDouble(_params + 0x10, (DestLocation and DestLocation.Z) or 0)
 writeDouble(_params + 0x18, (DestRotation and DestRotation.Pitch) or 0)
 writeDouble(_params + 0x20, (DestRotation and DestRotation.Yaw) or 0)
 writeDouble(_params + 0x28, (DestRotation and DestRotation.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "K2_TeleportTo", _params);
 local RET=readByte(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_TeleportTo");

BL4.MakeNoise = function(OwnerAddress, Loudness, NoiseInstigator_Pawn, NoiseLocation, MaxRange, Tag)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeNoise: Failed To Allocate The Params");return;end;
 Loudness = Loudness or 0
 NoiseLocation = NoiseLocation or {X=0,Y=0,Z=0}
 MaxRange = MaxRange or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Loudness at +0x0, NoiseInstigator at +0x8, NoiseLocation at +0x10, MaxRange at +0x28, Tag at +0x2C
 writeFloat(_params + 0x0, Loudness)
 writeQword(_params + 0x8, NoiseInstigator_Pawn)
 writeDouble(_params + 0x10, (NoiseLocation and NoiseLocation.X) or 0)
 writeDouble(_params + 0x18, (NoiseLocation and NoiseLocation.Y) or 0)
 writeDouble(_params + 0x20, (NoiseLocation and NoiseLocation.Z) or 0)
 writeFloat(_params + 0x28, MaxRange)
 writeQword(_params + 0x2C, Tag)
 UE.CallProcessEventEx(OwnerAddress, "MakeNoise", _params);
 deAlloc(_params);
end
FNR("BL4.MakeNoise");

BL4.PrestreamTextures = function(OwnerAddress, Seconds, bEnableStreaming, CinematicTextureGroups)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PrestreamTextures: Failed To Allocate The Params");return;end;
 Seconds = Seconds or 0
 bEnableStreaming = bEnableStreaming or false
 CinematicTextureGroups = CinematicTextureGroups or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Seconds at +0x0, bEnableStreaming at +0x4, CinematicTextureGroups at +0x8
 writeFloat(_params + 0x0, Seconds)
 writeByte(_params + 0x4, bEnableStreaming)
 writeInteger(_params + 0x8, CinematicTextureGroups)
 UE.CallProcessEventEx(OwnerAddress, "PrestreamTextures", _params);
 deAlloc(_params);
end
FNR("BL4.PrestreamTextures");

BL4.ReceiveActorBeginOverlap = function(OtherActor_Actor)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReceiveActorBeginOverlap: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: OtherActor at +0x0
 writeQword(_params + 0x0, OtherActor_Actor)
 UE.CallProcessEventEx(OtherActor_Actor, "ReceiveActorBeginOverlap", _params);
 deAlloc(_params);
end
FNR("BL4.ReceiveActorBeginOverlap");

BL4.ReceiveActorEndOverlap = function(OtherActor_Actor)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReceiveActorEndOverlap: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: OtherActor at +0x0
 writeQword(_params + 0x0, OtherActor_Actor)
 UE.CallProcessEventEx(OtherActor_Actor, "ReceiveActorEndOverlap", _params);
 deAlloc(_params);
end
FNR("BL4.ReceiveActorEndOverlap");

BL4.ReceiveActorOnClicked = function(OwnerAddress, ButtonPressed)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReceiveActorOnClicked: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ButtonPressed at +0x0
 writeQword(_params + 0x0, ButtonPressed)
 UE.CallProcessEventEx(OwnerAddress, "ReceiveActorOnClicked", _params);
 deAlloc(_params);
end
FNR("BL4.ReceiveActorOnClicked");

BL4.ReceiveActorOnInputTouchBegin = function(OwnerAddress, FingerIndex)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReceiveActorOnInputTouchBegin: Failed To Allocate The Params");return;end;
 FingerIndex = FingerIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: FingerIndex at +0x0
 writeByte(_params + 0x0, FingerIndex)
 UE.CallProcessEventEx(OwnerAddress, "ReceiveActorOnInputTouchBegin", _params);
 deAlloc(_params);
end
FNR("BL4.ReceiveActorOnInputTouchBegin");

BL4.ReceiveActorOnInputTouchEnd = function(OwnerAddress, FingerIndex)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReceiveActorOnInputTouchEnd: Failed To Allocate The Params");return;end;
 FingerIndex = FingerIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: FingerIndex at +0x0
 writeByte(_params + 0x0, FingerIndex)
 UE.CallProcessEventEx(OwnerAddress, "ReceiveActorOnInputTouchEnd", _params);
 deAlloc(_params);
end
FNR("BL4.ReceiveActorOnInputTouchEnd");

BL4.ReceiveActorOnInputTouchEnter = function(OwnerAddress, FingerIndex)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReceiveActorOnInputTouchEnter: Failed To Allocate The Params");return;end;
 FingerIndex = FingerIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: FingerIndex at +0x0
 writeByte(_params + 0x0, FingerIndex)
 UE.CallProcessEventEx(OwnerAddress, "ReceiveActorOnInputTouchEnter", _params);
 deAlloc(_params);
end
FNR("BL4.ReceiveActorOnInputTouchEnter");

BL4.ReceiveActorOnInputTouchLeave = function(OwnerAddress, FingerIndex)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReceiveActorOnInputTouchLeave: Failed To Allocate The Params");return;end;
 FingerIndex = FingerIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: FingerIndex at +0x0
 writeByte(_params + 0x0, FingerIndex)
 UE.CallProcessEventEx(OwnerAddress, "ReceiveActorOnInputTouchLeave", _params);
 deAlloc(_params);
end
FNR("BL4.ReceiveActorOnInputTouchLeave");

BL4.ReceiveActorOnReleased = function(OwnerAddress, ButtonReleased)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReceiveActorOnReleased: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ButtonReleased at +0x0
 writeQword(_params + 0x0, ButtonReleased)
 UE.CallProcessEventEx(OwnerAddress, "ReceiveActorOnReleased", _params);
 deAlloc(_params);
end
FNR("BL4.ReceiveActorOnReleased");

BL4.ReceiveAnyDamage = function(OwnerAddress, damage, DamageType, InstigatedBy_Controller, DamageCauser_Actor)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReceiveAnyDamage: Failed To Allocate The Params");return;end;
 damage = damage or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: damage at +0x0, DamageType at +0x8, InstigatedBy at +0x10, DamageCauser at +0x18
 writeFloat(_params + 0x0, damage)
 writeQword(_params + 0x8, DamageType)
 writeQword(_params + 0x10, InstigatedBy_Controller)
 writeQword(_params + 0x18, DamageCauser_Actor)
 UE.CallProcessEventEx(OwnerAddress, "ReceiveAnyDamage", _params);
 deAlloc(_params);
end
FNR("BL4.ReceiveAnyDamage");

BL4.ReceiveAsyncPhysicsTick = function(OwnerAddress, DeltaSeconds, SimSeconds)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReceiveAsyncPhysicsTick: Failed To Allocate The Params");return;end;
 DeltaSeconds = DeltaSeconds or 0
 SimSeconds = SimSeconds or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: DeltaSeconds at +0x0, SimSeconds at +0x4
 writeFloat(_params + 0x0, DeltaSeconds)
 writeFloat(_params + 0x4, SimSeconds)
 UE.CallProcessEventEx(OwnerAddress, "ReceiveAsyncPhysicsTick", _params);
 deAlloc(_params);
end
FNR("BL4.ReceiveAsyncPhysicsTick");

BL4.ReceiveEndPlay = function(OwnerAddress, EndPlayReason)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReceiveEndPlay: Failed To Allocate The Params");return;end;
 EndPlayReason = EndPlayReason or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: EndPlayReason at +0x0
 writeByte(_params + 0x0, EndPlayReason)
 UE.CallProcessEventEx(OwnerAddress, "ReceiveEndPlay", _params);
 deAlloc(_params);
end
FNR("BL4.ReceiveEndPlay");

BL4.ReceiveHit = function(MyComp_PrimitiveComponent, Other_Actor, OtherComp_PrimitiveComponent, bSelfMoved, HitLocation, HitNormal, NormalImpulse, Hit)
 local _paramsSize = 0x168
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReceiveHit: Failed To Allocate The Params");return;end;
 bSelfMoved = bSelfMoved or false
 HitLocation = HitLocation or {X=0,Y=0,Z=0}
 HitNormal = HitNormal or {X=0,Y=0,Z=0}
 NormalImpulse = NormalImpulse or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MyComp at +0x0, Other at +0x8, OtherComp at +0x10, bSelfMoved at +0x18, HitLocation at +0x20, HitNormal at +0x38, NormalImpulse at +0x50, Hit at +0x68
 writeQword(_params + 0x0, MyComp_PrimitiveComponent)
 writeQword(_params + 0x8, Other_Actor)
 writeQword(_params + 0x10, OtherComp_PrimitiveComponent)
 writeByte(_params + 0x18, bSelfMoved)
 writeDouble(_params + 0x20, (HitLocation and HitLocation.X) or 0)
 writeDouble(_params + 0x28, (HitLocation and HitLocation.Y) or 0)
 writeDouble(_params + 0x30, (HitLocation and HitLocation.Z) or 0)
 writeDouble(_params + 0x38, (HitNormal and HitNormal.X) or 0)
 writeDouble(_params + 0x40, (HitNormal and HitNormal.Y) or 0)
 writeDouble(_params + 0x48, (HitNormal and HitNormal.Z) or 0)
 writeDouble(_params + 0x50, (NormalImpulse and NormalImpulse.X) or 0)
 writeDouble(_params + 0x58, (NormalImpulse and NormalImpulse.Y) or 0)
 writeDouble(_params + 0x60, (NormalImpulse and NormalImpulse.Z) or 0)
 writeQword(_params + 0x68, Hit)
 UE.CallProcessEventEx(MyComp_PrimitiveComponent, "ReceiveHit", _params);
 deAlloc(_params);
end
FNR("BL4.ReceiveHit");

BL4.ReceivePointDamage = function(OwnerAddress, damage, DamageType, HitLocation, HitNormal, HitComponent_PrimitiveComponent, BoneName, ShotFromDirection, InstigatedBy_Controller, DamageCauser_Actor, HitInfo)
 local _paramsSize = 0x178
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReceivePointDamage: Failed To Allocate The Params");return;end;
 damage = damage or 0
 HitLocation = HitLocation or {X=0,Y=0,Z=0}
 HitNormal = HitNormal or {X=0,Y=0,Z=0}
 ShotFromDirection = ShotFromDirection or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: damage at +0x0, DamageType at +0x8, HitLocation at +0x10, HitNormal at +0x28, HitComponent at +0x40, BoneName at +0x48, ShotFromDirection at +0x50, InstigatedBy at +0x68, DamageCauser at +0x70, HitInfo at +0x78
 writeFloat(_params + 0x0, damage)
 writeQword(_params + 0x8, DamageType)
 writeDouble(_params + 0x10, (HitLocation and HitLocation.X) or 0)
 writeDouble(_params + 0x18, (HitLocation and HitLocation.Y) or 0)
 writeDouble(_params + 0x20, (HitLocation and HitLocation.Z) or 0)
 writeDouble(_params + 0x28, (HitNormal and HitNormal.X) or 0)
 writeDouble(_params + 0x30, (HitNormal and HitNormal.Y) or 0)
 writeDouble(_params + 0x38, (HitNormal and HitNormal.Z) or 0)
 writeQword(_params + 0x40, HitComponent_PrimitiveComponent)
 writeQword(_params + 0x48, BoneName)
 writeDouble(_params + 0x50, (ShotFromDirection and ShotFromDirection.X) or 0)
 writeDouble(_params + 0x58, (ShotFromDirection and ShotFromDirection.Y) or 0)
 writeDouble(_params + 0x60, (ShotFromDirection and ShotFromDirection.Z) or 0)
 writeQword(_params + 0x68, InstigatedBy_Controller)
 writeQword(_params + 0x70, DamageCauser_Actor)
 writeQword(_params + 0x78, HitInfo)
 UE.CallProcessEventEx(OwnerAddress, "ReceivePointDamage", _params);
 deAlloc(_params);
end
FNR("BL4.ReceivePointDamage");

BL4.ReceiveRadialDamage = function(OwnerAddress, DamageReceived, DamageType, Origin, HitInfo, InstigatedBy_Controller, DamageCauser_Actor)
 local _paramsSize = 0x138
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReceiveRadialDamage: Failed To Allocate The Params");return;end;
 DamageReceived = DamageReceived or 0
 Origin = Origin or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DamageReceived at +0x0, DamageType at +0x8, Origin at +0x10, HitInfo at +0x28, InstigatedBy at +0x128, DamageCauser at +0x130
 writeFloat(_params + 0x0, DamageReceived)
 writeQword(_params + 0x8, DamageType)
 writeDouble(_params + 0x10, (Origin and Origin.X) or 0)
 writeDouble(_params + 0x18, (Origin and Origin.Y) or 0)
 writeDouble(_params + 0x20, (Origin and Origin.Z) or 0)
 writeQword(_params + 0x28, HitInfo)
 writeQword(_params + 0x128, InstigatedBy_Controller)
 writeQword(_params + 0x130, DamageCauser_Actor)
 UE.CallProcessEventEx(OwnerAddress, "ReceiveRadialDamage", _params);
 deAlloc(_params);
end
FNR("BL4.ReceiveRadialDamage");

BL4.ReceiveTick = function(OwnerAddress, DeltaSeconds)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ReceiveTick: Failed To Allocate The Params");return;end;
 DeltaSeconds = DeltaSeconds or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: DeltaSeconds at +0x0
 writeFloat(_params + 0x0, DeltaSeconds)
 UE.CallProcessEventEx(OwnerAddress, "ReceiveTick", _params);
 deAlloc(_params);
end
FNR("BL4.ReceiveTick");

BL4.RemoveTickPrerequisiteActor = function(PrerequisiteActor_Actor)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveTickPrerequisiteActor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PrerequisiteActor at +0x0
 writeQword(_params + 0x0, PrerequisiteActor_Actor)
 UE.CallProcessEventEx(PrerequisiteActor_Actor, "RemoveTickPrerequisiteActor", _params);
 deAlloc(_params);
end
FNR("BL4.RemoveTickPrerequisiteActor");

BL4.RemoveTickPrerequisiteComponent = function(PrerequisiteComponent_ActorComponent)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveTickPrerequisiteComponent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: PrerequisiteComponent at +0x0
 writeQword(_params + 0x0, PrerequisiteComponent_ActorComponent)
 UE.CallProcessEventEx(PrerequisiteComponent_ActorComponent, "RemoveTickPrerequisiteComponent", _params);
 deAlloc(_params);
end
FNR("BL4.RemoveTickPrerequisiteComponent");

BL4.SetActorEnableCollision = function(OwnerAddress, bNewActorEnableCollision)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetActorEnableCollision: Failed To Allocate The Params");return;end;
 bNewActorEnableCollision = bNewActorEnableCollision or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bNewActorEnableCollision at +0x0
 writeByte(_params + 0x0, bNewActorEnableCollision)
 UE.CallProcessEventEx(OwnerAddress, "SetActorEnableCollision", _params);
 deAlloc(_params);
end
FNR("BL4.SetActorEnableCollision");

BL4.SetActorHiddenInGame = function(OwnerAddress, bNewHidden)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetActorHiddenInGame: Failed To Allocate The Params");return;end;
 bNewHidden = bNewHidden or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bNewHidden at +0x0
 writeByte(_params + 0x0, bNewHidden)
 UE.CallProcessEventEx(OwnerAddress, "SetActorHiddenInGame", _params);
 deAlloc(_params);
end
FNR("BL4.SetActorHiddenInGame");

BL4.SetActorRelativeScale3D = function(OwnerAddress, NewRelativeScale)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetActorRelativeScale3D: Failed To Allocate The Params");return;end;
 NewRelativeScale = NewRelativeScale or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewRelativeScale at +0x0
 writeDouble(_params + 0x0, (NewRelativeScale and NewRelativeScale.X) or 0)
 writeDouble(_params + 0x8, (NewRelativeScale and NewRelativeScale.Y) or 0)
 writeDouble(_params + 0x10, (NewRelativeScale and NewRelativeScale.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetActorRelativeScale3D", _params);
 deAlloc(_params);
end
FNR("BL4.SetActorRelativeScale3D");

BL4.SetActorScale3D = function(OwnerAddress, NewScale3D)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetActorScale3D: Failed To Allocate The Params");return;end;
 NewScale3D = NewScale3D or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewScale3D at +0x0
 writeDouble(_params + 0x0, (NewScale3D and NewScale3D.X) or 0)
 writeDouble(_params + 0x8, (NewScale3D and NewScale3D.Y) or 0)
 writeDouble(_params + 0x10, (NewScale3D and NewScale3D.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetActorScale3D", _params);
 deAlloc(_params);
end
FNR("BL4.SetActorScale3D");

BL4.SetActorTickEnabled = function(OwnerAddress, bEnabled)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetActorTickEnabled: Failed To Allocate The Params");return;end;
 bEnabled = bEnabled or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bEnabled at +0x0
 writeByte(_params + 0x0, bEnabled)
 UE.CallProcessEventEx(OwnerAddress, "SetActorTickEnabled", _params);
 deAlloc(_params);
end
FNR("BL4.SetActorTickEnabled");

BL4.SetActorTickInterval = function(OwnerAddress, TickInterval)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetActorTickInterval: Failed To Allocate The Params");return;end;
 TickInterval = TickInterval or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: TickInterval at +0x0
 writeFloat(_params + 0x0, TickInterval)
 UE.CallProcessEventEx(OwnerAddress, "SetActorTickInterval", _params);
 deAlloc(_params);
end
FNR("BL4.SetActorTickInterval");

BL4.SetAutoDestroyWhenFinished = function(OwnerAddress, bVal)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAutoDestroyWhenFinished: Failed To Allocate The Params");return;end;
 bVal = bVal or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bVal at +0x0
 writeByte(_params + 0x0, bVal)
 UE.CallProcessEventEx(OwnerAddress, "SetAutoDestroyWhenFinished", _params);
 deAlloc(_params);
end
FNR("BL4.SetAutoDestroyWhenFinished");

BL4.SetLifeSpan = function(OwnerAddress, InLifespan)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetLifeSpan: Failed To Allocate The Params");return;end;
 InLifespan = InLifespan or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InLifespan at +0x0
 writeFloat(_params + 0x0, InLifespan)
 UE.CallProcessEventEx(OwnerAddress, "SetLifeSpan", _params);
 deAlloc(_params);
end
FNR("BL4.SetLifeSpan");

BL4.SetMinNetUpdateFrequency = function(OwnerAddress, MinFrequency)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMinNetUpdateFrequency: Failed To Allocate The Params");return;end;
 MinFrequency = MinFrequency or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: MinFrequency at +0x0
 writeFloat(_params + 0x0, MinFrequency)
 UE.CallProcessEventEx(OwnerAddress, "SetMinNetUpdateFrequency", _params);
 deAlloc(_params);
end
FNR("BL4.SetMinNetUpdateFrequency");

BL4.SetNetCullDistanceSquared = function(OwnerAddress, DistanceSq)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNetCullDistanceSquared: Failed To Allocate The Params");return;end;
 DistanceSq = DistanceSq or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: DistanceSq at +0x0
 writeFloat(_params + 0x0, DistanceSq)
 UE.CallProcessEventEx(OwnerAddress, "SetNetCullDistanceSquared", _params);
 deAlloc(_params);
end
FNR("BL4.SetNetCullDistanceSquared");

BL4.SetNetDormancy = function(OwnerAddress, NewDormancy)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNetDormancy: Failed To Allocate The Params");return;end;
 NewDormancy = NewDormancy or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewDormancy at +0x0
 writeByte(_params + 0x0, NewDormancy)
 UE.CallProcessEventEx(OwnerAddress, "SetNetDormancy", _params);
 deAlloc(_params);
end
FNR("BL4.SetNetDormancy");

BL4.SetNetUpdateFrequency = function(OwnerAddress, Frequency)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetNetUpdateFrequency: Failed To Allocate The Params");return;end;
 Frequency = Frequency or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Frequency at +0x0
 writeFloat(_params + 0x0, Frequency)
 UE.CallProcessEventEx(OwnerAddress, "SetNetUpdateFrequency", _params);
 deAlloc(_params);
end
FNR("BL4.SetNetUpdateFrequency");

BL4.SetOwner = function(NewOwner_Actor)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetOwner: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewOwner at +0x0
 writeQword(_params + 0x0, NewOwner_Actor)
 UE.CallProcessEventEx(NewOwner_Actor, "SetOwner", _params);
 deAlloc(_params);
end
FNR("BL4.SetOwner");

BL4.SetPhysicsReplicationMode = function(OwnerAddress, ReplicationMode)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetPhysicsReplicationMode: Failed To Allocate The Params");return;end;
 ReplicationMode = ReplicationMode or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: ReplicationMode at +0x0
 writeByte(_params + 0x0, ReplicationMode)
 UE.CallProcessEventEx(OwnerAddress, "SetPhysicsReplicationMode", _params);
 deAlloc(_params);
end
FNR("BL4.SetPhysicsReplicationMode");

BL4.SetRayTracingGroupId = function(OwnerAddress, InRaytracingGroupId)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRayTracingGroupId: Failed To Allocate The Params");return;end;
 InRaytracingGroupId = InRaytracingGroupId or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: InRaytracingGroupId at +0x0
 writeInteger(_params + 0x0, InRaytracingGroupId)
 UE.CallProcessEventEx(OwnerAddress, "SetRayTracingGroupId", _params);
 deAlloc(_params);
end
FNR("BL4.SetRayTracingGroupId");

BL4.SetReplicateMovement = function(OwnerAddress, bInReplicateMovement)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetReplicateMovement: Failed To Allocate The Params");return;end;
 bInReplicateMovement = bInReplicateMovement or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInReplicateMovement at +0x0
 writeByte(_params + 0x0, bInReplicateMovement)
 UE.CallProcessEventEx(OwnerAddress, "SetReplicateMovement", _params);
 deAlloc(_params);
end
FNR("BL4.SetReplicateMovement");

BL4.SetReplicates = function(OwnerAddress, bInReplicates)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetReplicates: Failed To Allocate The Params");return;end;
 bInReplicates = bInReplicates or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInReplicates at +0x0
 writeByte(_params + 0x0, bInReplicates)
 UE.CallProcessEventEx(OwnerAddress, "SetReplicates", _params);
 deAlloc(_params);
end
FNR("BL4.SetReplicates");

BL4.SetTickableWhenPaused = function(OwnerAddress, bTickableWhenPaused)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTickableWhenPaused: Failed To Allocate The Params");return;end;
 bTickableWhenPaused = bTickableWhenPaused or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bTickableWhenPaused at +0x0
 writeByte(_params + 0x0, bTickableWhenPaused)
 UE.CallProcessEventEx(OwnerAddress, "SetTickableWhenPaused", _params);
 deAlloc(_params);
end
FNR("BL4.SetTickableWhenPaused");

BL4.SetTickGroup = function(OwnerAddress, NewTickGroup)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetTickGroup: Failed To Allocate The Params");return;end;
 NewTickGroup = NewTickGroup or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewTickGroup at +0x0
 writeByte(_params + 0x0, NewTickGroup)
 UE.CallProcessEventEx(OwnerAddress, "SetTickGroup", _params);
 deAlloc(_params);
end
FNR("BL4.SetTickGroup");

BL4.WasRecentlyRendered = function(OwnerAddress, Tolerance)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.WasRecentlyRendered: Failed To Allocate The Params");return;end;
 Tolerance = Tolerance or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: Tolerance at +0x0
 writeFloat(_params + 0x0, Tolerance)
 UE.CallProcessEventEx(OwnerAddress, "WasRecentlyRendered", _params);
 local RET=readByte(_params + 0x4);
 deAlloc(_params);
 return RET;
end
FNR("BL4.WasRecentlyRendered");

