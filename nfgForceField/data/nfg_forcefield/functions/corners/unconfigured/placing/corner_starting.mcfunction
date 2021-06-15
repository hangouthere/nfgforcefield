# Mark player as building a forcefield
tag @s add ff_building

# Mark Corner as Start Corner
tag @e[tag=ff_corner,tag=ff_init,sort=nearest,limit=1] add ff_start

# Newly placed items trigger a small sound
execute as @a[distance=..16] run playsound nfg_forcefield:hum ambient @s ~ ~ ~ 0.6 2

# TODO: Need to set up targeting system of some sort here while placing Ending Corner?

# Initialize a Build Helper
function nfg_forcefield:corners/unconfigured/placing/building_helper/init

# Fix tags on Corner
tag @e[tag=ff_start] add ff_no_errors
tag @e[tag=ff_start] add ff_needs_config
tag @e[tag=ff_start] remove ff_init
tag @e[tag=ff_start] remove ff_start
