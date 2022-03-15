banner = [[
 _   _ _   _ ________  ___  _                                    __ _
| \ | | | | |_   _|  \/  | | |                                  / _(_)
|  \| | | | | | | | .  . | | |    _   _  __ _    ___ ___  _ __ | |_ _  __ _
| . ` | | | | | | | |\/| | | |   | | | |/ _` |  / __/ _ \| '_ \|  _| |/ _` |
| |\  \ \_/ /_| |_| |  | | | |___| |_| | (_| | | (_| (_) | | | | | | | (_| |
\_| \_/\___/ \___/\_|  |_/ \_____/\__,_|\__,_|  \___\___/|_| |_|_| |_|\__, |
                                                                       __/ |
                                                                      |___/
                Edwin Jossiel Ontiveros Montanez
                    @github/EdwinOntiveros
]]

vim.cmd [[
    filetype plugin on
    filetype indent on
    syntax enable
    set t_Co=256
]]

-- language providers
vim.g.loaded_python_provider = 0
vim.g.loaded_ruby_provider   = 0
vim.g.loaded_perl_provider   = 0

vim.g.python3_host_prog      = '/usr/bin/python3'

-- modules
require 'nvim-settings'
require 'plugins'
require 'impatient'
require 'plugins/config/treesitter'


