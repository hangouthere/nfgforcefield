# Corners - Error: Detected - Perimeter Too Small
# ForceField Shape Area is too small, not worth system resources, error and kill it!
#####################################

# Tell Player about error, provide area min/max/current info
tellraw @p[tag=ff_building] [{"text":"[nfgForceField] ","color":"gold"},{"text":"Error","color":"red"},{"text":": ","color":"white"},{"text":"The ForceField Shape you're trying to protect is too SMALL! Try moving further from your starting corner. ","color":"white"},{"text":"(Minimum: ","color":"white"},{"score":{"name":"MinAreaPerim","objective":"ff_calcs"},"color":"dark_green"},{"text":", Current: ","color":"white"},{"score":{"name":"#_area","objective":"nfg_util"},"color":"red"},{"text":")","color":"white"}]

function nfg_forcefield:corners/unconfigured/error_checking/clean_error
