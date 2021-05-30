# Corners - Scheduled: Target Closest Players
# Targets a nearby player (if they're close enough)
# Nothing more than fun to make the corners seem "active"
# Don't run every tick, or the stand "ignores" gravity

execute as @e[tag=ff_corner,tag=ff_configured,tag=ff_power_on] at @s if entity @p[distance=..16] facing entity @p[distance=..16] eyes run function nfg_forcefield:scheduled/corners/target_player/target

#execute as @e[tag=ff_corner,tag=ff_configured,tag=ff_power_on] at @s if entity @p[distance=..16] facing entity @p[distance=..16] eyes run tp @s ^ ^ ^ ~ ~

schedule function nfg_forcefield:scheduled/corners/target_player/tick 5t replace
