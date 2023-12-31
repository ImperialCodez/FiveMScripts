Config = Config or {}

local whitelist = {
     models = {
          -- if a vehicle model exist in models script will skip class check!
          -- 'fiat600',
          'adder'
     },
     classes = {
          -- https://docs.fivem.net/natives/?_0x29439776AAA00A62
          18 -- emergency
     },
     jobs = { 'police' },
     key_cutting_citizenid = {
          'AAAAAAAA'
     }
}

-- items added only after gun rack installation  ## CHOOSE WHATEVER U WANT THEM TO GET AFTER GUNRACK INSTALLATION
Config.InitialItems = {
     {
          name = 'RANDOM',
          amount = 10
     },
     {
          name = 'RANDOM',
          amount = 5
     },
}

Config.gunrack = {
     keybind = 'j',
     install_duration = 3, --sec
     opening_duration = 3, --sec
     add_initial_items = true,
     while_open_animation = true, -- while inventory screen is on
     slots = 5,
     size = 50000,
     whitelist = whitelist,
     disable_job_check = true, -- make sure it's false if your not using keys or everybody can unlock gunracks
     -- optional make sure you did optional part of installation
     use_keys_to_unlock_gunrack = true,
     cutting_duration = 3,
     stash_prefix = 'Gunrack_'
}
