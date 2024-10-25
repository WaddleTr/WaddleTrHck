local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/LOLking123456/Rayfield/main/source'))()
spawn(function()
    setclipboard("https://ay.live/PetsCo")
    toclipboard("https://ay.live/PetsCo")
end)

local Window = Rayfield:CreateWindow({
    Name = "Loader",
    LoadingTitle = "Script Loader",
    LoadingSubtitle = "Cryptic Cheat",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = nil,
        FileName = "Big Hub"
    },
    KeySystem = true,
    KeySettings = {
        Title = "The Key Link Is Copied",
        Subtitle = "If it didn't copy get link on right side!",
        Note = "https://ay.live/PetsCo",
        FileName = "Key",
        SaveKey = true,
        GrabKeyFromSite = true,
        Key = {"https://pastebin.com/raw/WKtvFuNs"}
    }
})

local Tab = Window:CreateTab("Load", 4483362458)

Tab:CreateButton({
    Name = "Load GUI",
    Callback = function()
        local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
        local MainWindow = Library.CreateLib("PETS GO! | WaddleTR", "GrapeTheme")

        local MainTab = MainWindow:NewTab("Main-Features")
        local PlayerTab = MainWindow:NewTab("Player-Features")
        local SettingsTab = MainWindow:NewTab("Settings")

        local MainSection = MainTab:NewSection("Main-Features")
        local PlayerSection = PlayerTab:NewSection("Player")
        local SettingsSection = SettingsTab:NewSection("Settings")

        -- Main Features
        MainSection:NewButton("Infinite Coins", "Set infinite coins", function()
            while true do
                game:GetService("Players").LocalPlayer.PlayerGui.Main.Top.Coins.Amount.Text = "10e40"
                wait(0)
            end
        end)

        MainSection:NewButton("Auto Clicker (Pick Spots, Mobile Friendly)", "Auto Clicker Pick Spots", function()
            getgenv().key = "Hostile"
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/The-telligence/main/MC%20KSystem%202"))()
        end)

        MainSection:NewButton("Find All Relics", "Find All Relics", function()
            local Players = game:GetService("Players")
            local TweenService = game:GetService("TweenService")
            local UserInputService = game:GetService("UserInputService")
            local player = Players.LocalPlayer
            local playerGui = player:WaitForChild("PlayerGui")

            local screenGui = Instance.new("ScreenGui")
            screenGui.Name = "RelicFinderUI"
            screenGui.Parent = playerGui
            screenGui.IgnoreGuiInset = true
            screenGui.ResetOnSpawn = false
            
            local mainFrame = Instance.new("Frame")
            mainFrame.Size = UDim2.new(0, 250, 0, 120)
            mainFrame.Position = UDim2.new(0.5, -125, 0.5, -60)
            mainFrame.BackgroundColor3 = Color3.fromRGB(240, 248, 255)
            mainFrame.BorderSizePixel = 0
            mainFrame.Parent = screenGui
            
            local frameStroke = Instance.new("UIStroke")
            frameStroke.Color = Color3.fromRGB(70, 130, 180)
            frameStroke.Thickness = 2
            frameStroke.Parent = mainFrame
            
            local frameCorner = Instance.new("UICorner")
            frameCorner.CornerRadius = UDim.new(0, 16)
            frameCorner.Parent = mainFrame
            
            local titleLabel = Instance.new("TextLabel")
            titleLabel.Size = UDim2.new(1, -20, 0, 40)
            titleLabel.Position = UDim2.new(0, 10, 0, 10)
            titleLabel.BackgroundTransparency = 1
            titleLabel.Text = "Relic Finder"
            titleLabel.Font = Enum.Font.GothamSemibold
            titleLabel.TextSize = 24
            titleLabel.TextColor3 = Color3.fromRGB(25, 25, 112)
            titleLabel.TextStrokeColor3 = Color3.fromRGB(0, 100, 0)
            titleLabel.TextStrokeTransparency = 0.8
            titleLabel.Parent = mainFrame
            
            local titleCorner = Instance.new("UICorner")
            titleCorner.CornerRadius = UDim.new(0, 12)
            titleCorner.Parent = titleLabel

            -- Draggable UI Functionality
            local dragging = false
            local dragInput, mousePos, framePos

            titleLabel.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    dragging = true
                    mousePos = input.Position
                    framePos = mainFrame.Position
                    input.Changed:Connect(function()
                        if input.UserInputState == Enum.UserInputState.End then
                            dragging = false
                        end
                    end)
                end
            end)

            titleLabel.InputChanged:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                    dragInput = input
                end
            end)

            UserInputService.InputChanged:Connect(function(input)
                if dragging and input == dragInput then
                    local delta = input.Position - mousePos
                    mainFrame.Position = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
                end
            end)

            local highlightButton = Instance.new("TextButton")
            highlightButton.Size = UDim2.new(0.5, 0, 0.3, 0)
            highlightButton.Position = UDim2.new(0.25, 0, 0.6, 0)
            highlightButton.BackgroundColor3 = Color3.fromRGB(34, 139, 34)
            highlightButton.Text = "Highlight"
            highlightButton.Font = Enum.Font.SourceSansBold
            highlightButton.TextSize = 20
            highlightButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            highlightButton.AutoButtonColor = false
            highlightButton.ZIndex = 2
            highlightButton.Parent = mainFrame
            
            local buttonCorner = Instance.new("UICorner")
            buttonCorner.CornerRadius = UDim.new(0, 12)
            buttonCorner.Parent = highlightButton
            
            local buttonStroke = Instance.new("UIStroke")
            buttonStroke.Color = Color3.fromRGB(0, 100, 0)
            buttonStroke.Thickness = 2
            buttonStroke.Parent = highlightButton
            
            local hoverTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
            local hoverTween = TweenService:Create(highlightButton, hoverTweenInfo, {BackgroundColor3 = Color3.fromRGB(50, 205, 50)})
            local leaveTween = TweenService:Create(highlightButton, hoverTweenInfo, {BackgroundColor3 = Color3.fromRGB(34, 139, 34)})

            local isActive = false
            local indicatorInstances = {}
            local connections = {}

            local function createIndicator(meshPart)
                if meshPart.Transparency < 0.75 then
                    local billboard = Instance.new("BillboardGui")
                    billboard.Name = "RelicIndicator"
                    billboard.Adornee = meshPart
                    billboard.Size = UDim2.new(0, 30, 0, 30)
                    billboard.AlwaysOnTop = true
                    billboard.ExtentsOffset = Vector3.new(0, meshPart.Size.Y / 2 + 5, 0)
                    billboard.Parent = meshPart
                    
                    local circle = Instance.new("Frame")
                    circle.Size = UDim2.new(1, 0, 1, 0)
                    circle.Position = UDim2.new(0, 0, 0, 0)
                    circle.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
                    circle.BackgroundTransparency = 0.3
                    circle.BorderSizePixel = 0
                    circle.Parent = billboard
                    
                    local circleCorner = Instance.new("UICorner")
                    circleCorner.CornerRadius = UDim.new(1, 0)
                    circleCorner.Parent = circle
                    
                    local circleStroke = Instance.new("UIStroke")
                    circleStroke.Color = Color3.fromRGB(0, 100, 0)
                    circleStroke.Thickness = 3
                    circleStroke.Parent = circle
                    
                    local textLabel = Instance.new("TextLabel")
                    textLabel.Size = UDim2.new(0.8, 0, 0.8, 0)
                    textLabel.Position = UDim2.new(0.1, 0, 0.1, 0)
                    textLabel.BackgroundTransparency = 1
                    textLabel.Text = "Relic"
                    textLabel.Font = Enum.Font.SourceSansBold
                    textLabel.TextSize = 12
                    textLabel.TextColor3 = Color3.fromRGB(0, 100, 0)
                    textLabel.Parent = billboard
                    
                    table.insert(indicatorInstances, billboard)
                end
            end

            local function highlightRelics()
                isActive = not isActive

                for _, meshPart in pairs(workspace:GetDescendants()) do
                    if meshPart:IsA("MeshPart") and string.find(meshPart.Name, "Relic") then
                        if isActive then
                            createIndicator(meshPart)
                        else
                            local indicator = meshPart:FindFirstChild("RelicIndicator")
                            if indicator then
                                indicator:Destroy()
                            end
                        end
                    end
                end
            end

            highlightButton.MouseButton1Click:Connect(function()
                highlightRelics()
            end)

            highlightButton.MouseEnter:Connect(function()
                hoverTween:Play()
            end)

            highlightButton.MouseLeave:Connect(function()
                leaveTween:Play()
            end)
        end)

        -- Player Features
        PlayerSection:NewSlider("Walkspeed", "Change your walkspeed", 500, 16, function(value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
        end)

        PlayerSection:NewSlider("JumpPower", "Change your jump power", 500, 50, function(value)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
        end)

        PlayerSection:NewToggle("Infinite Jump", "Enable Infinite Jump", function(state)
            local player = game.Players.LocalPlayer
            local userInputService = game:GetService("UserInputService")

            local function onJumpRequest()
                if state then
                    player.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jump")
                end
            end
            
            userInputService.JumpRequest:Connect(onJumpRequest)
        end)

        -- Settings Section
        SettingsSection:NewButton("Unload Script", "Unload the script and close the GUI", function()
            Library:Unload()
        end)

        SettingsSection:NewButton("Exit", "Close the game", function()
            game:Shutdown()
        end)
    end
})
