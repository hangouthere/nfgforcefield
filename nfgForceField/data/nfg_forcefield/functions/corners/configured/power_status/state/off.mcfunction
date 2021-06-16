# Power Status - Power Off
# Turn off the Power!

# Update Tools & Pose so it appears powered off :(
data modify entity @s Pose set value {Head:[75f,0f,0f]}
# remove HandItems to look weak
data modify entity @s HandItems set value []

# Fun Particles at the Corner
particle minecraft:smoke ~ ~ ~ 0 1 0 0.1 10
# Fun Sound Effect at the Corner
playsound nfg_forcefield:power_off block @a[distance=..16] ~ ~ ~
