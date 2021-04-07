# Corners - Error: Detected - Too Many Starters
# Too many Starting Corners have been placed in the world, error and kill it!
#####################################
# Started as: execute as @e[tag=ff_corner] at @s | execute if score #_numUncfgStart _ff_calcs matches 2..

# Tell user about error, provide click solution...
tellraw @p [{"text":"[nfgForceField] ","color":"gold"},{"text":"Error","color":"red"},{"text":": ","color":"white"},{"text":"Too many Starting Corners placed! Destroy previous Corners? ","color":"white"},{"text":"["},{"text":"Yes","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Warning","color":"yellow"},{"text":": "},{"text":"This will reset unfinished ","color":"white"},{"text":"ForceFields","color":"gold"},{"text":"!"}]},"clickEvent":{"action":"run_command","value":"/function nfg_forcefield:corners/uninit"}},{"text":"]","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"yellow"}]}}]

# Error sound, and KILL the erroneous Corner
playsound minecraft:entity.elder_guardian.curse master @p ~ ~ ~ 0.3 2
tag @s remove ff_no_errors
kill @s

# Give corners back if needed
execute unless entity @p[gamemode=creative] run schedule function nfg_forcefield:inventory/give_corners 2t replace
