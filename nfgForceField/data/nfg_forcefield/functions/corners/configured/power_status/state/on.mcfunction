# Power Status - Power On
# Turn on the Power!

# Update Tools & Pose so it appears powered on!
data modify entity @s Pose set value {LeftArm:[311f,0f,0f],RightArm:[275f,0f,0f]}
# Add HandItems to look tough
data modify entity @s HandItems set value [{id:"minecraft:diamond_sword",Count:1b,tag:{ff_corner_armor:1b}},{id:"minecraft:shield",Count:1b,tag:{ff_corner_armor:1b}}]

# Fun Particles at the Corner
particle minecraft:end_rod ~ ~ ~ 0 1 0 0.1 10
# Fun Sound Effect at the Corner
playsound nfg_forcefield:power_on block @a[distance=..16] ~ ~ ~
