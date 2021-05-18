execute store result score #hasPrev ff_config run clear @s diamond_hoe{ff:{prev:1b}} 0

# Detect if the player is changing pages
execute if score #hasPrev ff_config matches 1.. run scoreboard players remove @s ff_config 1
execute if score #hasPrev ff_config matches ..0 run scoreboard players add @s ff_config 1

# Make sure we're still in bounds, otherwise wrap around
# < 1
execute if score @s ff_config matches ..0 store result score @s ff_config run scoreboard players get #maxPages ff_config
# > #maxPages
execute if score @s ff_config > #maxPages ff_config run scoreboard players set @s ff_config 1
