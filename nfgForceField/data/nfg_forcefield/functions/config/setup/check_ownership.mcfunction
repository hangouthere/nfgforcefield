# Init test value with the FF's configured Owner
data modify storage nfg:forcefield operations.meta.id_comp set from entity @e[tag=ff_config_marker,sort=nearest,limit=1] ArmorItems[0].tag.IDs.owner

# Copy actual player's ID, and on FAILURE means it matches!
execute store success score #notOwner ff_config store result storage nfg:forcefield operations.meta.id_comp int 1 run scoreboard players get @s nfg_player_id

# NOT Owner!
execute if score #notOwner ff_config matches 1 run tag @s remove ff_no_errors
execute if score #notOwner ff_config matches 1 run tag @s add ff_not_owner
