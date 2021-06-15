#TODO: Determine if this is even possible...
# Shouldn't strangers all be in adventure mode? No way else to configure unless you're in Creative mode, in which case you also shouldn't get this error

tag @s remove ff_no_errors

tellraw @s [{"text":"[nfgForceField] ","color":"gold"},{"text":"Error","color":"red"},{"text":": ","color":"white"},{"text":"You are ","color":"white"},{"text":"NOT the Owner ","color":"red"},{"text":"of this ","color":"white"},{"text":"ForceField","color":"gold"},{"text":", and therefore cannot configure it!","color":"white"}]
