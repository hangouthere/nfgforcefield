# Error symbol
execute at @s run particle barrier ^ ^0.5 ^ 0 0 0 0 0 force @p[tag=ff_building]
# Error sound, and Kill the erroneous Corner
playsound nfg_forcefield:error master @p[tag=ff_building] ~ ~ ~

kill @s

# Give corners back if needed
tag @p[tag=ff_building,gamemode=!creative,gamemode=!spectator] add ff_return_corner

# Schedule for return, due to needing to have item fully out of inventory after this tick
schedule function nfg_forcefield:corners/unconfigured/error_checking/scheduled_return_corner 2t replace
