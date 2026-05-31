BL4.ApproximateConvexHullsWithSimplerCollisionShapes = function(OwnerAddress, SimpleCollision, ApproximateOptions, bHasApproximated, debug_GeometryScriptDebug)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ApproximateConvexHullsWithSimplerCollisionShapes: Failed To Allocate The Params");return;end;
 bHasApproximated = bHasApproximated or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SimpleCollision at +0x0, ApproximateOptions at +0x80, bHasApproximated at +0x8C, debug at +0x90
 writeQword(_params + 0x0, SimpleCollision)
 writeQword(_params + 0x80, ApproximateOptions)
 writeByte(_params + 0x8C, bHasApproximated)
 writeQword(_params + 0x90, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(OwnerAddress, "ApproximateConvexHullsWithSimplerCollisionShapes", _params);
 deAlloc(_params);
end
FNR("BL4.ApproximateConvexHullsWithSimplerCollisionShapes");

BL4.CombineSimpleCollision = function(OwnerAddress, CollisionToUpdate, AppendCollision, debug_GeometryScriptDebug)
 local _paramsSize = 0x108
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CombineSimpleCollision: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: CollisionToUpdate at +0x0, AppendCollision at +0x80, debug at +0x100
 writeQword(_params + 0x0, CollisionToUpdate)
 writeQword(_params + 0x80, AppendCollision)
 writeQword(_params + 0x100, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(OwnerAddress, "CombineSimpleCollision", _params);
 deAlloc(_params);
end
FNR("BL4.CombineSimpleCollision");

BL4.CombineSimpleCollisionArray = function(OwnerAddress, SimpleCollisionArray, SimpleCollision, debug_GeometryScriptDebug)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CombineSimpleCollisionArray: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SimpleCollisionArray at +0x0, SimpleCollision at +0x10, debug at +0x90
 writeQword(_params + 0x0, SimpleCollisionArray)
 writeQword(_params + 0x10, SimpleCollision)
 writeQword(_params + 0x90, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(OwnerAddress, "CombineSimpleCollisionArray", _params);
 deAlloc(_params);
end
FNR("BL4.CombineSimpleCollisionArray");

BL4.ComputeNavigableConvexDecomposition = function(TargetMesh_DynamicMesh, options, debug_GeometryScriptDebug)
 local _paramsSize = 0xC8
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ComputeNavigableConvexDecomposition: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TargetMesh at +0x0, options at +0x8, debug at +0x40
 writeQword(_params + 0x0, TargetMesh_DynamicMesh)
 writeQword(_params + 0x8, options)
 writeQword(_params + 0x40, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(TargetMesh_DynamicMesh, "ComputeNavigableConvexDecomposition", _params);
 local RET=readQword(_params + 0x48);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ComputeNavigableConvexDecomposition");

BL4.ComputeNegativeSpace = function(OwnerAddress, MeshBVH, NegativeSpaceOptions, debug_GeometryScriptDebug)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ComputeNegativeSpace: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: MeshBVH at +0x0, NegativeSpaceOptions at +0x20, debug at +0x48
 writeQword(_params + 0x0, MeshBVH)
 writeQword(_params + 0x20, NegativeSpaceOptions)
 writeQword(_params + 0x48, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(OwnerAddress, "ComputeNegativeSpace", _params);
 local RET=readQword(_params + 0x50);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ComputeNegativeSpace");

BL4.Conv_GeometryScriptSphereCoveringToSphereArray = function(OwnerAddress, SphereCovering)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_GeometryScriptSphereCoveringToSphereArray: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SphereCovering at +0x0
 writeQword(_params + 0x0, SphereCovering)
 UE.CallProcessEventEx(OwnerAddress, "Conv_GeometryScriptSphereCoveringToSphereArray", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_GeometryScriptSphereCoveringToSphereArray");

BL4.Conv_SphereArrayToGeometryScriptSphereCovering = function(OwnerAddress, Spheres)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_SphereArrayToGeometryScriptSphereCovering: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Spheres at +0x0
 writeQword(_params + 0x0, Spheres)
 UE.CallProcessEventEx(OwnerAddress, "Conv_SphereArrayToGeometryScriptSphereCovering", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_SphereArrayToGeometryScriptSphereCovering");

BL4.GenerateCollisionFromMesh = function(FromDynamicMesh_DynamicMesh, options, debug_GeometryScriptDebug)
 local _paramsSize = 0xC0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GenerateCollisionFromMesh: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: FromDynamicMesh at +0x0, options at +0x8, debug at +0x38
 writeQword(_params + 0x0, FromDynamicMesh_DynamicMesh)
 writeQword(_params + 0x8, options)
 writeQword(_params + 0x38, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(FromDynamicMesh_DynamicMesh, "GenerateCollisionFromMesh", _params);
 local RET=readQword(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GenerateCollisionFromMesh");

BL4.GetSimpleCollisionFromComponent = function(Component_PrimitiveComponent, debug_GeometryScriptDebug)
 local _paramsSize = 0x90
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSimpleCollisionFromComponent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Component at +0x0, debug at +0x8
 writeQword(_params + 0x0, Component_PrimitiveComponent)
 writeQword(_params + 0x8, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(Component_PrimitiveComponent, "GetSimpleCollisionFromComponent", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSimpleCollisionFromComponent");

BL4.GetSimpleCollisionFromStaticMesh = function(StaticMesh, debug_GeometryScriptDebug)
 local _paramsSize = 0x90
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSimpleCollisionFromStaticMesh: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: StaticMesh at +0x0, debug at +0x8
 writeQword(_params + 0x0, StaticMesh)
 writeQword(_params + 0x8, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(StaticMesh, "GetSimpleCollisionFromStaticMesh", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSimpleCollisionFromStaticMesh");

BL4.GetSimpleCollisionShapeCount = function(OwnerAddress, SimpleCollision)
 local _paramsSize = 0x88
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSimpleCollisionShapeCount: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SimpleCollision at +0x0
 writeQword(_params + 0x0, SimpleCollision)
 UE.CallProcessEventEx(OwnerAddress, "GetSimpleCollisionShapeCount", _params);
 local RET=readInteger(_params + 0x80);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSimpleCollisionShapeCount");

BL4.MergeSimpleCollisionShapes = function(OwnerAddress, SimpleCollision, MergeOptions, bHasMerged, debug_GeometryScriptDebug)
 local _paramsSize = 0x180
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MergeSimpleCollisionShapes: Failed To Allocate The Params");return;end;
 bHasMerged = bHasMerged or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SimpleCollision at +0x0, MergeOptions at +0x80, bHasMerged at +0xF0, debug at +0xF8
 writeQword(_params + 0x0, SimpleCollision)
 writeQword(_params + 0x80, MergeOptions)
 writeByte(_params + 0xF0, bHasMerged)
 writeQword(_params + 0xF8, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(OwnerAddress, "MergeSimpleCollisionShapes", _params);
 local RET=readQword(_params + 0x100);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MergeSimpleCollisionShapes");

BL4.ResetDynamicMeshCollision = function(Component_DynamicMeshComponent, bEmitTransaction, debug_GeometryScriptDebug)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ResetDynamicMeshCollision: Failed To Allocate The Params");return;end;
 bEmitTransaction = bEmitTransaction or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Component at +0x0, bEmitTransaction at +0x8, debug at +0x10
 writeQword(_params + 0x0, Component_DynamicMeshComponent)
 writeByte(_params + 0x8, bEmitTransaction)
 writeQword(_params + 0x10, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(Component_DynamicMeshComponent, "ResetDynamicMeshCollision", _params);
 deAlloc(_params);
end
FNR("BL4.ResetDynamicMeshCollision");

BL4.ResetSimpleCollision = function(OwnerAddress, SimpleCollision)
 local _paramsSize = 0x80
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ResetSimpleCollision: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SimpleCollision at +0x0
 writeQword(_params + 0x0, SimpleCollision)
 UE.CallProcessEventEx(OwnerAddress, "ResetSimpleCollision", _params);
 deAlloc(_params);
end
FNR("BL4.ResetSimpleCollision");

BL4.SetDynamicMeshCollisionFromMesh = function(FromDynamicMesh_DynamicMesh, ToDynamicMeshComponent_DynamicMeshComponent, options, debug_GeometryScriptDebug)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetDynamicMeshCollisionFromMesh: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: FromDynamicMesh at +0x0, ToDynamicMeshComponent at +0x8, options at +0x10, debug at +0x40
 writeQword(_params + 0x0, FromDynamicMesh_DynamicMesh)
 writeQword(_params + 0x8, ToDynamicMeshComponent_DynamicMeshComponent)
 writeQword(_params + 0x10, options)
 writeQword(_params + 0x40, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(FromDynamicMesh_DynamicMesh, "SetDynamicMeshCollisionFromMesh", _params);
 local RET=readQword(_params + 0x48);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetDynamicMeshCollisionFromMesh");

BL4.SetSimpleCollisionOfDynamicMeshComponent = function(OwnerAddress, SimpleCollision, DynamicMeshComponent, options, debug_GeometryScriptDebug)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSimpleCollisionOfDynamicMeshComponent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SimpleCollision at +0x0, DynamicMeshComponent at +0x80, options at +0x88, debug at +0x90
 writeQword(_params + 0x0, SimpleCollision)
 writeQword(_params + 0x80, DynamicMeshComponent)
 writeQword(_params + 0x88, options)
 writeQword(_params + 0x90, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(OwnerAddress, "SetSimpleCollisionOfDynamicMeshComponent", _params);
 deAlloc(_params);
end
FNR("BL4.SetSimpleCollisionOfDynamicMeshComponent");

BL4.SetSimpleCollisionOfStaticMesh = function(OwnerAddress, SimpleCollision, StaticMesh, options, StaticMeshCollisionOptions, debug_GeometryScriptDebug)
 local _paramsSize = 0x98
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSimpleCollisionOfStaticMesh: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SimpleCollision at +0x0, StaticMesh at +0x80, options at +0x88, StaticMeshCollisionOptions at +0x89, debug at +0x90
 writeQword(_params + 0x0, SimpleCollision)
 writeQword(_params + 0x80, StaticMesh)
 writeQword(_params + 0x88, options)
 writeQword(_params + 0x89, StaticMeshCollisionOptions)
 writeQword(_params + 0x90, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(OwnerAddress, "SetSimpleCollisionOfStaticMesh", _params);
 deAlloc(_params);
end
FNR("BL4.SetSimpleCollisionOfStaticMesh");

BL4.SetStaticMeshCollisionFromComponent = function(StaticMeshAsset_StaticMesh, SourceComponent_PrimitiveComponent, options, StaticMeshCollisionOptions, debug_GeometryScriptDebug)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetStaticMeshCollisionFromComponent: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: StaticMeshAsset at +0x0, SourceComponent at +0x8, options at +0x10, StaticMeshCollisionOptions at +0x11, debug at +0x18
 writeQword(_params + 0x0, StaticMeshAsset_StaticMesh)
 writeQword(_params + 0x8, SourceComponent_PrimitiveComponent)
 writeQword(_params + 0x10, options)
 writeQword(_params + 0x11, StaticMeshCollisionOptions)
 writeQword(_params + 0x18, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(StaticMeshAsset_StaticMesh, "SetStaticMeshCollisionFromComponent", _params);
 deAlloc(_params);
end
FNR("BL4.SetStaticMeshCollisionFromComponent");

BL4.SetStaticMeshCollisionFromMesh = function(FromDynamicMesh_DynamicMesh, ToStaticMeshAsset_StaticMesh, options, StaticMeshCollisionOptions, debug_GeometryScriptDebug)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetStaticMeshCollisionFromMesh: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: FromDynamicMesh at +0x0, ToStaticMeshAsset at +0x8, options at +0x10, StaticMeshCollisionOptions at +0x40, debug at +0x48
 writeQword(_params + 0x0, FromDynamicMesh_DynamicMesh)
 writeQword(_params + 0x8, ToStaticMeshAsset_StaticMesh)
 writeQword(_params + 0x10, options)
 writeQword(_params + 0x40, StaticMeshCollisionOptions)
 writeQword(_params + 0x48, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(FromDynamicMesh_DynamicMesh, "SetStaticMeshCollisionFromMesh", _params);
 local RET=readQword(_params + 0x50);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetStaticMeshCollisionFromMesh");

BL4.SetStaticMeshCustomComplexCollision = function(StaticMeshAsset_StaticMesh, StaticMeshCollisionAsset_StaticMesh, bEmitTransaction, bMarkCollisionAsCustomized, debug_GeometryScriptDebug)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetStaticMeshCustomComplexCollision: Failed To Allocate The Params");return;end;
 bEmitTransaction = bEmitTransaction or false
 bMarkCollisionAsCustomized = bMarkCollisionAsCustomized or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: StaticMeshAsset at +0x0, StaticMeshCollisionAsset at +0x8, bEmitTransaction at +0x10, bMarkCollisionAsCustomized at +0x11, debug at +0x18
 writeQword(_params + 0x0, StaticMeshAsset_StaticMesh)
 writeQword(_params + 0x8, StaticMeshCollisionAsset_StaticMesh)
 writeByte(_params + 0x10, bEmitTransaction)
 writeByte(_params + 0x11, bMarkCollisionAsCustomized)
 writeQword(_params + 0x18, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(StaticMeshAsset_StaticMesh, "SetStaticMeshCustomComplexCollision", _params);
 local RET=readByte(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.SetStaticMeshCustomComplexCollision");

BL4.SimplifyConvexHulls = function(OwnerAddress, SimpleCollision, SimplifyOptions, bHasSimplified, debug_GeometryScriptDebug)
 local _paramsSize = 0xA0
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SimplifyConvexHulls: Failed To Allocate The Params");return;end;
 bHasSimplified = bHasSimplified or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SimpleCollision at +0x0, SimplifyOptions at +0x80, bHasSimplified at +0x90, debug at +0x98
 writeQword(_params + 0x0, SimpleCollision)
 writeQword(_params + 0x80, SimplifyOptions)
 writeByte(_params + 0x90, bHasSimplified)
 writeQword(_params + 0x98, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(OwnerAddress, "SimplifyConvexHulls", _params);
 deAlloc(_params);
end
FNR("BL4.SimplifyConvexHulls");

BL4.StaticMeshHasCustomizedCollision = function(StaticMeshAsset_StaticMesh)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.StaticMeshHasCustomizedCollision: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: StaticMeshAsset at +0x0
 writeQword(_params + 0x0, StaticMeshAsset_StaticMesh)
 UE.CallProcessEventEx(StaticMeshAsset_StaticMesh, "StaticMeshHasCustomizedCollision", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.StaticMeshHasCustomizedCollision");

BL4.TransformSimpleCollisionShapes = function(OwnerAddress, SimpleCollision, Transform, TransformOptions, bSuccess, debug_GeometryScriptDebug)
 local _paramsSize = 0x170
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.TransformSimpleCollisionShapes: Failed To Allocate The Params");return;end;
 bSuccess = bSuccess or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SimpleCollision at +0x0, Transform at +0x80, TransformOptions at +0xE0, bSuccess at +0xE2, debug at +0xE8
 writeQword(_params + 0x0, SimpleCollision)
 writeQword(_params + 0x80, Transform)
 writeQword(_params + 0xE0, TransformOptions)
 writeByte(_params + 0xE2, bSuccess)
 writeQword(_params + 0xE8, debug_GeometryScriptDebug)
 UE.CallProcessEventEx(OwnerAddress, "TransformSimpleCollisionShapes", _params);
 local RET=readQword(_params + 0xF0);
 deAlloc(_params);
 return RET;
end
FNR("BL4.TransformSimpleCollisionShapes");

