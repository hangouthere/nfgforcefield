tag @s add ff_config_init

# Mark Player as configuring
tag @s add ff_config_inactive

# Start the player on Page 0
scoreboard players set @s ff_config 1
# Internal storage for boundaries for config pages
scoreboard players set #maxPages ff_config 2
