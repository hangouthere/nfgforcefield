# Corners - Scheduled: Hum Sound
# Play FF Hum sound every 90 seconds to nearby players (if they're close enough)

execute at @e[tag=ff_corner,tag=ff_configured,tag=ff_power_on] as @a[distance=..16] run playsound nfg_forcefield:hum ambient @s ~ ~ ~ 0.6 0.7

schedule function nfg_forcefield:corners/scheduled/hum_sound 90s
