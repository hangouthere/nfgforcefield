# Assign Player ID
# Assigns an ID to a player if they don't have one. Useful for associating entities to the players!
#####################################
# Started as: Scheduled

scoreboard players operation @s _nfg_player_id = #_nfgNextPlayerId _nfg_calcs
execute store result storage nfg:util _nfgNextPlayerId int 1 run scoreboard players add #_nfgNextPlayerId _nfg_calcs 1
