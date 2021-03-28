# nfgForceField - Settings
# Configuration Variables

## Scoreboard Setup
# Cleanup Old Values, just in case...
scoreboard objectives remove _ff_settings
scoreboard objectives remove _ff_calcs
# Settings
scoreboard objectives add _ff_settings dummy
# Temp storage for calculations
scoreboard objectives add _ff_calcs dummy
scoreboard objectives add _ff_pair_map dummy

## ForceField Settings
# TODO: Select good values!
scoreboard players set MinAreaVolume _ff_settings 10
scoreboard players set MaxAreaVolume _ff_settings 2147483647
scoreboard players set MinAreaPerim _ff_settings 10
scoreboard players set MaxAreaPerim _ff_settings 2147483647
#scoreboard players set MinAreaVolume _ff_settings 1000
#scoreboard players set MaxAreaVolume _ff_settings 70000
#scoreboard players set MinAreaPerim _ff_settings 400
#scoreboard players set MaxAreaPerim _ff_settings 10000
# Setup FF IDs
scoreboard players set #_ffNextId _ff_calcs 1
# Mark DEBUG Off by default
scoreboard players set DEBUG _ff_settings 0

## Data Storage Configuration
# Default FF Template
data modify storage nfg:forcefield _tmpl.buildFF set value {id:0,ownerId:0,start:{x:0,y:0,z:0},end:{x:0,y:0,z:0},calcs:{vec:{x:0,y:0,z:0},vol:{x:0,y:0,z:0},center:{x:0,y:0,z:0},w2l:{offset:{x:0,y:0,z:0},bounds:{x:0,y:0,z:0}},dist_sq:0,area:0}}


