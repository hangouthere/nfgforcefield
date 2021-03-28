# Power Status - Power Off
# Turn off the Power!
#####################################
# Started as: execute as @e[tag=ff_corner,tag=ff_configured] at @s run execute if entity @s[tag=ff_power_off]

# Update Tools & Pose so it appears powered off :(
data modify entity @s Pose set value {Head:[75f,0f,0f]}
# remove HandItems to look weak
data modify entity @s HandItems set value []

# Update MetaTags
data modify entity @s ArmorItems[3].tag._ff.configured.power_status set value 0

# Fun Particles at the Corner
particle minecraft:smoke ~ ~ ~ 0 1 0 0.1 10
# Fun Sound Effect at the Corner
playsound minecraft:entity.wither.hurt block @a[distance=..16] ~ ~ ~ 0.6 0.1
