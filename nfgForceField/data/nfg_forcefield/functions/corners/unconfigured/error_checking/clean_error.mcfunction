# Error sound, and Kill the erroneous Corner
playsound nfg_forcefield:error master @p ~ ~ ~
tag @s remove ff_no_errors
kill @s

# Give corners back if needed
execute unless entity @p[gamemode=creative] unless entity @p[gamemode=spectator] run schedule function nfg_forcefield:inventory/give_corner 2t replace
