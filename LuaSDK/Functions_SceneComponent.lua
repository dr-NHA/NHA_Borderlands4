BL4.DetachFromParent = function(OwnerAddress, bMaintainWorldPosition, bCallModify)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DetachFromParent: Failed To Allocate The Params");return;end;
 bMaintainWorldPosition = bMaintainWorldPosition or false
 bCallModify = bCallModify or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bMaintainWorldPosition at +0x0, bCallModify at +0x1
 writeByte(_params + 0x0, bMaintainWorldPosition)
 writeByte(_params + 0x1, bCallModify)
 UE.CallProcessEventEx(OwnerAddress, "DetachFromParent", _params);
 deAlloc(_params);
end
FNR("BL4.DetachFromParent");

BL4.DoesSocketExist = function(OwnerAddress, InSocketName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DoesSocketExist: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSocketName at +0x0
 writeQword(_params + 0x0, InSocketName)
 UE.CallProcessEventEx(OwnerAddress, "DoesSocketExist", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DoesSocketExist");

BL4.GetAllSocketNames = function(OwnerAddress)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAllSocketNames: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAllSocketNames", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAllSocketNames");

BL4.GetAttachParent = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAttachParent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAttachParent", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAttachParent");

BL4.GetAttachSocketName = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAttachSocketName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetAttachSocketName", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetAttachSocketName");

BL4.GetChildComponent = function(OwnerAddress, ChildIndex)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetChildComponent: Failed To Allocate The Params");return;end;
 ChildIndex = ChildIndex or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ChildIndex at +0x0
 writeInteger(_params + 0x0, ChildIndex)
 UE.CallProcessEventEx(OwnerAddress, "GetChildComponent", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetChildComponent");

BL4.GetChildrenComponents = function(OwnerAddress, bIncludeAllDescendants, Children)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetChildrenComponents: Failed To Allocate The Params");return;end;
 bIncludeAllDescendants = bIncludeAllDescendants or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: bIncludeAllDescendants at +0x0, Children at +0x8
 writeByte(_params + 0x0, bIncludeAllDescendants)
 writeQword(_params + 0x8, Children)
 UE.CallProcessEventEx(OwnerAddress, "GetChildrenComponents", _params);
 deAlloc(_params);
end
FNR("BL4.GetChildrenComponents");

BL4.GetComponentVelocity = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetComponentVelocity: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetComponentVelocity", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8),Z=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetComponentVelocity");

BL4.GetForwardVector = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetForwardVector: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetForwardVector", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8),Z=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetForwardVector");

BL4.GetNumChildrenComponents = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumChildrenComponents: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetNumChildrenComponents", _params);
 local RET=readInteger(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumChildrenComponents");

BL4.GetParentComponents = function(OwnerAddress, Parents)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetParentComponents: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Parents at +0x0
 writeQword(_params + 0x0, Parents)
 UE.CallProcessEventEx(OwnerAddress, "GetParentComponents", _params);
 deAlloc(_params);
end
FNR("BL4.GetParentComponents");

BL4.GetPhysicsVolume = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetPhysicsVolume: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetPhysicsVolume", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetPhysicsVolume");

BL4.GetRelativeTransform = function(OwnerAddress)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRelativeTransform: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetRelativeTransform", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRelativeTransform");

BL4.GetRightVector = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRightVector: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetRightVector", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8),Z=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRightVector");

BL4.GetShouldUpdatePhysicsVolume = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetShouldUpdatePhysicsVolume: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetShouldUpdatePhysicsVolume", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetShouldUpdatePhysicsVolume");

BL4.GetSocketLocation = function(OwnerAddress, InSocketName)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSocketLocation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSocketName at +0x0
 writeQword(_params + 0x0, InSocketName)
 UE.CallProcessEventEx(OwnerAddress, "GetSocketLocation", _params);
 local RET={X=readFloat(_params+0x8),Y=readFloat(_params+0x10),Z=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSocketLocation");

BL4.GetSocketQuaternion = function(OwnerAddress, InSocketName)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSocketQuaternion: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSocketName at +0x0
 writeQword(_params + 0x0, InSocketName)
 UE.CallProcessEventEx(OwnerAddress, "GetSocketQuaternion", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSocketQuaternion");

BL4.GetSocketRotation = function(OwnerAddress, InSocketName)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSocketRotation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSocketName at +0x0
 writeQword(_params + 0x0, InSocketName)
 UE.CallProcessEventEx(OwnerAddress, "GetSocketRotation", _params);
 local RET={Pitch=readFloat(_params+0x8),Yaw=readFloat(_params+0x10),Roll=readFloat(_params+0x18)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSocketRotation");

BL4.GetSocketTransform = function(OwnerAddress, InSocketName, TransformSpace)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSocketTransform: Failed To Allocate The Params");return;end;
 TransformSpace = TransformSpace or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InSocketName at +0x0, TransformSpace at +0x8
 writeQword(_params + 0x0, InSocketName)
 writeByte(_params + 0x8, TransformSpace)
 UE.CallProcessEventEx(OwnerAddress, "GetSocketTransform", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSocketTransform");

BL4.GetUpVector = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetUpVector: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "GetUpVector", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8),Z=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetUpVector");

BL4.IsAnySimulatingPhysics = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsAnySimulatingPhysics: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsAnySimulatingPhysics", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsAnySimulatingPhysics");

BL4.IsSimulatingPhysics = function(OwnerAddress, BoneName)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsSimulatingPhysics: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: BoneName at +0x0
 writeQword(_params + 0x0, BoneName)
 UE.CallProcessEventEx(OwnerAddress, "IsSimulatingPhysics", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsSimulatingPhysics");

BL4.IsVisible = function(OwnerAddress)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsVisible: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "IsVisible", _params);
 local RET=readByte(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsVisible");

BL4.K2_AddLocalOffset = function(OwnerAddress, DeltaLocation, bSweep, SweepHitResult, bTeleport)
 local _paramsSize = 0x128
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_AddLocalOffset: Failed To Allocate The Params");return;end;
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
 UE.CallProcessEventEx(OwnerAddress, "K2_AddLocalOffset", _params);
 deAlloc(_params);
end
FNR("BL4.K2_AddLocalOffset");

BL4.K2_AddLocalRotation = function(OwnerAddress, DeltaRotation, bSweep, SweepHitResult, bTeleport)
 local _paramsSize = 0x128
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_AddLocalRotation: Failed To Allocate The Params");return;end;
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
 UE.CallProcessEventEx(OwnerAddress, "K2_AddLocalRotation", _params);
 deAlloc(_params);
end
FNR("BL4.K2_AddLocalRotation");

BL4.K2_AddLocalTransform = function(OwnerAddress, DeltaTransform, bSweep, SweepHitResult, bTeleport)
 local _paramsSize = 0x170
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_AddLocalTransform: Failed To Allocate The Params");return;end;
 bSweep = bSweep or false
 bTeleport = bTeleport or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DeltaTransform at +0x0, bSweep at +0x60, SweepHitResult at +0x68, bTeleport at +0x168
 writeQword(_params + 0x0, DeltaTransform)
 writeByte(_params + 0x60, bSweep)
 writeQword(_params + 0x68, SweepHitResult)
 writeByte(_params + 0x168, bTeleport)
 UE.CallProcessEventEx(OwnerAddress, "K2_AddLocalTransform", _params);
 deAlloc(_params);
end
FNR("BL4.K2_AddLocalTransform");

BL4.K2_AddRelativeLocation = function(OwnerAddress, DeltaLocation, bSweep, SweepHitResult, bTeleport)
 local _paramsSize = 0x128
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_AddRelativeLocation: Failed To Allocate The Params");return;end;
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
 UE.CallProcessEventEx(OwnerAddress, "K2_AddRelativeLocation", _params);
 deAlloc(_params);
end
FNR("BL4.K2_AddRelativeLocation");

BL4.K2_AddRelativeRotation = function(OwnerAddress, DeltaRotation, bSweep, SweepHitResult, bTeleport)
 local _paramsSize = 0x128
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_AddRelativeRotation: Failed To Allocate The Params");return;end;
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
 UE.CallProcessEventEx(OwnerAddress, "K2_AddRelativeRotation", _params);
 deAlloc(_params);
end
FNR("BL4.K2_AddRelativeRotation");

BL4.K2_AddWorldOffset = function(OwnerAddress, DeltaLocation, bSweep, SweepHitResult, bTeleport)
 local _paramsSize = 0x128
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_AddWorldOffset: Failed To Allocate The Params");return;end;
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
 UE.CallProcessEventEx(OwnerAddress, "K2_AddWorldOffset", _params);
 deAlloc(_params);
end
FNR("BL4.K2_AddWorldOffset");

BL4.K2_AddWorldRotation = function(OwnerAddress, DeltaRotation, bSweep, SweepHitResult, bTeleport)
 local _paramsSize = 0x128
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_AddWorldRotation: Failed To Allocate The Params");return;end;
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
 UE.CallProcessEventEx(OwnerAddress, "K2_AddWorldRotation", _params);
 deAlloc(_params);
end
FNR("BL4.K2_AddWorldRotation");

BL4.K2_AddWorldTransform = function(OwnerAddress, DeltaTransform, bSweep, SweepHitResult, bTeleport)
 local _paramsSize = 0x170
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_AddWorldTransform: Failed To Allocate The Params");return;end;
 bSweep = bSweep or false
 bTeleport = bTeleport or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DeltaTransform at +0x0, bSweep at +0x60, SweepHitResult at +0x68, bTeleport at +0x168
 writeQword(_params + 0x0, DeltaTransform)
 writeByte(_params + 0x60, bSweep)
 writeQword(_params + 0x68, SweepHitResult)
 writeByte(_params + 0x168, bTeleport)
 UE.CallProcessEventEx(OwnerAddress, "K2_AddWorldTransform", _params);
 deAlloc(_params);
end
FNR("BL4.K2_AddWorldTransform");

BL4.K2_AddWorldTransformKeepScale = function(OwnerAddress, DeltaTransform, bSweep, SweepHitResult, bTeleport)
 local _paramsSize = 0x170
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_AddWorldTransformKeepScale: Failed To Allocate The Params");return;end;
 bSweep = bSweep or false
 bTeleport = bTeleport or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: DeltaTransform at +0x0, bSweep at +0x60, SweepHitResult at +0x68, bTeleport at +0x168
 writeQword(_params + 0x0, DeltaTransform)
 writeByte(_params + 0x60, bSweep)
 writeQword(_params + 0x68, SweepHitResult)
 writeByte(_params + 0x168, bTeleport)
 UE.CallProcessEventEx(OwnerAddress, "K2_AddWorldTransformKeepScale", _params);
 deAlloc(_params);
end
FNR("BL4.K2_AddWorldTransformKeepScale");

BL4.K2_AttachTo = function(InParent_SceneComponent, InSocketName, AttachType, bWeldSimulatedBodies)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_AttachTo: Failed To Allocate The Params");return;end;
 AttachType = AttachType or 0
 bWeldSimulatedBodies = bWeldSimulatedBodies or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InParent at +0x0, InSocketName at +0x8, AttachType at +0x10, bWeldSimulatedBodies at +0x11
 writeQword(_params + 0x0, InParent_SceneComponent)
 writeQword(_params + 0x8, InSocketName)
 writeByte(_params + 0x10, AttachType)
 writeByte(_params + 0x11, bWeldSimulatedBodies)
 UE.CallProcessEventEx(InParent_SceneComponent, "K2_AttachTo", _params);
 local RET=readByte(_params + 0x12);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_AttachTo");

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

BL4.K2_DetachFromComponent = function(OwnerAddress, LocationRule, RotationRule, ScaleRule, bCallModify)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_DetachFromComponent: Failed To Allocate The Params");return;end;
 LocationRule = LocationRule or 0
 RotationRule = RotationRule or 0
 ScaleRule = ScaleRule or 0
 bCallModify = bCallModify or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: LocationRule at +0x0, RotationRule at +0x1, ScaleRule at +0x2, bCallModify at +0x3
 writeByte(_params + 0x0, LocationRule)
 writeByte(_params + 0x1, RotationRule)
 writeByte(_params + 0x2, ScaleRule)
 writeByte(_params + 0x3, bCallModify)
 UE.CallProcessEventEx(OwnerAddress, "K2_DetachFromComponent", _params);
 deAlloc(_params);
end
FNR("BL4.K2_DetachFromComponent");

BL4.K2_GetComponentLocation = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_GetComponentLocation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "K2_GetComponentLocation", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8),Z=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_GetComponentLocation");

BL4.K2_GetComponentRotation = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_GetComponentRotation: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "K2_GetComponentRotation", _params);
 local RET={Pitch=readFloat(_params+0x0),Yaw=readFloat(_params+0x8),Roll=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_GetComponentRotation");

BL4.K2_GetComponentScale = function(OwnerAddress)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_GetComponentScale: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "K2_GetComponentScale", _params);
 local RET={X=readFloat(_params+0x0),Y=readFloat(_params+0x8),Z=readFloat(_params+0x10)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_GetComponentScale");

BL4.K2_GetComponentToWorld = function(OwnerAddress)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_GetComponentToWorld: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 UE.CallProcessEventEx(OwnerAddress, "K2_GetComponentToWorld", _params);
 local RET=readQword(_params + 0x0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.K2_GetComponentToWorld");

BL4.K2_SetRelativeLocation = function(OwnerAddress, NewLocation, bSweep, SweepHitResult, bTeleport)
 local _paramsSize = 0x128
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_SetRelativeLocation: Failed To Allocate The Params");return;end;
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
 UE.CallProcessEventEx(OwnerAddress, "K2_SetRelativeLocation", _params);
 deAlloc(_params);
end
FNR("BL4.K2_SetRelativeLocation");

BL4.K2_SetRelativeLocationAndRotation = function(OwnerAddress, NewLocation, NewRotation, bSweep, SweepHitResult, bTeleport)
 local _paramsSize = 0x140
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_SetRelativeLocationAndRotation: Failed To Allocate The Params");return;end;
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
 UE.CallProcessEventEx(OwnerAddress, "K2_SetRelativeLocationAndRotation", _params);
 deAlloc(_params);
end
FNR("BL4.K2_SetRelativeLocationAndRotation");

BL4.K2_SetRelativeRotation = function(OwnerAddress, NewRotation, bSweep, SweepHitResult, bTeleport)
 local _paramsSize = 0x128
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_SetRelativeRotation: Failed To Allocate The Params");return;end;
 NewRotation = NewRotation or {Pitch=0,Yaw=0,Roll=0}
 bSweep = bSweep or false
 bTeleport = bTeleport or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewRotation at +0x0, bSweep at +0x18, SweepHitResult at +0x20, bTeleport at +0x120
 writeDouble(_params + 0x0, (NewRotation and NewRotation.Pitch) or 0)
 writeDouble(_params + 0x8, (NewRotation and NewRotation.Yaw) or 0)
 writeDouble(_params + 0x10, (NewRotation and NewRotation.Roll) or 0)
 writeByte(_params + 0x18, bSweep)
 writeQword(_params + 0x20, SweepHitResult)
 writeByte(_params + 0x120, bTeleport)
 UE.CallProcessEventEx(OwnerAddress, "K2_SetRelativeRotation", _params);
 deAlloc(_params);
end
FNR("BL4.K2_SetRelativeRotation");

BL4.K2_SetRelativeTransform = function(OwnerAddress, NewTransform, bSweep, SweepHitResult, bTeleport)
 local _paramsSize = 0x170
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_SetRelativeTransform: Failed To Allocate The Params");return;end;
 bSweep = bSweep or false
 bTeleport = bTeleport or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewTransform at +0x0, bSweep at +0x60, SweepHitResult at +0x68, bTeleport at +0x168
 writeQword(_params + 0x0, NewTransform)
 writeByte(_params + 0x60, bSweep)
 writeQword(_params + 0x68, SweepHitResult)
 writeByte(_params + 0x168, bTeleport)
 UE.CallProcessEventEx(OwnerAddress, "K2_SetRelativeTransform", _params);
 deAlloc(_params);
end
FNR("BL4.K2_SetRelativeTransform");

BL4.K2_SetWorldLocation = function(OwnerAddress, NewLocation, bSweep, SweepHitResult, bTeleport)
 local _paramsSize = 0x128
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_SetWorldLocation: Failed To Allocate The Params");return;end;
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
 UE.CallProcessEventEx(OwnerAddress, "K2_SetWorldLocation", _params);
 deAlloc(_params);
end
FNR("BL4.K2_SetWorldLocation");

BL4.K2_SetWorldLocationAndRotation = function(OwnerAddress, NewLocation, NewRotation, bSweep, SweepHitResult, bTeleport)
 local _paramsSize = 0x140
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_SetWorldLocationAndRotation: Failed To Allocate The Params");return;end;
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
 UE.CallProcessEventEx(OwnerAddress, "K2_SetWorldLocationAndRotation", _params);
 deAlloc(_params);
end
FNR("BL4.K2_SetWorldLocationAndRotation");

BL4.K2_SetWorldRotation = function(OwnerAddress, NewRotation, bSweep, SweepHitResult, bTeleport)
 local _paramsSize = 0x128
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_SetWorldRotation: Failed To Allocate The Params");return;end;
 NewRotation = NewRotation or {Pitch=0,Yaw=0,Roll=0}
 bSweep = bSweep or false
 bTeleport = bTeleport or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewRotation at +0x0, bSweep at +0x18, SweepHitResult at +0x20, bTeleport at +0x120
 writeDouble(_params + 0x0, (NewRotation and NewRotation.Pitch) or 0)
 writeDouble(_params + 0x8, (NewRotation and NewRotation.Yaw) or 0)
 writeDouble(_params + 0x10, (NewRotation and NewRotation.Roll) or 0)
 writeByte(_params + 0x18, bSweep)
 writeQword(_params + 0x20, SweepHitResult)
 writeByte(_params + 0x120, bTeleport)
 UE.CallProcessEventEx(OwnerAddress, "K2_SetWorldRotation", _params);
 deAlloc(_params);
end
FNR("BL4.K2_SetWorldRotation");

BL4.K2_SetWorldTransform = function(OwnerAddress, NewTransform, bSweep, SweepHitResult, bTeleport)
 local _paramsSize = 0x170
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.K2_SetWorldTransform: Failed To Allocate The Params");return;end;
 bSweep = bSweep or false
 bTeleport = bTeleport or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewTransform at +0x0, bSweep at +0x60, SweepHitResult at +0x68, bTeleport at +0x168
 writeQword(_params + 0x0, NewTransform)
 writeByte(_params + 0x60, bSweep)
 writeQword(_params + 0x68, SweepHitResult)
 writeByte(_params + 0x168, bTeleport)
 UE.CallProcessEventEx(OwnerAddress, "K2_SetWorldTransform", _params);
 deAlloc(_params);
end
FNR("BL4.K2_SetWorldTransform");

BL4.OnRep_Visibility = function(OwnerAddress, OldValue)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.OnRep_Visibility: Failed To Allocate The Params");return;end;
 OldValue = OldValue or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: OldValue at +0x0
 writeByte(_params + 0x0, OldValue)
 UE.CallProcessEventEx(OwnerAddress, "OnRep_Visibility", _params);
 deAlloc(_params);
end
FNR("BL4.OnRep_Visibility");

BL4.SetAbsolute = function(OwnerAddress, bNewAbsoluteLocation, bNewAbsoluteRotation, bNewAbsoluteScale)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetAbsolute: Failed To Allocate The Params");return;end;
 bNewAbsoluteLocation = bNewAbsoluteLocation or false
 bNewAbsoluteRotation = bNewAbsoluteRotation or false
 bNewAbsoluteScale = bNewAbsoluteScale or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bNewAbsoluteLocation at +0x0, bNewAbsoluteRotation at +0x1, bNewAbsoluteScale at +0x2
 writeByte(_params + 0x0, bNewAbsoluteLocation)
 writeByte(_params + 0x1, bNewAbsoluteRotation)
 writeByte(_params + 0x2, bNewAbsoluteScale)
 UE.CallProcessEventEx(OwnerAddress, "SetAbsolute", _params);
 deAlloc(_params);
end
FNR("BL4.SetAbsolute");

BL4.SetHiddenInGame = function(OwnerAddress, NewHidden, bPropagateToChildren)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetHiddenInGame: Failed To Allocate The Params");return;end;
 NewHidden = NewHidden or false
 bPropagateToChildren = bPropagateToChildren or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewHidden at +0x0, bPropagateToChildren at +0x1
 writeByte(_params + 0x0, NewHidden)
 writeByte(_params + 0x1, bPropagateToChildren)
 UE.CallProcessEventEx(OwnerAddress, "SetHiddenInGame", _params);
 deAlloc(_params);
end
FNR("BL4.SetHiddenInGame");

BL4.SetMobility = function(OwnerAddress, NewMobility)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetMobility: Failed To Allocate The Params");return;end;
 NewMobility = NewMobility or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: NewMobility at +0x0
 writeByte(_params + 0x0, NewMobility)
 UE.CallProcessEventEx(OwnerAddress, "SetMobility", _params);
 deAlloc(_params);
end
FNR("BL4.SetMobility");

BL4.SetRelativeScale3D = function(OwnerAddress, NewScale3D)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRelativeScale3D: Failed To Allocate The Params");return;end;
 NewScale3D = NewScale3D or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewScale3D at +0x0
 writeDouble(_params + 0x0, (NewScale3D and NewScale3D.X) or 0)
 writeDouble(_params + 0x8, (NewScale3D and NewScale3D.Y) or 0)
 writeDouble(_params + 0x10, (NewScale3D and NewScale3D.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetRelativeScale3D", _params);
 deAlloc(_params);
end
FNR("BL4.SetRelativeScale3D");

BL4.SetShouldUpdatePhysicsVolume = function(OwnerAddress, bInShouldUpdatePhysicsVolume)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetShouldUpdatePhysicsVolume: Failed To Allocate The Params");return;end;
 bInShouldUpdatePhysicsVolume = bInShouldUpdatePhysicsVolume or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bInShouldUpdatePhysicsVolume at +0x0
 writeByte(_params + 0x0, bInShouldUpdatePhysicsVolume)
 UE.CallProcessEventEx(OwnerAddress, "SetShouldUpdatePhysicsVolume", _params);
 deAlloc(_params);
end
FNR("BL4.SetShouldUpdatePhysicsVolume");

BL4.SetVisibility = function(OwnerAddress, bNewVisibility, bPropagateToChildren)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetVisibility: Failed To Allocate The Params");return;end;
 bNewVisibility = bNewVisibility or false
 bPropagateToChildren = bPropagateToChildren or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bNewVisibility at +0x0, bPropagateToChildren at +0x1
 writeByte(_params + 0x0, bNewVisibility)
 writeByte(_params + 0x1, bPropagateToChildren)
 UE.CallProcessEventEx(OwnerAddress, "SetVisibility", _params);
 deAlloc(_params);
end
FNR("BL4.SetVisibility");

BL4.SetWorldScale3D = function(OwnerAddress, NewScale)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetWorldScale3D: Failed To Allocate The Params");return;end;
 NewScale = NewScale or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: NewScale at +0x0
 writeDouble(_params + 0x0, (NewScale and NewScale.X) or 0)
 writeDouble(_params + 0x8, (NewScale and NewScale.Y) or 0)
 writeDouble(_params + 0x10, (NewScale and NewScale.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetWorldScale3D", _params);
 deAlloc(_params);
end
FNR("BL4.SetWorldScale3D");

BL4.ToggleVisibility = function(OwnerAddress, bPropagateToChildren)
 local _paramsSize = 0x8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ToggleVisibility: Failed To Allocate The Params");return;end;
 bPropagateToChildren = bPropagateToChildren or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0})
 -- Set inputs: bPropagateToChildren at +0x0
 writeByte(_params + 0x0, bPropagateToChildren)
 UE.CallProcessEventEx(OwnerAddress, "ToggleVisibility", _params);
 deAlloc(_params);
end
FNR("BL4.ToggleVisibility");

