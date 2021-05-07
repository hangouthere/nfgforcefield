## Do evaluations

# Copy value to test against
data modify storage nfg:forcefield operations.meta.currUpdated set from storage nfg:forcefield operations.meta.found_ff.version

# Do ID compare...
execute store success score #_isNewVersion ff_calcs run data modify storage nfg:forcefield operations.meta.currUpdated set from storage nfg:forcefield operations.meta.target.version

# New Version
execute if score #_isNewVersion ff_calcs matches 1 run function nfg_forcefield:corners/configured/updated/apply_update
