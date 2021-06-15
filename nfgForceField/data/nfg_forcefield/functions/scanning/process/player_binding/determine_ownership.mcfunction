# Get owner ID and store it for further evaluation
execute store result score #scan_ownerId ff_calcs run data get storage nfg:forcefield scanner.current.IDs.player

# Owner ID matches the Player ID, mark the Player as the Owner!
execute if score @s nfg_player_id = #scan_ownerId ff_calcs run tag @s add ff_owner
tag @s[tag=ff_owner] add ff_ally
execute unless score @s nfg_player_id = #scan_ownerId ff_calcs run tag @s add ff_stranger

#TODO: Add allied lookup...
#execute if score @s nfg_player_id = #scan_ownerId ff_calcs run tag @s add ff_ally

# Mark as Binding Allied or Stranger
# This is used later in the Scanning Process loop for Messaging Purposes
execute if entity @s[tag=ff_ally] run tag @s add ff_entering_ally
execute unless entity @s[tag=ff_ally] run tag @s add ff_entering_stranger
