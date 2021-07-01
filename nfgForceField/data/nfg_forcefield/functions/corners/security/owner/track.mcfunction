# Utilize temp entity for detection of Corner existence
execute unless entity @e[tag=ff_demolish_marker,distance=..0.5,sort=nearest,limit=1] if entity @s[distance=..5] run function nfg_forcefield:corners/security/owner/near

# Disable detection
execute if entity @s[tag=ff_demolish_near,distance=6..] run function nfg_forcefield:corners/security/owner/medium

# Remove Near Tag to allow re-processing, but only if the Player isn't near another Corner
execute as @s[tag=ff_demolish_near,distance=7..] unless entity @e[tag=ff_demolish_marker,distance=..7] run tag @s remove ff_demolish_near
