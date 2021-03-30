# Process the current FF on the top of the list, then remove it...
# If there's data in the first item still (ie, items shifted), it'll re-run after all players have been processed

# Scan mobs as new since we're testing a different FF now
tag @e remove ff_processed_mob

# Scan players as new since we're testing a different FF now
tag @a remove ff_processed_mob_thread_start
tag @a remove ff_processed_mob_thread_processed

## Utilize Offsets to calculate hitbox in Local Space
# Set in1 at Local Origin (0,0,0)
scoreboard players set in1_x _nfg_calcs 0
scoreboard players set in1_y _nfg_calcs 0
scoreboard players set in1_z _nfg_calcs 0

# Set in2 from `w2l.bounds`, which is the translated volume bounds to Local Space
execute store result score in2_x _nfg_calcs run data get storage nfg:forcefield _scan_ForceFields[0].calcs.w2l.bounds.x
execute store result score in2_y _nfg_calcs run data get storage nfg:forcefield _scan_ForceFields[0].calcs.w2l.bounds.y
execute store result score in2_z _nfg_calcs run data get storage nfg:forcefield _scan_ForceFields[0].calcs.w2l.bounds.z

# Set #_W2Loffset_x from `wsl.offset`, which allows us to convert mobs to Local Space when we iterate them
execute store result score #_W2Loffset_x _ff_calcs run data get storage nfg:forcefield _scan_ForceFields[0].calcs.w2l.offset.x
execute store result score #_W2Loffset_y _ff_calcs run data get storage nfg:forcefield _scan_ForceFields[0].calcs.w2l.offset.y
execute store result score #_W2Loffset_z _ff_calcs run data get storage nfg:forcefield _scan_ForceFields[0].calcs.w2l.offset.z

execute if score #DEBUG _ff_calcs matches 1 run tellraw @p [{"text":"Looping ForceField Count: "},{"score":{"name":"_scan_ffCount","objective":"_ff_calcs"}},{"text":"\nProcessing FF ID: "},{"nbt":"_scan_ForceFields[0].id","storage":"nfg:forcefield"}]

## Iterate ForceField numbers/data
# Delete self in list, and if an item shifted in place then this will re-run on another tick
data remove storage nfg:forcefield _scan_ForceFields[0]
# Count down scanning ForceField by 1
scoreboard players remove _scan_ffCount _ff_calcs 1
# Reset Player Count to number of Players
execute store result score _scan_playerCount _ff_calcs run execute if entity @a
