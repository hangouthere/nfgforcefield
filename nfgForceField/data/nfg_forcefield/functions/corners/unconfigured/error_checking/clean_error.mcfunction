# Error sound, and Kill the erroneous Corner
playsound minecraft:entity.elder_guardian.curse master @p ~ ~ ~ 0.3 2
tag @s remove ff_no_errors
kill @s

# Give corners back if needed
execute unless entity @p[gamemode=creative] run schedule function nfg_forcefield:inventory/give_corner 2t replace
