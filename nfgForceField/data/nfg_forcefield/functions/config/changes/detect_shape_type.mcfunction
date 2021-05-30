execute store result score #itemOff ff_config run clear @s diamond_hoe{ff:{prot_type:0b}} 0
execute store result score #itemPerimeter ff_config run clear @s diamond_hoe{ff:{prot_type:1b}} 0
execute store result score #itemVolume ff_config run clear @s diamond_hoe{ff:{prot_type:2b}} 0

tag @a remove ff_tooltip_near
tag @a remove ff_tooltip_medium
