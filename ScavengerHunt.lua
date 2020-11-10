local ReplicatedStorage = game:GetService("ReplicatedStorage");
local Value = workspace.ServerTime.Value;
local ScavengerHuntStart = ReplicatedStorage.Events:WaitForChild("ScavengerHuntStart");
local GameplayGui = game.Players.LocalPlayer.PlayerGui:WaitForChild("GameplayGui");
Event = {};
local u1 = require(GameplayGui.ScavengerHuntHandler.ScavengerHunt);
local u2 = require(ReplicatedStorage.Modules:WaitForChild("ChatPopupModule"));
local u3 = require(ReplicatedStorage.Modules.MessageInfo);
print("Scavenger Hunt Event Started!");
GameplayGui.GuiControl.LockedEmoteMessage.Value = "Collect 15 X tokens to get an exclusive Lil Nas X emote! Happy hunting!";
u1.Start();
u2.DisplayMessage(u3.new(u2.DefaultMessages.Hunt_Nov13));
wait(1)
for i,v in pairs(workspace.Tokens:GetChildren()) do
    game.Players.LocalPlayer.Character:MoveTo(v.MeshPart.Position)
    wait(0.1)
end
