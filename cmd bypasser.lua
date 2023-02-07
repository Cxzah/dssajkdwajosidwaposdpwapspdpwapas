
local CmdBypasser = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Command = Instance.new("TextBox")
local Save = Instance.new("TextButton")
local Discord = Instance.new("TextButton")
local Profile = Instance.new("TextButton")
local CommandName = Instance.new("TextBox")

--Properties:

CmdBypasser.Name = "CmdBypasser"
CmdBypasser.Parent = game.CoreGui
CmdBypasser.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = CmdBypasser
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.Position = UDim2.new(0.0882872641, 0, 0.0321285129, 0)
Frame.Size = UDim2.new(0, 738, 0, 445)
Frame.Active = true
Frame.Draggable = true

Command.Name = "Command"
Command.Parent = Frame
Command.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Command.BorderSizePixel = 0
Command.Position = UDim2.new(0.0162822027, 0, 0.0280612223, 0)
Command.Size = UDim2.new(0, 713, 0, 290)
Command.Font = Enum.Font.Gotham
Command.PlaceholderText = "Command Box Lmit bypasser By K2phz on roblox | enter command here"
Command.Text = ""
Command.TextColor3 = Color3.fromRGB(255, 255, 255)
Command.TextSize = 14.000
Command.TextWrapped = true
Command.TextXAlignment = Enum.TextXAlignment.Left
Command.TextYAlignment = Enum.TextYAlignment.Top

Save.Name = "Save"
Save.Parent = Frame
Save.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
Save.Position = UDim2.new(0.016260162, 0, 0.84943819, 0)
Save.Size = UDim2.new(0, 236, 0, 50)
Save.Font = Enum.Font.GothamBold
Save.Text = "Save"
Save.TextColor3 = Color3.fromRGB(255, 255, 255)
Save.TextSize = 30.000
Save.MouseButton1Down:Connect(function()
local args = {
    [1] = {
        [1] = "SAVE",
        [2] = ""..CommandName.Text.."",
        [3] = ""..Command.Text..""
    }
}

game:GetService("ReplicatedStorage").Network.CommandSaving:InvokeServer(unpack(args))
	
end)
	

Discord.Name = "Discord"
Discord.Parent = Frame
Discord.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
Discord.Position = UDim2.new(0.340108395, 0, 0.84943819, 0)
Discord.Size = UDim2.new(0, 236, 0, 50)
Discord.Font = Enum.Font.GothamBold
Discord.Text = "Discord"
Discord.TextColor3 = Color3.fromRGB(255, 255, 255)
Discord.TextSize = 30.000
Discord.MouseButton1Down:Connect(function()
task.spawn(function()
    pcall(function()
	local http = game:GetService('HttpService')
	local req = http_request or request or HttpPost or syn.request
	if req then
		req({
			Url = 'http://127.0.0.1:6463/rpc?v=1',
			Method = 'POST',
			Headers = {
				['Content-Type'] = 'application/json',
				Origin = 'https://discord.com'
			},
			Body = http:JSONEncode({
				cmd = 'INVITE_BROWSER',
				nonce = http:GenerateGUID(false),
				args = {
					code = 'NcWBtB76aW'
				}
			})
		})
	end
end)
end)
end)

Profile.Name = "Profile"
Profile.Parent = Frame
Profile.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
Profile.Position = UDim2.new(0.66260159, 0, 0.84943819, 0)
Profile.Size = UDim2.new(0, 236, 0, 50)
Profile.Font = Enum.Font.GothamBold
Profile.Text = "Profile"
Profile.TextColor3 = Color3.fromRGB(255, 255, 255)
Profile.TextSize = 30.000
Profile.MouseButton1Down:Connect(function()
setclipboard("https://www.roblox.com/users/1158175638/profile")
end)

CommandName.Name = "CommandName"
CommandName.Parent = Frame
CommandName.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
CommandName.BorderSizePixel = 0
CommandName.Position = UDim2.new(0.0176372156, 0, 0.706712842, 0)
CommandName.Size = UDim2.new(0, 713, 0, 52)
CommandName.Font = Enum.Font.Gotham
CommandName.PlaceholderText = "Command Name"
CommandName.Text = ""
CommandName.TextColor3 = Color3.fromRGB(255, 255, 255)
CommandName.TextSize = 14.000
CommandName.TextWrapped = true
CommandName.TextXAlignment = Enum.TextXAlignment.Left
CommandName.TextYAlignment = Enum.TextYAlignment.Top