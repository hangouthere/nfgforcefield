# Player Entered a Build Protection Zone (and wasn't bound to THIS FF already)
execute unless entity @s[tag=ff_stranger] if score #_hitDetected nfg_util matches 1 run function nfg_forcefield:scanning/process/prot_build/stranger_entering

# Player Leaving the Build Protection Zone (if already bound)
scoreboard players add @a ff_player_bind 0
execute if score @s ff_player_bind = #scan_ffId ff_calcs if score #_hitDetected nfg_util matches 0 if entity @s[tag=ff_stranger] run function nfg_forcefield:scanning/process/prot_build/stranger_leaving
