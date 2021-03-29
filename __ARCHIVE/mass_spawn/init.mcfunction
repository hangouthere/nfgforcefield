# Just summon a bunch of zombies from your standing spot

execute at @p anchored feet run summon area_effect_cloud ~-25 ~ ~ {Duration:20,Tags:["ff_mass_spawner"]}
execute as @e[tag=ff_mass_spawner] at @s rotated as @p run tp @s ~ ~ ~ ~ 0

scoreboard players set _mobSpawnX _nfg_test 0
scoreboard players set _mobSpawnY _nfg_test 0

function nfg_scantests:mass_spawn/spawn_hostile
