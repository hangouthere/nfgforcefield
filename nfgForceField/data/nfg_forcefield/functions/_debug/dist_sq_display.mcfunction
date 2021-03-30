# Get current FF center

execute store result score in1_x _nfg_calcs run data get storage nfg:forcefield ForceFields[0].calcs.center.x
execute store result score in1_y _nfg_calcs run data get storage nfg:forcefield ForceFields[0].calcs.center.y
execute store result score in1_z _nfg_calcs run data get storage nfg:forcefield ForceFields[0].calcs.center.z

function nfg_util:vec/store_in2

function nfg_util:vec/calc
function nfg_util:vec/distance_squared

title @s actionbar [{"text":"FFID: "},{"nbt":"ForceFields[0].id","storage":"nfg:forcefield"},{"text":" | DistSQ: "},{"score":{"name":"#_dist_sq","objective":"_nfg_calcs"}},{"text":" - "},{"nbt":"ForceFields[0].calcs.dist_sq_max","storage":"nfg:forcefield"}]
