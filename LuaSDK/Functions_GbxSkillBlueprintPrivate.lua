BL4.AskSkillQuestionInternal_EightParams = function(OwnerAddress, A, B, C, D, E, F, G, H)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AskSkillQuestionInternal_EightParams: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 C = C or 0
 D = D or 0
 E = E or 0
 F = F or 0
 G = G or 0
 H = H or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4, C at +0x8, D at +0xC, E at +0x10, F at +0x14, G at +0x18, H at +0x1C
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 writeInteger(_params + 0x8, C)
 writeInteger(_params + 0xC, D)
 writeInteger(_params + 0x10, E)
 writeInteger(_params + 0x14, F)
 writeInteger(_params + 0x18, G)
 writeInteger(_params + 0x1C, H)
 UE.CallProcessEventEx(OwnerAddress, "AskSkillQuestionInternal_EightParams", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AskSkillQuestionInternal_EightParams");

BL4.AskSkillQuestionInternal_FiveParams = function(OwnerAddress, A, B, C, D, E)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AskSkillQuestionInternal_FiveParams: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 C = C or 0
 D = D or 0
 E = E or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4, C at +0x8, D at +0xC, E at +0x10
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 writeInteger(_params + 0x8, C)
 writeInteger(_params + 0xC, D)
 writeInteger(_params + 0x10, E)
 UE.CallProcessEventEx(OwnerAddress, "AskSkillQuestionInternal_FiveParams", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AskSkillQuestionInternal_FiveParams");

BL4.AskSkillQuestionInternal_FourParams = function(OwnerAddress, A, B, C, D)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AskSkillQuestionInternal_FourParams: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 C = C or 0
 D = D or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4, C at +0x8, D at +0xC
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 writeInteger(_params + 0x8, C)
 writeInteger(_params + 0xC, D)
 UE.CallProcessEventEx(OwnerAddress, "AskSkillQuestionInternal_FourParams", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AskSkillQuestionInternal_FourParams");

BL4.AskSkillQuestionInternal_NineParams = function(OwnerAddress, A, B, C, D, E, F, G, H, I)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AskSkillQuestionInternal_NineParams: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 C = C or 0
 D = D or 0
 E = E or 0
 F = F or 0
 G = G or 0
 H = H or 0
 I = I or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4, C at +0x8, D at +0xC, E at +0x10, F at +0x14, G at +0x18, H at +0x1C, I at +0x20
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 writeInteger(_params + 0x8, C)
 writeInteger(_params + 0xC, D)
 writeInteger(_params + 0x10, E)
 writeInteger(_params + 0x14, F)
 writeInteger(_params + 0x18, G)
 writeInteger(_params + 0x1C, H)
 writeInteger(_params + 0x20, I)
 UE.CallProcessEventEx(OwnerAddress, "AskSkillQuestionInternal_NineParams", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AskSkillQuestionInternal_NineParams");

BL4.AskSkillQuestionInternal_SevenParams = function(OwnerAddress, A, B, C, D, E, F, G)
 local _paramsSize = 0x60
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AskSkillQuestionInternal_SevenParams: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 C = C or 0
 D = D or 0
 E = E or 0
 F = F or 0
 G = G or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4, C at +0x8, D at +0xC, E at +0x10, F at +0x14, G at +0x18
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 writeInteger(_params + 0x8, C)
 writeInteger(_params + 0xC, D)
 writeInteger(_params + 0x10, E)
 writeInteger(_params + 0x14, F)
 writeInteger(_params + 0x18, G)
 UE.CallProcessEventEx(OwnerAddress, "AskSkillQuestionInternal_SevenParams", _params);
 local RET=readQword(_params + 0x20);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AskSkillQuestionInternal_SevenParams");

BL4.AskSkillQuestionInternal_SixParams = function(OwnerAddress, A, B, C, D, E, F)
 local _paramsSize = 0x58
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AskSkillQuestionInternal_SixParams: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 C = C or 0
 D = D or 0
 E = E or 0
 F = F or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4, C at +0x8, D at +0xC, E at +0x10, F at +0x14
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 writeInteger(_params + 0x8, C)
 writeInteger(_params + 0xC, D)
 writeInteger(_params + 0x10, E)
 writeInteger(_params + 0x14, F)
 UE.CallProcessEventEx(OwnerAddress, "AskSkillQuestionInternal_SixParams", _params);
 local RET=readQword(_params + 0x18);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AskSkillQuestionInternal_SixParams");

BL4.AskSkillQuestionInternal_TenParams = function(OwnerAddress, A, B, C, D, E, F, G, H, I, J)
 local _paramsSize = 0x68
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AskSkillQuestionInternal_TenParams: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 C = C or 0
 D = D or 0
 E = E or 0
 F = F or 0
 G = G or 0
 H = H or 0
 I = I or 0
 J = J or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4, C at +0x8, D at +0xC, E at +0x10, F at +0x14, G at +0x18, H at +0x1C, I at +0x20, J at +0x24
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 writeInteger(_params + 0x8, C)
 writeInteger(_params + 0xC, D)
 writeInteger(_params + 0x10, E)
 writeInteger(_params + 0x14, F)
 writeInteger(_params + 0x18, G)
 writeInteger(_params + 0x1C, H)
 writeInteger(_params + 0x20, I)
 writeInteger(_params + 0x24, J)
 UE.CallProcessEventEx(OwnerAddress, "AskSkillQuestionInternal_TenParams", _params);
 local RET=readQword(_params + 0x28);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AskSkillQuestionInternal_TenParams");

BL4.AskSkillQuestionInternal_ThreeParams = function(OwnerAddress, A, B, C)
 local _paramsSize = 0x50
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.AskSkillQuestionInternal_ThreeParams: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 C = C or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4, C at +0x8
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 writeInteger(_params + 0x8, C)
 UE.CallProcessEventEx(OwnerAddress, "AskSkillQuestionInternal_ThreeParams", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.AskSkillQuestionInternal_ThreeParams");

BL4.BranchFilteredEvent = function(Context_GbxSkill, filter, Exec)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.BranchFilteredEvent: Failed To Allocate The Params");return;end;
 filter = filter or 0
 Exec = Exec or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, filter at +0x8, Exec at +0x9
 writeQword(_params + 0x0, Context_GbxSkill)
 writeByte(_params + 0x8, filter)
 writeByte(_params + 0x9, Exec)
 UE.CallProcessEventEx(Context_GbxSkill, "BranchFilteredEvent", _params);
 deAlloc(_params);
end
FNR("BL4.BranchFilteredEvent");

BL4.CallSkillMessageInternal_EightParams = function(OwnerAddress, A, B, C, D, E, F, G, H)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CallSkillMessageInternal_EightParams: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 C = C or 0
 D = D or 0
 E = E or 0
 F = F or 0
 G = G or 0
 H = H or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4, C at +0x8, D at +0xC, E at +0x10, F at +0x14, G at +0x18, H at +0x1C
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 writeInteger(_params + 0x8, C)
 writeInteger(_params + 0xC, D)
 writeInteger(_params + 0x10, E)
 writeInteger(_params + 0x14, F)
 writeInteger(_params + 0x18, G)
 writeInteger(_params + 0x1C, H)
 UE.CallProcessEventEx(OwnerAddress, "CallSkillMessageInternal_EightParams", _params);
 deAlloc(_params);
end
FNR("BL4.CallSkillMessageInternal_EightParams");

BL4.CallSkillMessageInternal_FiveParams = function(OwnerAddress, A, B, C, D, E)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CallSkillMessageInternal_FiveParams: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 C = C or 0
 D = D or 0
 E = E or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4, C at +0x8, D at +0xC, E at +0x10
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 writeInteger(_params + 0x8, C)
 writeInteger(_params + 0xC, D)
 writeInteger(_params + 0x10, E)
 UE.CallProcessEventEx(OwnerAddress, "CallSkillMessageInternal_FiveParams", _params);
 deAlloc(_params);
end
FNR("BL4.CallSkillMessageInternal_FiveParams");

BL4.CallSkillMessageInternal_FourParams = function(OwnerAddress, A, B, C, D)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CallSkillMessageInternal_FourParams: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 C = C or 0
 D = D or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4, C at +0x8, D at +0xC
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 writeInteger(_params + 0x8, C)
 writeInteger(_params + 0xC, D)
 UE.CallProcessEventEx(OwnerAddress, "CallSkillMessageInternal_FourParams", _params);
 deAlloc(_params);
end
FNR("BL4.CallSkillMessageInternal_FourParams");

BL4.CallSkillMessageInternal_NineParams = function(OwnerAddress, A, B, C, D, E, F, G, H, I)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CallSkillMessageInternal_NineParams: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 C = C or 0
 D = D or 0
 E = E or 0
 F = F or 0
 G = G or 0
 H = H or 0
 I = I or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4, C at +0x8, D at +0xC, E at +0x10, F at +0x14, G at +0x18, H at +0x1C, I at +0x20
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 writeInteger(_params + 0x8, C)
 writeInteger(_params + 0xC, D)
 writeInteger(_params + 0x10, E)
 writeInteger(_params + 0x14, F)
 writeInteger(_params + 0x18, G)
 writeInteger(_params + 0x1C, H)
 writeInteger(_params + 0x20, I)
 UE.CallProcessEventEx(OwnerAddress, "CallSkillMessageInternal_NineParams", _params);
 deAlloc(_params);
end
FNR("BL4.CallSkillMessageInternal_NineParams");

BL4.CallSkillMessageInternal_SevenParams = function(OwnerAddress, A, B, C, D, E, F, G)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CallSkillMessageInternal_SevenParams: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 C = C or 0
 D = D or 0
 E = E or 0
 F = F or 0
 G = G or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4, C at +0x8, D at +0xC, E at +0x10, F at +0x14, G at +0x18
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 writeInteger(_params + 0x8, C)
 writeInteger(_params + 0xC, D)
 writeInteger(_params + 0x10, E)
 writeInteger(_params + 0x14, F)
 writeInteger(_params + 0x18, G)
 UE.CallProcessEventEx(OwnerAddress, "CallSkillMessageInternal_SevenParams", _params);
 deAlloc(_params);
end
FNR("BL4.CallSkillMessageInternal_SevenParams");

BL4.CallSkillMessageInternal_SixParams = function(OwnerAddress, A, B, C, D, E, F)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CallSkillMessageInternal_SixParams: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 C = C or 0
 D = D or 0
 E = E or 0
 F = F or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4, C at +0x8, D at +0xC, E at +0x10, F at +0x14
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 writeInteger(_params + 0x8, C)
 writeInteger(_params + 0xC, D)
 writeInteger(_params + 0x10, E)
 writeInteger(_params + 0x14, F)
 UE.CallProcessEventEx(OwnerAddress, "CallSkillMessageInternal_SixParams", _params);
 deAlloc(_params);
end
FNR("BL4.CallSkillMessageInternal_SixParams");

BL4.CallSkillMessageInternal_TenParams = function(OwnerAddress, A, B, C, D, E, F, G, H, I, J)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CallSkillMessageInternal_TenParams: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 C = C or 0
 D = D or 0
 E = E or 0
 F = F or 0
 G = G or 0
 H = H or 0
 I = I or 0
 J = J or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4, C at +0x8, D at +0xC, E at +0x10, F at +0x14, G at +0x18, H at +0x1C, I at +0x20, J at +0x24
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 writeInteger(_params + 0x8, C)
 writeInteger(_params + 0xC, D)
 writeInteger(_params + 0x10, E)
 writeInteger(_params + 0x14, F)
 writeInteger(_params + 0x18, G)
 writeInteger(_params + 0x1C, H)
 writeInteger(_params + 0x20, I)
 writeInteger(_params + 0x24, J)
 UE.CallProcessEventEx(OwnerAddress, "CallSkillMessageInternal_TenParams", _params);
 deAlloc(_params);
end
FNR("BL4.CallSkillMessageInternal_TenParams");

BL4.CallSkillMessageInternal_ThreeParams = function(OwnerAddress, A, B, C)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.CallSkillMessageInternal_ThreeParams: Failed To Allocate The Params");return;end;
 A = A or 0
 B = B or 0
 C = C or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: A at +0x0, B at +0x4, C at +0x8
 writeInteger(_params + 0x0, A)
 writeInteger(_params + 0x4, B)
 writeInteger(_params + 0x8, C)
 UE.CallProcessEventEx(OwnerAddress, "CallSkillMessageInternal_ThreeParams", _params);
 deAlloc(_params);
end
FNR("BL4.CallSkillMessageInternal_ThreeParams");

BL4.ForceDoubleToFloat = function(OwnerAddress, Val)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ForceDoubleToFloat: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Val at +0x0
 writeQword(_params + 0x0, Val)
 UE.CallProcessEventEx(OwnerAddress, "ForceDoubleToFloat", _params);
 local RET=readFloat(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ForceDoubleToFloat");

BL4.ForceFloatToDouble = function(OwnerAddress, Val)
 local _paramsSize = 0x10
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.ForceFloatToDouble: Failed To Allocate The Params");return;end;
 Val = Val or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Val at +0x0
 writeFloat(_params + 0x0, Val)
 UE.CallProcessEventEx(OwnerAddress, "ForceFloatToDouble", _params);
 local RET=readQword(_params + 0x8);
 deAlloc(_params);
 return RET;
end
FNR("BL4.ForceFloatToDouble");

BL4.GetRefSkillParam_actor = function(OwnerAddress, ContextType, Context_Object, SkillDef, ParamData_GbxSkillParamData)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRefSkillParam_actor: Failed To Allocate The Params");return;end;
 ContextType = ContextType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ContextType at +0x0, Context at +0x8, SkillDef at +0x10, ParamData at +0x28
 writeInteger(_params + 0x0, ContextType)
 writeQword(_params + 0x8, Context_Object)
 writeQword(_params + 0x10, SkillDef)
 writeQword(_params + 0x28, ParamData_GbxSkillParamData)
 UE.CallProcessEventEx(OwnerAddress, "GetRefSkillParam_actor", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRefSkillParam_actor");

BL4.GetRefSkillParam_bool = function(OwnerAddress, ContextType, Context_Object, SkillDef, ParamData_GbxSkillParamData)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRefSkillParam_bool: Failed To Allocate The Params");return;end;
 ContextType = ContextType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ContextType at +0x0, Context at +0x8, SkillDef at +0x10, ParamData at +0x28
 writeInteger(_params + 0x0, ContextType)
 writeQword(_params + 0x8, Context_Object)
 writeQword(_params + 0x10, SkillDef)
 writeQword(_params + 0x28, ParamData_GbxSkillParamData)
 UE.CallProcessEventEx(OwnerAddress, "GetRefSkillParam_bool", _params);
 local RET=readByte(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRefSkillParam_bool");

BL4.GetRefSkillParam_double = function(OwnerAddress, ContextType, Context_Object, SkillDef, ParamData_GbxSkillParamData)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRefSkillParam_double: Failed To Allocate The Params");return;end;
 ContextType = ContextType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ContextType at +0x0, Context at +0x8, SkillDef at +0x10, ParamData at +0x28
 writeInteger(_params + 0x0, ContextType)
 writeQword(_params + 0x8, Context_Object)
 writeQword(_params + 0x10, SkillDef)
 writeQword(_params + 0x28, ParamData_GbxSkillParamData)
 UE.CallProcessEventEx(OwnerAddress, "GetRefSkillParam_double", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRefSkillParam_double");

BL4.GetRefSkillParam_float = function(OwnerAddress, ContextType, Context_Object, SkillDef, ParamData_GbxSkillParamData)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRefSkillParam_float: Failed To Allocate The Params");return;end;
 ContextType = ContextType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ContextType at +0x0, Context at +0x8, SkillDef at +0x10, ParamData at +0x28
 writeInteger(_params + 0x0, ContextType)
 writeQword(_params + 0x8, Context_Object)
 writeQword(_params + 0x10, SkillDef)
 writeQword(_params + 0x28, ParamData_GbxSkillParamData)
 UE.CallProcessEventEx(OwnerAddress, "GetRefSkillParam_float", _params);
 local RET=readFloat(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRefSkillParam_float");

BL4.GetRefSkillParam_int = function(OwnerAddress, ContextType, Context_Object, SkillDef, ParamData_GbxSkillParamData)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRefSkillParam_int: Failed To Allocate The Params");return;end;
 ContextType = ContextType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ContextType at +0x0, Context at +0x8, SkillDef at +0x10, ParamData at +0x28
 writeInteger(_params + 0x0, ContextType)
 writeQword(_params + 0x8, Context_Object)
 writeQword(_params + 0x10, SkillDef)
 writeQword(_params + 0x28, ParamData_GbxSkillParamData)
 UE.CallProcessEventEx(OwnerAddress, "GetRefSkillParam_int", _params);
 local RET=readInteger(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRefSkillParam_int");

BL4.GetRefSkillParam_name = function(OwnerAddress, ContextType, Context_Object, SkillDef, ParamData_GbxSkillParamData)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRefSkillParam_name: Failed To Allocate The Params");return;end;
 ContextType = ContextType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ContextType at +0x0, Context at +0x8, SkillDef at +0x10, ParamData at +0x28
 writeInteger(_params + 0x0, ContextType)
 writeQword(_params + 0x8, Context_Object)
 writeQword(_params + 0x10, SkillDef)
 writeQword(_params + 0x28, ParamData_GbxSkillParamData)
 UE.CallProcessEventEx(OwnerAddress, "GetRefSkillParam_name", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRefSkillParam_name");

BL4.GetRefSkillParam_object = function(OwnerAddress, ContextType, Context_Object, SkillDef, ParamData_GbxSkillParamData)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRefSkillParam_object: Failed To Allocate The Params");return;end;
 ContextType = ContextType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ContextType at +0x0, Context at +0x8, SkillDef at +0x10, ParamData at +0x28
 writeInteger(_params + 0x0, ContextType)
 writeQword(_params + 0x8, Context_Object)
 writeQword(_params + 0x10, SkillDef)
 writeQword(_params + 0x28, ParamData_GbxSkillParamData)
 UE.CallProcessEventEx(OwnerAddress, "GetRefSkillParam_object", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRefSkillParam_object");

BL4.GetRefSkillParam_rotator = function(OwnerAddress, ContextType, Context_Object, SkillDef, ParamData_GbxSkillParamData)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRefSkillParam_rotator: Failed To Allocate The Params");return;end;
 ContextType = ContextType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ContextType at +0x0, Context at +0x8, SkillDef at +0x10, ParamData at +0x28
 writeInteger(_params + 0x0, ContextType)
 writeQword(_params + 0x8, Context_Object)
 writeQword(_params + 0x10, SkillDef)
 writeQword(_params + 0x28, ParamData_GbxSkillParamData)
 UE.CallProcessEventEx(OwnerAddress, "GetRefSkillParam_rotator", _params);
 local RET={Pitch=readFloat(_params+0x30),Yaw=readFloat(_params+0x38),Roll=readFloat(_params+0x40)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRefSkillParam_rotator");

BL4.GetRefSkillParam_string = function(OwnerAddress, ContextType, Context_Object, SkillDef, ParamData_GbxSkillParamData)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRefSkillParam_string: Failed To Allocate The Params");return;end;
 ContextType = ContextType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ContextType at +0x0, Context at +0x8, SkillDef at +0x10, ParamData at +0x28
 writeInteger(_params + 0x0, ContextType)
 writeQword(_params + 0x8, Context_Object)
 writeQword(_params + 0x10, SkillDef)
 writeQword(_params + 0x28, ParamData_GbxSkillParamData)
 UE.CallProcessEventEx(OwnerAddress, "GetRefSkillParam_string", _params);
 local RET=readQword(_params + 0x30);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRefSkillParam_string");

BL4.GetRefSkillParam_vector = function(OwnerAddress, ContextType, Context_Object, SkillDef, ParamData_GbxSkillParamData)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetRefSkillParam_vector: Failed To Allocate The Params");return;end;
 ContextType = ContextType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ContextType at +0x0, Context at +0x8, SkillDef at +0x10, ParamData at +0x28
 writeInteger(_params + 0x0, ContextType)
 writeQword(_params + 0x8, Context_Object)
 writeQword(_params + 0x10, SkillDef)
 writeQword(_params + 0x28, ParamData_GbxSkillParamData)
 UE.CallProcessEventEx(OwnerAddress, "GetRefSkillParam_vector", _params);
 local RET={X=readFloat(_params+0x30),Y=readFloat(_params+0x38),Z=readFloat(_params+0x40)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetRefSkillParam_vector");

BL4.GetSkillParam_actor = function(Context_GbxSkillScript, ParamData_GbxSkillParamData)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSkillParam_actor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, ParamData at +0x8
 writeQword(_params + 0x0, Context_GbxSkillScript)
 writeQword(_params + 0x8, ParamData_GbxSkillParamData)
 UE.CallProcessEventEx(Context_GbxSkillScript, "GetSkillParam_actor", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSkillParam_actor");

BL4.GetSkillParam_bool = function(Context_GbxSkillScript, ParamData_GbxSkillParamData)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSkillParam_bool: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, ParamData at +0x8
 writeQword(_params + 0x0, Context_GbxSkillScript)
 writeQword(_params + 0x8, ParamData_GbxSkillParamData)
 UE.CallProcessEventEx(Context_GbxSkillScript, "GetSkillParam_bool", _params);
 local RET=readByte(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSkillParam_bool");

BL4.GetSkillParam_double = function(Context_GbxSkillScript, ParamData_GbxSkillParamData)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSkillParam_double: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, ParamData at +0x8
 writeQword(_params + 0x0, Context_GbxSkillScript)
 writeQword(_params + 0x8, ParamData_GbxSkillParamData)
 UE.CallProcessEventEx(Context_GbxSkillScript, "GetSkillParam_double", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSkillParam_double");

BL4.GetSkillParam_float = function(Context_GbxSkillScript, ParamData_GbxSkillParamData)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSkillParam_float: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, ParamData at +0x8
 writeQword(_params + 0x0, Context_GbxSkillScript)
 writeQword(_params + 0x8, ParamData_GbxSkillParamData)
 UE.CallProcessEventEx(Context_GbxSkillScript, "GetSkillParam_float", _params);
 local RET=readFloat(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSkillParam_float");

BL4.GetSkillParam_int = function(Context_GbxSkillScript, ParamData_GbxSkillParamData)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSkillParam_int: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, ParamData at +0x8
 writeQword(_params + 0x0, Context_GbxSkillScript)
 writeQword(_params + 0x8, ParamData_GbxSkillParamData)
 UE.CallProcessEventEx(Context_GbxSkillScript, "GetSkillParam_int", _params);
 local RET=readInteger(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSkillParam_int");

BL4.GetSkillParam_name = function(Context_GbxSkillScript, ParamData_GbxSkillParamData)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSkillParam_name: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, ParamData at +0x8
 writeQword(_params + 0x0, Context_GbxSkillScript)
 writeQword(_params + 0x8, ParamData_GbxSkillParamData)
 UE.CallProcessEventEx(Context_GbxSkillScript, "GetSkillParam_name", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSkillParam_name");

BL4.GetSkillParam_object = function(Context_GbxSkillScript, ParamData_GbxSkillParamData)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSkillParam_object: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, ParamData at +0x8
 writeQword(_params + 0x0, Context_GbxSkillScript)
 writeQword(_params + 0x8, ParamData_GbxSkillParamData)
 UE.CallProcessEventEx(Context_GbxSkillScript, "GetSkillParam_object", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSkillParam_object");

BL4.GetSkillParam_rotator = function(Context_GbxSkillScript, ParamData_GbxSkillParamData)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSkillParam_rotator: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, ParamData at +0x8
 writeQword(_params + 0x0, Context_GbxSkillScript)
 writeQword(_params + 0x8, ParamData_GbxSkillParamData)
 UE.CallProcessEventEx(Context_GbxSkillScript, "GetSkillParam_rotator", _params);
 local RET={Pitch=readFloat(_params+0x10),Yaw=readFloat(_params+0x18),Roll=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSkillParam_rotator");

BL4.GetSkillParam_string = function(Context_GbxSkillScript, ParamData_GbxSkillParamData)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSkillParam_string: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, ParamData at +0x8
 writeQword(_params + 0x0, Context_GbxSkillScript)
 writeQword(_params + 0x8, ParamData_GbxSkillParamData)
 UE.CallProcessEventEx(Context_GbxSkillScript, "GetSkillParam_string", _params);
 local RET=readQword(_params + 0x10);
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSkillParam_string");

BL4.GetSkillParam_vector = function(Context_GbxSkillScript, ParamData_GbxSkillParamData)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.GetSkillParam_vector: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, ParamData at +0x8
 writeQword(_params + 0x0, Context_GbxSkillScript)
 writeQword(_params + 0x8, ParamData_GbxSkillParamData)
 UE.CallProcessEventEx(Context_GbxSkillScript, "GetSkillParam_vector", _params);
 local RET={X=readFloat(_params+0x10),Y=readFloat(_params+0x18),Z=readFloat(_params+0x20)};
 deAlloc(_params);
 return RET;
end
FNR("BL4.GetSkillParam_vector");

BL4.PrepareSkillParam_actor = function(Context_GbxSkillActionExecHandler, ParamData_GbxSkillParamData, Value_Actor)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PrepareSkillParam_actor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, ParamData at +0x8, Value at +0x10
 writeQword(_params + 0x0, Context_GbxSkillActionExecHandler)
 writeQword(_params + 0x8, ParamData_GbxSkillParamData)
 writeQword(_params + 0x10, Value_Actor)
 UE.CallProcessEventEx(Context_GbxSkillActionExecHandler, "PrepareSkillParam_actor", _params);
 deAlloc(_params);
end
FNR("BL4.PrepareSkillParam_actor");

BL4.PrepareSkillParam_bool = function(Context_GbxSkillActionExecHandler, ParamData_GbxSkillParamData, Value)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PrepareSkillParam_bool: Failed To Allocate The Params");return;end;
 Value = Value or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, ParamData at +0x8, Value at +0x10
 writeQword(_params + 0x0, Context_GbxSkillActionExecHandler)
 writeQword(_params + 0x8, ParamData_GbxSkillParamData)
 writeByte(_params + 0x10, Value)
 UE.CallProcessEventEx(Context_GbxSkillActionExecHandler, "PrepareSkillParam_bool", _params);
 deAlloc(_params);
end
FNR("BL4.PrepareSkillParam_bool");

BL4.PrepareSkillParam_float = function(Context_GbxSkillActionExecHandler, ParamData_GbxSkillParamData, Value)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PrepareSkillParam_float: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, ParamData at +0x8, Value at +0x10
 writeQword(_params + 0x0, Context_GbxSkillActionExecHandler)
 writeQword(_params + 0x8, ParamData_GbxSkillParamData)
 writeFloat(_params + 0x10, Value)
 UE.CallProcessEventEx(Context_GbxSkillActionExecHandler, "PrepareSkillParam_float", _params);
 deAlloc(_params);
end
FNR("BL4.PrepareSkillParam_float");

BL4.PrepareSkillParam_int = function(Context_GbxSkillActionExecHandler, ParamData_GbxSkillParamData, Value)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PrepareSkillParam_int: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, ParamData at +0x8, Value at +0x10
 writeQword(_params + 0x0, Context_GbxSkillActionExecHandler)
 writeQword(_params + 0x8, ParamData_GbxSkillParamData)
 writeInteger(_params + 0x10, Value)
 UE.CallProcessEventEx(Context_GbxSkillActionExecHandler, "PrepareSkillParam_int", _params);
 deAlloc(_params);
end
FNR("BL4.PrepareSkillParam_int");

BL4.PrepareSkillParam_name = function(Context_GbxSkillActionExecHandler, ParamData_GbxSkillParamData, Value)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PrepareSkillParam_name: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, ParamData at +0x8, Value at +0x10
 writeQword(_params + 0x0, Context_GbxSkillActionExecHandler)
 writeQword(_params + 0x8, ParamData_GbxSkillParamData)
 writeQword(_params + 0x10, Value)
 UE.CallProcessEventEx(Context_GbxSkillActionExecHandler, "PrepareSkillParam_name", _params);
 deAlloc(_params);
end
FNR("BL4.PrepareSkillParam_name");

BL4.PrepareSkillParam_object = function(Context_GbxSkillActionExecHandler, ParamData_GbxSkillParamData, Value_Object)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PrepareSkillParam_object: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, ParamData at +0x8, Value at +0x10
 writeQword(_params + 0x0, Context_GbxSkillActionExecHandler)
 writeQword(_params + 0x8, ParamData_GbxSkillParamData)
 writeQword(_params + 0x10, Value_Object)
 UE.CallProcessEventEx(Context_GbxSkillActionExecHandler, "PrepareSkillParam_object", _params);
 deAlloc(_params);
end
FNR("BL4.PrepareSkillParam_object");

BL4.PrepareSkillParam_rotator = function(Context_GbxSkillActionExecHandler, ParamData_GbxSkillParamData, Value)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PrepareSkillParam_rotator: Failed To Allocate The Params");return;end;
 Value = Value or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, ParamData at +0x8, Value at +0x10
 writeQword(_params + 0x0, Context_GbxSkillActionExecHandler)
 writeQword(_params + 0x8, ParamData_GbxSkillParamData)
 writeDouble(_params + 0x10, (Value and Value.Pitch) or 0)
 writeDouble(_params + 0x18, (Value and Value.Yaw) or 0)
 writeDouble(_params + 0x20, (Value and Value.Roll) or 0)
 UE.CallProcessEventEx(Context_GbxSkillActionExecHandler, "PrepareSkillParam_rotator", _params);
 deAlloc(_params);
end
FNR("BL4.PrepareSkillParam_rotator");

BL4.PrepareSkillParam_string = function(Context_GbxSkillActionExecHandler, ParamData_GbxSkillParamData, Value)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PrepareSkillParam_string: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, ParamData at +0x8, Value at +0x10
 writeQword(_params + 0x0, Context_GbxSkillActionExecHandler)
 writeQword(_params + 0x8, ParamData_GbxSkillParamData)
 writeQword(_params + 0x10, Value)
 UE.CallProcessEventEx(Context_GbxSkillActionExecHandler, "PrepareSkillParam_string", _params);
 deAlloc(_params);
end
FNR("BL4.PrepareSkillParam_string");

BL4.PrepareSkillParam_vector = function(Context_GbxSkillActionExecHandler, ParamData_GbxSkillParamData, Value)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.PrepareSkillParam_vector: Failed To Allocate The Params");return;end;
 Value = Value or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, ParamData at +0x8, Value at +0x10
 writeQword(_params + 0x0, Context_GbxSkillActionExecHandler)
 writeQword(_params + 0x8, ParamData_GbxSkillParamData)
 writeDouble(_params + 0x10, (Value and Value.X) or 0)
 writeDouble(_params + 0x18, (Value and Value.Y) or 0)
 writeDouble(_params + 0x20, (Value and Value.Z) or 0)
 UE.CallProcessEventEx(Context_GbxSkillActionExecHandler, "PrepareSkillParam_vector", _params);
 deAlloc(_params);
end
FNR("BL4.PrepareSkillParam_vector");

BL4.RegisterRespondant = function(Context_Object, SkillQuestionData_GbxSkillQuestionData, FunctionContext_Object, FunctionName)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.RegisterRespondant: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, SkillQuestionData at +0x8, FunctionContext at +0x10, FunctionName at +0x18
 writeQword(_params + 0x0, Context_Object)
 writeQword(_params + 0x8, SkillQuestionData_GbxSkillQuestionData)
 writeQword(_params + 0x10, FunctionContext_Object)
 writeQword(_params + 0x18, FunctionName)
 UE.CallProcessEventEx(Context_Object, "RegisterRespondant", _params);
 deAlloc(_params);
end
FNR("BL4.RegisterRespondant");

BL4.SetRefSkillParam_actor = function(OwnerAddress, ContextType, Context_Object, SkillDef, ParamData_GbxSkillParamData, Value_Actor)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRefSkillParam_actor: Failed To Allocate The Params");return;end;
 ContextType = ContextType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ContextType at +0x0, Context at +0x8, SkillDef at +0x10, ParamData at +0x28, Value at +0x30
 writeInteger(_params + 0x0, ContextType)
 writeQword(_params + 0x8, Context_Object)
 writeQword(_params + 0x10, SkillDef)
 writeQword(_params + 0x28, ParamData_GbxSkillParamData)
 writeQword(_params + 0x30, Value_Actor)
 UE.CallProcessEventEx(OwnerAddress, "SetRefSkillParam_actor", _params);
 deAlloc(_params);
end
FNR("BL4.SetRefSkillParam_actor");

BL4.SetRefSkillParam_bool = function(OwnerAddress, ContextType, Context_Object, SkillDef, ParamData_GbxSkillParamData, Value)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRefSkillParam_bool: Failed To Allocate The Params");return;end;
 ContextType = ContextType or 0
 Value = Value or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ContextType at +0x0, Context at +0x8, SkillDef at +0x10, ParamData at +0x28, Value at +0x30
 writeInteger(_params + 0x0, ContextType)
 writeQword(_params + 0x8, Context_Object)
 writeQword(_params + 0x10, SkillDef)
 writeQword(_params + 0x28, ParamData_GbxSkillParamData)
 writeByte(_params + 0x30, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetRefSkillParam_bool", _params);
 deAlloc(_params);
end
FNR("BL4.SetRefSkillParam_bool");

BL4.SetRefSkillParam_double = function(OwnerAddress, ContextType, Context_Object, SkillDef, ParamData_GbxSkillParamData, Value)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRefSkillParam_double: Failed To Allocate The Params");return;end;
 ContextType = ContextType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ContextType at +0x0, Context at +0x8, SkillDef at +0x10, ParamData at +0x28, Value at +0x30
 writeInteger(_params + 0x0, ContextType)
 writeQword(_params + 0x8, Context_Object)
 writeQword(_params + 0x10, SkillDef)
 writeQword(_params + 0x28, ParamData_GbxSkillParamData)
 writeQword(_params + 0x30, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetRefSkillParam_double", _params);
 deAlloc(_params);
end
FNR("BL4.SetRefSkillParam_double");

BL4.SetRefSkillParam_float = function(OwnerAddress, ContextType, Context_Object, SkillDef, ParamData_GbxSkillParamData, Value)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRefSkillParam_float: Failed To Allocate The Params");return;end;
 ContextType = ContextType or 0
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ContextType at +0x0, Context at +0x8, SkillDef at +0x10, ParamData at +0x28, Value at +0x30
 writeInteger(_params + 0x0, ContextType)
 writeQword(_params + 0x8, Context_Object)
 writeQword(_params + 0x10, SkillDef)
 writeQword(_params + 0x28, ParamData_GbxSkillParamData)
 writeFloat(_params + 0x30, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetRefSkillParam_float", _params);
 deAlloc(_params);
end
FNR("BL4.SetRefSkillParam_float");

BL4.SetRefSkillParam_int = function(OwnerAddress, ContextType, Context_Object, SkillDef, ParamData_GbxSkillParamData, Value)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRefSkillParam_int: Failed To Allocate The Params");return;end;
 ContextType = ContextType or 0
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ContextType at +0x0, Context at +0x8, SkillDef at +0x10, ParamData at +0x28, Value at +0x30
 writeInteger(_params + 0x0, ContextType)
 writeQword(_params + 0x8, Context_Object)
 writeQword(_params + 0x10, SkillDef)
 writeQword(_params + 0x28, ParamData_GbxSkillParamData)
 writeInteger(_params + 0x30, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetRefSkillParam_int", _params);
 deAlloc(_params);
end
FNR("BL4.SetRefSkillParam_int");

BL4.SetRefSkillParam_name = function(OwnerAddress, ContextType, Context_Object, SkillDef, ParamData_GbxSkillParamData, Value)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRefSkillParam_name: Failed To Allocate The Params");return;end;
 ContextType = ContextType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ContextType at +0x0, Context at +0x8, SkillDef at +0x10, ParamData at +0x28, Value at +0x30
 writeInteger(_params + 0x0, ContextType)
 writeQword(_params + 0x8, Context_Object)
 writeQword(_params + 0x10, SkillDef)
 writeQword(_params + 0x28, ParamData_GbxSkillParamData)
 writeQword(_params + 0x30, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetRefSkillParam_name", _params);
 deAlloc(_params);
end
FNR("BL4.SetRefSkillParam_name");

BL4.SetRefSkillParam_object = function(OwnerAddress, ContextType, Context_Object, SkillDef, ParamData_GbxSkillParamData, Value_Object)
 local _paramsSize = 0x38
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRefSkillParam_object: Failed To Allocate The Params");return;end;
 ContextType = ContextType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ContextType at +0x0, Context at +0x8, SkillDef at +0x10, ParamData at +0x28, Value at +0x30
 writeInteger(_params + 0x0, ContextType)
 writeQword(_params + 0x8, Context_Object)
 writeQword(_params + 0x10, SkillDef)
 writeQword(_params + 0x28, ParamData_GbxSkillParamData)
 writeQword(_params + 0x30, Value_Object)
 UE.CallProcessEventEx(OwnerAddress, "SetRefSkillParam_object", _params);
 deAlloc(_params);
end
FNR("BL4.SetRefSkillParam_object");

BL4.SetRefSkillParam_rotator = function(OwnerAddress, ContextType, Context_Object, SkillDef, ParamData_GbxSkillParamData, Value)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRefSkillParam_rotator: Failed To Allocate The Params");return;end;
 ContextType = ContextType or 0
 Value = Value or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ContextType at +0x0, Context at +0x8, SkillDef at +0x10, ParamData at +0x28, Value at +0x30
 writeInteger(_params + 0x0, ContextType)
 writeQword(_params + 0x8, Context_Object)
 writeQword(_params + 0x10, SkillDef)
 writeQword(_params + 0x28, ParamData_GbxSkillParamData)
 writeDouble(_params + 0x30, (Value and Value.Pitch) or 0)
 writeDouble(_params + 0x38, (Value and Value.Yaw) or 0)
 writeDouble(_params + 0x40, (Value and Value.Roll) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetRefSkillParam_rotator", _params);
 deAlloc(_params);
end
FNR("BL4.SetRefSkillParam_rotator");

BL4.SetRefSkillParam_string = function(OwnerAddress, ContextType, Context_Object, SkillDef, ParamData_GbxSkillParamData, Value)
 local _paramsSize = 0x40
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRefSkillParam_string: Failed To Allocate The Params");return;end;
 ContextType = ContextType or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ContextType at +0x0, Context at +0x8, SkillDef at +0x10, ParamData at +0x28, Value at +0x30
 writeInteger(_params + 0x0, ContextType)
 writeQword(_params + 0x8, Context_Object)
 writeQword(_params + 0x10, SkillDef)
 writeQword(_params + 0x28, ParamData_GbxSkillParamData)
 writeQword(_params + 0x30, Value)
 UE.CallProcessEventEx(OwnerAddress, "SetRefSkillParam_string", _params);
 deAlloc(_params);
end
FNR("BL4.SetRefSkillParam_string");

BL4.SetRefSkillParam_vector = function(OwnerAddress, ContextType, Context_Object, SkillDef, ParamData_GbxSkillParamData, Value)
 local _paramsSize = 0x48
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetRefSkillParam_vector: Failed To Allocate The Params");return;end;
 ContextType = ContextType or 0
 Value = Value or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: ContextType at +0x0, Context at +0x8, SkillDef at +0x10, ParamData at +0x28, Value at +0x30
 writeInteger(_params + 0x0, ContextType)
 writeQword(_params + 0x8, Context_Object)
 writeQword(_params + 0x10, SkillDef)
 writeQword(_params + 0x28, ParamData_GbxSkillParamData)
 writeDouble(_params + 0x30, (Value and Value.X) or 0)
 writeDouble(_params + 0x38, (Value and Value.Y) or 0)
 writeDouble(_params + 0x40, (Value and Value.Z) or 0)
 UE.CallProcessEventEx(OwnerAddress, "SetRefSkillParam_vector", _params);
 deAlloc(_params);
end
FNR("BL4.SetRefSkillParam_vector");

BL4.SetSkillParam_actor = function(Context_GbxSkillScript, ParamData_GbxSkillParamData, Value_Actor)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSkillParam_actor: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, ParamData at +0x8, Value at +0x10
 writeQword(_params + 0x0, Context_GbxSkillScript)
 writeQword(_params + 0x8, ParamData_GbxSkillParamData)
 writeQword(_params + 0x10, Value_Actor)
 UE.CallProcessEventEx(Context_GbxSkillScript, "SetSkillParam_actor", _params);
 deAlloc(_params);
end
FNR("BL4.SetSkillParam_actor");

BL4.SetSkillParam_bool = function(Context_GbxSkillScript, ParamData_GbxSkillParamData, Value)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSkillParam_bool: Failed To Allocate The Params");return;end;
 Value = Value or false
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, ParamData at +0x8, Value at +0x10
 writeQword(_params + 0x0, Context_GbxSkillScript)
 writeQword(_params + 0x8, ParamData_GbxSkillParamData)
 writeByte(_params + 0x10, Value)
 UE.CallProcessEventEx(Context_GbxSkillScript, "SetSkillParam_bool", _params);
 deAlloc(_params);
end
FNR("BL4.SetSkillParam_bool");

BL4.SetSkillParam_double = function(Context_GbxSkillScript, ParamData_GbxSkillParamData, Value)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSkillParam_double: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, ParamData at +0x8, Value at +0x10
 writeQword(_params + 0x0, Context_GbxSkillScript)
 writeQword(_params + 0x8, ParamData_GbxSkillParamData)
 writeQword(_params + 0x10, Value)
 UE.CallProcessEventEx(Context_GbxSkillScript, "SetSkillParam_double", _params);
 deAlloc(_params);
end
FNR("BL4.SetSkillParam_double");

BL4.SetSkillParam_float = function(Context_GbxSkillScript, ParamData_GbxSkillParamData, Value)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSkillParam_float: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, ParamData at +0x8, Value at +0x10
 writeQword(_params + 0x0, Context_GbxSkillScript)
 writeQword(_params + 0x8, ParamData_GbxSkillParamData)
 writeFloat(_params + 0x10, Value)
 UE.CallProcessEventEx(Context_GbxSkillScript, "SetSkillParam_float", _params);
 deAlloc(_params);
end
FNR("BL4.SetSkillParam_float");

BL4.SetSkillParam_int = function(Context_GbxSkillScript, ParamData_GbxSkillParamData, Value)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSkillParam_int: Failed To Allocate The Params");return;end;
 Value = Value or 0
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, ParamData at +0x8, Value at +0x10
 writeQword(_params + 0x0, Context_GbxSkillScript)
 writeQword(_params + 0x8, ParamData_GbxSkillParamData)
 writeInteger(_params + 0x10, Value)
 UE.CallProcessEventEx(Context_GbxSkillScript, "SetSkillParam_int", _params);
 deAlloc(_params);
end
FNR("BL4.SetSkillParam_int");

BL4.SetSkillParam_name = function(Context_GbxSkillScript, ParamData_GbxSkillParamData, Value)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSkillParam_name: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, ParamData at +0x8, Value at +0x10
 writeQword(_params + 0x0, Context_GbxSkillScript)
 writeQword(_params + 0x8, ParamData_GbxSkillParamData)
 writeQword(_params + 0x10, Value)
 UE.CallProcessEventEx(Context_GbxSkillScript, "SetSkillParam_name", _params);
 deAlloc(_params);
end
FNR("BL4.SetSkillParam_name");

BL4.SetSkillParam_object = function(Context_GbxSkillScript, ParamData_GbxSkillParamData, Value_Object)
 local _paramsSize = 0x18
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSkillParam_object: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, ParamData at +0x8, Value at +0x10
 writeQword(_params + 0x0, Context_GbxSkillScript)
 writeQword(_params + 0x8, ParamData_GbxSkillParamData)
 writeQword(_params + 0x10, Value_Object)
 UE.CallProcessEventEx(Context_GbxSkillScript, "SetSkillParam_object", _params);
 deAlloc(_params);
end
FNR("BL4.SetSkillParam_object");

BL4.SetSkillParam_rotator = function(Context_GbxSkillScript, ParamData_GbxSkillParamData, Value)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSkillParam_rotator: Failed To Allocate The Params");return;end;
 Value = Value or {Pitch=0,Yaw=0,Roll=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, ParamData at +0x8, Value at +0x10
 writeQword(_params + 0x0, Context_GbxSkillScript)
 writeQword(_params + 0x8, ParamData_GbxSkillParamData)
 writeDouble(_params + 0x10, (Value and Value.Pitch) or 0)
 writeDouble(_params + 0x18, (Value and Value.Yaw) or 0)
 writeDouble(_params + 0x20, (Value and Value.Roll) or 0)
 UE.CallProcessEventEx(Context_GbxSkillScript, "SetSkillParam_rotator", _params);
 deAlloc(_params);
end
FNR("BL4.SetSkillParam_rotator");

BL4.SetSkillParam_string = function(Context_GbxSkillScript, ParamData_GbxSkillParamData, Value)
 local _paramsSize = 0x20
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSkillParam_string: Failed To Allocate The Params");return;end;
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, ParamData at +0x8, Value at +0x10
 writeQword(_params + 0x0, Context_GbxSkillScript)
 writeQword(_params + 0x8, ParamData_GbxSkillParamData)
 writeQword(_params + 0x10, Value)
 UE.CallProcessEventEx(Context_GbxSkillScript, "SetSkillParam_string", _params);
 deAlloc(_params);
end
FNR("BL4.SetSkillParam_string");

BL4.SetSkillParam_vector = function(Context_GbxSkillScript, ParamData_GbxSkillParamData, Value)
 local _paramsSize = 0x28
 local _params = AllocateMemory(_paramsSize);
 if not _params then;print("BL4.SetSkillParam_vector: Failed To Allocate The Params");return;end;
 Value = Value or {X=0,Y=0,Z=0}
 -- Clear params struct
 writeBytes(_params, {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0})
 -- Set inputs: Context at +0x0, ParamData at +0x8, Value at +0x10
 writeQword(_params + 0x0, Context_GbxSkillScript)
 writeQword(_params + 0x8, ParamData_GbxSkillParamData)
 writeDouble(_params + 0x10, (Value and Value.X) or 0)
 writeDouble(_params + 0x18, (Value and Value.Y) or 0)
 writeDouble(_params + 0x20, (Value and Value.Z) or 0)
 UE.CallProcessEventEx(Context_GbxSkillScript, "SetSkillParam_vector", _params);
 deAlloc(_params);
end
FNR("BL4.SetSkillParam_vector");

