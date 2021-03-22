# Scoreboard - Init
# Initialize necessary scoreboards, default values, etc

scoreboard objectives remove _ff_settings
scoreboard objectives remove _ff_calcs
# We don't actually ever want to remove this objective
#scoreboard objectives remove _ff_pair_map
#scoreboard objectives remove _ff_player_map

# Settings
scoreboard objectives add _ff_settings dummy
# Temp storage for calculations
scoreboard objectives add _ff_calcs dummy
# Player ID
scoreboard objectives add _ff_pair_map dummy
scoreboard objectives add _ff_player_map dummy

# Load last value from local storage
execute store result score #_ffNextId _ff_calcs run data get storage nfg:forcefield _ffNextId
execute store result score DEBUG _ff_settings run data get storage nfg:forcefield DEBUG
# Set to defaults if empty
execute if score #_ffNextId _ff_calcs matches 0 run data modify storage nfg:forcefield _ffNextId set value 1
execute if score #_ffNextId _ff_calcs matches 0 run scoreboard players set #_ffNextId _ff_calcs 1

# Internal values for various knob tweaks
scoreboard players set SizeSmVol _ff_settings 1500
scoreboard players set SizeMedVol _ff_settings 10000
scoreboard players set SizeLgVol _ff_settings 70000

scoreboard players set SizeSmPerim _ff_settings 500
scoreboard players set SizeMedPerim _ff_settings 2000
scoreboard players set SizeLgPerim _ff_settings 10000
