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
execute as @e[tag=ff_corner,tag=!ff_configured,tag=ff_start] run function nfg_util:vec/store_in1
execute as @e[tag=ff_corner,tag=!ff_configured,tag=ff_end] run function nfg_util:vec/store_in2
# Calculate ForceField data
function nfg_forcefield:corners/unconfigured/config/calc_ff_data

## Store Calculations
# Store calculated data in storage
function nfg_forcefield:corners/unconfigured/config/store_ff_data
# Handle each Corner agnostically
# Force execution AS to ensure both are targeted
execute as @e[tag=ff_corner,tag=!ff_configured] at @s run function nfg_forcefield:corners/unconfigured/config/store_corner_data

# Handle Ending Corners (@s) specifically
function nfg_forcefield:corners/unconfigured/config/finalize_end_corner

# Increment ffId since the ForceField is now Configured
scoreboard players add #_ffNextId _ff_calcs 1

# Mark Corners as now Configured
tag @e[tag=ff_corner,tag=!ff_configured] add ff_configured

# Remove Player lock
tag @p remove ff_placing_lock

# TODO: See which of these we should actually remove
# Reintroduce Suspended mobs, because a ForceField could have been built nearby
tag @e remove ff_suspend
tag @e remove ff_suspend_temp
tag @e remove ff_suspend_perm

# Force a clean Scan with the newly included/created ForceField
function nfg_forcefield:scanning/process/loop/reset_scan

# Hide the placing bar from earlier
title @p actionbar ""
