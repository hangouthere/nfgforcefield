# nfgUtils - init
# Initialize nfgUtils DataPack

# Initial Setup of Settings, so rest of pack runs on first setup
scoreboard objectives add nfg_util dummy

execute unless score #_doneInit nfg_util matches 1.. run function nfg_util:_first_run/init

function nfg_util:scheduled/tick_2s
