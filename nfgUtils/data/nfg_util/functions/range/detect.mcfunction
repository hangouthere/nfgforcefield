# Range - Detect
# Determines if a Number is between two values
################################################
# Inputs:
# - #_low - Low input value
# - #_high - High input value
# - #_testFor - Number to check Range
# Outputs:
# - #_inRange - Boolean
################################################
# Psuedo:
# #_aboveLow = #_testFor >= #_low
# #_belowHigh = #_high > #_testFor
# #_inRange = #_aboveLow *= #_belowHigh

# Setup test vars
scoreboard players set #_inRange nfg_util 0
scoreboard players set #_aboveLow nfg_util 0
scoreboard players set #_belowHigh nfg_util 0

# Test Range!

execute store result score #_aboveLow nfg_util if score #_testFor nfg_util >= #_low nfg_util
execute store result score #_belowHigh nfg_util if score #_testFor nfg_util <= #_high nfg_util

# AND operation to ensure both are satisified
scoreboard players operation #_inRange nfg_util = #_aboveLow nfg_util
scoreboard players operation #_inRange nfg_util *= #_belowHigh nfg_util
