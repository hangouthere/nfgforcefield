# nfgForceField - tick
# Runs once per game tick

function nfg_forcefield:commands/tick
function nfg_forcefield:scanning/tick
function nfg_forcefield:helper/admin/tick

# Tick at each Corner
execute as @e[tag=ff_corner] at @s run function nfg_forcefield:corners/tick


# TODO: Get rid of this

execute as @a[tag=ff_dist_test] at @s run function nfg_forcefield:_debug/dist_sq_display
