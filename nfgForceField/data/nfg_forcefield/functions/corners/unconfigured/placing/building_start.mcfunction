# Mark player as building a forcefield
tag @p add ff_building

# Newly placed items trigger a small sound
execute as @a[distance=..16] run playsound nfg_forcefield:hum ambient @s ~ ~ ~ 0.6 2

# TODO: Need to set up targeting system of some sort here while placing Ending Corner?

# Initialize a Build Helper
function nfg_forcefield:corners/unconfigured/placing/building_helper/init

# Remove Init tag from Corner
tag @s remove ff_init
