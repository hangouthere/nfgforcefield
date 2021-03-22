# /trigger ff
# Offers forcefield types


give @p written_book{display:{Name:'[{"text":"nfgForceField","color":"gold"},{"text":" Helper","color":"aqua"}]',Lore:['{"text":"Everything you could ever ","color":"white"}','[{"text":"need relating to "},{"text":"nfgForceField","color":"gold"},{"text":"!"}]']},title:"nfgForceField Helper",author:"nfgCodex",generation:3,pages:['[{"text":"Protection Types:\\n"},{"text":"Building","color":"light_purple","clickEvent":{"action":"run_command","value":"/function nfg_forcefield:inventory/give_prot_build"}},{"text":" | "},{"text":"Mob","color":"red","clickEvent":{"action":"run_command","value":"/function nfg_forcefield:inventory/give_prot_mob"}},{"text":"\\n\\n"},{"text":"Show Settings","color":"blue"},{"text":"\\n\\n"},{"text":"Toggle Tooltips","color":"yellow","clickEvent":{"action":"run_command","value":"/function toggle_tooltips"}},{"text":"\\n\\n"},{"text":"Toggle ForceChunks","color":"red","clickEvent":{"action":"run_command","value":"/function force_chunks"}},{"text":"\\n\\n"},{"text":"My ID: ","color":"gray"},{"score":{"name":"@p","objective":"_nfg_player_id"},"color":"gray"}]']} 1


# Offer tools if no player is using them
#execute unless entity @a[tag=ff_owner_lock] run tellraw @s [{"text":"[nfgForceField] ","color":"gold"},{"text":"-== ForceField Protection ==-\n  Click One: ","color":"white"},{"text":"[","color":"gold"},{"text":"Building","color":"light_purple","clickEvent":{"action":"run_command","value":"/function nfg_forcefield:inventory/give_prot_build"}},{"text":"]","color":"gold"},{"text":" ","color":"white"},{"text":"[","color":"gold"},{"text":"Mob","color":"red","clickEvent":{"action":"run_command","value":"/function nfg_forcefield:inventory/give_prot_mob"}},{"text":"]","color":"gold"}]

# Error, lock is in place
execute if entity @a[tag=ff_owner_lock] run tellraw @s [{"text":"[nfgForceField] ","color":"gold"},{"text":"Error","color":"red"},{"text":": Another player is already using the ForceField tools!","color":"white"}]
