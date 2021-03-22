# Corners - Config: Finalize Ending Corner - Protection Type Mob
# Finalize Protection Type Mob
#####################################
# Started as: execute as @e[tag=ff_corner,tag=!ff_configured,tag=ff_start] | execute at @e[tag=!ff_configured,tag=ff_start,tag=ff_prot_build]

# Announce Mob Type Completion
tellraw @p [{"text":"[nfgForceField] ","color":"gold"},{"text":"Mob Protection ","color":"light_purple"},{"text":"ForceField "},{"text":"Created!","color":"white"}]

# Mark ourselves (Ending Corner) with the Protection Type
data modify entity @s ArmorItems[3].tag._ff.type set value "Mob"

# Mark paired Ending Corner with the Protection Type
execute as @e[tag=ff_corner,tag=!ff_configured,tag=ff_end] run data modify entity @s ArmorItems[3].tag._ff.type set value "Mob"
