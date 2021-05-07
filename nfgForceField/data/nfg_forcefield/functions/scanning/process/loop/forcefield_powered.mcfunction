## Utilize Offsets to initially calculate hitbox in Track Zone's Local Space
# Set in1 at Local Origin (0,0,0)
scoreboard players set in1_x nfg_calcs 0
scoreboard players set in1_y nfg_calcs 0
scoreboard players set in1_z nfg_calcs 0

# Reset Player Count to number of Players (but only if powered... if not, this will end up being skipped)
execute store result score #_scan_player_idx ff_calcs run execute if entity @a

# Set Scan State to Iterate Players
scoreboard players set #_scan_state ff_calcs 1
