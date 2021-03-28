# nfgUtils - init
# Initialize nfgUtils DataPack

# Initial Setup of Settings, so rest of pack runs on first setup
scoreboard objectives add _nfg_settings dummy

execute unless score #_doneInit _nfg_settings matches 1.. run function nfg_util:_first_run/init

function nfg_util:scheduled/tick_2s
