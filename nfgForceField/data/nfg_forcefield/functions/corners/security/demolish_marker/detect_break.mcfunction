execute if score #DEBUG ff_calcs matches 55 run say Break Detected!

# If an Owner is near, demolish as an Configured FF
execute as @p[tag=ff_owner,tag=!ff_building,distance=..8] run function nfg_forcefield:corners/security/demolish_marker/break_configured
# If building, demolish as an UnConfigured FF
execute as @p[tag=ff_building,distance=..8] run function nfg_forcefield:corners/security/demolish_marker/break_unconfigured

# Kill Tooltip items
kill @e[tag=ff_tooltip_line,distance=..3]

# Break any nearby Configurators!
execute at @e[limit=1,sort=nearest,distance=..16,tag=ff_config_marker] run setblock ~ ~ ~ air replace

# Kill `demolish_marker`
kill @s

# Kill items dropped by the Corner
kill @e[type=item,nbt={Item:{tag:{ff_corner_armor: 1b}}}]
# And the armor stand left behind
kill @e[type=item,nbt={Item:{id:"minecraft:armor_stand"}},sort=nearest,limit=1]

execute as @a[distance=..16] run function nfg_forcefield:helper/player/cleanup_state
execute as @a[distance=..16] run scoreboard players reset @s ff_bind_prot
execute as @a[distance=..16] run scoreboard players reset @s ff_bind_kill
