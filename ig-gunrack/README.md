# ig-gunrack

Allows police to add and open gun racks.
Gun racks are hidden from other non-police players.

# Keys

- To use keys you need to first cut them using a cutting machine
- To do that you need a 'keycuttingmachine' and make sure your citizenid is whitelisted.
- Add a key (gunrackkey) to your inventory (script and will try to find a unused key).
- Type the vehicles plate and you are done with keycutting.

# Dependencies

- qb-core
- progressbar
- qb-radialmenu

# How to install

- step0: Add `images/policegunrack.png` to `qb-inventory/html/images`
- step1: Add Below code to `qb-core/shared/items.lua`

```lua
["policegunrack"] = {
    ["name"] = "policegunrack",
    ["label"] = "Police Gun Rack",
    ["weight"] = 15000,
    ["type"] = "item",
    ["image"] = "policegunrack.png",
    ["unique"] = false,
    ["useable"] = true,
    ["shouldClose"] = true,
    ["combinable"] = nil,
    ["description"] = "Gun rack for police vehicles"
},
-- optional if you want to open rack by keys
["gunrackkey"] = {
     ["name"] = "gunrackkey",
     ["label"] = "Police Gun Key",
     ["weight"] = 500,
     ["type"] = "item",
     ["image"] = "gunrackkey.png",
     ["unique"] = false,
     ["useable"] = true,
     ["shouldClose"] = true,
     ["combinable"] = nil,
     ["description"] = "A key to open gun rack"
},
["keycuttingmachine"] = {
     ["name"] = "keycuttingmachine",
     ["label"] = "Key Cutting Machine",
     ["weight"] = 40000,
     ["type"] = "item",
     ["image"] = "keycuttingmachine.png",
     ["unique"] = false,
     ["useable"] = true,
     ["shouldClose"] = true,
     ["combinable"] = nil,
     ["description"] = "A Machine to Cut Keys"
},
```


- step2

- open qb-inventory\js\app.js and find FormatItemInfo()
- add it right before ending else

```lua
else if (itemData.name == "gunrackkey") {
     $(".item-info-title").html("<p>" + itemData.label + "</p>");
     $(".item-info-description").html("<p>Cutted Key<p/><p>Plate: " + itemData.info.plate + "</p>");
}
```

- last step: ensure script after all dependencies `ensure ig-gunrack` (server.cfg)
- if you did install keys make sure you have right config setup example:

```lua
     disable_job_check = true, -- <--- this value will disable job check
     use_keys_to_unlock_gunrack = true,
```

# Config

- Add vehicle's models or classes you want to get whitelisted
- Customize rack size and durations
