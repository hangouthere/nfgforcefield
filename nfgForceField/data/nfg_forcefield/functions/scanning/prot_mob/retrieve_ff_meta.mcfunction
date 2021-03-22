# Scanning - Protect against Mobs: Retrive ForceField Meta
# Corners already have metadata on them so we don't have to recalculate, so we need to grab them
#####################################
# Started as: [Anon Passthru] execute as @e[tag=ff_corner,tag=ff_configured,tag=ff_start,tag=ff_prot_mob] at @s

# Retrieve needed values from Corner
execute store result score #_radius _ff_calcs run data get entity @s ArmorItems[3].tag._ff.radius_sq

# Store our Center of the ForceField as in1 to do distance calcs from
execute store result score in1_x _nfg_calcs run data get entity @s ArmorItems[3].tag._ff.center.x
execute store result score in1_y _nfg_calcs run data get entity @s ArmorItems[3].tag._ff.center.y
execute store result score in1_z _nfg_calcs run data get entity @s ArmorItems[3].tag._ff.center.z
