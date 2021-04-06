# Draws particles at hostiles for scanning results

execute at @e[tag=ff_start,tag=ff_corner,tag=ff_configured] run particle dust 0 1 1 0.5 ~ ~ ~ 0.125 2 0.125 0 20
execute at @e[tag=ff_end,tag=ff_corner,tag=ff_configured] run particle dust 1 0 0.867 0.5 ~ ~ ~ 0.125 2 0.125 0 20

execute at @e[tag=ff_processed] run particle dust 0.004 0.494 0.78 0.5 ~ ~1.9 ~ 0 0 0 0 20

execute at @e[scores={_ff_scan_track=1..}] run particle dust 0.725 0.243 0.443 0.5 ~ ~2.125 ~ 0 0 0 0 20
execute at @e[scores={_ff_scan_kill=0}] run particle dust 0.035 1 0 0.5 ~ ~3 ~ 0 0 0 0 20
execute at @e[scores={_ff_scan_kill=1..}] run particle dust 1 0 0 0.5 ~ ~3 ~ 0 0 0 0 20

execute at @e[tag=ff_suspend_temp] run particle dust 0.953 0.898 0.118 0.5 ~ ~4 ~ 0.2 0 0.2 0 20
execute at @e[tag=ff_suspend_perm] run particle dust 0.035 1 0 0.5 ~ ~4 ~ 0.2 0 0.2 0 20
execute at @e[tag=ff_suspend] run particle dust 0 0.918 1 0.5 ~ ~3.85 ~ 0.2 0 0.2 0 20

execute at @e[tag=ff_thread_start] run particle dust 0.478 0.004 0.541 0.5 ~ ~2.3 ~ 0 0 0 0 20
execute at @e[tag=ff_thread_processed] run particle dust 1 0 0.949 0.5 ~ ~2.5 ~ 0 0 0 0 20
