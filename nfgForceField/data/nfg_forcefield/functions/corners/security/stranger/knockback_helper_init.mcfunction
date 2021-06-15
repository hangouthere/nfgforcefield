# Point at the player...
execute facing entity @p[tag=ff_effect_knockback] eyes run tp @s ^ ^ ^ ~ ~

# Calculate trajectory and apply to `ff_knockback_helper`
execute at @s run function nfg_forcefield:corners/security/stranger/motion_calc

# Face again back as the Player so KnockBack stays as the Player's perspective
execute rotated as @p[tag=ff_effect_knockback] run tp @s ^ ^ ^ ~ ~

# Move to the player
tp @s @p[tag=ff_effect_knockback]

function nfg_forcefield:corners/security/stranger/motion_apply
