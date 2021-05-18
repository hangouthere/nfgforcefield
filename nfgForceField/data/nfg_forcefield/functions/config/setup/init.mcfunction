# Mark Player as configuring
tag @p[distance=..5] add ff_configuring

# Start the player on Page 0
scoreboard players set @p[tag=ff_configuring] ff_config 1
# Internal storage for boundaries for config pages
scoreboard players set #maxPages ff_config 2

# Summon the Configurator
function nfg_forcefield:config/setup/summon_configurator

# Do first reset of the items
execute as @p[tag=ff_configuring] run function nfg_forcefield:config/reset_items
