# Scoreboard - Init
# Initialize necessary scoreboards, default values, etc

## Scoreboard Setup
# Cleanup Old Values, just in case...
scoreboard objectives remove _nfg_const
scoreboard objectives remove _nfg_calcs
scoreboard objectives remove _nfg_settings
# Constants
scoreboard objectives add _nfg_const dummy
# Player ID Assignment tracker
scoreboard objectives add _nfg_player_id dummy
# Settings
scoreboard objectives add _nfg_settings dummy
# Temp storage for calculations
scoreboard objectives add _nfg_calcs dummy

## NFG Settings
# Constants
scoreboard players set #_1 _nfg_const 1
scoreboard players set #_2 _nfg_const 2
scoreboard players set #_-1 _nfg_const -1
# Setup Player ID assignment value
scoreboard players set #_nfgNextPlayerId _nfg_calcs 1
# Mark DEBUG Off by default
scoreboard players set DEBUG _nfg_settings 0
