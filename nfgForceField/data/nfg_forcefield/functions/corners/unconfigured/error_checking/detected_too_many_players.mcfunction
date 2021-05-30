# Corners - Error: Detected - Too Many Players
# Too many Players are close to the corner, and we
# aren't sure who actually placed the Corner
#####################################

# Tell Player about error, provide area min/max/current info
tellraw @p [{"text":"[nfgForceField] ","color":"gold"},{"text":"Error","color":"red"},{"text":": ","color":"white"},{"text":"Too many ","color":"white"},{"text":"Players ","color":"light_purple"},{"text":"are near the construction area. If you're not building, please step away a few blocks. If you are the builder, make sure people are cleared back some! ","color":"white"}]

function nfg_forcefield:corners/unconfigured/error_checking/clean_error
