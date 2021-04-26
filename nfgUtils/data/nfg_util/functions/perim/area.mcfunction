# Perimeter - Area
# Calculates Perimeter area for a pre-calculated Volume, utilizing only x/z components
################################################
# Inputs:
# - #_vol_{x,y,z} - ForceField Volume
# Outputs:
# - #_area - Perimeter Area
################################################
# Psuedo:
# area = vol.x * vol.z

# Calculate Perimeter Area
scoreboard players operation #_area nfg_calcs = #_vol_x nfg_calcs
scoreboard players operation #_area nfg_calcs *= #_vol_z nfg_calcs
