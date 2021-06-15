tag @s add ff_no_errors

# Error if there's not a Corner within 5 blocks
execute unless entity @e[tag=ff_corner,tag=ff_configured,distance=..5] run tag @s remove ff_no_errors

# If NOT near a corner...
execute if entity @s[tag=!ff_no_errors] run tellraw @s [{"text":"[nfgForceField] ","color":"gold"},{"text":"Error","color":"red"},{"text":": ","color":"white"},{"text":"You need to be near a ","color":"white"},{"text":"ForceField","color":"gold"},{"text":" Corner you're trying to ","color":"white"},{"text":"Destroy ","color":"dark_red"},{"text":".","color":"white"}]

# If NEAR a corner...
execute as @s[tag=ff_no_errors] run tellraw @s [{"text":""},{"text":"[nfgForceField] ","color":"gold"},{"text":"Are you sure you want to "},{"text":"Destroy ","color":"dark_red"},{"text":"this "},{"text":"ForceField","color":"gold"},{"text":" owned by "},{"nbt":"ArmorItems[0].tag.IDs.playerName","entity":"@e[tag=ff_corner,tag=ff_configured,sort=nearest,limit=1]","color":"light_purple"},{"text":"? ["},{"text":"Yes","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Be sure you really want to do this!"}]},"clickEvent":{"action":"run_command","value":"/function nfg_forcefield:helper/admin/destroy_ff/perform"}},{"text":"]"}]

tag @s remove ff_no_errors
