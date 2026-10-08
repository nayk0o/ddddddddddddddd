local genv = (getgenv and getgenv()) or _G
local cloneref = cloneref or function(obj) return obj end
local gethui = gethui or function() return game:GetService("CoreGui") end
local _ = require == require
local v6 = cloneref(game:GetService("TweenService"))
local v9 = cloneref(game:GetService("RunService"))
local v12 = cloneref(game:GetService("HttpService"))
local v15 = cloneref(game:GetService("UserInputService"))
cloneref(game:GetService("CoreGui"))
local _ = cloneref(game:GetService("Players")).LocalPlayer
local v24 = Color3.fromRGB(16, 24, 39)
local v26 = Color3.fromRGB(12, 18, 32)
local v28 = Color3.fromRGB(21, 30, 47)
local v30 = Color3.fromRGB(10, 82, 120)
local v32 = Color3.fromRGB(56, 189, 248)
local v34 = Color3.fromRGB(56, 189, 248)
local v36 = Color3.fromRGB(30, 41, 59)
local v38 = Color3.fromRGB(25, 32, 48)
local v40 = Color3.fromRGB(52, 180, 230)
local v42 = Color3.fromRGB(241, 245, 249)
local v44 = Color3.fromRGB(148, 163, 184)
local v46 = Color3.fromRGB(239, 68, 68)
local v48 = Enum.Font.GothamBold
local v50 = Enum.Font.GothamMedium
local v52 = Enum.Font.Gotham
local _ = genv.IO_SAVE
genv.IO_SAVE = function(...)

end
local ChilliLib = {
    LoadConfig = function(...)
        local _55_vararg1, _55_vararg2 = ...
        local _ = "ChilliLib" .. "/settings/" .. _55_vararg2 .. ".json"
        return false, "No file"
    end,
    Options = {},
    Window = function(...)
        local _59_vararg1, _59_vararg2 = ...
        local v61 = Instance.new("ScreenGui")
        v61.Name = "ChilliLibUI"
        v61.ScreenInsets = Enum.ScreenInsets.None
        v61.ResetOnSpawn = false
        v61.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        v61.DisplayOrder = 10000
        local _ = v9.IsStudio
        v61.Parent = gethui()
        local v69 = Instance.new("Frame")
        v69.Name = "Notifications"
        v69.BackgroundTransparency = 1
        v69.Size = UDim2.new(0, 300, 1, - 20)
        v69.Position = UDim2.new(1, - 320, 0, 10)
        v69.AnchorPoint = Vector2.new(0, 0)
        v69.Parent = v61
        v69.ZIndex = 100
        local v77 = Instance.new("UIListLayout")
        v77.Padding = UDim.new(0, 10)
        v77.HorizontalAlignment = Enum.HorizontalAlignment.Center
        v77.SortOrder = Enum.SortOrder.LayoutOrder
        v77.VerticalAlignment = Enum.VerticalAlignment.Bottom
        v77.Parent = v69
        local v86 = _59_vararg2.Size
        local _ = v86.X.Scale
        local _ = v86.Y.Scale
        local v100 = UDim2.new(v86.X.Scale, v86.X.Offset, v86.Y.Scale, v86.Y.Offset)
        local v102 = Instance.new("Frame")
        v102.Name = "MainBase"
        v102.AnchorPoint = Vector2.new(0.5, 0.5)
        v102.Position = UDim2.fromScale(0.5, 0.5)
        v102.Size = v100
        v102.Parent = v61
        v102.ClipsDescendants = false
        v102.BackgroundColor3 = v24
        v102.BorderSizePixel = 0
        local v108 = Instance.new("UICorner", v102)
        v108.CornerRadius = UDim.new(0, 20)
        local v112 = Instance.new("UIGradient", v102)
        v112.Rotation = 35
        local v120 = ColorSequence.new({
            [1] = ColorSequenceKeypoint.new(0, v26),
            [2] = ColorSequenceKeypoint.new(0.55, v28),
            [3] = ColorSequenceKeypoint.new(1, v30),
        })
        v112.Color = v120
        local v122 = Instance.new("UIStroke", v102)
        v122.Thickness = 3
        v122.Transparency = 0.8
        v122.Color = v32
        v122.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        local v126 = Instance.new("UIStroke", v102)
        v126.Thickness = 1
        v126.Transparency = 0.5
        v126.Color = v34
        v126.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        v102.InputBegan:Connect(function(...)
            local _132_vararg1 = ...
            local _ = _132_vararg1.UserInputType == Enum.UserInputType.MouseButton1
            local _ = _132_vararg1.UserInputType == Enum.UserInputType.Touch
        end)
        v102.InputChanged:Connect(function(...)
            local _144_vararg1 = ...
            local _ = _144_vararg1.UserInputType == Enum.UserInputType.MouseMovement
            local _ = _144_vararg1.UserInputType == Enum.UserInputType.Touch
        end)
        v15.InputChanged:Connect(function(...)
        end)
        v102.Size = UDim2.new(0, 0, 0, 0)
        v102.Visible = true
        local v166 = v6:Create(v102, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
            Size = v100,
        })
        v166:Play()
        local v170 = Instance.new("Frame")
        v170.Name = "TopBar"
        v170.Parent = v102
        v170.BackgroundColor3 = v38
        v170.BackgroundTransparency = 0.3
        v170.BorderSizePixel = 0
        v170.Size = UDim2.new(1, - 14, 0, 32)
        v170.Position = UDim2.new(0, 7, 0, 7)
        local v176 = Instance.new("UICorner", v170)
        v176.CornerRadius = UDim.new(0, 12)
        local v180 = Instance.new("TextLabel")
        v180.Parent = v170
        v180.BackgroundTransparency = 1
        v180.Position = UDim2.new(0, 16, 0, 0)
        v180.Size = UDim2.new(1, - 80, 1, 0)
        v180.Font = v48
        v180.Text = _59_vararg2.Title
        v180.TextXAlignment = Enum.TextXAlignment.Left
        v180.TextSize = 18
        v180.TextColor3 = v42
        local v189 = Instance.new("UIGradient", v180)
        local v203 = ColorSequence.new({
            [1] = ColorSequenceKeypoint.new(0, Color3.fromRGB(34, 211, 238)),
            [2] = ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)),
            [3] = ColorSequenceKeypoint.new(1, Color3.fromRGB(99, 102, 241)),
        })
        v189.Color = v203
        local v205 = Instance.new("TextButton", v170)
        v205.Size = UDim2.fromOffset(24, 24)
        v205.Position = UDim2.new(1, - 30, 0.5, - 12)
        v205.BackgroundColor3 = v36
        v205.Text = "X"
        v205.Font = v48
        v205.TextSize = 14
        v205.TextColor3 = v46
        v205.AutoButtonColor = true
        local v211 = Instance.new("UICorner", v205)
        v211.CornerRadius = UDim.new(0, 8)
        local v215 = Instance.new("UIStroke", v205)
        v215.Color = v34
        v215.Transparency = 0.7
        v215.Thickness = 1
        v205.MouseButton1Click:Connect(function(...)
            local v229 = v6:Create(v102, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
                Size = UDim2.new(0, 0, 0, 0),
            })
            v229:Play()
            task.delay(0.26, function(...)
                v102.Visible = false
            end)
        end)
        v15.InputBegan:Connect(function(...)
        end)
        local v240 = Instance.new("Frame", v102)
        v240.BackgroundTransparency = 1
        v240.Position = UDim2.new(0, 10, 0, 45)
        v240.Size = UDim2.new(1, - 20, 1, - 50)
        local v246 = Instance.new("ScrollingFrame", v240)
        v246.Size = UDim2.new(0, 105, 1, 0)
        v246.BackgroundTransparency = 1
        v246.ScrollBarThickness = 2
        v246.BorderSizePixel = 0
        v246.CanvasSize = UDim2.new(0, 0, 0, 0)
        v246.AutomaticCanvasSize = Enum.AutomaticSize.Y
        local v254 = Instance.new("UIListLayout", v246)
        v254.Padding = UDim.new(0, 6)
        v254.SortOrder = Enum.SortOrder.LayoutOrder
        local v260 = Instance.new("Frame", v240)
        v260.Size = UDim2.new(0, 1, 1, 0)
        v260.Position = UDim2.new(0, 115, 0, 0)
        v260.BackgroundColor3 = v34
        v260.BackgroundTransparency = 0.8
        v260.BorderSizePixel = 0
        local v266 = Instance.new("Frame", v240)
        v266.Size = UDim2.new(1, - 125, 1, 0)
        v266.Position = UDim2.new(0, 125, 0, 0)
        v266.BackgroundTransparency = 1
        v266.ClipsDescendants = true
        return {
            Show = function(...)
                v102.Visible = true
                local v279 = v6:Create(v102, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
                    Size = v100,
                })
                v279:Play()
            end,
            TabGroup = function(...)
                return {
                    Tab = function(...)
                        local _283_vararg1, _283_vararg2 = ...
                        local v285 = Instance.new("TextButton", v246)
                        v285.Size = UDim2.new(1, - 4, 0, 32)
                        v285.BackgroundColor3 = v36
                        v285.BackgroundTransparency = 1
                        v285.Text = ""
                        v285.AutoButtonColor = false
                        local v289 = Instance.new("UICorner", v285)
                        v289.CornerRadius = UDim.new(0, 10)
                        local v293 = Instance.new("UIStroke", v285)
                        v293.Transparency = 1
                        v293.Color = v40
                        v293.Thickness = 1
                        local v295 = Instance.new("Frame", v285)
                        v295.Size = UDim2.new(0, 3, 1, - 6)
                        v295.Position = UDim2.new(0, 1, 0, 3)
                        v295.BackgroundColor3 = v40
                        v295.BorderSizePixel = 0
                        v295.BackgroundTransparency = 1
                        local v301 = Instance.new("UIGradient", v285)
                        v301.Rotation = 35
                        local v309 = ColorSequence.new({
                            [1] = ColorSequenceKeypoint.new(0, v26),
                            [2] = ColorSequenceKeypoint.new(0.55, v28),
                            [3] = ColorSequenceKeypoint.new(1, v30),
                        })
                        v301.Color = v309
                        v301.Enabled = false
                        local v311 = Instance.new("ImageLabel", v285)
                        v311.Size = UDim2.fromOffset(18, 18)
                        v311.Position = UDim2.new(0, 8, 0.5, - 9)
                        v311.BackgroundTransparency = 1
                        v311.ImageColor3 = v44
                        local _ = _283_vararg2.Image
                        local v317 = _283_vararg2.Image
                        local v321 = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dummyrme/Library/refs/heads/main/Icon.lua"))()
                        local _ = v321.Icons
                        local _ = v321.Icons[v317]
                        local v326 = v321.Icons[v317]
                        v311.Image = v321.Spritesheets[v326.Image]
                        v311.ImageRectOffset = v326.ImageRectPosition
                        v311.ImageRectSize = v326.ImageRectSize
                        local v333 = Instance.new("TextLabel", v285)
                        v333.BackgroundTransparency = 1
                        v333.Position = UDim2.new(0, 30, 0, 0)
                        v333.Size = UDim2.new(1, - 32, 1, 0)
                        v333.Font = v48
                        v333.Text = _283_vararg2.Title
                        v333.TextSize = 15
                        v333.TextColor3 = v44
                        v333.TextXAlignment = Enum.TextXAlignment.Left
                        local v342 = Instance.new("ScrollingFrame", v266)
                        v342.Size = UDim2.fromScale(1, 1)
                        v342.BackgroundTransparency = 1
                        v342.Visible = false
                        v342.ScrollBarThickness = 2
                        v342.ScrollBarImageColor3 = v40
                        v342.BorderSizePixel = 0
                        v342.CanvasSize = UDim2.new(0, 0, 0, 0)
                        v342.AutomaticCanvasSize = Enum.AutomaticSize.Y
                        local v350 = Instance.new("UIListLayout", v342)
                        v350.Padding = UDim.new(0, 12)
                        v350.SortOrder = Enum.SortOrder.LayoutOrder
                        local v356 = Instance.new("UIPadding", v342)
                        v356.PaddingLeft = UDim.new(0, 4)
                        v356.PaddingRight = UDim.new(0, 4)
                        v356.PaddingTop = UDim.new(0, 4)
                        v356.PaddingBottom = UDim.new(0, 10)
                        v285.MouseButton1Click:Connect(function(...)
                            v342.Visible = true
                            v342.Position = UDim2.new(0, 10, 0, 0)
                            local v378 = v6:Create(v342, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
                                Position = UDim2.new(0, 0, 0, 0),
                            })
                            v378:Play()
                            local v384 = v6:Create(v285, TweenInfo.new(0.2), {
                                BackgroundTransparency = 0,
                            })
                            v384:Play()
                            local v390 = v6:Create(v293, TweenInfo.new(0.2), {
                                Transparency = 0.4,
                            })
                            v390:Play()
                            local v396 = v6:Create(v333, TweenInfo.new(0.2), {
                                TextColor3 = v42,
                            })
                            v396:Play()
                            local v402 = v6:Create(v311, TweenInfo.new(0.2), {
                                ImageColor3 = v40,
                            })
                            v402:Play()
                            v301.Enabled = true
                            local v408 = v6:Create(v295, TweenInfo.new(0.2), {
                                BackgroundTransparency = 0,
                            })
                            v408:Play()
                        end)
                        return {
                            Select = function(...)
                                local _ = v285 == v285
                            end,
                            Section = function(...)
                                local _413_vararg1, _413_vararg2 = ...
                                local v415 = Instance.new("Frame", v342)
                                v415.Size = UDim2.new(1, - 2, 0, 0)
                                v415.AutomaticSize = Enum.AutomaticSize.Y
                                v415.BackgroundTransparency = 0
                                v415.ClipsDescendants = true
                                v415.BackgroundColor3 = v24
                                v415.BorderSizePixel = 0
                                local v421 = Instance.new("UICorner", v415)
                                v421.CornerRadius = UDim.new(0, 12)
                                local v425 = Instance.new("UIGradient", v415)
                                v425.Rotation = 35
                                local v433 = ColorSequence.new({
                                    [1] = ColorSequenceKeypoint.new(0, v26),
                                    [2] = ColorSequenceKeypoint.new(0.55, v28),
                                    [3] = ColorSequenceKeypoint.new(1, v30),
                                })
                                v425.Color = v433
                                local v435 = Instance.new("UIStroke", v415)
                                v435.Thickness = 3
                                v435.Transparency = 0.8
                                v435.Color = v32
                                v435.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                                local v439 = Instance.new("UIStroke", v415)
                                v439.Thickness = 1
                                v439.Transparency = 0.5
                                v439.Color = v34
                                v439.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                                local v443 = Instance.new("UIPadding", v415)
                                v443.PaddingTop = UDim.new(0, 4)
                                v443.PaddingBottom = UDim.new(0, 4)
                                v443.PaddingLeft = UDim.new(0, 2)
                                v443.PaddingRight = UDim.new(0, 2)
                                local _ = _413_vararg2.Title
                                local v454 = Instance.new("TextButton", v415)
                                v454.Size = UDim2.new(1, - 16, 0, 24)
                                v454.Position = UDim2.new(0, 8, 0, 4)
                                v454.BackgroundTransparency = 1
                                v454.Text = ""
                                local v460 = Instance.new("TextLabel", v454)
                                v460.Text = _413_vararg2.Title
                                v460.Font = v48
                                v460.TextSize = 16
                                v460.TextColor3 = Color3.fromRGB(255, 255, 255)
                                v460.Size = UDim2.new(1, - 20, 1, 0)
                                v460.BackgroundTransparency = 1
                                v460.TextXAlignment = Enum.TextXAlignment.Left
                                local v469 = Instance.new("UIGradient", v460)
                                local v483 = ColorSequence.new({
                                    [1] = ColorSequenceKeypoint.new(0, Color3.fromRGB(34, 211, 238)),
                                    [2] = ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)),
                                    [3] = ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255)),
                                })
                                v469.Color = v483
                                local v485 = Instance.new("TextLabel", v454)
                                v485.Text = "\xE2\x96\xBC"
                                v485.TextColor3 = v40
                                v485.BackgroundTransparency = 1
                                v485.Size = UDim2.new(0, 20, 1, 0)
                                v485.Position = UDim2.new(1, - 20, 0, 0)
                                v485.TextSize = 12
                                local v491 = Instance.new("Frame", v415)
                                v491.Name = "ContentHolder"
                                v491.BackgroundTransparency = 1
                                local _ = _413_vararg2.Title
                                v491.Position = UDim2.new(0, 8, 0, 32)
                                v491.Size = UDim2.new(1, - 16, 0, 0)
                                v491.AutomaticSize = Enum.AutomaticSize.Y
                                local v500 = Instance.new("UIListLayout", v491)
                                v500.Padding = UDim.new(0, 8)
                                v500.SortOrder = Enum.SortOrder.LayoutOrder
                                v500.HorizontalAlignment = Enum.HorizontalAlignment.Center
                                local v508 = Instance.new("UIPadding", v491)
                                v508.PaddingBottom = UDim.new(0, 6)
                                v454.MouseButton1Click:Connect(function(...)
                                    local v518 = v6:Create(v485, TweenInfo.new(0.2), {
                                        Rotation = - 90,
                                    })
                                    v518:Play()
                                    local v524 = v6:Create(v491, TweenInfo.new(0.2), {
                                        BackgroundTransparency = 1,
                                    })
                                    v524:Play()
                                    v491.Visible = false
                                end)
                                return {
                                    Paragraph = function(...)
                                        local _527_vararg1, _527_vararg2 = ...
                                        local v529 = Instance.new("Frame", v491)
                                        v529.Size = UDim2.new(1, 0, 0, 44)
                                        v529.BackgroundColor3 = Color3.fromRGB(15, 20, 30)
                                        v529.BackgroundTransparency = 0.5
                                        local v535 = Instance.new("UICorner", v529)
                                        v535.CornerRadius = UDim.new(0, 8)
                                        local v539 = Instance.new("UIStroke", v529)
                                        v539.Color = v34
                                        v539.Transparency = 0.9
                                        v539.Thickness = 1
                                        v529.BackgroundTransparency = 0.25
                                        local v541 = v529:FindFirstChildOfClass("UIStroke")
                                        v541.Transparency = 0.5
                                        v541.Thickness = 1
                                        local v544 = Instance.new("TextLabel", v529)
                                        v544.Size = UDim2.new(1, - 10, 1, 0)
                                        v544.Position = UDim2.new(0, 10, 0, 0)
                                        v544.BackgroundTransparency = 1
                                        v544.Text = _527_vararg2.Title
                                        v544.Font = v50
                                        v544.TextSize = 14
                                        v544.TextColor3 = v42
                                        v544.TextXAlignment = Enum.TextXAlignment.Left
                                        v544.Font = v48
                                        v544.TextSize = 14
                                        local v552 = Instance.new("TextLabel", v529)
                                        v552.Size = UDim2.new(1, - 20, 1, - 22)
                                        v552.Position = UDim2.new(0, 10, 0, 20)
                                        v552.BackgroundTransparency = 1
                                        v552.Text = _527_vararg2.Desc
                                        v552.TextColor3 = v42
                                        v552.TextSize = 13
                                        v552.TextWrapped = true
                                        v552.TextXAlignment = Enum.TextXAlignment.Left
                                        v552.TextYAlignment = Enum.TextYAlignment.Top
                                        v552.Font = v50
                                    end,
                                    Dropdown = function(...)
                                        local _562_vararg1, _562_vararg2 = ...
                                        local v564 = Instance.new("Frame", v491)
                                        v564.Size = UDim2.new(1, 0, 0, 44)
                                        v564.BackgroundColor3 = Color3.fromRGB(15, 20, 30)
                                        v564.BackgroundTransparency = 0.5
                                        local v570 = Instance.new("UICorner", v564)
                                        v570.CornerRadius = UDim.new(0, 8)
                                        local v574 = Instance.new("UIStroke", v564)
                                        v574.Color = v34
                                        v574.Transparency = 0.9
                                        v574.Thickness = 1
                                        v564.ClipsDescendants = true
                                        local v576 = Instance.new("TextLabel", v564)
                                        v576.Size = UDim2.new(1, - 10, 0, 20)
                                        v576.Position = UDim2.new(0, 10, 0, 4)
                                        v576.BackgroundTransparency = 1
                                        v576.Text = _562_vararg2.Title
                                        v576.Font = v50
                                        v576.TextSize = 14
                                        v576.TextColor3 = v42
                                        v576.TextXAlignment = Enum.TextXAlignment.Left
                                        local v586 = Instance.new("TextLabel", v564)
                                        v586.Size = UDim2.new(0, 110, 0, 20)
                                        v586.Position = UDim2.new(1, - 140, 0, 4)
                                        v586.Text = _562_vararg2.Default
                                        v586.Font = v48
                                        v586.TextColor3 = v42
                                        v586.TextXAlignment = Enum.TextXAlignment.Right
                                        v586.BackgroundTransparency = 1
                                        v586.TextSize = 13
                                        local v594 = Instance.new("TextLabel", v564)
                                        v594.Text = "\xE2\x96\xBC"
                                        v594.Size = UDim2.new(0, 20, 0, 20)
                                        v594.Position = UDim2.new(1, - 26, 0, 4)
                                        v594.BackgroundTransparency = 1
                                        v594.TextColor3 = v44
                                        v594.TextSize = 12
                                        local v600 = Instance.new("TextButton", v564)
                                        v600.Size = UDim2.new(1, 0, 1, 0)
                                        v600.BackgroundTransparency = 1
                                        v600.Text = ""
                                        local v604 = Instance.new("Frame", v564)
                                        v604.Size = UDim2.new(1, - 10, 0, 0)
                                        v604.Position = UDim2.new(0, 5, 0, 26)
                                        v604.BackgroundTransparency = 1
                                        v604.Visible = false
                                        local v610 = Instance.new("UIListLayout", v604)
                                        v610.Padding = UDim.new(0, 4)
                                        for v615, _615_2 in pairs(v604:GetChildren()) do
                                            _615_2:IsA("TextButton")
                                            _615_2:Destroy()
                                        end
                                        local v620 = _562_vararg2.Options
                                        for v621, _621_2 in ipairs(v620) do
                                            local v623 = Instance.new("TextButton", v604)
                                            v623.Size = UDim2.new(1, 0, 0, 26)
                                            v623.BackgroundColor3 = Color3.fromRGB(15, 20, 30)
                                            v623.Text = _621_2
                                            v623.Font = v52
                                            v623.TextColor3 = v42
                                            v623.TextSize = 13
                                            local v629 = Instance.new("UICorner", v623)
                                            v629.CornerRadius = UDim.new(0, 6)
                                            local v633 = Instance.new("UIStroke", v623)
                                            v633.Color = v34
                                            v633.Transparency = 0.7
                                            v633.Thickness = 1
                                            v623.MouseButton1Click:Connect(function(...)
                                                v586.Text = _621_2
                                                v586.TextColor3 = v42
                                                local _ = _562_vararg2.Callback
                                                _562_vararg2.Callback(_621_2)
                                                v604.Visible = false
                                                local v648 = v6:Create(v564, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {
                                                    Size = UDim2.new(1, 0, 0, 44),
                                                })
                                                v648:Play()
                                                local v654 = v6:Create(v594, TweenInfo.new(0.25), {
                                                    Rotation = 0,
                                                })
                                                v654:Play()
                                            end)
                                        end
                                        local _ = # v620
                                        v604.Size = UDim2.new(1, - 10, 0, 21045074130)
                                        v600.MouseButton1Click:Connect(function(...)
                                            v604.Visible = true
                                            local v676 = v6:Create(v564, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {
                                                Size = UDim2.new(1, 0, 0, ((44 + v604.Size.Y.Offset) + 4)),
                                            })
                                            v676:Play()
                                            local v682 = v6:Create(v594, TweenInfo.new(0.25), {
                                                Rotation = 180,
                                            })
                                            v682:Play()
                                        end)
                                        return {
                                            Value = _621_2,
                                            Class = "Dropdown",
                                            Refresh = function(...)
                                                local _685_vararg1, _685_vararg2 = ...
                                                _562_vararg2.Options = _685_vararg2
                                                for v688, _688_2 in pairs(v604:GetChildren()) do
                                                    _688_2:IsA("TextButton")
                                                    _688_2:Destroy()
                                                end
                                                local v693 = _562_vararg2.Options
                                                for v694, _694_2 in ipairs(v693) do
                                                    local v696 = Instance.new("TextButton", v604)
                                                    v696.Size = UDim2.new(1, 0, 0, 26)
                                                    v696.BackgroundColor3 = Color3.fromRGB(15, 20, 30)
                                                    v696.Text = _694_2
                                                    v696.Font = v52
                                                    v696.TextColor3 = v42
                                                    v696.TextSize = 13
                                                    local v702 = Instance.new("UICorner", v696)
                                                    v702.CornerRadius = UDim.new(0, 6)
                                                    local v706 = Instance.new("UIStroke", v696)
                                                    v706.Color = v34
                                                    v706.Transparency = 0.7
                                                    v706.Thickness = 1
                                                    v696.MouseButton1Click:Connect(function(...)
                                                        v586.Text = _694_2
                                                        v586.TextColor3 = v42
                                                        local _ = _562_vararg2.Callback
                                                        _562_vararg2.Callback(_694_2)
                                                        v604.Visible = false
                                                        local v721 = v6:Create(v564, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {
                                                            Size = UDim2.new(1, 0, 0, 44),
                                                        })
                                                        v721:Play()
                                                        local v727 = v6:Create(v594, TweenInfo.new(0.25), {
                                                            Rotation = 0,
                                                        })
                                                        v727:Play()
                                                    end)
                                                end
                                                local _ = # v693
                                                v604.Size = UDim2.new(1, - 10, 0, 17771637780)
                                            end,
                                            Set = function(...)
                                                local _733_vararg1, _733_vararg2 = ...
                                                v586.Text = _733_vararg2
                                                v586.TextColor3 = v42
                                            end,
                                        }
                                    end,
                                    Divider = function(...)
                                        local v736 = Instance.new("Frame", v491)
                                        v736.Size = UDim2.new(1, 0, 0, 1)
                                        v736.BackgroundColor3 = v34
                                        v736.BackgroundTransparency = 0.8
                                        v736.BorderSizePixel = 0
                                    end,
                                    Label = function(...)
                                        local _739_vararg1, _739_vararg2 = ...
                                        local v741 = Instance.new("Frame", v491)
                                        v741.Size = UDim2.new(1, 0, 0, 24)
                                        v741.BackgroundColor3 = Color3.fromRGB(15, 20, 30)
                                        v741.BackgroundTransparency = 0.5
                                        local v747 = Instance.new("UICorner", v741)
                                        v747.CornerRadius = UDim.new(0, 8)
                                        local v751 = Instance.new("UIStroke", v741)
                                        v751.Color = v34
                                        v751.Transparency = 0.9
                                        v751.Thickness = 1
                                        v741.BackgroundTransparency = 1
                                        v741:FindFirstChildOfClass("UIStroke"):Destroy()
                                        local v758 = Instance.new("TextLabel", v741)
                                        v758.Size = UDim2.new(1, - 10, 1, 0)
                                        v758.Position = UDim2.new(0, 10, 0, 0)
                                        v758.BackgroundTransparency = 1
                                        v758.Text = _739_vararg2.Title
                                        v758.Font = v50
                                        v758.TextSize = 14
                                        v758.TextColor3 = v42
                                        v758.TextXAlignment = Enum.TextXAlignment.Left
                                        v758.Font = v52
                                    end,
                                    Button = function(...)
                                        local _765_vararg1, _765_vararg2 = ...
                                        local v767 = Instance.new("Frame", v491)
                                        v767.Size = UDim2.new(1, 0, 0, 36)
                                        v767.BackgroundColor3 = Color3.fromRGB(15, 20, 30)
                                        v767.BackgroundTransparency = 0.5
                                        local v773 = Instance.new("UICorner", v767)
                                        v773.CornerRadius = UDim.new(0, 8)
                                        local v777 = Instance.new("UIStroke", v767)
                                        v777.Color = v34
                                        v777.Transparency = 0.9
                                        v777.Thickness = 1
                                        v767.BackgroundColor3 = v40
                                        v767.BackgroundTransparency = 0.9
                                        local v779 = Instance.new("TextButton", v767)
                                        v779.Size = UDim2.fromScale(1, 1)
                                        v779.BackgroundTransparency = 1
                                        v779.Text = _765_vararg2.Title
                                        v779.Font = v48
                                        v779.TextColor3 = v40
                                        v779.TextSize = 14
                                        v779.MouseButton1Click:Connect(function(...)
                                            local _ = _765_vararg2.Callback
                                            _765_vararg2.Callback()
                                            local v793 = v6:Create(v779, TweenInfo.new(0.1), {
                                                TextSize = 12,
                                            })
                                            v793:Play()
                                            task.wait(0.1)
                                            local v799 = v6:Create(v779, TweenInfo.new(0.1), {
                                                TextSize = 14,
                                            })
                                            v799:Play()
                                        end)
                                        return {
                                            SetTitle = function(...)
                                                local _802_vararg1, _802_vararg2 = ...
                                                v779.Text = _802_vararg2
                                            end,
                                            Class = "Button",
                                        }
                                    end,
                                    Input = function(...)
                                        local _803_vararg1, _803_vararg2 = ...
                                        local v805 = Instance.new("Frame", v491)
                                        v805.Size = UDim2.new(1, 0, 0, 38)
                                        v805.BackgroundColor3 = Color3.fromRGB(15, 20, 30)
                                        v805.BackgroundTransparency = 0.5
                                        local v811 = Instance.new("UICorner", v805)
                                        v811.CornerRadius = UDim.new(0, 8)
                                        local v815 = Instance.new("UIStroke", v805)
                                        v815.Color = v34
                                        v815.Transparency = 0.9
                                        v815.Thickness = 1
                                        local v818 = Instance.new("TextLabel", v805)
                                        v818.Size = UDim2.new(1, - 10, 1, 0)
                                        v818.Position = UDim2.new(0, 10, 0, 0)
                                        v818.BackgroundTransparency = 1
                                        v818.Text = _803_vararg2.Title
                                        v818.Font = v50
                                        v818.TextSize = 14
                                        v818.TextColor3 = v42
                                        v818.TextXAlignment = Enum.TextXAlignment.Left
                                        local v826 = Instance.new("Frame", v805)
                                        v826.Size = UDim2.new(0, 60, 0, 26)
                                        v826.Position = UDim2.new(1, - 70, 0.5, - 13)
                                        v826.BackgroundColor3 = v24
                                        local v832 = Instance.new("UICorner", v826)
                                        v832.CornerRadius = UDim.new(0, 6)
                                        local v836 = Instance.new("UIStroke", v826)
                                        v836.Color = v34
                                        v836.Transparency = 0.8
                                        local v838 = Instance.new("TextBox", v826)
                                        v838.Size = UDim2.new(1, - 10, 1, 0)
                                        v838.Position = UDim2.new(0, 5, 0, 0)
                                        v838.BackgroundTransparency = 1
                                        v838.Text = _803_vararg2.Default
                                        v838.PlaceholderText = _803_vararg2.Placeholder
                                        v838.TextColor3 = v42
                                        v838.Font = v48
                                        v838.TextSize = 14
                                        v838.TextStrokeTransparency = 0.8
                                        v838.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
                                        local _ = v838.Text
                                        v838.FocusLost:Connect(function(...)
                                            local _ = _803_vararg2.Callback
                                            _803_vararg2.Callback(v838.Text)
                                        end)
                                        return {
                                            Value = v838.Text,
                                            Class = "Input",
                                            Set = function(...)
                                                local _857_vararg1, _857_vararg2 = ...
                                                v838.Text = _857_vararg2
                                            end,
                                        }
                                    end,
                                    Toggle = function(...)
                                        local _858_vararg1, _858_vararg2 = ...
                                        local v860 = Instance.new("Frame", v491)
                                        v860.Size = UDim2.new(1, 0, 0, 38)
                                        v860.BackgroundColor3 = Color3.fromRGB(15, 20, 30)
                                        v860.BackgroundTransparency = 0.5
                                        local v866 = Instance.new("UICorner", v860)
                                        v866.CornerRadius = UDim.new(0, 8)
                                        local v870 = Instance.new("UIStroke", v860)
                                        v870.Color = v34
                                        v870.Transparency = 0.9
                                        v870.Thickness = 1
                                        local v873 = Instance.new("TextLabel", v860)
                                        v873.Size = UDim2.new(1, - 10, 1, 0)
                                        v873.Position = UDim2.new(0, 10, 0, 0)
                                        v873.BackgroundTransparency = 1
                                        v873.Text = _858_vararg2.Title
                                        v873.Font = v50
                                        v873.TextSize = 14
                                        v873.TextColor3 = v42
                                        v873.TextXAlignment = Enum.TextXAlignment.Left
                                        local v881 = Instance.new("TextButton", v860)
                                        v881.Size = UDim2.fromScale(1, 1)
                                        v881.BackgroundTransparency = 1
                                        v881.Text = ""
                                        local v885 = Instance.new("Frame", v860)
                                        v885.Size = UDim2.fromOffset(40, 20)
                                        v885.Position = UDim2.new(1, - 50, 0.5, - 10)
                                        v885.BackgroundColor3 = v36
                                        v885.BackgroundTransparency = 0.1
                                        local v891 = Instance.new("UICorner", v885)
                                        v891.CornerRadius = UDim.new(1, 0)
                                        local v895 = Instance.new("Frame", v885)
                                        v895.Size = UDim2.fromOffset(16, 16)
                                        v895.Position = UDim2.new(0, 2, 0.5, - 8)
                                        v895.BackgroundColor3 = v42
                                        local v901 = Instance.new("UICorner", v895)
                                        v901.CornerRadius = UDim.new(1, 0)
                                        local _ = _858_vararg2.Default
                                        local v908 = v6:Create(v885, TweenInfo.new(0.2), {
                                            BackgroundTransparency = 0,
                                            BackgroundColor3 = v40,
                                        })
                                        v908:Play()
                                        local v916 = v6:Create(v895, TweenInfo.new(0.2), {
                                            Position = UDim2.new(1, - 18, 0.5, - 8),
                                        })
                                        v916:Play()
                                        v881.MouseButton1Click:Connect(function(...)
                                            local v926 = v6:Create(v885, TweenInfo.new(0.2), {
                                                BackgroundTransparency = 0.1,
                                                BackgroundColor3 = v36,
                                            })
                                            v926:Play()
                                            local v934 = v6:Create(v895, TweenInfo.new(0.2), {
                                                Position = UDim2.new(0, 2, 0.5, - 8),
                                            })
                                            v934:Play()
                                            local _ = _858_vararg2.Callback
                                            _858_vararg2.Callback(false)
                                        end)
                                        return {
                                            State = false,
                                            Set = function(...)
                                                local v944 = v6:Create(v885, TweenInfo.new(0.2), {
                                                    BackgroundTransparency = 0,
                                                    BackgroundColor3 = v40,
                                                })
                                                v944:Play()
                                                local v952 = v6:Create(v895, TweenInfo.new(0.2), {
                                                    Position = UDim2.new(1, - 18, 0.5, - 8),
                                                })
                                                v952:Play()
                                                local _ = _858_vararg2.Callback
                                                _858_vararg2.Callback(true)
                                            end,
                                            Value = true,
                                            Class = "Toggle",
                                            UpdateState = function(...)
                                                local v962 = v6:Create(v885, TweenInfo.new(0.2), {
                                                    BackgroundTransparency = 0,
                                                    BackgroundColor3 = v40,
                                                })
                                                v962:Play()
                                                local v970 = v6:Create(v895, TweenInfo.new(0.2), {
                                                    Position = UDim2.new(1, - 18, 0.5, - 8),
                                                })
                                                v970:Play()
                                                local _ = _858_vararg2.Callback
                                                _858_vararg2.Callback(true)
                                            end,
                                        }
                                    end,
                                    Slider = function(...)
                                        local _976_vararg1, _976_vararg2 = ...
                                        local v978 = Instance.new("Frame", v491)
                                        v978.Size = UDim2.new(1, 0, 0, 50)
                                        v978.BackgroundColor3 = Color3.fromRGB(15, 20, 30)
                                        v978.BackgroundTransparency = 0.5
                                        local v984 = Instance.new("UICorner", v978)
                                        v984.CornerRadius = UDim.new(0, 8)
                                        local v988 = Instance.new("UIStroke", v978)
                                        v988.Color = v34
                                        v988.Transparency = 0.9
                                        v988.Thickness = 1
                                        local v991 = Instance.new("TextLabel", v978)
                                        v991.Size = UDim2.new(1, - 10, 1, 0)
                                        v991.Position = UDim2.new(0, 10, 0, 0)
                                        v991.BackgroundTransparency = 1
                                        v991.Text = _976_vararg2.Title
                                        v991.Font = v50
                                        v991.TextSize = 14
                                        v991.TextColor3 = v42
                                        v991.TextXAlignment = Enum.TextXAlignment.Left
                                        v991.Size = UDim2.new(1, - 10, 0, 25)
                                        local v1001 = Instance.new("TextLabel", v978)
                                        v1001.Size = UDim2.new(0, 50, 0, 25)
                                        v1001.Position = UDim2.new(1, - 60, 0, 0)
                                        v1001.BackgroundTransparency = 1
                                        v1001.Text = _976_vararg2.Default
                                        v1001.TextColor3 = v40
                                        v1001.Font = v48
                                        v1001.TextSize = 13
                                        v1001.TextXAlignment = Enum.TextXAlignment.Right
                                        local v1010 = Instance.new("Frame", v978)
                                        v1010.Size = UDim2.new(0.85, - 20, 0, 4)
                                        v1010.Position = UDim2.new(0, 10, 0, 32)
                                        v1010.BackgroundColor3 = v36
                                        local v1016 = Instance.new("UICorner", v1010)
                                        v1016.CornerRadius = UDim.new(1, 0)
                                        local v1020 = Instance.new("Frame", v1010)
                                        v1020.Size = UDim2.new(0, 0, 1, 0)
                                        v1020.BackgroundColor3 = v40
                                        local v1024 = Instance.new("UICorner", v1020)
                                        v1024.CornerRadius = UDim.new(1, 0)
                                        local v1027 = _976_vararg2.Minimum
                                        local v1028 = _976_vararg2.Maximum
                                        local v1029 = _976_vararg2.Default
                                        v1020.Size = UDim2.new(((v1029 - v1027) / (v1028 - v1027)), 0, 1, 0)
                                        v1001.Text = v1029
                                        local v1036 = Instance.new("TextButton", v1010)
                                        v1036.Size = UDim2.fromScale(1, 1)
                                        v1036.BackgroundTransparency = 1
                                        v1036.Text = ""
                                        v1036.InputBegan:Connect(function(...)
                                            local _1042_vararg1 = ...
                                            local _ = _1042_vararg1.UserInputType == Enum.UserInputType.MouseButton1
                                        end)
                                        v15.InputEnded:Connect(function(...)
                                            local _1050_vararg1 = ...
                                            local _ = _1050_vararg1.UserInputType == Enum.UserInputType.MouseButton1
                                        end)
                                        v15.InputChanged:Connect(function(...)
                                        end)
                                        return {
                                            Value = v1029,
                                            Class = "Slider",
                                            Set = function(...)
                                                local _1059_vararg1, _1059_vararg2 = ...
                                                local v1060, _1060_2, _1060_3 = math.clamp(_1059_vararg2, v1027, v1028)
                                                local v1069 = v6:Create(v1020, TweenInfo.new(0.2), {
                                                    Size = UDim2.new(((v1060 - v1027) / (v1028 - v1027)), 0, 1, 0),
                                                })
                                                v1069:Play()
                                                v1001.Text = v1060
                                                local _ = _976_vararg2.Callback
                                                _976_vararg2.Callback(v1060)
                                            end,
                                        }
                                    end,
                                }
                            end,
                        }
                    end,
                }
            end,
            Settings = _59_vararg2,
            Notify = function(...)
                local _1075_vararg1, _1075_vararg2 = ...
                local v1077 = Instance.new("Frame")
                v1077.Size = UDim2.new(1, 0, 0, 70)
                v1077.BackgroundTransparency = 1
                v1077.Parent = v69
                local v1081 = Instance.new("Frame", v1077)
                v1081.Size = UDim2.new(1, 0, 1, 0)
                v1081.Position = UDim2.new(1, 40, 0, 0)
                v1081.BackgroundTransparency = 1
                v1081.BackgroundColor3 = v24
                v1081.BorderSizePixel = 0
                local v1087 = Instance.new("UICorner", v1081)
                v1087.CornerRadius = UDim.new(0, 12)
                local v1091 = Instance.new("UIGradient", v1081)
                v1091.Rotation = 35
                local v1099 = ColorSequence.new({
                    [1] = ColorSequenceKeypoint.new(0, v26),
                    [2] = ColorSequenceKeypoint.new(0.55, v28),
                    [3] = ColorSequenceKeypoint.new(1, v30),
                })
                v1091.Color = v1099
                local v1101 = Instance.new("UIStroke", v1081)
                v1101.Thickness = 3
                v1101.Transparency = 0.8
                v1101.Color = v32
                v1101.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                local v1105 = Instance.new("UIStroke", v1081)
                v1105.Thickness = 1
                v1105.Transparency = 0.5
                v1105.Color = v34
                v1105.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                local v1109 = Instance.new("TextLabel", v1081)
                v1109.Position = UDim2.new(0, 12, 0, 8)
                v1109.Size = UDim2.new(1, - 24, 0, 20)
                v1109.BackgroundTransparency = 1
                v1109.Font = v48
                v1109.Text = _1075_vararg2.Title
                v1109.TextColor3 = v40
                v1109.TextSize = 14
                v1109.TextXAlignment = Enum.TextXAlignment.Left
                local v1118 = Instance.new("TextLabel", v1081)
                v1118.Position = UDim2.new(0, 12, 0, 30)
                v1118.Size = UDim2.new(1, - 24, 0, 32)
                v1118.BackgroundTransparency = 1
                v1118.Font = v52
                v1118.Text = _1075_vararg2.Desc
                v1118.TextColor3 = v42
                v1118.TextSize = 13
                v1118.TextWrapped = true
                v1118.TextXAlignment = Enum.TextXAlignment.Left
                v1118.TextYAlignment = Enum.TextYAlignment.Top
                local v1137 = v6:Create(v1081, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                    BackgroundTransparency = 0,
                    Position = UDim2.new(0, 0, 0, 0),
                })
                v1137:Play()
                task.delay(_1075_vararg2.Duration, function(...)
                    local v1153 = v6:Create(v1081, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
                        BackgroundTransparency = 1,
                        Position = UDim2.new(1, 40, 0, 0),
                    })
                    v1153:Play()
                    task.wait(0.36)
                    v1077:Destroy()
                end)
            end,
            Toggle = function(...)
                local v1168 = v6:Create(v102, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
                    Size = UDim2.new(0, 0, 0, 0),
                })
                v1168:Play()
                task.delay(0.26, function(...)
                    v102.Visible = false
                end)
            end,
            onUnloaded = function(...)
            end,
            Show = function(...)
                v102.Visible = true
                local v1183 = v6:Create(v102, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
                    Size = v100,
                })
                v1183:Play()
            end,
            Settings = _59_vararg2,
            Unload = function(...)
                _1174_vararg1()
                v61:Destroy()
            end,
            Toggle = function(...)
                local v1200 = v6:Create(v102, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
                    Size = UDim2.new(0, 0, 0, 0),
                })
                v1200:Play()
                task.delay(0.26, function(...)
                    v102.Visible = false
                end)
            end,
            onUnloadCallback = _1174_vararg1,
            Hide = function(...)
            end,
        }
    end,
    GetService = function(...)
        local _1207_vararg1 = ...
        return cloneref(game:GetService(_1207_vararg1))
    end,
    Folder = "ChilliLib",
    SetFolder = function(...)
        local _1211_vararg1, _1211_vararg2 = ...
        makefolder(_1211_vararg2)
        local _ = _1211_vararg2 .. "/settings"
        makefolder(_1211_vararg2 .. "/settings")
    end,
    RefreshConfigList = function(...)
        for v1219, _1219_2 in pairs(listfiles(_1211_vararg2 .. "/settings")) do
            _1219_2:sub(- 5)
        end
        return {}
    end,
    Demo = function(...)
        local v1224 = UDim2.fromOffset(650, 400)
        local v1226 = Instance.new("ScreenGui")
        v1226.Name = "ChilliLibUI"
        v1226.ScreenInsets = Enum.ScreenInsets.None
        v1226.ResetOnSpawn = false
        v1226.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        v1226.DisplayOrder = 10000
        local _ = v9.IsStudio
        v1226.Parent = gethui()
        local v1234 = Instance.new("Frame")
        v1234.Name = "Notifications"
        v1234.BackgroundTransparency = 1
        v1234.Size = UDim2.new(0, 300, 1, - 20)
        v1234.Position = UDim2.new(1, - 320, 0, 10)
        v1234.AnchorPoint = Vector2.new(0, 0)
        v1234.Parent = v1226
        v1234.ZIndex = 100
        local v1242 = Instance.new("UIListLayout")
        v1242.Padding = UDim.new(0, 10)
        v1242.HorizontalAlignment = Enum.HorizontalAlignment.Center
        v1242.SortOrder = Enum.SortOrder.LayoutOrder
        v1242.VerticalAlignment = Enum.VerticalAlignment.Bottom
        v1242.Parent = v1234
        local _ = v1224.X.Scale
        local _ = v1224.Y.Scale
        local v1264 = UDim2.new(v1224.X.Scale, v1224.X.Offset, v1224.Y.Scale, v1224.Y.Offset)
        local v1266 = Instance.new("Frame")
        v1266.Name = "MainBase"
        v1266.AnchorPoint = Vector2.new(0.5, 0.5)
        v1266.Position = UDim2.fromScale(0.5, 0.5)
        v1266.Size = v1264
        v1266.Parent = v1226
        v1266.ClipsDescendants = false
        v1266.BackgroundColor3 = v24
        v1266.BorderSizePixel = 0
        local v1272 = Instance.new("UICorner", v1266)
        v1272.CornerRadius = UDim.new(0, 20)
        local v1276 = Instance.new("UIGradient", v1266)
        v1276.Rotation = 35
        local v1284 = ColorSequence.new({
            [1] = ColorSequenceKeypoint.new(0, v26),
            [2] = ColorSequenceKeypoint.new(0.55, v28),
            [3] = ColorSequenceKeypoint.new(1, v30),
        })
        v1276.Color = v1284
        local v1286 = Instance.new("UIStroke", v1266)
        v1286.Thickness = 3
        v1286.Transparency = 0.8
        v1286.Color = v32
        v1286.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        local v1290 = Instance.new("UIStroke", v1266)
        v1290.Thickness = 1
        v1290.Transparency = 0.5
        v1290.Color = v34
        v1290.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        v1266.InputBegan:Connect(function(...)
            local _1296_vararg1 = ...
            local _ = _1296_vararg1.UserInputType == Enum.UserInputType.MouseButton1
            local _ = _1296_vararg1.UserInputType == Enum.UserInputType.Touch
        end)
        v1266.InputChanged:Connect(function(...)
            local _1308_vararg1 = ...
            local _ = _1308_vararg1.UserInputType == Enum.UserInputType.MouseMovement
            local _ = _1308_vararg1.UserInputType == Enum.UserInputType.Touch
        end)
        v15.InputChanged:Connect(function(...)
        end)
        v1266.Size = UDim2.new(0, 0, 0, 0)
        v1266.Visible = true
        local v1330 = v6:Create(v1266, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
            Size = v1264,
        })
        v1330:Play()
        local v1334 = Instance.new("Frame")
        v1334.Name = "TopBar"
        v1334.Parent = v1266
        v1334.BackgroundColor3 = v38
        v1334.BackgroundTransparency = 0.3
        v1334.BorderSizePixel = 0
        v1334.Size = UDim2.new(1, - 14, 0, 32)
        v1334.Position = UDim2.new(0, 7, 0, 7)
        local v1340 = Instance.new("UICorner", v1334)
        v1340.CornerRadius = UDim.new(0, 12)
        local v1344 = Instance.new("TextLabel")
        v1344.Parent = v1334
        v1344.BackgroundTransparency = 1
        v1344.Position = UDim2.new(0, 16, 0, 0)
        v1344.Size = UDim2.new(1, - 80, 1, 0)
        v1344.Font = v48
        v1344.Text = "Chilli Interface"
        v1344.TextXAlignment = Enum.TextXAlignment.Left
        v1344.TextSize = 18
        v1344.TextColor3 = v42
        local v1352 = Instance.new("UIGradient", v1344)
        local v1366 = ColorSequence.new({
            [1] = ColorSequenceKeypoint.new(0, Color3.fromRGB(34, 211, 238)),
            [2] = ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)),
            [3] = ColorSequenceKeypoint.new(1, Color3.fromRGB(99, 102, 241)),
        })
        v1352.Color = v1366
        local v1368 = Instance.new("TextButton", v1334)
        v1368.Size = UDim2.fromOffset(24, 24)
        v1368.Position = UDim2.new(1, - 30, 0.5, - 12)
        v1368.BackgroundColor3 = v36
        v1368.Text = "X"
        v1368.Font = v48
        v1368.TextSize = 14
        v1368.TextColor3 = v46
        v1368.AutoButtonColor = true
        local v1374 = Instance.new("UICorner", v1368)
        v1374.CornerRadius = UDim.new(0, 8)
        local v1378 = Instance.new("UIStroke", v1368)
        v1378.Color = v34
        v1378.Transparency = 0.7
        v1378.Thickness = 1
        v1368.MouseButton1Click:Connect(function(...)
            local v1392 = v6:Create(v1266, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
                Size = UDim2.new(0, 0, 0, 0),
            })
            v1392:Play()
            task.delay(0.26, function(...)
                v1266.Visible = false
            end)
        end)
        v15.InputBegan:Connect(function(...)
        end)
        local v1403 = Instance.new("Frame", v1266)
        v1403.BackgroundTransparency = 1
        v1403.Position = UDim2.new(0, 10, 0, 45)
        v1403.Size = UDim2.new(1, - 20, 1, - 50)
        local v1409 = Instance.new("ScrollingFrame", v1403)
        v1409.Size = UDim2.new(0, 105, 1, 0)
        v1409.BackgroundTransparency = 1
        v1409.ScrollBarThickness = 2
        v1409.BorderSizePixel = 0
        v1409.CanvasSize = UDim2.new(0, 0, 0, 0)
        v1409.AutomaticCanvasSize = Enum.AutomaticSize.Y
        local v1417 = Instance.new("UIListLayout", v1409)
        v1417.Padding = UDim.new(0, 6)
        v1417.SortOrder = Enum.SortOrder.LayoutOrder
        local v1423 = Instance.new("Frame", v1403)
        v1423.Size = UDim2.new(0, 1, 1, 0)
        v1423.Position = UDim2.new(0, 115, 0, 0)
        v1423.BackgroundColor3 = v34
        v1423.BackgroundTransparency = 0.8
        v1423.BorderSizePixel = 0
        local v1429 = Instance.new("Frame", v1403)
        v1429.Size = UDim2.new(1, - 125, 1, 0)
        v1429.Position = UDim2.new(0, 125, 0, 0)
        v1429.BackgroundTransparency = 1
        v1429.ClipsDescendants = true
        local v1435 = Instance.new("TextButton", v1409)
        v1435.Size = UDim2.new(1, - 4, 0, 32)
        v1435.BackgroundColor3 = v36
        v1435.BackgroundTransparency = 1
        v1435.Text = ""
        v1435.AutoButtonColor = false
        local v1439 = Instance.new("UICorner", v1435)
        v1439.CornerRadius = UDim.new(0, 10)
        local v1443 = Instance.new("UIStroke", v1435)
        v1443.Transparency = 1
        v1443.Color = v40
        v1443.Thickness = 1
        local v1445 = Instance.new("Frame", v1435)
        v1445.Size = UDim2.new(0, 3, 1, - 6)
        v1445.Position = UDim2.new(0, 1, 0, 3)
        v1445.BackgroundColor3 = v40
        v1445.BorderSizePixel = 0
        v1445.BackgroundTransparency = 1
        local v1451 = Instance.new("UIGradient", v1435)
        v1451.Rotation = 35
        local v1459 = ColorSequence.new({
            [1] = ColorSequenceKeypoint.new(0, v26),
            [2] = ColorSequenceKeypoint.new(0.55, v28),
            [3] = ColorSequenceKeypoint.new(1, v30),
        })
        v1451.Color = v1459
        v1451.Enabled = false
        local v1461 = Instance.new("ImageLabel", v1435)
        v1461.Size = UDim2.fromOffset(18, 18)
        v1461.Position = UDim2.new(0, 8, 0.5, - 9)
        v1461.BackgroundTransparency = 1
        v1461.ImageColor3 = v44
        v1461.Image = "rbxassetid://10709791437"
        v1461.ImageRectOffset = Vector2.zero
        v1461.ImageRectSize = Vector2.new(0, 0)
        local v1477 = Instance.new("TextLabel", v1435)
        v1477.BackgroundTransparency = 1
        v1477.Position = UDim2.new(0, 30, 0, 0)
        v1477.Size = UDim2.new(1, - 32, 1, 0)
        v1477.Font = v48
        v1477.Text = "Main"
        v1477.TextSize = 15
        v1477.TextColor3 = v44
        v1477.TextXAlignment = Enum.TextXAlignment.Left
        local v1485 = Instance.new("ScrollingFrame", v1429)
        v1485.Size = UDim2.fromScale(1, 1)
        v1485.BackgroundTransparency = 1
        v1485.Visible = false
        v1485.ScrollBarThickness = 2
        v1485.ScrollBarImageColor3 = v40
        v1485.BorderSizePixel = 0
        v1485.CanvasSize = UDim2.new(0, 0, 0, 0)
        v1485.AutomaticCanvasSize = Enum.AutomaticSize.Y
        local v1493 = Instance.new("UIListLayout", v1485)
        v1493.Padding = UDim.new(0, 12)
        v1493.SortOrder = Enum.SortOrder.LayoutOrder
        local v1499 = Instance.new("UIPadding", v1485)
        v1499.PaddingLeft = UDim.new(0, 4)
        v1499.PaddingRight = UDim.new(0, 4)
        v1499.PaddingTop = UDim.new(0, 4)
        v1499.PaddingBottom = UDim.new(0, 10)
        v1435.MouseButton1Click:Connect(function(...)
            v1485.Visible = true
            v1485.Position = UDim2.new(0, 10, 0, 0)
            local v1521 = v6:Create(v1485, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
                Position = UDim2.new(0, 0, 0, 0),
            })
            v1521:Play()
            local v1527 = v6:Create(v1435, TweenInfo.new(0.2), {
                BackgroundTransparency = 0,
            })
            v1527:Play()
            local v1533 = v6:Create(v1443, TweenInfo.new(0.2), {
                Transparency = 0.4,
            })
            v1533:Play()
            local v1539 = v6:Create(v1477, TweenInfo.new(0.2), {
                TextColor3 = v42,
            })
            v1539:Play()
            local v1545 = v6:Create(v1461, TweenInfo.new(0.2), {
                ImageColor3 = v40,
            })
            v1545:Play()
            v1451.Enabled = true
            local v1551 = v6:Create(v1445, TweenInfo.new(0.2), {
                BackgroundTransparency = 0,
            })
            v1551:Play()
        end)
        local v1555 = Instance.new("Frame", v1485)
        v1555.Size = UDim2.new(1, - 2, 0, 0)
        v1555.AutomaticSize = Enum.AutomaticSize.Y
        v1555.BackgroundTransparency = 0
        v1555.ClipsDescendants = true
        v1555.BackgroundColor3 = v24
        v1555.BorderSizePixel = 0
        local v1561 = Instance.new("UICorner", v1555)
        v1561.CornerRadius = UDim.new(0, 12)
        local v1565 = Instance.new("UIGradient", v1555)
        v1565.Rotation = 35
        local v1573 = ColorSequence.new({
            [1] = ColorSequenceKeypoint.new(0, v26),
            [2] = ColorSequenceKeypoint.new(0.55, v28),
            [3] = ColorSequenceKeypoint.new(1, v30),
        })
        v1565.Color = v1573
        local v1575 = Instance.new("UIStroke", v1555)
        v1575.Thickness = 3
        v1575.Transparency = 0.8
        v1575.Color = v32
        v1575.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        local v1579 = Instance.new("UIStroke", v1555)
        v1579.Thickness = 1
        v1579.Transparency = 0.5
        v1579.Color = v34
        v1579.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        local v1583 = Instance.new("UIPadding", v1555)
        v1583.PaddingTop = UDim.new(0, 4)
        v1583.PaddingBottom = UDim.new(0, 4)
        v1583.PaddingLeft = UDim.new(0, 2)
        v1583.PaddingRight = UDim.new(0, 2)
        local v1593 = Instance.new("TextButton", v1555)
        v1593.Size = UDim2.new(1, - 16, 0, 24)
        v1593.Position = UDim2.new(0, 8, 0, 4)
        v1593.BackgroundTransparency = 1
        v1593.Text = ""
        local v1599 = Instance.new("TextLabel", v1593)
        v1599.Text = "Features"
        v1599.Font = v48
        v1599.TextSize = 16
        v1599.TextColor3 = Color3.fromRGB(255, 255, 255)
        v1599.Size = UDim2.new(1, - 20, 1, 0)
        v1599.BackgroundTransparency = 1
        v1599.TextXAlignment = Enum.TextXAlignment.Left
        local v1607 = Instance.new("UIGradient", v1599)
        local v1621 = ColorSequence.new({
            [1] = ColorSequenceKeypoint.new(0, Color3.fromRGB(34, 211, 238)),
            [2] = ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)),
            [3] = ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255)),
        })
        v1607.Color = v1621
        local v1623 = Instance.new("TextLabel", v1593)
        v1623.Text = "\xE2\x96\xBC"
        v1623.TextColor3 = v40
        v1623.BackgroundTransparency = 1
        v1623.Size = UDim2.new(0, 20, 1, 0)
        v1623.Position = UDim2.new(1, - 20, 0, 0)
        v1623.TextSize = 12
        local v1629 = Instance.new("Frame", v1555)
        v1629.Name = "ContentHolder"
        v1629.BackgroundTransparency = 1
        v1629.Position = UDim2.new(0, 8, 0, 32)
        v1629.Size = UDim2.new(1, - 16, 0, 0)
        v1629.AutomaticSize = Enum.AutomaticSize.Y
        local v1637 = Instance.new("UIListLayout", v1629)
        v1637.Padding = UDim.new(0, 8)
        v1637.SortOrder = Enum.SortOrder.LayoutOrder
        v1637.HorizontalAlignment = Enum.HorizontalAlignment.Center
        local v1645 = Instance.new("UIPadding", v1629)
        v1645.PaddingBottom = UDim.new(0, 6)
        v1593.MouseButton1Click:Connect(function(...)
            local v1655 = v6:Create(v1623, TweenInfo.new(0.2), {
                Rotation = - 90,
            })
            v1655:Play()
            local v1661 = v6:Create(v1629, TweenInfo.new(0.2), {
                BackgroundTransparency = 1,
            })
            v1661:Play()
            v1629.Visible = false
        end)
        local v1665 = Instance.new("Frame", v1629)
        v1665.Size = UDim2.new(1, 0, 0, 38)
        v1665.BackgroundColor3 = Color3.fromRGB(15, 20, 30)
        v1665.BackgroundTransparency = 0.5
        local v1671 = Instance.new("UICorner", v1665)
        v1671.CornerRadius = UDim.new(0, 8)
        local v1675 = Instance.new("UIStroke", v1665)
        v1675.Color = v34
        v1675.Transparency = 0.9
        v1675.Thickness = 1
        local v1677 = Instance.new("TextLabel", v1665)
        v1677.Size = UDim2.new(1, - 10, 1, 0)
        v1677.Position = UDim2.new(0, 10, 0, 0)
        v1677.BackgroundTransparency = 1
        v1677.Text = "Auto Farm"
        v1677.Font = v50
        v1677.TextSize = 14
        v1677.TextColor3 = v42
        v1677.TextXAlignment = Enum.TextXAlignment.Left
        local v1685 = Instance.new("TextButton", v1665)
        v1685.Size = UDim2.fromScale(1, 1)
        v1685.BackgroundTransparency = 1
        v1685.Text = ""
        local v1689 = Instance.new("Frame", v1665)
        v1689.Size = UDim2.fromOffset(40, 20)
        v1689.Position = UDim2.new(1, - 50, 0.5, - 10)
        v1689.BackgroundColor3 = v36
        v1689.BackgroundTransparency = 0.1
        local v1695 = Instance.new("UICorner", v1689)
        v1695.CornerRadius = UDim.new(1, 0)
        local v1699 = Instance.new("Frame", v1689)
        v1699.Size = UDim2.fromOffset(16, 16)
        v1699.Position = UDim2.new(0, 2, 0.5, - 8)
        v1699.BackgroundColor3 = v42
        local v1705 = Instance.new("UICorner", v1699)
        v1705.CornerRadius = UDim.new(1, 0)
        local v1711 = v6:Create(v1689, TweenInfo.new(0.2), {
            BackgroundTransparency = 0.1,
            BackgroundColor3 = v36,
        })
        v1711:Play()
        local v1719 = v6:Create(v1699, TweenInfo.new(0.2), {
            Position = UDim2.new(0, 2, 0.5, - 8),
        })
        v1719:Play()
        v1685.MouseButton1Click:Connect(function(...)
            local v1729 = v6:Create(v1689, TweenInfo.new(0.2), {
                BackgroundTransparency = 0,
                BackgroundColor3 = v40,
            })
            v1729:Play()
            local v1737 = v6:Create(v1699, TweenInfo.new(0.2), {
                Position = UDim2.new(1, - 18, 0.5, - 8),
            })
            v1737:Play()
            print("Farm:", true)
        end)
        local v1742 = Instance.new("Frame", v1629)
        v1742.Size = UDim2.new(1, 0, 0, 50)
        v1742.BackgroundColor3 = Color3.fromRGB(15, 20, 30)
        v1742.BackgroundTransparency = 0.5
        local v1748 = Instance.new("UICorner", v1742)
        v1748.CornerRadius = UDim.new(0, 8)
        local v1752 = Instance.new("UIStroke", v1742)
        v1752.Color = v34
        v1752.Transparency = 0.9
        v1752.Thickness = 1
        local v1754 = Instance.new("TextLabel", v1742)
        v1754.Size = UDim2.new(1, - 10, 1, 0)
        v1754.Position = UDim2.new(0, 10, 0, 0)
        v1754.BackgroundTransparency = 1
        v1754.Text = "WalkSpeed"
        v1754.Font = v50
        v1754.TextSize = 14
        v1754.TextColor3 = v42
        v1754.TextXAlignment = Enum.TextXAlignment.Left
        v1754.Size = UDim2.new(1, - 10, 0, 25)
        local v1764 = Instance.new("TextLabel", v1742)
        v1764.Size = UDim2.new(0, 50, 0, 25)
        v1764.Position = UDim2.new(1, - 60, 0, 0)
        v1764.BackgroundTransparency = 1
        v1764.Text = "16"
        v1764.TextColor3 = v40
        v1764.Font = v48
        v1764.TextSize = 13
        v1764.TextXAlignment = Enum.TextXAlignment.Right
        local v1772 = Instance.new("Frame", v1742)
        v1772.Size = UDim2.new(0.85, - 20, 0, 4)
        v1772.Position = UDim2.new(0, 10, 0, 32)
        v1772.BackgroundColor3 = v36
        local v1778 = Instance.new("UICorner", v1772)
        v1778.CornerRadius = UDim.new(1, 0)
        local v1782 = Instance.new("Frame", v1772)
        v1782.Size = UDim2.new(0, 0, 1, 0)
        v1782.BackgroundColor3 = v40
        local v1786 = Instance.new("UICorner", v1782)
        v1786.CornerRadius = UDim.new(1, 0)
        v1782.Size = UDim2.new(0, 0, 1, 0)
        v1764.Text = "16"
        local v1792 = Instance.new("TextButton", v1772)
        v1792.Size = UDim2.fromScale(1, 1)
        v1792.BackgroundTransparency = 1
        v1792.Text = ""
        v1792.InputBegan:Connect(function(...)
            local _1798_vararg1 = ...
            local _ = _1798_vararg1.UserInputType == Enum.UserInputType.MouseButton1
        end)
        v15.InputEnded:Connect(function(...)
            local _1806_vararg1 = ...
            local _ = _1806_vararg1.UserInputType == Enum.UserInputType.MouseButton1
        end)
        v15.InputChanged:Connect(function(...)
        end)
        local v1816 = Instance.new("Frame", v1629)
        v1816.Size = UDim2.new(1, 0, 0, 44)
        v1816.BackgroundColor3 = Color3.fromRGB(15, 20, 30)
        v1816.BackgroundTransparency = 0.5
        local v1822 = Instance.new("UICorner", v1816)
        v1822.CornerRadius = UDim.new(0, 8)
        local v1826 = Instance.new("UIStroke", v1816)
        v1826.Color = v34
        v1826.Transparency = 0.9
        v1826.Thickness = 1
        v1816.ClipsDescendants = true
        local v1828 = Instance.new("TextLabel", v1816)
        v1828.Size = UDim2.new(1, - 10, 0, 20)
        v1828.Position = UDim2.new(0, 10, 0, 4)
        v1828.BackgroundTransparency = 1
        v1828.Text = "Target Mode"
        v1828.Font = v50
        v1828.TextSize = 14
        v1828.TextColor3 = v42
        v1828.TextXAlignment = Enum.TextXAlignment.Left
        local v1836 = Instance.new("TextLabel", v1816)
        v1836.Size = UDim2.new(0, 110, 0, 20)
        v1836.Position = UDim2.new(1, - 140, 0, 4)
        v1836.Text = "Nearest"
        v1836.Font = v48
        v1836.TextColor3 = v42
        v1836.TextXAlignment = Enum.TextXAlignment.Right
        v1836.BackgroundTransparency = 1
        v1836.TextSize = 13
        local v1844 = Instance.new("TextLabel", v1816)
        v1844.Text = "\xE2\x96\xBC"
        v1844.Size = UDim2.new(0, 20, 0, 20)
        v1844.Position = UDim2.new(1, - 26, 0, 4)
        v1844.BackgroundTransparency = 1
        v1844.TextColor3 = v44
        v1844.TextSize = 12
        local v1850 = Instance.new("TextButton", v1816)
        v1850.Size = UDim2.new(1, 0, 1, 0)
        v1850.BackgroundTransparency = 1
        v1850.Text = ""
        local v1854 = Instance.new("Frame", v1816)
        v1854.Size = UDim2.new(1, - 10, 0, 0)
        v1854.Position = UDim2.new(0, 5, 0, 26)
        v1854.BackgroundTransparency = 1
        v1854.Visible = false
        local v1860 = Instance.new("UIListLayout", v1854)
        v1860.Padding = UDim.new(0, 4)
        for v1865, _1865_2 in pairs(v1854:GetChildren()) do
            _1865_2:IsA("TextButton")
            _1865_2:Destroy()
        end
        local v1871 = Instance.new("TextButton", v1854)
        v1871.Size = UDim2.new(1, 0, 0, 26)
        v1871.BackgroundColor3 = Color3.fromRGB(15, 20, 30)
        v1871.Text = "Nearest"
        v1871.Font = v52
        v1871.TextColor3 = v42
        v1871.TextSize = 13
        local v1877 = Instance.new("UICorner", v1871)
        v1877.CornerRadius = UDim.new(0, 6)
        local v1881 = Instance.new("UIStroke", v1871)
        v1881.Color = v34
        v1881.Transparency = 0.7
        v1881.Thickness = 1
        v1871.MouseButton1Click:Connect(function(...)
            v1836.Text = "Nearest"
            v1836.TextColor3 = v42
            print("Mode:", "Nearest")
            v1854.Visible = false
            local v1894 = v6:Create(v1816, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {
                Size = UDim2.new(1, 0, 0, 44),
            })
            v1894:Play()
            local v1900 = v6:Create(v1844, TweenInfo.new(0.25), {
                Rotation = 0,
            })
            v1900:Play()
        end)
        local v1904 = Instance.new("TextButton", v1854)
        v1904.Size = UDim2.new(1, 0, 0, 26)
        v1904.BackgroundColor3 = Color3.fromRGB(15, 20, 30)
        v1904.Text = "Random"
        v1904.Font = v52
        v1904.TextColor3 = v42
        v1904.TextSize = 13
        local v1910 = Instance.new("UICorner", v1904)
        v1910.CornerRadius = UDim.new(0, 6)
        local v1914 = Instance.new("UIStroke", v1904)
        v1914.Color = v34
        v1914.Transparency = 0.7
        v1914.Thickness = 1
        v1904.MouseButton1Click:Connect(function(...)
            v1836.Text = "Random"
            v1836.TextColor3 = v42
            print("Mode:", "Random")
            v1854.Visible = false
            local v1927 = v6:Create(v1816, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {
                Size = UDim2.new(1, 0, 0, 44),
            })
            v1927:Play()
            local v1933 = v6:Create(v1844, TweenInfo.new(0.25), {
                Rotation = 0,
            })
            v1933:Play()
        end)
        v1854.Size = UDim2.new(1, - 10, 0, 60)
        v1850.MouseButton1Click:Connect(function(...)
            v1854.Visible = true
            local v1954 = v6:Create(v1816, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {
                Size = UDim2.new(1, 0, 0, ((44 + v1854.Size.Y.Offset) + 4)),
            })
            v1954:Play()
            local v1960 = v6:Create(v1844, TweenInfo.new(0.25), {
                Rotation = 180,
            })
            v1960:Play()
        end)
        local v1964 = Instance.new("Frame", v1629)
        v1964.Size = UDim2.new(1, 0, 0, 38)
        v1964.BackgroundColor3 = Color3.fromRGB(15, 20, 30)
        v1964.BackgroundTransparency = 0.5
        local v1970 = Instance.new("UICorner", v1964)
        v1970.CornerRadius = UDim.new(0, 8)
        local v1974 = Instance.new("UIStroke", v1964)
        v1974.Color = v34
        v1974.Transparency = 0.9
        v1974.Thickness = 1
        local v1976 = Instance.new("TextLabel", v1964)
        v1976.Size = UDim2.new(1, - 10, 1, 0)
        v1976.Position = UDim2.new(0, 10, 0, 0)
        v1976.BackgroundTransparency = 1
        v1976.Text = "Webhook URL"
        v1976.Font = v50
        v1976.TextSize = 14
        v1976.TextColor3 = v42
        v1976.TextXAlignment = Enum.TextXAlignment.Left
        local v1984 = Instance.new("Frame", v1964)
        v1984.Size = UDim2.new(0, 60, 0, 26)
        v1984.Position = UDim2.new(1, - 70, 0.5, - 13)
        v1984.BackgroundColor3 = v24
        local v1990 = Instance.new("UICorner", v1984)
        v1990.CornerRadius = UDim.new(0, 6)
        local v1994 = Instance.new("UIStroke", v1984)
        v1994.Color = v34
        v1994.Transparency = 0.8
        local v1996 = Instance.new("TextBox", v1984)
        v1996.Size = UDim2.new(1, - 10, 1, 0)
        v1996.Position = UDim2.new(0, 5, 0, 0)
        v1996.BackgroundTransparency = 1
        v1996.Text = ""
        v1996.PlaceholderText = "..."
        v1996.TextColor3 = v42
        v1996.Font = v48
        v1996.TextSize = 14
        v1996.TextStrokeTransparency = 0.8
        v1996.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
        local _ = v1996.Text
        v1996.FocusLost:Connect(function(...)
            print("Webhook:", v1996.Text)
        end)
        local v2012 = Instance.new("Frame", v1629)
        v2012.Size = UDim2.new(1, 0, 0, 44)
        v2012.BackgroundColor3 = Color3.fromRGB(15, 20, 30)
        v2012.BackgroundTransparency = 0.5
        local v2018 = Instance.new("UICorner", v2012)
        v2018.CornerRadius = UDim.new(0, 8)
        local v2022 = Instance.new("UIStroke", v2012)
        v2022.Color = v34
        v2022.Transparency = 0.9
        v2022.Thickness = 1
        v2012.BackgroundTransparency = 0.25
        local v2024 = v2012:FindFirstChildOfClass("UIStroke")
        v2024.Transparency = 0.5
        v2024.Thickness = 1
        local v2026 = Instance.new("TextLabel", v2012)
        v2026.Size = UDim2.new(1, - 10, 1, 0)
        v2026.Position = UDim2.new(0, 10, 0, 0)
        v2026.BackgroundTransparency = 1
        v2026.Text = "Info"
        v2026.Font = v50
        v2026.TextSize = 14
        v2026.TextColor3 = v42
        v2026.TextXAlignment = Enum.TextXAlignment.Left
        v2026.Font = v48
        v2026.TextSize = 14
        local v2034 = Instance.new("TextLabel", v2012)
        v2034.Size = UDim2.new(1, - 20, 1, - 22)
        v2034.Position = UDim2.new(0, 10, 0, 20)
        v2034.BackgroundTransparency = 1
        v2034.Text = "This is a sample paragraph with Chilli Finder styling."
        v2034.TextColor3 = v42
        v2034.TextSize = 13
        v2034.TextWrapped = true
        v2034.TextXAlignment = Enum.TextXAlignment.Left
        v2034.TextYAlignment = Enum.TextYAlignment.Top
        v2034.Font = v50
        local v2044 = Instance.new("Frame", v1629)
        v2044.Size = UDim2.new(1, 0, 0, 36)
        v2044.BackgroundColor3 = Color3.fromRGB(15, 20, 30)
        v2044.BackgroundTransparency = 0.5
        local v2050 = Instance.new("UICorner", v2044)
        v2050.CornerRadius = UDim.new(0, 8)
        local v2054 = Instance.new("UIStroke", v2044)
        v2054.Color = v34
        v2054.Transparency = 0.9
        v2054.Thickness = 1
        v2044.BackgroundColor3 = v40
        v2044.BackgroundTransparency = 0.9
        local v2056 = Instance.new("TextButton", v2044)
        v2056.Size = UDim2.fromScale(1, 1)
        v2056.BackgroundTransparency = 1
        v2056.Text = "Server Hop"
        v2056.Font = v48
        v2056.TextColor3 = v40
        v2056.TextSize = 14
        v2056.MouseButton1Click:Connect(function(...)
            local v2064 = Instance.new("Frame")
            v2064.Size = UDim2.new(1, 0, 0, 70)
            v2064.BackgroundTransparency = 1
            v2064.Parent = v1234
            local v2068 = Instance.new("Frame", v2064)
            v2068.Size = UDim2.new(1, 0, 1, 0)
            v2068.Position = UDim2.new(1, 40, 0, 0)
            v2068.BackgroundTransparency = 1
            v2068.BackgroundColor3 = v24
            v2068.BorderSizePixel = 0
            local v2074 = Instance.new("UICorner", v2068)
            v2074.CornerRadius = UDim.new(0, 12)
            local v2078 = Instance.new("UIGradient", v2068)
            v2078.Rotation = 35
            local v2086 = ColorSequence.new({
                [1] = ColorSequenceKeypoint.new(0, v26),
                [2] = ColorSequenceKeypoint.new(0.55, v28),
                [3] = ColorSequenceKeypoint.new(1, v30),
            })
            v2078.Color = v2086
            local v2088 = Instance.new("UIStroke", v2068)
            v2088.Thickness = 3
            v2088.Transparency = 0.8
            v2088.Color = v32
            v2088.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            local v2092 = Instance.new("UIStroke", v2068)
            v2092.Thickness = 1
            v2092.Transparency = 0.5
            v2092.Color = v34
            v2092.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            local v2096 = Instance.new("TextLabel", v2068)
            v2096.Position = UDim2.new(0, 12, 0, 8)
            v2096.Size = UDim2.new(1, - 24, 0, 20)
            v2096.BackgroundTransparency = 1
            v2096.Font = v48
            v2096.Text = "System"
            v2096.TextColor3 = v40
            v2096.TextSize = 14
            v2096.TextXAlignment = Enum.TextXAlignment.Left
            local v2104 = Instance.new("TextLabel", v2068)
            v2104.Position = UDim2.new(0, 12, 0, 30)
            v2104.Size = UDim2.new(1, - 24, 0, 32)
            v2104.BackgroundTransparency = 1
            v2104.Font = v52
            v2104.Text = "Hopping..."
            v2104.TextColor3 = v42
            v2104.TextSize = 13
            v2104.TextWrapped = true
            v2104.TextXAlignment = Enum.TextXAlignment.Left
            v2104.TextYAlignment = Enum.TextYAlignment.Top
            local v2122 = v6:Create(v2068, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
                BackgroundTransparency = 0,
                Position = UDim2.new(0, 0, 0, 0),
            })
            v2122:Play()
            task.delay(3, function(...)
                local v2137 = v6:Create(v2068, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
                    BackgroundTransparency = 1,
                    Position = UDim2.new(1, 40, 0, 0),
                })
                v2137:Play()
                task.wait(0.36)
                v2064:Destroy()
            end)
            local v2145 = v6:Create(v2056, TweenInfo.new(0.1), {
                TextSize = 12,
            })
            v2145:Play()
            task.wait(0.1)
            local v2151 = v6:Create(v2056, TweenInfo.new(0.1), {
                TextSize = 14,
            })
            v2151:Play()
        end)
        makefolder("ChilliLib")
        makefolder("ChilliLib/settings")
    end,
    SaveConfig = function(...)
        local _2156_vararg1, _2156_vararg2 = ...
        local v2161 = v12:JSONEncode({
            [1] = {
                flag = _562_vararg3,
                type = "Dropdown",
                value = _694_2,
            },
            [2] = {
                flag = "AutoFarm",
                type = "Toggle",
                state = true,
            },
            [3] = {
                flag = _803_vararg3,
                type = "Input",
                text = _857_vararg2,
            },
            [4] = {
                flag = _976_vararg3,
                type = "Slider",
                value = v1029,
            },
            [5] = {
                flag = "Webhook",
                type = "Input",
                text = v1996.Text,
            },
            [6] = {
                flag = _858_vararg3,
                type = "Toggle",
                state = true,
            },
            [7] = {
                flag = "WalkSpeed",
                type = "Slider",
                value = 16,
            },
            [8] = {
                flag = "TargetMode",
                type = "Dropdown",
                value = "Random",
            },
        })
        writefile("ChilliLib" .. "/settings/" .. _2156_vararg2 .. ".json", v2161)
        return true
    end,
}

ChilliLib.Demo()
