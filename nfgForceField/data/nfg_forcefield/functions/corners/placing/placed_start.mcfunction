# Corners - Starting Corner Placed
# Acknowledges a Starting Corner Placed (to be in-world Init'd)
#####################################
# Started as: execute as @e[tag=ff_corner] at @s | execute if entity @s[tag=ff_start]
#####################################
# Assumptions:
# - Corners are type=armor_stand (info for advanced pair tagging)

# Mark player as building a forcefield
tag @p add ff_building

# Check for Error Conditions: Init Corner Placement
function nfg_forcefield:corners/placing/error/check_corner

# Newly placed items trigger a small sound
execute as @a[distance=..16] run playsound nfg_forcefield:hum ambient @s ~ ~ ~ 0.6 2

# TODO: Need to set up targeting system of some sort here while placing Ending Corner?

# Initialize a Build Helper
function nfg_forcefield:corners/placing/building_helper_init

# Remove Init tag from Corner
tag @s remove ff_init
