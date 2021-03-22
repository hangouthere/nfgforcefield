# Corners - Error: Detected - Missing Starting Corner
# Ending Corner was placed, but there wasn't a matching Starting Corner, error and kill it!
#####################################
# Started as: execute as @e[tag=ff_corner] at @s | execute if score #_numUncfgStart _ff_calcs matches 0 run execute if score #_numUncfgEnd _ff_calcs matches 1..

# Tell user about error
tellraw @p [{"text":"[nfgForceField] ","color":"gold"},{"text":"Error","color":"red"},{"text":": ","color":"white"},{"text":"Missing Starter Corner! You must first place a Starter Corner before you can place and Ending Corner.","color":"white"}]

# Error sound, and Kill the erroneous Corner
playsound minecraft:entity.elder_guardian.curse master @p ~ ~ ~ 0.3 2
tag @s remove ff_no_errors
kill @s
