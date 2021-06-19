# Assumptions:
# - Orphaned Corners have been handled already
#    - This means `operations.delete` can be manipulated fully

# If we're near enough, as/at the demo marker we check if there is NOT a corner in our block...
execute unless entity @e[tag=ff_corner,distance=..0.5,sort=nearest,limit=1] run function nfg_forcefield:corners/security/demolish_marker/detect_break
