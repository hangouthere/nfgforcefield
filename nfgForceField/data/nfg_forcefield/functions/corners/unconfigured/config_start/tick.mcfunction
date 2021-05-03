data remove storage nfg:forcefield operations.meta

# Attempt to find a matching creatable ID of the current Corner
function nfg_forcefield:corners/unconfigured/config_start/find_created_id

# Store Start Corner Data since if it was just found
execute if data storage nfg:forcefield operations.meta.IDs run function nfg_forcefield:corners/unconfigured/store_corner_data

data remove storage nfg:forcefield operations.meta

# Mark End Corner as now Configured
tag @s add ff_configured
tag @s remove ff_needs_config
tag @s remove ff_no_errors
