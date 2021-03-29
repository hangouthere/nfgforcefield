# Debug - Circle Maker: Init
# Circle Maker was placed, but we need to make it fancier

summon area_effect_cloud ~ ~ ~ {Duration:1200,Silent:1b,Invulnerable:1b,Tags:["circleMaker","odd"],Rotation:[0F,0F]}
summon area_effect_cloud ~ ~ ~ {Duration:1200,Silent:1b,Invulnerable:1b,Tags:["circleMaker"],Rotation:[45F,0F]}
summon area_effect_cloud ~ ~ ~ {Duration:1200,Silent:1b,Invulnerable:1b,Tags:["circleMaker","odd"],Rotation:[90F,0F]}
summon area_effect_cloud ~ ~ ~ {Duration:1200,Silent:1b,Invulnerable:1b,Tags:["circleMaker"],Rotation:[135F,0F]}
summon area_effect_cloud ~ ~ ~ {Duration:1200,Silent:1b,Invulnerable:1b,Tags:["circleMaker","odd"],Rotation:[180F,0F]}
summon area_effect_cloud ~ ~ ~ {Duration:1200,Silent:1b,Invulnerable:1b,Tags:["circleMaker"],Rotation:[-135F,0F]}
summon area_effect_cloud ~ ~ ~ {Duration:1200,Silent:1b,Invulnerable:1b,Tags:["circleMaker","odd"],Rotation:[-90F,0F]}
summon area_effect_cloud ~ ~ ~ {Duration:1200,Silent:1b,Invulnerable:1b,Tags:["circleMaker"],Rotation:[-45F,0F]}

# summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Small:1b,Invisible:0b,Tags:["circleMaker","odd"],Rotation:[0F,0F]}
# summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Small:1b,Invisible:0b,Tags:["circleMaker"],Rotation:[45F,0F]}
# summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Small:1b,Invisible:0b,Tags:["circleMaker","odd"],Rotation:[90F,0F]}
# summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Small:1b,Invisible:0b,Tags:["circleMaker"],Rotation:[135F,0F]}
# summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Small:1b,Invisible:0b,Tags:["circleMaker","odd"],Rotation:[180F,0F]}
# summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Small:1b,Invisible:0b,Tags:["circleMaker"],Rotation:[-135F,0F]}
# summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Small:1b,Invisible:0b,Tags:["circleMaker","odd"],Rotation:[-90F,0F]}
# summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Small:1b,Invisible:0b,Tags:["circleMaker"],Rotation:[-45F,0F]}

execute as @e[tag=circleMaker,tag=ff_init] at @s run tag @s remove ff_init
execute as @e[tag=circleMaker,tag=!ff_init] run execute store result score @s _circleMaker run data get entity @s Rotation[0] 1