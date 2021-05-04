# Corners - Error: Detected - Volume Too Small
# Volume Area is too small, not worth system resources, error and kill it!
#####################################

# Tell user about error, provide area min/max/current info
tellraw @p [{"text":"[nfgForceField] ","color":"gold"},{"text":"Error","color":"red"},{"text":": ","color":"white"},{"text":"The ForceField Shape you're trying to protect is too SMALL! Try moving further from your starting corner. ","color":"white"},{"text":"(Minimum: ","color":"white"},{"score":{"name":"MinAreaPerim","objective":"ff_calcs"},"color":"dark_green"},{"text":", Current: ","color":"white"},{"score":{"name":"#_area","objective":"nfg_calcs"},"color":"red"},{"text":")","color":"white"}]

# Error sound, and Kill the erroneous Corner
playsound minecraft:entity.elder_guardian.curse master @p ~ ~ ~ 0.3 2
tag @s remove ff_no_errors
kill @s

# Give corners back if needed
execute unless entity @p[gamemode=creative] run schedule function nfg_forcefield:inventory/give_corner 2t replace
