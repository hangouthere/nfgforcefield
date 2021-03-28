# Tell closest 2 people (aka the admin, and NEW admin) about permission change
execute if entity @p[distance=1..5] run tellraw @a[limit=2,sort=nearest] [{"text":"[nfgForceField] ","color":"gold"},{"text":"Granted Administrative ","color":"green"},{"text":"permissions to ","color":"white"},{"selector":"@p[distance=1..5]","color":"green"}]

# Tell admin there's no one to grant permissions to
execute unless entity @p[distance=1..5] run tellraw @a [{"text":""},{"text":"[nfgForceField] ","color":"gold"},{"text":"Error","color":"red"},{"text":": No Player detected to modify their permissions. Make sure a Player is within 5 blocks of you."}]

tag @p[distance=1..5] add ff_admin
