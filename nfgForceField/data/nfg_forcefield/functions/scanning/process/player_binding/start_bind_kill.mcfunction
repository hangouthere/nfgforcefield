# Bind Player to the current FF ID
execute store result score @s ff_bind_kill run scoreboard players get #scan_ffId ff_calcs

# Mark Player as inside Kill Zone
tag @s add ff_zone_kill
