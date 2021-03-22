# Corners - Error: Detected - Volume Too Large
# Volume Area is too large, may cause system lag, error and kill it!
#####################################
# Started as: execute if score #_area _nfg_calcs > #_areaMax _ff_calcs

# Tell user about error, provide area min/max/current info
tellraw @p [{"text":"[nfgForceField] ","color":"gold"},{"text":"Error","color":"red"},{"text":": ","color":"white"},{"text":"The are you're trying to protect is too LARGE! ","color":"white"},{"text":"(Max: ","color":"white"},{"score":{"name":"#_areaMax","objective":"_ff_settings"},"color":"dark_green"},{"text":", Current: ","color":"white"},{"score":{"name":"#_area","objective":"_nfg_calcs"},"color":"red"},{"text":")","color":"white"}]

# Error sound, and Kill the erroneous Corner
playsound minecraft:entity.elder_guardian.curse master @p ~ ~ ~ 0.3 2
tag @s remove ff_no_errors
kill @s
