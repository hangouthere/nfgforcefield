# Zap Mob like a Bug Zapper :P

# TODO: Pick some better sounds, really...
# TODO: Determine audio channel (currently ambient)
# Play sound to nearby players
execute as @a[distance=..16] run playsound nfg_forcefield:zap ambient @s ~ ~ ~ 0.4

# TODO: Finalize this appearance
# Show zap particle
particle dust 1 0.851 0 0.5 ~ ~ ~ 0.5 1.5 0.5 1 100

#Show Baddies
execute if score #DEBUG _ff_calcs matches 1 as @e[tag=ff_processed_mob_in] at @s run particle dust 1 0 0 1 ~ ~1 ~ 0 0 0 0 20

# Get rid of mob!
tp @s ~ -200 ~
