print("nf")
	local mt = getrawmetatable(game)
				local b = mt.__namecall
				setreadonly(mt,false)
				mt.__namecall = newcclosure(function(...)
					local args = {...}
					local method = getnamecallmethod()
					if method == "FireServer" then
						num = args[2]
					end
					if method == "FireServer" and args[1].Name == "Fall" or method == "FireServer" and args[1].Name == "Crush" then
						return nil
					end
					return b(...)
				end)
	
				repeat wait() until num ~= nil
