data modify storage nfg:forcefield operations.meta.search.list set from storage nfg:forcefield ForceFields
data modify storage nfg:forcefield operations.meta.search.target set from entity @e[tag=ff_demolish_marker,distance=..0.5,sort=nearest,limit=1] ArmorItems[0].tag

execute if score #DEBUG ff_calcs matches 55 run say Broken: Configured!
execute if score #DEBUG ff_calcs matches 55 store result score #numFF ff_calcs run data get storage nfg:forcefield ForceFields
execute if score #DEBUG ff_calcs matches 55 run tellraw @a ["Looking for FF ID: ", {"storage":"nfg:forcefield","nbt":"operations.meta.search.target.IDs"}, " from ", {"score":{"name": "#numFF","objective": "ff_calcs"}}, " ForceFields"]

# Attempt to find a matching updated ID of the current Corner
function nfg_forcefield:ff_search/by_ids_obj/search

execute if score #DEBUG ff_calcs matches 55 if data storage nfg:forcefield operations.meta.search.found_ff run tellraw @a ["Found it: ", {"storage":"nfg:forcefield","nbt":"operations.meta.search.found_ff.IDs"}]

# Found the associated ForceField data, so let's destroy it
execute if data storage nfg:forcefield operations.meta.search.found_ff run function nfg_forcefield:corners/security/demolish_marker/schedule_delete

# Give the player back the pieces
execute if entity @s[gamemode=!creative,gamemode=!spectator] run function nfg_forcefield:inventory/give_corners

# Clean up detection state
function nfg_forcefield:ff_search/cleanup_meta
