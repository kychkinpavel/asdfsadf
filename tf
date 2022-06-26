local rs = game:service'RunService'
				local Freekill = {}
	
				local Values = {
					TraitorFinder = true,	
				}
	
				local Freekill = {}
				local takeNotification = function(Text)
					game:GetService("StarterGui"):SetCore("SendNotification", {
						Title = "Experimental Traitor Finder",
						Text = Text
					})
				end
	
				local MakeT = function(P, R)
					Freekill[P] = R
					takeNotification(P .. " FLAGGED AS " .. R)
				end
	
				workspace.Ragdolls.ChildAdded:Connect(function(Child)
					if Child:FindFirstChild("CorpseData") and Values.TraitorFinder == true then
						local cd = Child:FindFirstChild("CorpseData")
						if cd.IsFreeKill.Value == false and cd.IsSelfDefense.Value == false and cd.Team.Value == "Innocent" or cd.Team.Value == "Detective" and game:GetService("Players"):FindFirstChild("cd.KilledBy.Value") then
							MakeT(cd.KilledBy.Value, "TRAITOR")
							MakeT(cd.KilledBy.Value, "TRAITOR")
							MakeT(cd.KilledBy.Value, "TRAITOR")
						end
					end
				end)
