local StarterGui = game:GetService("StarterGui")

local self = {}

function self:Notify(Title, Text, Duration)
	xpcall(function()
		StarterGui:SetCore("SendNotification", {
			["Title"] = Title;
			["Text"] = Text;
			["Duration"] = Duration or 5;
		})
	end, function(err)
		warn(`ERROR IN NOTIFICATION: {err}`)
	end)
end

return self
