# Corners - Placing Helper: Init
# Initializes starting point, metrics, and other misc info
#####################################
# Started as: execute as @s[tag=ff_corner] at @s | execute as @p[tag=ff_building]

# Store in1 as ourselves (the player locked)
function nfg_util:vec/store_in1

# Store in2 as Starting Corner
execute as @e[tag=ff_corner,tag=ff_start,tag=!ff_configured,tag=!ff_init,sort=nearest,limit=1] at @s run function nfg_util:vec/store_in2

# Set Min/Max Values Accordingly
execute as @e[tag=ff_prot_mob,tag=ff_corner,tag=ff_start,tag=!ff_configured,tag=!ff_init,sort=nearest,limit=1] run scoreboard players operation #_areaMin ff_calcs = MinAreaVolume ff_calcs
execute as @e[tag=ff_prot_build,tag=ff_corner,tag=ff_start,tag=!ff_configured,tag=!ff_init,sort=nearest,limit=1] run scoreboard players operation #_areaMin ff_calcs = MinAreaPerim ff_calcs

# Calculate supporting values
function nfg_util:vec/calc
function nfg_util:vol/calc
