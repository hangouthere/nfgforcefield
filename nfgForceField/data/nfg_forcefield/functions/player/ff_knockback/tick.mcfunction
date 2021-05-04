# Disable detection once the player is out of bounds, and on the ground (which is detected after a delay to avoid false-positives)
execute at @e[tag=ff_corner,sort=nearest,limit=1] if entity @e[tag=ff_knockback_helper,distance=6..,nbt={OnGround:1b}] run function nfg_forcefield:corners/configured/security/stranger/medium

# TP player to their knockback helper to do actual push
execute at @p[tag=ff_knockback] run tp @p[tag=ff_knockback] @e[tag=ff_knockback_helper,sort=nearest,limit=1]

# Increment delay counter
execute if entity @e[tag=ff_knockback_helper] run scoreboard players add #_knockback_delay_check ff_calcs 1
