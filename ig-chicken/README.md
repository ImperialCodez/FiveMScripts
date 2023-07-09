# IG-CHICKEN
A simple chicken job that support QBCore Framework (with processing step and selling location). This script will bring a new job to your roleplay server




Add this line to your ```qb-core/shared/item.lua```
```
["alive_chicken"] 		 			 	 = {["name"] = "alive_chicken", 							["label"] = "Alive chicken", 					    ["weight"] = 2000, 		["type"] = "item", 		["image"] = "alive_chicken.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Alive Chicken"},
["slaughtered_chicken"] 		 		     = {["name"] = "slaughtered_chicken", 						["label"] = "Slaughtered chicken", 					    ["weight"] = 2000, 		["type"] = "item", 		["image"] = "slaughteredchicken.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Slaughtered Chicken"},
["packagedchicken"] 		 			 = {["name"] = "packagedchicken", 							["label"] = "Packaged chicken", 					    ["weight"] = 2000, 		["type"] = "item", 		["image"] = "packaged_chicken.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Packaged Chicken"},
```
5. Copy all the file in ```images``` folder and paste it to ```qb-inventory/html/images```
4. Go to your server.cfg and add this
```ensure mb-chicken```

# Bugs/Optimise report
If you find any bugs or have any suggestion, feel free to open an "Issues" on Github or simply join my Discord for support


