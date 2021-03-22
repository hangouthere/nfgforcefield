# nfgForceField - init
# Initialize nfgForceField DataPack

function nfg_forcefield:commands/init
function nfg_forcefield:scoreboard/init
function nfg_forcefield:settings
function nfg_forcefield:corners/init

# Startup Message
tellraw @a [{"text":"[nfgForceField] ","color":"gold"},{"text":"by ","color":"white"},{"text":"nfgCodex ","color":"blue"},{"text":"v","color":"white"},{"text":"0.0.1","color":"green"},{"text":" Loaded!","color":"white"}]

function nfg_forcefield:tick_2s

# TODO: Do we need this?
# Ensure old tags aren't left around by accident
tag @a remove ff_placing_lock
