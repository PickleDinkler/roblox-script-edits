--FRONTLINES Hitbox Extender
--https://www.roblox.com/games/5938036553/FRONTLINES

local HitboxSize = Vector3.new(10,10,10) --too big wont work

if getgenv().c then getgenv().c:Disconnect() end
getgenv().c = game:GetService("RunService").RenderStepped:Connect(function()
    for _,v in pairs(workspace:GetChildren()) do
       if v:IsA("BasePart") and v.Color == Color3.new(1,0,0) then
          v.Transparency = 0.25
          v.Size = HitboxSize
       end
    end    
end)

--mopsfl#4864
