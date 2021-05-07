#### NOTE: This only ensures configuring the ENDING corner on this tick.
#          Starting corners are configured potentially on same tick if they are loaded,
#          however if in an unloaded chunk they will be updated once detected on a future tick.
#          During this tick's process, we no longer use the building helper, but rather assume storage is sync

## Perform Calculations
# Store current FF build data in storage to reduce lookup costs via @e target selectors
data modify storage nfg:forcefield operations.meta.build_ff set from entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag

# Force execution as the Starting/Ending for assurance of all calcs
function nfg_forcefield:corners/unconfigured/config_end/store_in1_in2

# Calculate ForceField data
function nfg_forcefield:corners/unconfigured/config_end/calc_ff_data

## Store Calculations
# Store calculated data in storage
function nfg_forcefield:corners/unconfigured/config_end/store_ff_data

# Fake as if we just found the corner in a search to reuse `store_corner_data`
data modify storage nfg:forcefield operations.meta.found_ff set from storage nfg:forcefield operations.meta.build_ff
# Store End Corner Data since it was just placed
function nfg_forcefield:corners/unconfigured/store_corner_data

# Add ForceField to storage operation `created` array for attaching later to corners that may be in an unloaded chunk
data modify storage nfg:forcefield operations.create append from storage nfg:forcefield operations.meta.build_ff

# Add ForceField to storage `ForceField` array for persistence and scans!
data modify storage nfg:forcefield ForceFields append from storage nfg:forcefield operations.meta.build_ff

# Handle Ending Corners (@s) specifically
function nfg_forcefield:corners/unconfigured/config_end/cleanup_build_process
