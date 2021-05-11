execute if entity @p[tag=!ff_building] run function nfg_forcefield:corners/security/demolish_marker/break_configured
execute if entity @p[tag=ff_building] run function nfg_forcefield:corners/security/demolish_marker/break_unconfigured

# Kill `demolish_marker`
kill @s

# Kill items dropped by the Corner
kill @e[type=item,nbt={Item:{tag:{ff_corner_armor: 1b}}}]
# And the armor stand left behind
kill @e[type=item,nbt={Item:{id:"minecraft:armor_stand"}},sort=nearest,limit=1]

# Kill Tooltip items
kill @e[tag=ff_tooltip_line,distance=..1]

# Clean up Player tags
tag @p remove ff_tooltip_near
