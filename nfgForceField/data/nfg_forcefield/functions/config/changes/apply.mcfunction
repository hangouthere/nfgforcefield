# Return non-Configure items to the Player for a Page
function nfg_forcefield:config/pages/page_return

# Save before moving off Page 1, which has the Message Books
execute if score @s ff_config matches 1 if score #hasPaginate ff_config matches 1 run function nfg_forcefield:config/save/init

# Handle Page Changes
execute if score #hasPaginate ff_config matches 1 run function nfg_forcefield:config/changes/detected_page_change

# Handle Protection Shape Changes
execute if score #hasProtBuildCfg ff_config matches 1 run function nfg_forcefield:config/changes/prot_build/detected_change
execute if score #hasProtMobCfg ff_config matches 1 run function nfg_forcefield:config/changes/prot_mob/detected_change

# Force a re-render whenever Config Changes apply!
execute as @p[tag=ff_config_active] run function nfg_forcefield:config/pages/reset_items

# Cleanup Error status
tag @s remove ff_no_errors
