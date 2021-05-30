data modify storage nfg:forcefield operations.meta.list set from storage nfg:forcefield operations.create
data modify storage nfg:forcefield operations.meta.target set from entity @s ArmorItems[0].tag

# Attempt to find a matching updated ID of the current Corner
function nfg_forcefield:ff_search/by_ids_obj/search

# Found that we match as updated! Let's attempt to do said update!
execute if data storage nfg:forcefield operations.meta.found_ff run function nfg_forcefield:corners/unconfigured/config_start/apply_config

function nfg_forcefield:ff_search/cleanup_meta

# Mark End Corner as now Configured
tag @s add ff_configured
tag @s remove ff_needs_config
tag @s remove ff_no_errors
