# Utilize temp entity for detection of Corner existence
execute unless entity @e[tag=ff_demolish_marker,distance=..1] if entity @p[distance=..6] run function nfg_forcefield:corners/configured/security/owner/near

# Disable detection
execute if entity @p[tag=ff_demolish_near,distance=7..] run function nfg_forcefield:corners/configured/security/owner/medium
