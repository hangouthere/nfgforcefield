data remove storage nfg:forcefield _scan.found_id

# Attempt to find a matching demolishable ID of the current Corner
function nfg_forcefield:corners/configured/orphaned/find_deleted_id

# Found out that we're an Orphan, so let's destroy ourselves!
execute if data storage nfg:forcefield _scan.found_id run function nfg_forcefield:corners/configured/orphaned/destroy_orphan
