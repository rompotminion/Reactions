local tbl = 
{
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "ACR",
						conditions = 
						{
							
							{
								"771f9af4-e463-fc65-aac2-953133ab8f14",
								true,
							},
							
							{
								"863933bd-24a9-fd83-8381-098883b0a517",
								true,
							},
						},
						gVar = "ACR_RikuNIN3_Hotbar_Suiton",
						uuid = "cf50dc0c-30d7-b621-82c4-8bbf73a5c233",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "FightPlan.assistOn()\nself.used = true",
						conditions = 
						{
							
							{
								"771f9af4-e463-fc65-aac2-953133ab8f14",
								true,
							},
							
							{
								"863933bd-24a9-fd83-8381-098883b0a517",
								true,
							},
						},
						gVar = "ACR_RikuNIN3_CD",
						uuid = "3b81d350-fd07-ce67-921b-5be35fa916a3",
						version = 2.1,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "--Under Lv 100\nTensorCore.API.TensorACR.holdActionUntil(2258, Now() + (ACR_RikuNIN3_9GCDTrick and 8900 or 6000)) -- Trick\nTensorCore.API.TensorACR.holdActionUntil(2248, Now() + 4900) -- Mug\n--Lv 100\nTensorCore.API.TensorACR.holdActionUntil(36958, Now() + (ACR_RikuNIN3_9GCDTrick and 8900 or 6000)) -- Kunai's Bane\nTensorCore.API.TensorACR.holdActionUntil(36957, Now() + 4900) -- Dokumori\nself.used = true",
						conditions = 
						{
							
							{
								"771f9af4-e463-fc65-aac2-953133ab8f14",
								true,
							},
							
							{
								"fd51abd4-321e-68ff-b2f0-e7056b82c4e7",
								true,
							},
						},
						gVar = "ACR_RikuNIN3_CD",
						name = "hold api mug + ta",
						uuid = "f2acc3c9-0c2d-552d-bd3e-633a45f6d195",
						version = 2.1,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "gStartCombat = true\nself.used = true",
						conditions = 
						{
							
							{
								"771f9af4-e463-fc65-aac2-953133ab8f14",
								true,
							},
							
							{
								"fd51abd4-321e-68ff-b2f0-e7056b82c4e7",
								true,
							},
						},
						gVar = "ACR_RikuNIN3_CD",
						uuid = "5f2bce6a-276b-68aa-a16b-c86448203718",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.prepullOn == true",
						name = "prepull is on",
						uuid = "771f9af4-e463-fc65-aac2-953133ab8f14",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local acr = gACRSelectedProfiles[Player.job] \nreturn _G[\"ACR_\"..acr..\"_Potion\"] == true",
						name = "potting",
						uuid = "65baf80a-d90a-a749-932c-2434b8435d6d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 2,
						eventCountdownTime = 6,
						name = "-6",
						uuid = "863933bd-24a9-fd83-8381-098883b0a517",
						version = 3,
					},
					inheritedIndex = 6,
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 2,
						eventCountdownTime = 0.60000002384186,
						name = "-0.9",
						uuid = "fd51abd4-321e-68ff-b2f0-e7056b82c4e7",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "all you have to do is is to create a countdown event, set the timer, and link condition 1 and whichever timer you want to it and it will work with the condition.\n\nfor things like potting and so forth, you have to link condition 2 if you want to prepull pot. there's an example ninja opener showed here.\n\nIMPORTANT:\nfor this to work, you have to inherit the rompot/.global profile and have utility| prepull watchdog AND utility| prepull cancel in the profiles.",
						name = "READ ME",
						uuid = "4d75ceb7-6b07-e353-af85-69cd0bf4fdc5",
						version = 3,
					},
					inheritedIndex = 10,
				},
			},
			eventType = 16,
			name = "utility| prepull",
			timeout = 30,
			uuid = "7cae2b13-d290-c0df-96c8-b9c1aad1d6dc",
			version = 2,
		},
		inheritedIndex = 2,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "ACR_RikuNIN3_9GCDTrick = true\nACR_RikuNIN3_AOE = true\nACR_RikuNIN3_AlignTA = true\nACR_RikuNIN3_AlwaysShowRearPositional = false\nACR_RikuNIN3_ArmorCrush = true\nACR_RikuNIN3_ArrowSize = 250\nACR_RikuNIN3_ArrowSpacing = 150\nACR_RikuNIN3_ArrowType = \"Sleek\"\nACR_RikuNIN3_Bunshin = true\nACR_RikuNIN3_Burn = false\nACR_RikuNIN3_BurnMudra = false\nACR_RikuNIN3_BurnNinki = false\nACR_RikuNIN3_BurnPhantom = false\nACR_RikuNIN3_CD = true\nACR_RikuNIN3_ClipTA = false\nACR_RikuNIN3_DisableHotbarsAfter = 0\nACR_RikuNIN3_DisableLegacyOOC = false\nACR_RikuNIN3_DisplayKeybindText = true\nACR_RikuNIN3_DisplayTargetText = true\nACR_RikuNIN3_Dokumori = true\nACR_RikuNIN3_Doton = false\nACR_RikuNIN3_DotonST = false\nACR_RikuNIN3_FastTA = false\nACR_RikuNIN3_ForcePotionGrade = 0\nACR_RikuNIN3_HighPerformanceMode = true\nACR_RikuNIN3_HoldNinki = false\nACR_RikuNIN3_HotbarImmediateMode = false\nACR_RikuNIN3_KunaisBane = true\nACR_RikuNIN3_LoS = false\nACR_RikuNIN3_LockFaceAway = false\nACR_RikuNIN3_LockPositionalIndicator = false\nACR_RikuNIN3_LockToggles = true\nACR_RikuNIN3_MovementStartDelay = 100\nACR_RikuNIN3_MovementStopDelay = 100\nACR_RikuNIN3_Ninjutsu = true\nACR_RikuNIN3_NoKeybindsOOC = false\nACR_RikuNIN3_Omni = false\nACR_RikuNIN3_PhantomKamaitachi = true\nACR_RikuNIN3_Potion = false\nACR_RikuNIN3_PreTA = true\nACR_RikuNIN3_SafeJump = true\nACR_RikuNIN3_SafeJumpGreedBuffer = 30\nACR_RikuNIN3_ShowHotbar = true\nACR_RikuNIN3_ShowHotbarQueue = true\nACR_RikuNIN3_ShowPositionalTimeBar = false\nACR_RikuNIN3_ShowQT = true\nACR_RikuNIN3_SmartAOE = true\nACR_RikuNIN3_Suiton = true\nACR_RikuNIN3_ThrowingDagger = false\nACR_RikuNIN3_TrueNorth = true\nACR_RikuNIN3_ZeroPingEnabled = true\nACR_RikuNIN3_ZeroPingFakePing = 0\nACR_RikuNIN3_DisableHotbarsAfter = 10\nself.used = true",
						gVar = "ACR_RikuNIN3_CD",
						uuid = "95d97dc0-97a9-18a3-ab36-4f3834a5e0dd",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
			},
			conditions = 
			{
			},
			eventType = 9,
			name = "utility| toggle reset wipe",
			uuid = "dc019215-d1cc-6e07-9f79-80b42fb5734a",
			version = 2,
		},
		inheritedIndex = 10,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "ACR_RikuNIN3_9GCDTrick = true\nACR_RikuNIN3_AOE = true\nACR_RikuNIN3_AlignTA = true\nACR_RikuNIN3_AlwaysShowRearPositional = false\nACR_RikuNIN3_ArmorCrush = true\nACR_RikuNIN3_ArrowSize = 250\nACR_RikuNIN3_ArrowSpacing = 150\nACR_RikuNIN3_ArrowType = \"Sleek\"\nACR_RikuNIN3_Bunshin = true\nACR_RikuNIN3_Burn = false\nACR_RikuNIN3_BurnMudra = false\nACR_RikuNIN3_BurnNinki = false\nACR_RikuNIN3_BurnPhantom = false\nACR_RikuNIN3_CD = true\nACR_RikuNIN3_ClipTA = false\nACR_RikuNIN3_DisableHotbarsAfter = 0\nACR_RikuNIN3_DisableLegacyOOC = false\nACR_RikuNIN3_DisplayKeybindText = true\nACR_RikuNIN3_DisplayTargetText = true\nACR_RikuNIN3_Dokumori = true\nACR_RikuNIN3_Doton = false\nACR_RikuNIN3_DotonST = false\nACR_RikuNIN3_FastTA = false\nACR_RikuNIN3_ForcePotionGrade = 0\nACR_RikuNIN3_HighPerformanceMode = true\nACR_RikuNIN3_HoldNinki = false\nACR_RikuNIN3_HotbarImmediateMode = false\nACR_RikuNIN3_KunaisBane = true\nACR_RikuNIN3_LoS = false\nACR_RikuNIN3_LockFaceAway = false\nACR_RikuNIN3_LockPositionalIndicator = false\nACR_RikuNIN3_LockToggles = true\nACR_RikuNIN3_MovementStartDelay = 100\nACR_RikuNIN3_MovementStopDelay = 100\nACR_RikuNIN3_Ninjutsu = true\nACR_RikuNIN3_NoKeybindsOOC = false\nACR_RikuNIN3_Omni = false\nACR_RikuNIN3_PhantomKamaitachi = true\nACR_RikuNIN3_Potion = false\nACR_RikuNIN3_PreTA = true\nACR_RikuNIN3_SafeJump = true\nACR_RikuNIN3_SafeJumpGreedBuffer = 30\nACR_RikuNIN3_ShowHotbar = true\nACR_RikuNIN3_ShowHotbarQueue = true\nACR_RikuNIN3_ShowPositionalTimeBar = false\nACR_RikuNIN3_ShowQT = true\nACR_RikuNIN3_SmartAOE = true\nACR_RikuNIN3_Suiton = true\nACR_RikuNIN3_ThrowingDagger = false\nACR_RikuNIN3_TrueNorth = true\nACR_RikuNIN3_ZeroPingEnabled = true\nACR_RikuNIN3_ZeroPingFakePing = 0\nACR_RikuNIN3_DisableHotbarsAfter = 10\nself.used = true",
						gVar = "ACR_RikuNIN3_CD",
						uuid = "95d97dc0-97a9-18a3-ab36-4f3834a5e0dd",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
			},
			conditions = 
			{
			},
			eventType = 11,
			name = "utility| toggle reset map",
			uuid = "fbc60b26-afa1-787a-b912-1e959c40145b",
			version = 2,
		},
		inheritedIndex = 11,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Misc",
						conditions = 
						{
							
							{
								"68d44a37-bd1e-00f5-8e1a-a981f988b576",
								true,
							},
							
							{
								"2b87fb89-7b69-a345-941c-bb09acff59e4",
								true,
							},
							
							{
								"773029f6-da59-253d-a9f9-b31d4569a9a6",
								true,
							},
							
							{
								"1062b024-6c2a-8fbd-b7ce-c3a8aa3efe5e",
								false,
							},
						},
						gVar = "ACR_TensorViper3_CD",
						ignoreWeaveRules = true,
						name = "Current Content",
						useItem = true,
						useItemID = 1044178,
						useItemName = "Moqueca (HQ)",
						uuid = "a835bfbc-1462-063d-ac9c-bce41437885d",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						aType = "Misc",
						conditions = 
						{
							
							{
								"68d44a37-bd1e-00f5-8e1a-a981f988b576",
								true,
							},
							
							{
								"2b87fb89-7b69-a345-941c-bb09acff59e4",
								true,
							},
							
							{
								"fc5ff34d-f7fd-6be2-a11d-9338f8a0578a",
								true,
							},
							
							{
								"1062b024-6c2a-8fbd-b7ce-c3a8aa3efe5e",
								false,
							},
						},
						gVar = "ACR_TensorViper3_CD",
						ignoreWeaveRules = true,
						name = "Future's Rewritten",
						useItem = true,
						useItemID = 1044178,
						useItemName = "Moqueca (HQ)",
						uuid = "75730a68-919f-2d91-b51c-acd14f0964dd",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						aType = "Misc",
						conditions = 
						{
							
							{
								"68d44a37-bd1e-00f5-8e1a-a981f988b576",
								true,
							},
							
							{
								"2b87fb89-7b69-a345-941c-bb09acff59e4",
								true,
							},
							
							{
								"aa9b3f82-52da-b69f-ba34-88c8a645e937",
								true,
							},
							
							{
								"1062b024-6c2a-8fbd-b7ce-c3a8aa3efe5e",
								false,
							},
						},
						gVar = "ACR_TensorViper3_CD",
						ignoreWeaveRules = true,
						name = "Omega Protocol",
						useItem = true,
						useItemID = 1044178,
						useItemName = "Moqueca (HQ)",
						uuid = "2248b4a1-cf5e-96a6-b7b5-53bd8e97e72a",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						aType = "Misc",
						conditions = 
						{
							
							{
								"68d44a37-bd1e-00f5-8e1a-a981f988b576",
								true,
							},
							
							{
								"2b87fb89-7b69-a345-941c-bb09acff59e4",
								true,
							},
							
							{
								"92a8ce40-915a-f9f0-ac55-e2ea3bef451f",
								true,
							},
							
							{
								"1062b024-6c2a-8fbd-b7ce-c3a8aa3efe5e",
								false,
							},
						},
						gVar = "ACR_TensorViper3_CD",
						ignoreWeaveRules = true,
						name = "Dragonsong War",
						useItem = true,
						useItemID = 1044178,
						useItemName = "Moqueca (HQ)",
						uuid = "67ef2ea1-11bc-26e1-bf45-930cf5756d34",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						aType = "Misc",
						conditions = 
						{
							
							{
								"68d44a37-bd1e-00f5-8e1a-a981f988b576",
								true,
							},
							
							{
								"2b87fb89-7b69-a345-941c-bb09acff59e4",
								true,
							},
							
							{
								"f640b173-932e-9bbc-8b28-42e4506cb9e2",
								true,
							},
							
							{
								"1062b024-6c2a-8fbd-b7ce-c3a8aa3efe5e",
								false,
							},
						},
						gVar = "ACR_TensorViper3_CD",
						ignoreWeaveRules = true,
						name = "Epic of Alexander",
						useItem = true,
						useItemID = 1044178,
						useItemName = "Moqueca (HQ)",
						uuid = "13699ccf-edf9-6b23-b087-ecc50b30d906",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						aType = "Misc",
						conditions = 
						{
							
							{
								"68d44a37-bd1e-00f5-8e1a-a981f988b576",
								true,
							},
							
							{
								"2b87fb89-7b69-a345-941c-bb09acff59e4",
								true,
							},
							
							{
								"62e3414b-46f3-62e3-95c8-1cbf51fa729f",
								true,
							},
							
							{
								"1062b024-6c2a-8fbd-b7ce-c3a8aa3efe5e",
								false,
							},
						},
						gVar = "ACR_TensorViper3_CD",
						ignoreWeaveRules = true,
						name = "Weapon's Refrain",
						useItem = true,
						useItemID = 1044178,
						useItemName = "Moqueca (HQ)",
						uuid = "38d53b54-200e-d84d-a28a-f70214eb1031",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						aType = "Misc",
						conditions = 
						{
							
							{
								"68d44a37-bd1e-00f5-8e1a-a981f988b576",
								true,
							},
							
							{
								"2b87fb89-7b69-a345-941c-bb09acff59e4",
								true,
							},
							
							{
								"82d4932d-ac72-b6c5-a55b-78bbdfc844c8",
								true,
							},
							
							{
								"1062b024-6c2a-8fbd-b7ce-c3a8aa3efe5e",
								false,
							},
						},
						gVar = "ACR_TensorViper3_CD",
						ignoreWeaveRules = true,
						name = "Unending Coil of Bahamut",
						useItem = true,
						useItemID = 1044178,
						useItemName = "Moqueca (HQ)",
						uuid = "74fae641-b0b0-8381-8483-ce0272dbb72a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"e0c52f8d-2fb9-8a08-a805-5ab008aa5b4b",
								true,
							},
							
							{
								"b2c682db-2971-04c7-a71a-6bb959974a96",
								true,
							},
						},
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "[f] Well Fed",
						uuid = "68d44a37-bd1e-00f5-8e1a-a981f988b576",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						inCombatType = 2,
						uuid = "2b87fb89-7b69-a345-941c-bb09acff59e4",
						version = 3,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FightPlan.RaidMaps[Player.localmapid] == true",
						conditionType = 12,
						dequeueIfLuaFalse = true,
						localMapIDList = 
						{
							1226,
							1228,
							1230,
							1232,
							1196,
							1201,
							339,
						},
						name = "Current Content",
						uuid = "773029f6-da59-253d-a9f9-b31d4569a9a6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1238,
						name = "Future's Rewritten",
						uuid = "fc5ff34d-f7fd-6be2-a11d-9338f8a0578a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1122,
						name = "Omega Protocol",
						uuid = "aa9b3f82-52da-b69f-ba34-88c8a645e937",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 968,
						name = "Dragonsong War",
						uuid = "92a8ce40-915a-f9f0-ac55-e2ea3bef451f",
						version = 3,
					},
					inheritedIndex = 6,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 887,
						name = "Epic of Alexander",
						uuid = "f640b173-932e-9bbc-8b28-42e4506cb9e2",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 777,
						name = "Weapon's Refrain",
						uuid = "62e3414b-46f3-62e3-95c8-1cbf51fa729f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 733,
						name = "Unending Coil of Bahamut",
						uuid = "82d4932d-ac72-b6c5-a55b-78bbdfc844c8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 48,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "no Well Fed",
						uuid = "e0c52f8d-2fb9-8a08-a805-5ab008aa5b4b",
						version = 3,
					},
					inheritedIndex = 10,
				},
				
				{
					data = 
					{
						buffCheckType = 3,
						buffDuration = 1140,
						buffID = 48,
						category = "Self",
						comparator = 2,
						dequeueIfLuaFalse = true,
						name = "low Well Fed",
						uuid = "b2c682db-2971-04c7-a71a-6bb959974a96",
						version = 3,
					},
					inheritedIndex = 11,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 5,
						dequeueIfLuaFalse = true,
						lastSkillID = 844,
						name = "used Food",
						uuid = "1062b024-6c2a-8fbd-b7ce-c3a8aa3efe5e",
						version = 3,
					},
					inheritedIndex = 12,
				},
			},
			name = "utility| well fed",
			throttleTime = 3000,
			timeout = 0,
			uuid = "007ef201-b6ba-bdd8-8922-e4c922f09ad6",
			version = 2,
		},
		inheritedIndex = 12,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "fpRed:addTimedCircleOnEnt(5000,TensorCore.mGetPlayer(),1,nil,true)\nself.used = true",
						gVar = "ACR_RikuNIN3_CD",
						uuid = "acf9eccf-c965-dc75-a277-a07981c14124",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
			},
			enabled = false,
			name = "||test",
			uuid = "80b8640e-65e8-60d1-af0d-841bf1a72cb6",
			version = 2,
		},
	}, 
	inheritedProfiles = 
	{
		"rompot\\.global",
	},
}



return tbl