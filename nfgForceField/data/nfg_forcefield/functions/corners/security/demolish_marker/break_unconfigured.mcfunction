execute if score #DEBUG ff_calcs matches 55 run say Broken: Unconfigured!

# Give the player back the piece
execute as @s[gamemode=!creative,gamemode=!spectator] run function nfg_forcefield:inventory/give_corner

kill @e[tag=ff_building_helper,sort=nearest,limit=1]
