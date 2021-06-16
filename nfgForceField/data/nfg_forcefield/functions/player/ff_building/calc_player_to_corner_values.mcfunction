# Store in1 as ourselves (the player locked)
function nfg_util:vec/store_in1

# Store Starting Corner as in2
data modify storage nfg:forcefield operations.meta.tempEval set from entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag
execute store result score in2_x nfg_util run data get storage nfg:forcefield operations.meta.tempEval.corner.start[0] 1
execute store result score in2_y nfg_util run data get storage nfg:forcefield operations.meta.tempEval.corner.start[1] 1
execute store result score in2_z nfg_util run data get storage nfg:forcefield operations.meta.tempEval.corner.start[2] 1
data remove storage nfg:forcefield operations.meta.tempEval

# Calculate supporting values
function nfg_util:vec/calc
function nfg_util:vol/calc
function nfg_util:perim/area
