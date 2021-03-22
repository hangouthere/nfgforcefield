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
scoreboard players set #_inRange _nfg_calcs 0
scoreboard players set #_aboveLow _nfg_calcs 0
scoreboard players set #_belowHigh _nfg_calcs 0

# Test Range!

execute store result score #_aboveLow _nfg_calcs if score #_testFor _nfg_calcs >= #_low _nfg_calcs
execute store result score #_belowHigh _nfg_calcs if score #_testFor _nfg_calcs <= #_high _nfg_calcs

# AND operation to ensure both are satisified
scoreboard players operation #_inRange _nfg_calcs = #_aboveLow _nfg_calcs
scoreboard players operation #_inRange _nfg_calcs *= #_belowHigh _nfg_calcs
