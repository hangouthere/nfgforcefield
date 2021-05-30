# Remove player from prot build mode
tag @s remove ff_stranger
tag @s add ff_ally

gamemode survival @s

# Player Entered a Build Protection Zone (and wasn't bound to THIS FF already)
execute unless entity @s[scores={ff_player_bind=1..}] if score #_hitDetected nfg_util matches 1 run function nfg_forcefield:scanning/process/prot_build/allied_entering

# Player Leaving the Build Protection Zone (if already bound)
execute if score @s ff_player_bind = #scan_ffId ff_calcs if score #_hitDetected nfg_util matches 0 run function nfg_forcefield:scanning/process/prot_build/allied_leaving
