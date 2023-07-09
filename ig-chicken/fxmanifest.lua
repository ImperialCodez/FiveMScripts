fx_version 'cerulean'
games {'gta5'}
lua54 'yes'
author 'ImperialGamer'
description '[QB] IG Chicken'
version '1.0.0'

client_scripts {
  'config.lua',
  'client/*.lua',
}
server_scripts {
  'config.lua',
  'server/*.lua',
}

shared_script {
  '@qb-core/shared/locale.lua',
  'shared/*.lua',
  'config.lua',
  'locales/en.lua',
  'locales/*.lua'
}

lua54 'yes'
