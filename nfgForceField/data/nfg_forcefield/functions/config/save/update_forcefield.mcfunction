# Copy FF from Corner to temp space
data modify storage nfg:forcefield operations.meta.config.ff set from entity @e[tag=ff_corner,sort=nearest,limit=1] ArmorItems[0].tag

# Copy Messages to temp space
function nfg_forcefield:config/save/copy_messages

# Copy back from temp space to Corner
data modify entity @e[tag=ff_corner,sort=nearest,limit=1] ArmorItems[0].tag set from storage nfg:forcefield operations.meta.config.ff

# Schedule an update for the Corner
execute as @e[tag=ff_corner,sort=nearest,limit=1] run function nfg_forcefield:corners/configured/power_status/change/schedule_update

# Mark as successfully saved
tag @s add ff_config_saved
