tag @s add ff_no_errors

# Remove No Errors tag unless we're near a configured Corner!
execute unless entity @e[tag=ff_corner,tag=ff_configured,distance=..5] run tag @s remove ff_no_errors

# Copy FF data from Corner to Config Marker
execute as @e[tag=ff_corner,tag=ff_configured,distance=..5] run data modify entity @e[tag=ff_config_marker,sort=nearest,limit=1] ArmorItems[0].tag set from entity @s ArmorItems[0].tag
