# Corners - Config: Init
# Establish Ending Corner, and complete ForceField Setup
#####################################
# Started as: execute as @e[tag=ff_corner] at @s | execute if entity @s[tag=!ff_init,tag=ff_end]
#####################################
# Assumptions:
# - Starting Corner is Init'd
# - Ending Corner is just Init'd
# - There is a pair of Corners Unconfigured
# - Executor & Location Ending Corner
# - Literally no errors should occur during this process
# - Should run once per Config setup

function nfg_forcefield:corners/unconfigured/config/finalize_setup

# Handle each Corner agnostically
# Force execution AS to ensure both are targeted
execute as @e[tag=ff_corner,tag=!ff_configured] at @s run function nfg_forcefield:corners/unconfigured/config/finalize_either

# Handle Ending Corners (@s) specifically
function nfg_forcefield:corners/unconfigured/config/finalize_end

# Increment ffId since the ForceField is now Configured
scoreboard players add #_ffNextId _ff_calcs 1

# Mark Corners as now Configured
tag @e[tag=ff_corner,tag=!ff_configured] add ff_configured

# Remove Player lock
tag @p remove ff_placing_lock

title @p actionbar ""
