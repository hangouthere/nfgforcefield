# If we have data, return it!
execute if data storage nfg:forcefield operations.meta.config.returnItems[0] run function nfg_forcefield:config/pages/perform_return

# If there's still items, continue the loop
execute if data storage nfg:forcefield operations.meta.config.returnItems[0] run function nfg_forcefield:config/pages/loop_return
