# Tell closest 2 people (aka the admin, and OLD admin) about permission change
execute if entity @p[distance=1..5] run tellraw @a[limit=2,sort=nearest] [{"text":"[nfgForceField] ","color":"gold"},{"text":"Revoked Administrative ","color":"red"},{"text":"permissions from ","color":"white"},{"selector":"@p[distance=1..5]","color":"red"}]

# Tell admin there's no one to grant permissions to
execute unless entity @p[distance=1..5] run tellraw @p ["",{"text":"[nfgForceField] ","color":"gold"},{"text":"Error","color":"red"},{"text":": No Player detected to modify their permissions. Make sure a Player is within 5 blocks of you."}]

tag @p[distance=1..5] remove ff_admin
