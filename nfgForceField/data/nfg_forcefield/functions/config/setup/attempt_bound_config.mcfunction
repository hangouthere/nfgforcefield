tag @s add ff_no_errors

# Remove No Errors tag unless we're bound!
execute unless entity @s[scores={ff_player_bind=1..}] run tag @s remove ff_no_errors

# Tell Player they're not in Configurator conditions
execute if entity @s[tag=!ff_no_errors] run tellraw @p [{"text":"[nfgForceField] ","color":"gold"},{"text":"Error","color":"red"},{"text":": ","color":"white"},{"text":"You need to be either near a ","color":"white"},{"text":"ForceField","color":"gold"},{"text":" Corner, or stand within the ","color":"white"},{"text":"ForceField","color":"gold"},{"text":" you're trying to Configure.","color":"white"}]

# Setup FF Data from Bound Data
# Setup search data...
data remove storage nfg:forcefield operations.meta
data modify storage nfg:forcefield operations.meta.list set from storage nfg:forcefield ForceFields
# Copy Bound FF ID to the search target
execute store result storage nfg:forcefield operations.meta.target int 1 run scoreboard players get @s ff_player_bind

# Attempt to find a matching updated ID of the current Corner
function nfg_forcefield:ff_search/by_ff_id/search

# Copy found FF to Config Marker
data modify entity @e[tag=ff_config_marker,sort=nearest,limit=1] ArmorItems[0].tag set from storage nfg:forcefield operations.meta.found_ff

# Clean up Search Meta
function nfg_forcefield:ff_search/cleanup_meta
