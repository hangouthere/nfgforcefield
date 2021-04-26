# Corners - Uninit
# Removes Init'd, but unConfigured Starting Corners
#####################################
# Started as: Anon, (User Clicked Option in Chat)

# TODO: Pick a sound? Or nah?
#playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 0.3 2

# Kill Init'd, but unConfigured Starting Corners
kill @e[tag=!ff_configured,tag=!ff_init,tag=ff_corner,tag=ff_start]

tellraw @s [{"text":"[nfgForceField] ","color":"gold"},{"text":"Unfinished ForceFields ","color":"white"},{"text":"Destroyed","color":"red"},{"text":"!","color":"white"}]

tag @p[tag=ff_building] remove ff_building
