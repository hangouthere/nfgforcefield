# nfgForceField - tick
# Runs once per game tick

function nfg_forcefield:commands/tick
function nfg_forcefield:scanning/tick
function nfg_forcefield:helper/admin/tick

# Tick for each Player
execute as @a at @s run function nfg_forcefield:player/tick

# Tick for each Corner
execute as @e[tag=ff_corner] at @s run function nfg_forcefield:corners/tick

# Tick for each Demolishion Marker
execute as @e[tag=ff_demolish_marker] at @s run function nfg_forcefield:corners/security/demolish_marker/tick

# Tick for Config Marker
execute as @e[tag=ff_config_marker] at @s run function nfg_forcefield:config/tick
