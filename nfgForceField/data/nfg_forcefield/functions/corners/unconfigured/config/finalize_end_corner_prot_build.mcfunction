# Corners - Config: Finalize Ending Corner - Protection Type Build
# Finalize Protection Type Build
#####################################
# Started as: execute as @e[tag=ff_corner] at @s | execute if entity @s[tag=!ff_init,tag=ff_end] | execute at @e[tag=!ff_configured,tag=ff_start,tag=ff_prot_build,sort=nearest,limit=1]

# Announce Build Type Completion
tellraw @p [{"text":"[nfgForceField] ","color":"gold"},{"text":"Build Protection ","color":"light_purple"},{"text":"ForceField "},{"text":"Created!","color":"white"}]

# Mark ourselves (Ending Corner) with the Protection Type
data modify entity @s ArmorItems[0].tag._ff.type set value "Build"

# Mark paired Starting Corner (nearest, since we exec AT it) with the Protection Type
execute as @e[tag=ff_corner,sort=nearest,limit=1] run data modify entity @s ArmorItems[0].tag._ff.type set value "Build"
