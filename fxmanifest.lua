fx_version 'cerulean'
game 'gta5'
lua54 'yes'

description 'guerra de territorio de pandillas'

author 'notyotu'
version '1.0.0'

shared_script {'config.lua',
              '@ox_lib/init.lua'
}
client_script 'client.lua'

dependencies {
    'es_extended',
    'ox_inventory',
    'ox_lib'
}
