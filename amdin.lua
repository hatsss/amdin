--my shitty ass admin made by me im too lazy to fix anything rn mainly posted this cause i just like the look of a loadstring
--- i fixed alot and made the claims better (im bored please help)

local Player = game.Players.LocalPlayer

local cmd = "/e to"
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

local cmd = "/e fling"
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
                    local Player = game.Players.LocalPlayer

                    local Torso =
                        Player.Character:FindFirstChild("Torso") or Player.Character:FindFirstChild("UpperTorso")
                    local Offset =
                        CFrame.new(
                        (Torso.Velocity.X / 1),
                        (Torso.Size.Y * 0.75) + (Torso.Velocity.Y / 2),
                        (Torso.Velocity.Z / 6)
                    ) *
                        CFrame.Angles(1.3, 0, 0) *
                        CFrame.new(-(Torso.Size.X / 3), 0, -(Torso.Size.Z / 3))
                    local Origin = Player.Character.HumanoidRootPart.CFrame

                    for i, v in pairs(Player:GetChildren()) do
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
                            v.GripPos = Vector3.new(5000, 5000, 5000)
                            v.Handle.Massless = true
                            v.Parent = game.Players.LocalPlayer.Character
                        end
                    end

                    local bodyvel = Instance.new("BodyAngularVelocity")
                    bodyvel.MaxTorque = Vector3.new(1, 1, 1) * math.huge
                    bodyvel.P = math.huge
                    bodyvel.AngularVelocity = Vector3.new(9e5, -1000, 9e5)
                    bodyvel.Parent = Player.Character.HumanoidRootPart

                    for i, v in next, Player.Character:GetChildren() do
                        if v:IsA("BasePart") then
                            v.CanCollide = true
                            v.Massless = true
                            v.Velocity = Vector3.new(9e5, -1000, 9e5)
                        end
                    end

                    local function stopthisfunc()
                        for i, v in next, Player.Character:GetChildren() do
                            if v:IsA("BasePart") then
                                v.CanCollide = true
                            end
                        end
                    end

                    stopconnection = game.RunService.Stepped:Connect(stopthisfunc)

                    local function diefunction()
                        function endthem()
                            Player.Character.HumanoidRootPart.CFrame = target.Head.CFrame - Vector3.new(0, 5, 0)
                            Player.Character.HumanoidRootPart.CFrame = Torso.CFrame * Offset
                        end
                        connection = game.RunService.Heartbeat:Connect(endthem)
                        wait(1)
                        connection:Disconnect()
                    end

                    diefunction()
                    stopconnection:Disconnect()
                    bodyvel:Remove()
                    for i = 1, 5 do
                        for _, v in next, Player.Character:GetDescendants() do
                            if v:IsA("BasePart") then
                                v.Velocity, v.RotVelocity = Vector3.new(), Vector3.new()
                            end
                        end

                        Player.Character.HumanoidRootPart.CFrame = Origin
                        Player.Character.Humanoid:ChangeState(8)
                    end
                    for i, v in pairs(game.Players.LocalPlayer:FindFirstChildOfClass("Backpack"):GetDescendants()) do
                        if v:IsA("Tool") or v:IsA("HopperBin") then
                            v.Parent = game.Players.LocalPlayer.BackPack
                        end
                    end
                    HumanoidRootPart.Anchored = false
                    for _, v in next, Player.Character:GetDescendants() do
                        if v:IsA("BasePart") then
                            v.Velocity, v.RotVelocity = Vector3.new(), Vector3.new()
                        end
                    end
                end
            end
        end
    end
)

local cmd = "/e void"
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
                    local Target = v
                    local Character = Player.Character
                    local resetpos = Character.HumanoidRootPart.CFrame
                    local Humanoid = Character.Humanoid
                    local BackPack = Player.Backpack
                    local tool = Character:FindFirstChildOfClass("Tool") or BackPack:FindFirstChildOfClass("Tool")
                    local Origin = Character.HumanoidRootPart.CFrame
                    local function ToolerCframer(tool, pos)
                        local rarm =
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("RightLowerArm") or
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Right Arm")
                        tool.Grip =
                            CFrame.new().Inverse(
                            CFrame.new().toObjectSpace(
                                rarm.CFrame * CFrame.new(0, -1, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0),
                                pos
                            )
                        )
                    end
                    local Human = Humanoid:Clone()
                    Human.Parent = Character
                    workspace.Camera.CameraSubject = Target.Character:FindFirstChildOfClass("Head")
                    wait()
                    Humanoid:Destroy()
                    wait()
                    tool.Parent = Character
                    repeat
                        game:GetService("RunService").Heartbeat:Wait()
                        firetouchinterest(tool.Handle, Target.Character.HumanoidRootPart, 0)
                    until tool.Parent ~= Character

                    Character.HumanoidRootPart.Velocity = Vector3.new(9e9, -1000, 9e9)
                    Character.HumanoidRootPart.CFrame = CFrame.new(9e9, -1000, 9e9)

                    wait(.3)
                    Character:ClearAllChildren()

                    Player.Character = Instance.new("Model", workspace)
                    Player.Character:Destroy()
                    Player.CharacterAdded:Wait()
                    Player.Character:WaitForChild("HumanoidRootPart")
                    Player.Character.HumanoidRootPart.CFrame = resetpos
                end
            end
        end
    end
)

local cmd = "/e bring"
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

                    local Target = v
                    local Character = Player.Character
                    local resetpos = Character.HumanoidRootPart.CFrame
                    local Humanoid = Character.Humanoid
                    local BackPack = Player.Backpack
                    local tool = Character:FindFirstChildOfClass("Tool") or BackPack:FindFirstChildOfClass("Tool")
                    local Origin = Character.HumanoidRootPart.CFrame
                    local function ToolerCframer(tool, pos)
                        local rarm =
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("RightLowerArm") or
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Right Arm")
                        tool.Grip =
                            CFrame.new().Inverse(
                            CFrame.new().toObjectSpace(
                                rarm.CFrame * CFrame.new(0, -1, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0),
                                pos
                            )
                        )
                    end
                    local Human = Humanoid:Clone()
                    Human.Parent = Character
                    wait()
                    Humanoid:Destroy()
                    wait()
                    tool.Parent = Character
                    repeat
                        game:GetService("RunService").Heartbeat:Wait()
                        firetouchinterest(tool.Handle, Target.Character.HumanoidRootPart, 0)
                    until tool.Parent ~= Character
                    wait(.3)
                    Character:ClearAllChildren()

                    Player.Character = Instance.new("Model", workspace)
                    Player.Character:Destroy()
                    Player.CharacterAdded:Wait()
                    Player.Character:WaitForChild("HumanoidRootPart")
                    Player.Character.HumanoidRootPart.CFrame = resetpos
                end
            end
        end
    end
)

local cmd = "/e avatar"
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
                    local Mouse = Player:GetMouse()

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

                    Outfit(target) -- makes my avatar yours
                --SaveAvatar(LocalPlayer.Humanoid:GetAppliedDescription(), Enum.HumanoidRigType.R15) -- r15
                --SaveAvatar(LocalPlayer.Humanoid:GetAppliedDescription(), 0) -- r6
                end
            end
        end
    end
)

local cmd = "/e kill"
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

                    local Target = v
                    local Character = Player.Character
                    local resetpos = Character.HumanoidRootPart.CFrame
                    local Humanoid = Character.Humanoid
                    local BackPack = Player.Backpack
                    local tool = Character:FindFirstChildOfClass("Tool") or BackPack:FindFirstChildOfClass("Tool")
                    local Origin = Character.HumanoidRootPart.CFrame
                    local function ToolerCframer(tool, pos)
                        local rarm =
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("RightLowerArm") or
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Right Arm")
                        tool.Grip =
                            CFrame.new().Inverse(
                            CFrame.new().toObjectSpace(
                                rarm.CFrame * CFrame.new(0, -1, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0),
                                pos
                            )
                        )
                    end
                    local Human = Humanoid:Clone()
                    Human.Parent = Character
                    wait()
                    Humanoid:Destroy()
                    ToolerCframer(tool, Target.Character.Head.CFrame)
                    wait()
                    tool.Parent = Character
                    repeat
                        game:GetService("RunService").Heartbeat:Wait()
                        firetouchinterest(tool.Handle, Target.Character.HumanoidRootPart, 0)
                    until tool.Parent ~= Character
                    wait(.2)
                    Character.Humanoid.Health = 0
                    Player.Character = nil
                    wait(.2)
                    Player.Character = character
                    wait(.3)
                    Character:ClearAllChildren()

                    Player.Character = Instance.new("Model", workspace)
                    Player.Character:Destroy()
                    Player.CharacterAdded:Wait()
                    Player.Character:WaitForChild("HumanoidRootPart")
                    Player.Character.HumanoidRootPart.CFrame = resetpos
                end
            end
        end
    end
)
