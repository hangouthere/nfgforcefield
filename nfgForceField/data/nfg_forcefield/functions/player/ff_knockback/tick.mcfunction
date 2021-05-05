# Disable detection once the player is out of bounds, and on the ground (which is detected after a delay to avoid false-positives)
execute as @a[tag=ff_effect_knockback] at @s if entity @e[tag=ff_knockback_helper,nbt={OnGround:1b},distance=..1] run function nfg_forcefield:corners/security/stranger/medium

# TP player to their knockback helper to do actual push
execute at @p[tag=ff_effect_knockback] run tp @p[tag=ff_effect_knockback] @e[tag=ff_knockback_helper,sort=nearest,limit=1]

scoreboard players add @a[tag=ff_effect_knockback] ff_tmrKnockback 1

# TTL knockback so player doesn't get stuck
# 60 ticks ~= 3s
execute as @a[scores={ff_tmrKnockback=60..}] at @s run function nfg_forcefield:corners/security/stranger/medium
