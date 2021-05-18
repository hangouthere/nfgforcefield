# Detect any Interactive Items from the UI
function nfg_forcefield:config/changes/detect_interactive_items

# Apply any changes necessary
execute if score #hasConfigItem ff_config matches 1.. run function nfg_forcefield:config/changes/apply

# Set up internal items to the Configurator
execute if score #hasConfigItem ff_config matches 1.. run execute as @p[tag=ff_configuring] run function nfg_forcefield:config/reset_items
