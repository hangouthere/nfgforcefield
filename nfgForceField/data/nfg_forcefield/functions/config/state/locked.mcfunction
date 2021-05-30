# Determine if the Player went Inactive via a Rotation change...
# This is done by storing the result of re-copying the Player's rotation to the `ff_config_marker`.
execute store result score #playerWentInactive ff_config run data modify entity @e[tag=ff_config_marker,sort=nearest,limit=1] ArmorItems[0].tag.lock.Rotation set from entity @s Rotation

# If copy was SUCCESSFUL (ie, 1), then we assume the Player has left the Configurator!
execute if score #playerWentInactive ff_config matches 1 at @e[tag=ff_config_marker,sort=nearest,limit=1] run function nfg_forcefield:config/state/deactivate
