# Corners - Starting Corner Placed
# Acknowledges a Starting Corner Placed (to be in-world Init'd)
#####################################
# Started as: execute as @e[tag=ff_corner] at @s | execute if entity @s[tag=ff_start]
#####################################
# Assumptions:
# - Corners are type=armor_stand (info for advanced pair tagging)

# Check for Error Conditions: Init Corner Placement
function nfg_forcefield:corners/placing/error/check_corner

# Newly placed items trigger a small sound
execute as @a[distance=..16] run playsound nfg_forcefield:hum ambient @s ~ ~ ~ 0.6 2

# Update Type meta-Tag
execute if entity @s[tag=ff_prot_build] run data modify entity @s ArmorItems[3].tag._ff.type set value "Build"
execute if entity @s[tag=ff_prot_mob] run data modify entity @s ArmorItems[3].tag._ff.type set value "Mob"

# TODO: Need to set up targeting system of some sort here while placing Ending Corner?

# TODO: This needs to become multiplayer friendly!
# Mark player as a lock against others placing
tag @p add ff_placing_lock

# Remove Init tag from Corner
tag @s remove ff_init

# Force loading of chunks where the corner is (if settings allow it)
execute if score ChunkLoader _ff_settings matches 1 run forceload add ~ ~
