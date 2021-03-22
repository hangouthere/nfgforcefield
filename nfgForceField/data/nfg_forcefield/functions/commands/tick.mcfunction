# Commands - Tick
# Ensures commands are enabled every tick
# See also: commands/init

# /trigger ff
scoreboard players enable @a[gamemode=creative] ff
execute as @a[scores={ff=1..}] run function nfg_forcefield:commands/ff
scoreboard players reset @a[scores={ff=1..}]