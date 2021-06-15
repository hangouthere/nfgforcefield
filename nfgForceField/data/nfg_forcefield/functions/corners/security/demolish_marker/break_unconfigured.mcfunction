# Give the player back the piece
execute as @s[gamemode=!creative,gamemode=!spectator] run function nfg_forcefield:inventory/give_corner

# Clean up player state
function nfg_forcefield:helper/player/cleanup_state

kill @e[tag=ff_building_helper,sort=nearest,limit=1]
