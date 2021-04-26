## Finalize Suspensions for future Scans

# Categorize Suspend-Perm: ALL ForceFields counted an entity as Perm
execute as @e[scores={ff_suspend_perm=1..}] if score @s ff_suspend_perm = #_scanff_count ff_calcs run tag @s add ff_suspend_perm

# Categorize Suspend-Temp: Marked as Temp suspend by at least one FF, and never as Trackable for the entire scan
execute as @e[scores={ff_suspend_temp=1..}] if score @s ff_scan_track matches 0 run tag @s add ff_suspend_temp

# Actually Suspend (ff_suspend is ignored during scans, the others are informational and for recycling mobs)
tag @e[tag=ff_suspend_temp] add ff_suspend
tag @e[tag=ff_suspend_perm] add ff_suspend
