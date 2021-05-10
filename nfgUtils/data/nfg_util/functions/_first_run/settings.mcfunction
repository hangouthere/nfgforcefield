# Scoreboard - Init
# Initialize necessary scoreboards, default values, etc

## Scoreboard Setup
# Cleanup Old Values, just in case...
scoreboard objectives remove nfg_const
scoreboard objectives remove nfg_util
# Constants
scoreboard objectives add nfg_const dummy
# Player ID Assignment tracker
scoreboard objectives add nfg_player_id dummy
# Settings/Calculations
scoreboard objectives add nfg_util dummy

## NFG Settings
# Constants
scoreboard players set $-1 nfg_const -1
scoreboard players set $2 nfg_const 2
scoreboard players set $3 nfg_const 3
# Setup Player ID assignment value
scoreboard players set #_nfgNextPlayerId nfg_util 1
# Mark DEBUG Off by default
scoreboard players set DEBUG nfg_util 0
