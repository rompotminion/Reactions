local tbl = 
{
	
	{
		data = 
		{
			actions = 
			{
			},
			conditions = 
			{
			},
			enabled = false,
			name = "<> prepuller",
			uuid = "265215e9-ea93-679b-b941-ebf3217880b0",
			version = 2,
		},
		inheritedIndex = 1,
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
						actionLua = "rPrepull = nil\ndata.prepullOn = nil\ndata.secondAssist = nil\ngStartCombat = false\nReactionHelper.open = true\ngDevHackMinZoom = 1\ngDevHackMaxZoom = 70\nself.used = true",
						conditions = 
						{
							
							{
								"8fb04eb3-9971-3997-b7cc-08bf316a4297",
								true,
							},
						},
						gVar = "ACR_TensorViper3_CD",
						name = "fresh countdown",
						uuid = "6534d9dc-91ef-7500-ae60-785698890c20",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "rPrepull = nil\ndata.prepullOn = nil\ndata.prepullOn = FFXIV_Common_BotRunning\nrPrepull = FFXIV_Common_BotRunning\nFightPlan.assistOff()\nd(\"fp| prepull enabled. turning off assist.\")\nself.used = true",
						conditions = 
						{
							
							{
								"cbd79e15-d14f-f5ed-9ca0-a1381d3ba9b8",
								true,
							},
							
							{
								"8fb04eb3-9971-3997-b7cc-08bf316a4297",
								true,
							},
							
							{
								"6cdbd337-3f1c-393e-857e-6af67a9d37c8",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "start prepull",
						uuid = "bbb0166d-50ae-8efd-9d14-77dc92008cbe",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "rPrepull = nil\ndata.prepullOn = nil\nFightPlan.assistOff()\ngStartCombat = false\nd(\"fp| prepull cancelled.\")\nself.used = true",
						conditions = 
						{
							
							{
								"dc2ba247-822e-0a20-803a-4039b638b277",
								true,
							},
							
							{
								"8fb04eb3-9971-3997-b7cc-08bf316a4297",
								true,
							},
							
							{
								"da2bba02-a31c-ec8f-b534-2341436a0bbb",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "cancel prepull",
						uuid = "75537082-f64a-79db-811c-da65fa2ac4bc",
						version = 2.1,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.secondAssist = true\nd(\"fp| assist turned on again. if turned off, prepuller cancels.\")\nself.used = true",
						conditions = 
						{
							
							{
								"dc2ba247-822e-0a20-803a-4039b638b277",
								true,
							},
							
							{
								"6cdbd337-3f1c-393e-857e-6af67a9d37c8",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "2nd assist",
						uuid = "83672bc6-a610-e1e8-b9f8-cc0dc7902342",
						version = 2.1,
					},
					inheritedIndex = 5,
				},
				
				{
					data = 
					{
						aType = "Misc",
						conditions = 
						{
							
							{
								"dc2ba247-822e-0a20-803a-4039b638b277",
								true,
							},
							
							{
								"c11e5ce1-5b42-69c9-a6b4-5419bc098189",
								true,
							},
						},
						gVar = "ACR_TensorViper3_CD",
						name = "target",
						setTarget = true,
						targetType = "Enemy",
						uuid = "d5607919-95ba-2925-8e39-1bbacf08b19a",
						version = 2.1,
					},
					inheritedIndex = 5,
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "gStartCombat = true\nFightPlan.assistOn()\nself.used = true",
						conditions = 
						{
							
							{
								"dc2ba247-822e-0a20-803a-4039b638b277",
								true,
							},
							
							{
								"25850b1e-4c14-33c9-8ae1-0804935d3963",
								true,
							},
						},
						gVar = "ACR_TensorViper3_CD",
						name = "start combat",
						uuid = "a16debe0-bc3b-f051-989e-8a955c4b38c5",
						version = 2.1,
					},
					inheritedIndex = 5,
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "rPrepull = nil\ndata.prepullOn = nil\ndata.secondAssist = nil\ngStartCombat = false\nself.used = true",
						conditions = 
						{
							
							{
								"dc2ba247-822e-0a20-803a-4039b638b277",
								true,
							},
							
							{
								"1ce5cbca-6575-fa7e-9607-7cdb25c67eb6",
								true,
							},
						},
						gVar = "ACR_TensorRuin3_CD",
						name = "cleanup",
						uuid = "9bd52ccb-42cc-da45-9365-8da629420c25",
						version = 2.1,
					},
					inheritedIndex = 5,
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local currentACR = gACRSelectedProfiles[TensorCore.mGetPlayer().job]\nif FightPlan.twoMinPot == true and FightPlan.usePot == true then\n    _G[\"ACR_\"..currentACR..\"_Potion\"] = false\nelseif FightPlan.twoMinPot == false and FightPlan.usePot == true then\n    _G[\"ACR_\"..currentACR..\"_Potion\"] = true\nelseif FightPlan.twoMinPot == false and FightPlan.usePot == false then\n    _G[\"ACR_\"..currentACR..\"_Potion\"] = false\nend\nself.used = true",
						conditions = 
						{
							
							{
								"dc2ba247-822e-0a20-803a-4039b638b277",
								true,
							},
							
							{
								"8fb04eb3-9971-3997-b7cc-08bf316a4297",
								true,
							},
						},
						gVar = "ACR_RikuPCT3_CD",
						name = "initial potion",
						uuid = "3958acb6-83a9-908d-a27f-018fd2e2370f",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local currentACR = gACRSelectedProfiles[TensorCore.mGetPlayer().job]\nif FightPlan.twoMinPot == true and FightPlan.usePot == true then\n    _G[\"ACR_\"..currentACR..\"_Potion\"] = true\nend\nself.used = true",
						conditions = 
						{
							
							{
								"b09ebb9c-92bc-cc82-aa42-7a243221c7a7",
								true,
							},
						},
						gVar = "ACR_RikuPCT3_CD",
						name = "two min potion",
						uuid = "f472b7a4-10c2-5913-b925-cf79ea56aa6a",
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
						uuid = "dc2ba247-822e-0a20-803a-4039b638b277",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.prepullOn ~= true",
						name = "prepull is off",
						uuid = "cbd79e15-d14f-f5ed-9ca0-a1381d3ba9b8",
						version = 3,
					},
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.secondAssist == true",
						name = "2nd assist on",
						uuid = "e31522a7-55eb-61d6-bc2b-a34f461a4846",
						version = 3,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return not FFXIV_Common_BotRunning",
						name = "assist off",
						uuid = "ce79edc7-5030-edc6-95e1-308604a1117c",
						version = 3,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning and AnyoneCore.Settings.PrepullHelper.enabled",
						name = "assist and prepull on",
						uuid = "6cdbd337-3f1c-393e-857e-6af67a9d37c8",
						version = 3,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FightPlan.twoMinPot == true",
						name = "2m pot",
						uuid = "cae82afb-d30a-b2f7-93b9-cb1939d9f615",
						version = 3,
					},
					inheritedIndex = 6,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FightPlan.usePot == true",
						name = "use pot",
						uuid = "933a323c-bef6-e40c-883c-d2fb348a82f6",
						version = 3,
					},
					inheritedIndex = 7,
				},
				
				{
					data = 
					{
						category = "Event",
						eventCountdownTime = 2,
						name = ">2",
						uuid = "8fb04eb3-9971-3997-b7cc-08bf316a4297",
						version = 3,
					},
					inheritedIndex = 7,
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgType = 3,
						eventCountdownRangeEnd = 5,
						eventCountdownRangeStart = 15,
						name = "-15-5",
						uuid = "c11e5ce1-5b42-69c9-a6b4-5419bc098189",
						version = 3,
					},
					inheritedIndex = 6,
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 2,
						name = "0",
						uuid = "25850b1e-4c14-33c9-8ae1-0804935d3963",
						version = 3,
					},
					inheritedIndex = 7,
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 2,
						eventCountdownTime = -5,
						name = "+5",
						uuid = "1ce5cbca-6575-fa7e-9607-7cdb25c67eb6",
						version = 3,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 2,
						eventCountdownTime = -25,
						name = "+25",
						uuid = "b09ebb9c-92bc-cc82-aa42-7a243221c7a7",
						version = 3,
					},
					inheritedIndex = 12,
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"f894d1ab-dd67-d2e0-90ec-93c006102ec4",
								true,
							},
							
							{
								"745e4937-751b-64c3-aa85-76c0fa86b0c3",
								true,
							},
						},
						matchAnyBuff = true,
						name = "f| cancel prepull",
						partyTargetNumber = 0,
						uuid = "da2bba02-a31c-ec8f-b534-2341436a0bbb",
						version = 3,
					},
					inheritedIndex = 8,
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"e31522a7-55eb-61d6-bc2b-a34f461a4846",
								true,
							},
							
							{
								"ce79edc7-5030-edc6-95e1-308604a1117c",
								true,
							},
						},
						name = "f| manual cancel",
						partyTargetNumber = 0,
						uuid = "f894d1ab-dd67-d2e0-90ec-93c006102ec4",
						version = 3,
					},
					inheritedIndex = 8,
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"f8b3775f-a14f-009a-8afb-7f7c43ca1acc",
								true,
							},
							
							{
								"cc2ac43e-5f14-b8c0-ba22-5345d1766abd",
								true,
							},
						},
						filterTargetType = "Party",
						matchAnyBuff = true,
						name = "f| early pull / wall",
						partyTargetNumber = 0,
						uuid = "745e4937-751b-64c3-aa85-76c0fa86b0c3",
						version = 3,
					},
					inheritedIndex = 8,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local elist = TensorCore.entityList(\"myparty\")\nelist[Player.id] = Player\nfor id,ent in pairs(elist) do\nif ent.alive == false then\nreturn true\nend\nend\nreturn false",
						filterTargetType = "Party",
						name = "c| any dead players",
						uuid = "f8b3775f-a14f-009a-8afb-7f7c43ca1acc",
						version = 3,
					},
					inheritedIndex = 13,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "c| in combat",
						uuid = "cc2ac43e-5f14-b8c0-ba22-5345d1766abd",
						version = 3,
					},
					inheritedIndex = 13,
				},
			},
			eventType = 16,
			name = "utility| prepull watchdog",
			timeout = 30,
			uuid = "34f563ff-e112-8699-b392-26630f76240a",
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
						actionLua = "rPrepull = nil\ndata.prepullOn = nil\nFightPlan.assistOff()\nself.used = true",
						gVar = "ACR_TensorRuin3_CD",
						uuid = "1e6d492c-faeb-fdf4-bb5f-b51e3cc2fea3",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
			},
			eventType = 17,
			name = "utility| prepull cancel",
			timeout = 30,
			uuid = "90ff82ff-5f0b-4c72-8f0e-61d5231110a0",
			version = 2,
		},
		inheritedIndex = 0,
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
						actionLua = "gStartCombat = false\nFightPlan.assistOff()\nArgus.deleteTimedShape()\nTensorDrift_SlidecastForceHold = false\nACR_TensorACR_HotbarCancel = true\nrPrepull = nil\ngDevHackMinZoom = 1\ngDevHackMaxZoom = 70\nself.used = true",
						gVar = "ACR_TensorViper3_CD",
						uuid = "6d8939c3-3900-e12c-9751-5f8862c9479b",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
			},
			eventType = 9,
			name = "utility| onWipe",
			uuid = "decaddb6-e7bb-c2da-81f1-f3c5af4e90d1",
			version = 2,
		},
		inheritedIndex = 4,
	},
	
	{
		data = 
		{
			actions = 
			{
			},
			conditions = 
			{
			},
			enabled = false,
			name = "<> misc",
			uuid = "1ce74fbb-c87f-35bf-b82d-442be7963aca",
			version = 2,
		},
		inheritedIndex = 7,
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
						actionLua = "if not data.lastJob then\n    data.lastJob = Player.job\nelse\n    if data.lastJob ~= Player.job then\n        FightPlan.assistOff()\n        data.lastJob = Player.job\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"cae5cd41-19c0-bb4f-9d5c-5a2ffc0bfd3f",
								true,
							},
							
							{
								"23bd3162-f25e-28aa-ad5b-e8fe2de722cc",
								true,
							},
						},
						gVar = "ACR_TensorViper3_CD",
						uuid = "28b77d19-b01f-ae96-b739-8b8fbedbf717",
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
						conditionLua = "return data.lastJob == nil or data.lastJob ~= Player.job",
						dequeueIfLuaFalse = true,
						uuid = "cae5cd41-19c0-bb4f-9d5c-5a2ffc0bfd3f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return gBotMode == \"Assist\"",
						dequeueIfLuaFalse = true,
						name = "if botmode is assist",
						uuid = "23bd3162-f25e-28aa-ad5b-e8fe2de722cc",
						version = 3,
					},
				},
			},
			name = "utility| assist disable job",
			uuid = "723c0c59-9ed1-d95e-8cdf-2b24e3ae7f07",
			version = 2,
		},
		inheritedIndex = 6,
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
						actionLua = "gStartCombat = false\nArgus.deleteTimedShape()\nTensorDrift_SlidecastForceHold = false\nACR_TensorACR_HotbarCancel = true\nrPrepull = nil\nFightPlan.assistOff()\ngDevHackMinZoom = 1\ngDevHackMaxZoom = 70\nself.used = true",
						gVar = "ACR_RikuNIN3_CD",
						name = "cleanup",
						uuid = "87bf7fa8-5250-10a2-9fad-7a77d9865b61",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
			},
			eventType = 9,
			name = "utility| wipe cleanup",
			timeout = 30,
			uuid = "a3d366ea-2d4f-0f42-95ef-e946a7740088",
			version = 2,
		},
		inheritedIndex = 5,
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
						actionLua = "gStartCombat = false\nArgus.deleteTimedShape()\nTensorDrift_SlidecastForceHold = false\nACR_TensorACR_HotbarCancel = true\nrPrepull = nil\nFightPlan.assistOff()\ngDevHackMinZoom = 1\ngDevHackMaxZoom = 70\nHacks:SetCamMaxZoom(gDevHackMinZoom,gDevHackMaxZoom)\nself.used = true",
						conditions = 
						{
							
							{
								"c0d1b8e1-ae24-6d99-92db-7a6a340f2ee6",
								true,
							},
						},
						gVar = "ACR_RikuNIN3_CD",
						name = "cleanup",
						uuid = "aa07c89e-b6e9-412f-a2fe-53588fd9f0f0",
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
						conditionLua = "return gBotMode == \"Assist\"",
						dequeueIfLuaFalse = true,
						name = "if botmode is assist",
						uuid = "c0d1b8e1-ae24-6d99-92db-7a6a340f2ee6",
						version = 3,
					},
				},
			},
			eventType = 11,
			name = "utility| map cleanup",
			uuid = "4f81d6c8-1581-64c4-817f-729a595bb23c",
			version = 2,
		},
		inheritedIndex = 8,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Alert",
						alertColor = 15990783,
						alertPriority = 4,
						alertTTS = true,
						alertText = "1 Chest",
						conditions = 
						{
							
							{
								"aa721a1c-3704-ed8c-b3c8-82cca40733fa",
								true,
							},
						},
						gVar = "ACR_RikuPCT3_CD",
						uuid = "fd2025e5-3a0d-b6e7-92ff-9273e979270c",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventChatLine = "The quantity of items within the coffers will be reduced because at least one party member is not eligible to receive all rewards.",
						uuid = "aa721a1c-3704-ed8c-b3c8-82cca40733fa",
						version = 3,
					},
				},
			},
			eventType = 7,
			name = "utility| 1 chest",
			uuid = "9f98f3c4-fbf5-7497-82d3-3fb08588fa48",
			version = 2,
		},
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
						actionLua = "-- Initialize position table if it doesn't exist\nif not gsavedPositions then\n    gsavedPositions = {}\nend\n\nlocal player = TensorCore.mGetPlayer()\nlocal pos = player.pos\n\n-- Save current position\nlocal entry = {\n    x = pos.x,\n    y = pos.y,\n    z = pos.z\n}\n\ntable.insert(gsavedPositions, entry)\n\n-- Format as Lua table declaration\nlocal output = \"gSavedSpots = {\\n\"\nfor i, pos in pairs(gsavedPositions) do\n    output = output .. string.format(\"    [%d] = {x = %.2f, y = %.2f, z = %.2f},\\n\", i, pos.x, pos.y, pos.z)\nend\noutput = output .. \"}\"\n\nGUI:SetClipboardText(output)\nd(\"[Position saved and table copied to clipboard]\")\n\nself.used = true",
						conditions = 
						{
							
							{
								"95e1dd08-9954-0d38-92fd-1a509ce71aef",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						uuid = "9111dd7d-a873-145d-89c7-bae60d6da9f8",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventChatLine = "<posi>",
						uuid = "95e1dd08-9954-0d38-92fd-1a509ce71aef",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "Macro /e <posi>\nYou will save coordinates into a table which is copied onto clipboard.\n\nIf you don't get the use of this, it isn't for you.",
						name = "readme",
						uuid = "45b82453-a70b-5d4e-8b48-bed6ec0ac1b1",
						version = 3,
					},
				},
			},
			enabled = false,
			eventType = 7,
			name = "utility| save positions",
			uuid = "8cb286e5-47df-2262-8b36-dc894fc3e169",
			version = 2,
		},
	}, 
	inheritedProfiles = 
	{
	},
}



return tbl
