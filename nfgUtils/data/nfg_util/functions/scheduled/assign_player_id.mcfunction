# Assign Player ID
# Assigns an ID to a player if they don't have one. Useful for associating entities to the players!

scoreboard players operation @s nfg_player_id = #_nfgNextPlayerId nfg_util

execute store result storage nfg:util nfgNextPlayerId int 1 run scoreboard players add #_nfgNextPlayerId nfg_util 1
