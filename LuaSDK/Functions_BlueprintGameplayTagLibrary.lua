BL4.AddGameplayTag = function(OwnerAddress, TagContainer, Tag)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AddGameplayTag: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TagContainer at +0x0, Tag at +0x20
 writeQword(_params + 0x0, TagContainer)
 writeQword(_params + 0x20, Tag)
 UE.CallProcessEventEx(OwnerAddress, "AddGameplayTag", _params);
 deAlloc(_params);
end
FNR("BL4.AddGameplayTag");

BL4.AppendGameplayTagContainers = function(OwnerAddress, InOutTagContainer, InTagContainer)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AppendGameplayTagContainers: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InOutTagContainer at +0x0, InTagContainer at +0x20
 writeQword(_params + 0x0, InOutTagContainer)
 writeQword(_params + 0x20, InTagContainer)
 UE.CallProcessEventEx(OwnerAddress, "AppendGameplayTagContainers", _params);
 deAlloc(_params);
end
FNR("BL4.AppendGameplayTagContainers");

BL4.BreakGameplayTagContainer = function(OwnerAddress, GameplayTagContainer, GameplayTags)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BreakGameplayTagContainer: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: GameplayTagContainer at +0x0, GameplayTags at +0x20
 writeQword(_params + 0x0, GameplayTagContainer)
 writeQword(_params + 0x20, GameplayTags)
 UE.CallProcessEventEx(OwnerAddress, "BreakGameplayTagContainer", _params);
 deAlloc(_params);
end
FNR("BL4.BreakGameplayTagContainer");

BL4.Conv_ObjectToGameplayTagAssetInterface = function(InObject_Object)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.Conv_ObjectToGameplayTagAssetInterface: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InObject at +0x0
 writeQword(_params + 0x0, InObject_Object)
 UE.CallProcessEventEx(InObject_Object, "Conv_ObjectToGameplayTagAssetInterface", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.Conv_ObjectToGameplayTagAssetInterface");

BL4.DoesContainerMatchTagQuery = function(OwnerAddress, TagContainer, TagQuery)
 local _paramsSize = 0x70
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DoesContainerMatchTagQuery: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TagContainer at +0x0, TagQuery at +0x20
 writeQword(_params + 0x0, TagContainer)
 writeQword(_params + 0x20, TagQuery)
 UE.CallProcessEventEx(OwnerAddress, "DoesContainerMatchTagQuery", _params);
 local RET=readByte(_params + 0x68);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DoesContainerMatchTagQuery");

BL4.DoesTagAssetInterfaceHaveTag = function(OwnerAddress, TagContainerInterface, Tag)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.DoesTagAssetInterfaceHaveTag: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TagContainerInterface at +0x0, Tag at +0x10
 writeQword(_params + 0x0, TagContainerInterface)
 writeQword(_params + 0x10, Tag)
 UE.CallProcessEventEx(OwnerAddress, "DoesTagAssetInterfaceHaveTag", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.DoesTagAssetInterfaceHaveTag");

BL4.EqualEqual_GameplayTag = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_GameplayTag: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_GameplayTag", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_GameplayTag");

BL4.EqualEqual_GameplayTagContainer = function(OwnerAddress, A, B)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.EqualEqual_GameplayTagContainer: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x20
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x20, B)
 UE.CallProcessEventEx(OwnerAddress, "EqualEqual_GameplayTagContainer", _params);
 local RET=readByte(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.EqualEqual_GameplayTagContainer");

BL4.GetAllActorsOfClassMatchingTagQuery = function(WorldContextObject_Object, ActorClass_Class, GameplayTagQuery, OutActors)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetAllActorsOfClassMatchingTagQuery: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: WorldContextObject at +0x0, ActorClass at +0x8, GameplayTagQuery at +0x10, OutActors at +0x58
 writeQword(_params + 0x0, WorldContextObject_Object)
 writeQword(_params + 0x8, ActorClass_Class)
 writeQword(_params + 0x10, GameplayTagQuery)
 writeQword(_params + 0x58, OutActors)
 UE.CallProcessEventEx(WorldContextObject_Object, "GetAllActorsOfClassMatchingTagQuery", _params);
 deAlloc(_params);
end
FNR("BL4.GetAllActorsOfClassMatchingTagQuery");

BL4.GetDebugStringFromGameplayTag = function(OwnerAddress, GameplayTag)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDebugStringFromGameplayTag: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: GameplayTag at +0x0
 writeQword(_params + 0x0, GameplayTag)
 UE.CallProcessEventEx(OwnerAddress, "GetDebugStringFromGameplayTag", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDebugStringFromGameplayTag");

BL4.GetDebugStringFromGameplayTagContainer = function(OwnerAddress, TagContainer)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetDebugStringFromGameplayTagContainer: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TagContainer at +0x0
 writeQword(_params + 0x0, TagContainer)
 UE.CallProcessEventEx(OwnerAddress, "GetDebugStringFromGameplayTagContainer", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetDebugStringFromGameplayTagContainer");

BL4.GetNumGameplayTagsInContainer = function(OwnerAddress, TagContainer)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetNumGameplayTagsInContainer: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TagContainer at +0x0
 writeQword(_params + 0x0, TagContainer)
 UE.CallProcessEventEx(OwnerAddress, "GetNumGameplayTagsInContainer", _params);
 local RET=readInteger(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetNumGameplayTagsInContainer");

BL4.GetOwnedGameplayTags = function(OwnerAddress, TagContainerInterface)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetOwnedGameplayTags: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TagContainerInterface at +0x0
 writeQword(_params + 0x0, TagContainerInterface)
 UE.CallProcessEventEx(OwnerAddress, "GetOwnedGameplayTags", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetOwnedGameplayTags");

BL4.GetTagName = function(OwnerAddress, GameplayTag)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetTagName: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: GameplayTag at +0x0
 writeQword(_params + 0x0, GameplayTag)
 UE.CallProcessEventEx(OwnerAddress, "GetTagName", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetTagName");

BL4.HasAllMatchingGameplayTags = function(OwnerAddress, TagContainerInterface, OtherContainer)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.HasAllMatchingGameplayTags: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TagContainerInterface at +0x0, OtherContainer at +0x10
 writeQword(_params + 0x0, TagContainerInterface)
 writeQword(_params + 0x10, OtherContainer)
 UE.CallProcessEventEx(OwnerAddress, "HasAllMatchingGameplayTags", _params);
 local RET=readByte(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.HasAllMatchingGameplayTags");

BL4.HasAllTags = function(OwnerAddress, TagContainer, OtherContainer, bExactMatch)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.HasAllTags: Failed To Allocate The Params");return;end;
 bExactMatch = bExactMatch or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TagContainer at +0x0, OtherContainer at +0x20, bExactMatch at +0x40
 writeQword(_params + 0x0, TagContainer)
 writeQword(_params + 0x20, OtherContainer)
 writeByte(_params + 0x40, bExactMatch)
 UE.CallProcessEventEx(OwnerAddress, "HasAllTags", _params);
 local RET=readByte(_params + 0x41);
 deAlloc(_params);
 return RET;
end
FNR("BL4.HasAllTags");

BL4.HasAnyTags = function(OwnerAddress, TagContainer, OtherContainer, bExactMatch)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.HasAnyTags: Failed To Allocate The Params");return;end;
 bExactMatch = bExactMatch or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TagContainer at +0x0, OtherContainer at +0x20, bExactMatch at +0x40
 writeQword(_params + 0x0, TagContainer)
 writeQword(_params + 0x20, OtherContainer)
 writeByte(_params + 0x40, bExactMatch)
 UE.CallProcessEventEx(OwnerAddress, "HasAnyTags", _params);
 local RET=readByte(_params + 0x41);
 deAlloc(_params);
 return RET;
end
FNR("BL4.HasAnyTags");

BL4.HasTag = function(OwnerAddress, TagContainer, Tag, bExactMatch)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.HasTag: Failed To Allocate The Params");return;end;
 bExactMatch = bExactMatch or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TagContainer at +0x0, Tag at +0x20, bExactMatch at +0x28
 writeQword(_params + 0x0, TagContainer)
 writeQword(_params + 0x20, Tag)
 writeByte(_params + 0x28, bExactMatch)
 UE.CallProcessEventEx(OwnerAddress, "HasTag", _params);
 local RET=readByte(_params + 0x29);
 deAlloc(_params);
 return RET;
end
FNR("BL4.HasTag");

BL4.IsGameplayTagValid = function(OwnerAddress, GameplayTag)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsGameplayTagValid: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: GameplayTag at +0x0
 writeQword(_params + 0x0, GameplayTag)
 UE.CallProcessEventEx(OwnerAddress, "IsGameplayTagValid", _params);
 local RET=readByte(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsGameplayTagValid");

BL4.IsTagQueryEmpty = function(OwnerAddress, TagQuery)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.IsTagQueryEmpty: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TagQuery at +0x0
 writeQword(_params + 0x0, TagQuery)
 UE.CallProcessEventEx(OwnerAddress, "IsTagQueryEmpty", _params);
 local RET=readByte(_params + 0x48);
 deAlloc(_params);
 return RET;
end
FNR("BL4.IsTagQueryEmpty");

BL4.MakeGameplayTagContainerFromArray = function(OwnerAddress, GameplayTags)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeGameplayTagContainerFromArray: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: GameplayTags at +0x0
 writeQword(_params + 0x0, GameplayTags)
 UE.CallProcessEventEx(OwnerAddress, "MakeGameplayTagContainerFromArray", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeGameplayTagContainerFromArray");

BL4.MakeGameplayTagContainerFromTag = function(OwnerAddress, SingleTag)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeGameplayTagContainerFromTag: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: SingleTag at +0x0
 writeQword(_params + 0x0, SingleTag)
 UE.CallProcessEventEx(OwnerAddress, "MakeGameplayTagContainerFromTag", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeGameplayTagContainerFromTag");

BL4.MakeGameplayTagQuery = function(OwnerAddress, TagQuery)
 local _paramsSize = 0x90
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeGameplayTagQuery: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TagQuery at +0x0
 writeQword(_params + 0x0, TagQuery)
 UE.CallProcessEventEx(OwnerAddress, "MakeGameplayTagQuery", _params);
 local RET=readQword(_params + 0x48);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeGameplayTagQuery");

BL4.MakeGameplayTagQuery_MatchAllTags = function(OwnerAddress, InTags)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeGameplayTagQuery_MatchAllTags: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InTags at +0x0
 writeQword(_params + 0x0, InTags)
 UE.CallProcessEventEx(OwnerAddress, "MakeGameplayTagQuery_MatchAllTags", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeGameplayTagQuery_MatchAllTags");

BL4.MakeGameplayTagQuery_MatchAnyTags = function(OwnerAddress, InTags)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeGameplayTagQuery_MatchAnyTags: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InTags at +0x0
 writeQword(_params + 0x0, InTags)
 UE.CallProcessEventEx(OwnerAddress, "MakeGameplayTagQuery_MatchAnyTags", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeGameplayTagQuery_MatchAnyTags");

BL4.MakeGameplayTagQuery_MatchNoTags = function(OwnerAddress, InTags)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeGameplayTagQuery_MatchNoTags: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: InTags at +0x0
 writeQword(_params + 0x0, InTags)
 UE.CallProcessEventEx(OwnerAddress, "MakeGameplayTagQuery_MatchNoTags", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeGameplayTagQuery_MatchNoTags");

BL4.MakeLiteralGameplayTag = function(OwnerAddress, Value)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeLiteralGameplayTag: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeQword(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "MakeLiteralGameplayTag", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeLiteralGameplayTag");

BL4.MakeLiteralGameplayTagContainer = function(OwnerAddress, Value)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MakeLiteralGameplayTagContainer: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Value at +0x0
 writeQword(_params + 0x0, Value)
 UE.CallProcessEventEx(OwnerAddress, "MakeLiteralGameplayTagContainer", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MakeLiteralGameplayTagContainer");

BL4.MatchesAnyTags = function(OwnerAddress, TagOne, OtherContainer, bExactMatch)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MatchesAnyTags: Failed To Allocate The Params");return;end;
 bExactMatch = bExactMatch or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TagOne at +0x0, OtherContainer at +0x8, bExactMatch at +0x28
 writeQword(_params + 0x0, TagOne)
 writeQword(_params + 0x8, OtherContainer)
 writeByte(_params + 0x28, bExactMatch)
 UE.CallProcessEventEx(OwnerAddress, "MatchesAnyTags", _params);
 local RET=readByte(_params + 0x29);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MatchesAnyTags");

BL4.MatchesTag = function(OwnerAddress, TagOne, TagTwo, bExactMatch)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.MatchesTag: Failed To Allocate The Params");return;end;
 bExactMatch = bExactMatch or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TagOne at +0x0, TagTwo at +0x8, bExactMatch at +0x10
 writeQword(_params + 0x0, TagOne)
 writeQword(_params + 0x8, TagTwo)
 writeByte(_params + 0x10, bExactMatch)
 UE.CallProcessEventEx(OwnerAddress, "MatchesTag", _params);
 local RET=readByte(_params + 0x11);
 deAlloc(_params);
 return RET;
end
FNR("BL4.MatchesTag");

BL4.NotEqual_GameplayTag = function(OwnerAddress, A, B)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_GameplayTag: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_GameplayTag", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_GameplayTag");

BL4.NotEqual_GameplayTagContainer = function(OwnerAddress, A, B)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_GameplayTagContainer: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x20
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x20, B)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_GameplayTagContainer", _params);
 local RET=readByte(_params + 0x40);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_GameplayTagContainer");

BL4.NotEqual_TagContainerTagContainer = function(OwnerAddress, A, B)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_TagContainerTagContainer: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x20
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x20, B)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_TagContainerTagContainer", _params);
 local RET=readByte(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_TagContainerTagContainer");

BL4.NotEqual_TagTag = function(OwnerAddress, A, B)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.NotEqual_TagTag: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x8
 writeQword(_params + 0x0, A)
 writeQword(_params + 0x8, B)
 UE.CallProcessEventEx(OwnerAddress, "NotEqual_TagTag", _params);
 local RET=readByte(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.NotEqual_TagTag");

BL4.RemoveGameplayTag = function(OwnerAddress, TagContainer, Tag)
 local _paramsSize = 0x30
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RemoveGameplayTag: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: TagContainer at +0x0, Tag at +0x20
 writeQword(_params + 0x0, TagContainer)
 writeQword(_params + 0x20, Tag)
 UE.CallProcessEventEx(OwnerAddress, "RemoveGameplayTag", _params);
 local RET=readByte(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.RemoveGameplayTag");

