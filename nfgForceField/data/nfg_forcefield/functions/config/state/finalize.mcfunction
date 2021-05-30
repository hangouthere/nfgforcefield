tag @s add ff_no_errors

# Save before destroy if the Player is on Page 1, which has the Message Books
execute if score @s ff_config matches 1 run function nfg_forcefield:config/save/init

# No errors, so Destroy the menu container to clean up
execute if entity @s[tag=ff_no_errors] run setblock ~ ~ ~ air replace

# Cleanup Error status
tag @s remove ff_no_errors
