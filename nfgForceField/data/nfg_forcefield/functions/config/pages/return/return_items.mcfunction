# Perform the return of the first item (check was done prior to this executing!)
function nfg_forcefield:config/pages/return/return_item_summon

# If there's still items, continue the loop
execute if data storage nfg:forcefield operations.meta.config.returnItems[0] run function nfg_forcefield:config/pages/return/return_items
