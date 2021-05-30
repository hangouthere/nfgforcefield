# Player is Building...
execute if entity @s[tag=ff_building] run function nfg_forcefield:player/ff_building/tick

# Player is being Knocked Back
execute if entity @s[tag=ff_effect_knockback] run function nfg_forcefield:player/ff_knockback/tick
