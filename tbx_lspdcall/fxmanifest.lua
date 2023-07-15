fx_version 'cerulean'
game 'gta5'
lua54 'yes'


author 'Tobix'
description 'polcie call'
version '1.0.0'

client_scripts {
    'config.lua',
    'client.lua'

}
server_script {
    'config.lua',
    'server.lua'
}


shared_scripts {
    '@ox_lib/init.lua'
}