# TODO: See if this is valid - needs a 2nd player
# Replace Chest if the Player is actively using it?
execute unless block ~ ~ ~ minecraft:chest run function nfg_forcefield:config/setup/setup_configurator

# Detect any Interactive Items from the UI
function nfg_forcefield:config/changes/detect_interactive_items

# Apply any changes necessary
execute if score #hasConfigItem ff_config matches 1.. run function nfg_forcefield:config/changes/apply
