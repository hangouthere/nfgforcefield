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
scoreboard players set #_inRange nfg_calcs 0
scoreboard players set #_aboveLow nfg_calcs 0
scoreboard players set #_belowHigh nfg_calcs 0

# Test Range!

execute store result score #_aboveLow nfg_calcs if score #_testFor nfg_calcs >= #_low nfg_calcs
execute store result score #_belowHigh nfg_calcs if score #_testFor nfg_calcs <= #_high nfg_calcs

# AND operation to ensure both are satisified
scoreboard players operation #_inRange nfg_calcs = #_aboveLow nfg_calcs
scoreboard players operation #_inRange nfg_calcs *= #_belowHigh nfg_calcs
