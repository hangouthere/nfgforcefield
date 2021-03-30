# nfgForceField - init
# Initialize nfgForceField DataPack

# Initial Setup of Settings, so rest of pack runs on first setup
scoreboard objectives add _ff_calcs dummy
# If the datapack has NEVER initiated, let's do so!
execute unless score #_doneInit _ff_calcs matches 1.. as @a[limit=1] run function nfg_forcefield:_first_run/init

function nfg_forcefield:commands/init
function nfg_forcefield:scheduled/init

# Startup Message
tellraw @a [{"text":"[nfgForceField] ","color":"gold"},{"text":"by ","color":"white"},{"text":"nfgCodex ","color":"blue"},{"text":"v","color":"white"},{"text":"0.0.1","color":"green"},{"text":" Loaded!","color":"white"}]

# TODO: Do we need this?
# Ensure old tags aren't left around by accident
tag @a remove ff_placing_lock
