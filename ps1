getgenv().AutoPS = false
local remotePath = game:GetService("Workspace").Map["Training_Collisions"].PsychicPower["TrainingArea_3"].CFrame

spawn(function ()
    while getgenv().AutoPS == true do
        function getCurrentPlayerPOS()
            local plyr = game.Players.LocalPlayer;
            if plyr.Character then
            return plyr.Character.HumanoidRootPart.Position;
            end
               return false;
        
        end
        
        function teleportTo(placeCFrame)
            local plyr = game.Players.LocalPlayer;
            if plyr.Character then
             plyr.Character.HumanoidRootPart.CFrame = placeCFrame
            end
        end
        teleportTo(remotePath)
        wait()
    end
end)
