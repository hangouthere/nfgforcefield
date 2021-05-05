execute at @s run kill @e[tag=ff_effect_knockback_helper,sort=nearest,limit=1]

tag @s remove ff_effect_knockback

scoreboard players reset @s ff_effect_knockback
