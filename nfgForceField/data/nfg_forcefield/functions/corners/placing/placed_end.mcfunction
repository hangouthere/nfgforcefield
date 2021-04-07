# Corners - Ending Corner Placed
# Acknowledges a Ending Corner Placed (to be in-world Init'd)
#####################################
# Started as: execute as @e[tag=ff_corner] at @s | execute if entity @s[tag=ff_end]
#####################################
# Assumptions:
# - Corners are type=armor_stand (info for advanced pair tagging)

# Check for Error Conditions: Init Corner Placement
function nfg_forcefield:corners/placing/error/check_corner

# Check for Error Conditions: Init Area Sizing
function nfg_forcefield:corners/placing/error/check_area

# TODO: Make multiplayer friendly
# Update Type Tag (based on already-Init'd, unConfigured, Starting Corner)
execute if entity @s[tag=ff_prot_build,tag=ff_corner,tag=ff_start,tag=!ff_init,tag=!ff_configured,tag=ff_no_errors] run data modify entity @s ArmorItems[0].tag._ff.type set value "Build"
execute if entity @s[tag=ff_prot_mob,tag=ff_corner,tag=ff_start,tag=!ff_init,tag=!ff_configured,tag=ff_no_errors] run data modify entity @s ArmorItems[0].tag._ff.type set value "Mob"

# TODO: End remote-targeting system??

# Remove Init tag from corners
execute if entity @s[tag=ff_no_errors] run tag @s remove ff_init
