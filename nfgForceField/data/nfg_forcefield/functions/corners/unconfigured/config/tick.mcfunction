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

## Perform Calculations
# Force execution as the Starting/Ending for assurance of all calcs
function nfg_forcefield:corners/unconfigured/config/store_in1_in2

# Calculate ForceField data
function nfg_forcefield:corners/unconfigured/config/calcff_data

## Store Calculations
# Store calculated data in storage
function nfg_forcefield:corners/unconfigured/config/storeff_data
# Handle each Corner agnostically
# Force execution AS to ensure both are targeted
execute as @e[tag=ff_corner,tag=!ff_configured] at @s run function nfg_forcefield:corners/unconfigured/config/store_corner_data

# Add ForceField to storage array for persistence!
data modify storage nfg:forcefield ForceFields append from entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag

# Handle Ending Corners (@s) specifically
function nfg_forcefield:corners/unconfigured/config/cleanup_build_process
