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
scoreboard players operation #_ffNextId _ff_calcs += #_1 _nfg_const
execute store result storage nfg:forcefield _ffNextId int 1 run scoreboard players get #_ffNextId _ff_calcs

# Mark Corners as now Configured
tag @e[tag=ff_corner,tag=!ff_configured] add ff_configured

# Remove Player lock
tag @p remove ff_placing_lock

title @p actionbar ""
