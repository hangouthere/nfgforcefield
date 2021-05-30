# Count players within 8 blocks of Corner
execute store result score #numNearbyPlayers ff_config if entity @a[distance=..8]
# Add tag for too many errors, and remove No Errors
execute if score #numNearbyPlayers ff_config matches 2.. run tag @s add ff_too_many_players
execute if score #numNearbyPlayers ff_config matches 2.. run tag @s remove ff_no_errors

execute if entity @s[tag=ff_too_many_players] run tellraw @p [{"text":"[nfgForceField] ","color":"gold"},{"text":"Error","color":"red"},{"text":": ","color":"white"},{"text":"Too many players nearby! Ask them to ","color":"white"},{"text":"get some distance ","color":"white","italic": true},{"text":"from the ","color":"white"},{"text":"ForceField","color":"gold"},{"text":" Corner you're trying to Configure. If you're intending to Configure a ","color":"white"},{"text":"ForceField","color":"gold"},{"text":" other than the nearest Corner, ","color":"white"},{"text":"you","color":"white","italic": true},{"text":" should step away from the Corner, and try again.","color":"white"}]
