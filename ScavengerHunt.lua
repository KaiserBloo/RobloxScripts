local ReplicatedStorage = game:GetService("ReplicatedStorage");
local Value = workspace.ServerTime.Value;
local ScavengerHuntStart = ReplicatedStorage.Events:WaitForChild("ScavengerHuntStart");
local GameplayGui = game.Players.LocalPlayer.PlayerGui:WaitForChild("GameplayGui");
Event = {};
local u1 = require(GameplayGui.ScavengerHuntHandler.ScavengerHunt);
local u2 = require(ReplicatedStorage.Modules:WaitForChild("ChatPopupModule"));
local u3 = require(ReplicatedStorage.Modules.MessageInfo);
print("Scavenger Hunt Event Started!");
GameplayGui.GuiControl.LockedEmoteMessage.Value = GameplayGui.Popup.ChatBubble.Messages.EmoteDuringHunt;
u1.Start();
u2.DisplayMessage(u3.new(u2.DefaultMessages.Welcome_HuntNov13));
wait(1)
pcall(function()
workspace.Map.Structures.Barn.RoofSheeting:Remove()
workspace.Map.Structures.Barn.Roof:Remove()
workspace.Map.Structures.Stable.RoofSheeting:Remove()
workspace.Map.Structures.Stable.Roof:Remove()
end)
while wait(0.1) do
if #workspace.Tokens:GetChildren() ~= 0 then
for i,v in pairs(workspace.Tokens:GetChildren()) do
    game.Players.LocalPlayer.Character:MoveTo(v.MeshPart.Position)
    wait(0.25)
end
end
end
