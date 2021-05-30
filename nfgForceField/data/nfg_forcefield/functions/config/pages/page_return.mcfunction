# Initialize empty array of items to return to the player
data modify storage nfg:forcefield operations.meta.config.returnItems set value []

# Setup Page 1
execute if score @s ff_config matches 1 run function nfg_forcefield:config/pages/page_01/return
# Setup Page 2
execute if score @s ff_config matches 2 run function nfg_forcefield:config/pages/page_02/return

# Return Items, if there are any
execute if data storage nfg:forcefield operations.meta.config.returnItems[0] run function nfg_forcefield:config/pages/return/return_items
