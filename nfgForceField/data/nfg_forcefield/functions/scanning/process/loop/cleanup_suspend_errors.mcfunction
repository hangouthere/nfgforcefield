# Remove Suspensions that one FF placed, that another deemed trackable

execute as @e[scores={_ff_scan_track=1..}] run scoreboard players reset @s _ff_suspend_perm
execute as @e[scores={_ff_scan_track=1..}] run scoreboard players reset @s _ff_suspend_temp
