# nfgForceField - tick
# Runs once per game tick

function nfg_forcefield:commands/tick
function nfg_forcefield:scanning/tick

# Tick at each Corner
execute as @e[tag=ff_corner] at @s run function nfg_forcefield:corners/tick

# Run DEBUG functionality if enabled...
execute if score DEBUG _ff_settings matches 1 run function nfg_forcefield:_debug/tick
