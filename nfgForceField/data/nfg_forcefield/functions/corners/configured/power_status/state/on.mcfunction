# Power Status - Power On
# Turn on the Power!
#####################################
# Started as: execute as @e[tag=ff_corner,tag=ff_configured] at @s run execute if entity @s[tag=ff_power_on]

# Update Tools & Pose so it appears powered on!
data modify entity @s Pose set value {LeftArm:[311f,0f,0f],RightArm:[275f,0f,0f]}
# Add HandItems to look tough
data modify entity @s HandItems set value [{id:"minecraft:diamond_sword",Count:1b},{id:"minecraft:shield",Count:1b}]

# Fun Particles at the Corner
particle minecraft:end_rod ~ ~ ~ 0 1 0 0.1 10
# Fun Sound Effect at the Corner
playsound minecraft:entity.guardian.death block @a[distance=..16] ~ ~ ~ 1 0.2
