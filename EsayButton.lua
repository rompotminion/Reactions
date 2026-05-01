-- Let's make Assist more personalized


-- remove GUI.WindowFlags_NoTitleBar if you want the titlebar still. clicking the x button on title bar will disable the button which also allows resizing
_, self.enabled = GUI:Begin("BetterAssist", self.enabled, GUI.WindowFlags_NoTitleBar + GUI.WindowFlags_NoResize)
--_, self.enabled = GUI:Begin("BetterAssist", self.enabled, GUI.WindowFlags_NoTitleBar)

-- this will just tell you if Optifine is not currently installed/running, just a personal thing because I always forget to switch to my raid profile.
--if Optifine == nil then
--    GUI:TextColored(0.8, 0.2, 0, 1, "Optifine Disabled")
--end
if ml_global_information.drawMode == 0 then
    ffxivminion.GUI.main.open = false
end

-- setting colors and status for button showing whether the bot is running or not
local status = "Stopped"
local r, g, b, a = 0.45, 0, 0, 1

-- Handle the case where rPrepull might be nil
if rPrepull == nil then
    rPrepull = false
end

if rPrepull then
    if FFXIV_Common_BotRunning then
        status = string.format(gBotMode, TensorReactions_CurrentTimer)
        r, g, b, a = 1.0, 0.6, 0.0, 1 -- bright orange for rPrepull and bot running
    else
        status = string.format(gBotMode, TensorReactions_CurrentTimer)
        r, g, b, a = 0.6, 0.3, 0.1, 1 -- brownish orange for rPrepull only
    end
elseif FFXIV_Common_BotRunning then
    status = string.format(gBotMode, TensorReactions_CurrentTimer)
    r, g, b, a = 0.1, 0.4, 0, 1 -- green when bot is running and rPrepull is false
else
    status = string.format(gBotMode, TensorReactions_CurrentTimer)
    r, g, b, a = 0.45, 0, 0, 1 -- red when bot is not running and rPrepull is false
end

GUI:PushStyleColor(GUI.Col_Button, r, g, b, a)
GUI:PushStyleColor(GUI.Col_ButtonHovered, r, g, b, a)
local x = GUI:GetContentRegionAvailWidth()
if GUI:Button(status, x, 40) then
    ml_global_information.ToggleRun() -- clicking the button will toggle bot status
end
if GUI:IsItemClicked(1) then
    ml_global_information.drawMode = 1
    ffxivminion.GUI.main.open = not ffxivminion.GUI.main.open
end
GUI:PopStyleColor(2)

AnyoneCore.Settings.PrepullHelper.enabled = GUI:Checkbox("Prepull", AnyoneCore.Settings.PrepullHelper.enabled) -- toggles AnyoneCore's Prepull Helper
GUI:SameLine() GUI:SetCursorPosX(111)
gStartCombat, changed = GUI:Checkbox("Combat", gStartCombat) -- toggles Start Combat
AnyoneCore.Settings.DutyHelper.enabled = GUI:Checkbox("Duty", AnyoneCore.Settings.DutyHelper.enabled) -- toggles AnyoneCore's Duty Helper
GUI:SameLine() GUI:SetCursorPosX(111)
MoogleTelegraphs.Settings.enable, changed = GUI:Checkbox("Moogle", MoogleTelegraphs.Settings.enable) -- toggles Moogle
if changed then
    gQuestHelpers = gAssistConfirmDuty
end -- just a workaround to get the checkbox to change both settings

if GUI:Button("Reactions", 95, 20) then -- opens the TensorReactions window
    AnyoneCore.openTensorReactions() -- tensorreactions setting for whether gui is visible or not is not public, so I have my own hacked together method of opening it.
end
GUI:SameLine()
if GUI:Button("Console", 95, 20) then -- I personally have the console open 24/7 for debugging but if you don't, then this button isn't really necessary.
    ml_gui.showconsole = not ml_gui.showconsole
end
if GUI:Button("ACR Options", 95, 20) then -- options for your current active ACR
    ACR.OpenProfileOptions()
end
GUI:SameLine()
if GUI:Button("Dev Monitor", 95, 20) then -- opens AnyoneCore's version of the dev monitor, it's mostly used for debugging.
    AnyoneCore.Settings.DevMonitor = not AnyoneCore.Settings.DevMonitor
end
if GUI:Button("Fight Plan", 95, 20) then -- removes items without a gearset from armory chest
    FightPlan.GUI.open = not FightPlan.GUI.open
end
-- Add the new button to open the ReactionHelper menu
if GUI:Button("Data GUI", 197, 20) then
    ReactionHelper.toggle()
end
GUI:End()
