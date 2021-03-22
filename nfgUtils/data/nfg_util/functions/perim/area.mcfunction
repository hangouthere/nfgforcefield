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
scoreboard players operation #_area _nfg_calcs = #_vol_x _nfg_calcs
scoreboard players operation #_area _nfg_calcs *= #_vol_z _nfg_calcs
