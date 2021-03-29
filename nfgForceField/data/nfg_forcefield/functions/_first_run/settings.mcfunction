# nfgForceField - Settings
# Configuration Variables

## Scoreboard Setup
# Cleanup Old Values, just in case...
scoreboard objectives remove _ff_calcs
scoreboard objectives remove _ff_pair_map
# Temp storage for calculations
scoreboard objectives add _ff_calcs dummy
scoreboard objectives add _ff_pair_map dummy
# Setup FF IDs
scoreboard players set #_ffNextId _ff_calcs 1
# TODO: Set valid values... Also hide via #_ prefix
scoreboard players set MinAreaVolume _ff_calcs 10
scoreboard players set MinAreaPerim _ff_calcs 10

## Data Storage Configuration
# Default FF Template
data modify storage nfg:forcefield _tmpl.buildFF set value {id:0,ownerId:0,start:{x:0,y:0,z:0},end:{x:0,y:0,z:0},calcs:{vec:{x:0,y:0,z:0},vol:{x:0,y:0,z:0},center:{x:0,y:0,z:0},w2l:{offset:{x:0,y:0,z:0},bounds:{x:0,y:0,z:0}},dist_sq:0,area:0}}
# ForceField Storage
data modify storage nfg:forcefield ForceFields set value []
