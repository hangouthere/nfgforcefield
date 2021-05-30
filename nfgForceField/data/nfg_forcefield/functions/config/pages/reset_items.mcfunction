# Copy FF from Corner to temp space
data modify storage nfg:forcefield operations.meta.config.ff set from entity @e[tag=ff_corner,sort=nearest,limit=1] ArmorItems[0].tag

## Fill the Items for the Page
# Setup Page 1
execute if score @s ff_config matches 1 run function nfg_forcefield:config/pages/page_01/fill
# Setup Page 2
execute if score @s ff_config matches 2 run function nfg_forcefield:config/pages/page_02/fill

