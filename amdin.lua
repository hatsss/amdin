local prefix = "/e" -- prefix (obvious)
--my shitty ass admin made by me im too lazy to fix anything rn mainly posted this cause i just like the look of a loadstring



local Player = game.Players.LocalPlayer
local cmd = prefix.. "to"
Player.Chatted:Connect(
    function(msg)
        if string.sub((msg), 1, #cmd) == cmd then
            for i, v in next, game:GetService("Players"):GetChildren() do
                local number = #cmd + 2
                local number2 = #cmd + 1
                if
                    v:IsA("Player") and
                        string.lower(string.sub((v.Name), 1, #msg - number2)) ==
                            string.sub((string.lower(msg)), number, #msg) or
                        string.lower(string.sub((v.DisplayName), 1, #msg - number2)) ==
                            string.sub((string.lower(msg)), number, #msg)
                 then
                    Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                end
            end
        end
    end
)

local Player = game.Players.LocalPlayer
local cmd = prefix .."fling"
local last = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
Player.Chatted:Connect(
    function(msg)
        if string.sub((msg), 1, #cmd) == cmd then
            for i, v in next, game:GetService("Players"):GetChildren() do
                local number = #cmd + 2
                local number2 = #cmd + 1
                if
                    v:IsA("Player") and
                        string.lower(string.sub((v.Name), 1, #msg - number2)) ==
                            string.sub((string.lower(msg)), number, #msg) or
                        string.lower(string.sub((v.DisplayName), 1, #msg - number2)) ==
                            string.sub((string.lower(msg)), number, #msg)
                 then
                    local target = v.Character
                    local me = game.Players.LocalPlayer
                    local Torso = me.Character:FindFirstChild("Torso") or me.Character:FindFirstChild("UpperTorso")
                    local Offset =
                        CFrame.new(
                        (Torso.Velocity.X / 1),
                        -(Torso.Size.Y * 0.75) + (Torso.Velocity.Y / 2),
                        (Torso.Velocity.Z / 6)
                    ) *
                        CFrame.Angles(1.3, 0, 0) *
                        CFrame.new(-(Torso.Size.X / 3), 0, -(Torso.Size.Z / 3))
                    local Origin = me.Character.HumanoidRootPart.CFrame

                    for i, v in pairs(me:GetChildren()) do
                        if v:IsA("Tool") then
                            v.Parent = game.Players.LocalPlayer.Backpack
                        end
                    end
                    for i, v in pairs(game.Players.LocalPlayer:FindFirstChildOfClass("Backpack"):GetDescendants()) do
                        if v:IsA("Tool") or v:IsA("HopperBin") then
                            v.Parent = game.Players.LocalPlayer.Character
                        end
                    end

                    for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                        if v:IsA("Tool") then
                            v.Parent = game.Players.LocalPlayer:FindFirstChildOfClass("Backpack")
                            v.GripPos = Vector3.new(9e9, 9e9, 9e9)
                            v.Handle.Massless = true
                            v.Parent = game.Players.LocalPlayer.Character
                        end
                    end

                    local bodyvel = Instance.new("BodyAngularVelocity")
                    bodyvel.MaxTorque = Vector3.new(1, 1, 1) * math.huge
                    bodyvel.P = math.huge
                    bodyvel.AngularVelocity = Vector3.new(9e5, 9e5, 9e5)
                    bodyvel.Parent = me.Character.HumanoidRootPart

                    for i, v in next, me.Character:GetChildren() do
                        if v:IsA("BasePart") then
                            v.CanCollide = true
                            v.Massless = true
                            v.Velocity = Vector3.new(9e5, 9e5, 9e5)
                        end
                    end

                    local function stopthisfunc()
                        for i, v in next, me.Character:GetChildren() do
                            if v:IsA("BasePart") then
                                v.CanCollide = true
                            end
                        end
                    end

                    stopconnection = game.RunService.Stepped:Connect(stopthisfunc)

                    local function diefunction()
                        function endthem()
                            me.Character.HumanoidRootPart.CFrame = target.Head.CFrame - Vector3.new(0, 2, 0)
                            me.Character.HumanoidRootPart.CFrame = Torso.CFrame * Offset
                        end
                        connection = game.RunService.Heartbeat:Connect(endthem)
                        wait(1)
                        connection:Disconnect()
                    end

                    diefunction()
                    stopconnection:Disconnect()
                    bodyvel:Remove()
                    for i = 1, 5 do
                        for _, v in next, me.Character:GetDescendants() do
                            if v:IsA("BasePart") then
                                v.Velocity, v.RotVelocity = Vector3.new(), Vector3.new()
                            end
                        end

                        me.Character.HumanoidRootPart.CFrame = Origin
                        me.Character.Humanoid:ChangeState(8)
                    end
                    for i, v in pairs(game.Players.LocalPlayer:FindFirstChildOfClass("Backpack"):GetDescendants()) do
                        if v:IsA("Tool") or v:IsA("HopperBin") then
                            v.Parent = game.Players.LocalPlayer.BackPack
                        end
                    end
                    HumanoidRootPart.Anchored = false
                    for _, v in next, me.Character:GetDescendants() do
                        if v:IsA("BasePart") then
                            v.Velocity, v.RotVelocity = Vector3.new(), Vector3.new()
                        end
                    end
                end
            end
        end
    end
)

local cmd = prefix.. "void"
Player.Chatted:Connect(
    function(msg)
        if string.sub((msg), 1, #cmd) == cmd then
            for i, v in next, game:GetService("Players"):GetChildren() do
                local number = #cmd + 2
                local number2 = #cmd + 1
                if
                    v:IsA("Player") and
                        string.lower(string.sub((v.Name), 1, #msg - number2)) ==
                            string.sub((string.lower(msg)), number, #msg) or
                        string.lower(string.sub((v.DisplayName), 1, #msg - number2)) ==
                            string.sub((string.lower(msg)), number, #msg)
                 then
                    local RunService = game:GetService("RunService")

                    local Target = v.Character
                    local LocalPlayer = game.Players.LocalPlayer
                    local Character = game.Players.LocalPlayer.Character
                    local Humanoid = Character.Humanoid
                    local BackPack = LocalPlayer.Backpack
                    local tool = Character:FindFirstChildOfClass("Tool") or BackPack:FindFirstChildOfClass("Tool")
                    local Origin = Character.HumanoidRootPart.CFrame

                    local Human = Humanoid:Clone()
                    Human.Parent = Character

                    wait()

                    Humanoid:Destroy()
                    wait()
                    tool.Parent = Character
                    Character.HumanoidRootPart.CFrame = Target.HumanoidRootPart.CFrame
                    wait(.3)
                    Character.HumanoidRootPart.CFrame = CFrame.new(9e9, 9e9, 9e9)
                    wait(.3)
                    Character:ClearAllChildren()

                    Character = Instance.new("Model", workspace)
                    Character:Destroy()
                    CharacterAdded:Wait()
                    Character:WaitForChild("HumanoidRootPart")
                    Character.HumanoidRootPart.CFrame = Position
                end
            end
        end
    end
)

local cmd = prefix.. "bring"
Player.Chatted:Connect(
    function(msg)
        if string.sub((msg), 1, #cmd) == cmd then
            for i, v in next, game:GetService("Players"):GetChildren() do
                local number = #cmd + 2
                local number2 = #cmd + 1
                if
                    v:IsA("Player") and
                        string.lower(string.sub((v.Name), 1, #msg - number2)) ==
                            string.sub((string.lower(msg)), number, #msg) or
                        string.lower(string.sub((v.DisplayName), 1, #msg - number2)) ==
                            string.sub((string.lower(msg)), number, #msg)
                 then
                    local RunService = game:GetService("RunService")

                    local RunService = game:GetService("RunService")

                    local Target = v.Character
                    local LocalPlayer = game.Players.LocalPlayer
                    local Character = game.Players.LocalPlayer.Character
                    local Humanoid = Character.Humanoid
                    local BackPack = LocalPlayer.Backpack
                    local tool = Character:FindFirstChildOfClass("Tool") or BackPack:FindFirstChildOfClass("Tool")
                    local pos = Character.HumanoidRootPart.CFrame

                    local man = Humanoid:Clone()
                    man.Parent = Character

                    wait()

                    Humanoid:Destroy()
                    wait()
                    tool.Parent = Character
                    Character.HumanoidRootPart.CFrame = Target.HumanoidRootPart.CFrame
                    wait(.3)
                    Character.HumanoidRootPart.CFrame = pos
                    wait(.3)
                    Character:ClearAllChildren()

                    Character = Instance.new("Model", workspace)
                    Character:Destroy()
                end
            end
        end
    end
)

local Player = game.Players.LocalPlayer
local cmd = prefix.. "avatar"
Player.Chatted:Connect(
    function(msg)
        if string.sub((msg), 1, #cmd) == cmd then
            for i, v in next, game:GetService("Players"):GetChildren() do
                local number = #cmd + 2
                local number2 = #cmd + 1
                if
                    v:IsA("Player") and
                        string.lower(string.sub((v.Name), 1, #msg - number2)) ==
                            string.sub((string.lower(msg)), number, #msg) or
                        string.lower(string.sub((v.DisplayName), 1, #msg - number2)) ==
                            string.sub((string.lower(msg)), number, #msg)
                 then
                    local target = v
                    local CoreGui = game:GetService("CoreGui")
                    local GuiService = game:GetService("GuiService")
                    local VirtualInputManager = game:GetService("VirtualInputManager")
                    local LocalPlayer = game.Players.LocalPlayer
                    local Mouse = LocalPlayer:GetMouse()

                    local function SaveAvatar(Description, Type)
                        pcall(
                            function()
                                local AvatarEditorService = game:GetService("AvatarEditorService")

                                AvatarEditorService:PromptSaveAvatar(Description, Type)

                                local Prompts = CoreGui:WaitForChild("AvatarEditorPrompts")
                                local PromptFrame = Prompts:WaitForChild("PromptFrame")
                                local Prompt = PromptFrame:WaitForChild("Prompt")

                                local Button = Prompt.AlertContents.Footer.Buttons["2"]
                                local Origin =
                                    Button.AbsolutePosition + Button.AbsoluteSize / 2 + GuiService:GetGuiInset()

                                for i = 0, 1 do
                                    VirtualInputManager:SendMouseButtonEvent(Origin.X, Origin.Y, 0, i == 0, Button, 1)
                                end
                            end
                        )
                    end

                    local function Outfit(Player)
                        local Character = Player.Character

                        if Character then
                            local Humanoid = Character:FindFirstChild("Humanoid")

                            if Humanoid then
                                SaveAvatar(Humanoid:GetAppliedDescription(), Humanoid.RigType)
                            end
                        end
                    end

                    Outfit(target)
                end
            end
        end
    end
)
