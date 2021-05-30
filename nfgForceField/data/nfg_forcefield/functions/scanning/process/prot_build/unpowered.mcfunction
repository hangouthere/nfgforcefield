# Remove player from prot build mode
tag @s remove ff_stranger

# Player Entered a Build Protection Zone (and wasn't bound to THIS FF already)
execute if score #_hitDetected nfg_util matches 1 store result score @s ff_player_bind run scoreboard players get #scan_ffId ff_calcs

# Player Leaving the Build Protection Zone (if already bound)
execute if score @s ff_player_bind = #scan_ffId ff_calcs if score #_hitDetected nfg_util matches 0 run scoreboard players reset @s ff_player_bind
