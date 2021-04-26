# Assign Player ID
# Assigns an ID to a player if they don't have one. Useful for associating entities to the players!
#####################################
# Started as: Scheduled

scoreboard players operation @s nfg_player_id = #_nfgNextPlayerId nfg_calcs
execute store result storage nfg:util nfgNextPlayerId int 1 run scoreboard players add #_nfgNextPlayerId nfg_calcs 1
