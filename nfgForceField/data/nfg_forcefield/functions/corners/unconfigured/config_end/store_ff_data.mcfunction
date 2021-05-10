## Set Values:
# zone.kill.bounds{xyz}
execute store result storage nfg:forcefield operations.meta.build_ff.zone.kill.bounds.x int 1 run scoreboard players get in2_x nfg_util
execute store result storage nfg:forcefield operations.meta.build_ff.zone.kill.bounds.y int 1 run scoreboard players get in2_y nfg_util
execute store result storage nfg:forcefield operations.meta.build_ff.zone.kill.bounds.z int 1 run scoreboard players get in2_z nfg_util
# zone.kill.offset{xyz}
execute store result storage nfg:forcefield operations.meta.build_ff.zone.kill.offset.x int 1 run scoreboard players get #_W2Loffset_x nfg_util
execute store result storage nfg:forcefield operations.meta.build_ff.zone.kill.offset.y int 1 run scoreboard players get #_W2Loffset_y nfg_util
execute store result storage nfg:forcefield operations.meta.build_ff.zone.kill.offset.z int 1 run scoreboard players get #_W2Loffset_z nfg_util
# zone.protect.bounds{xyz}
execute store result storage nfg:forcefield operations.meta.build_ff.zone.protect.bounds.x int 1 run scoreboard players get #_zoneBoundsProtect_x ff_calcs
execute store result storage nfg:forcefield operations.meta.build_ff.zone.protect.bounds.y int 1 run scoreboard players get #_zoneBoundsProtect_y ff_calcs
execute store result storage nfg:forcefield operations.meta.build_ff.zone.protect.bounds.z int 1 run scoreboard players get #_zoneBoundsProtect_z ff_calcs
# zone.protect.offset{xyz}
execute store result storage nfg:forcefield operations.meta.build_ff.zone.protect.offset.x int 1 run scoreboard players get #_zoneOffsetProtect_x ff_calcs
execute store result storage nfg:forcefield operations.meta.build_ff.zone.protect.offset.y int 1 run scoreboard players get #_zoneOffsetProtect_y ff_calcs
execute store result storage nfg:forcefield operations.meta.build_ff.zone.protect.offset.z int 1 run scoreboard players get #_zoneOffsetProtect_z ff_calcs
# zone.track.bounds{xyz}
execute store result storage nfg:forcefield operations.meta.build_ff.zone.track.bounds.x int 1 run scoreboard players get #_zoneBoundsTrack_x ff_calcs
execute store result storage nfg:forcefield operations.meta.build_ff.zone.track.bounds.y int 1 run scoreboard players get #_zoneBoundsTrack_y ff_calcs
execute store result storage nfg:forcefield operations.meta.build_ff.zone.track.bounds.z int 1 run scoreboard players get #_zoneBoundsTrack_z ff_calcs
# zone.track.offset{xyz}
execute store result storage nfg:forcefield operations.meta.build_ff.zone.track.offset.x int 1 run scoreboard players get #_zoneOffsetTrack_x ff_calcs
execute store result storage nfg:forcefield operations.meta.build_ff.zone.track.offset.y int 1 run scoreboard players get #_zoneOffsetTrack_y ff_calcs
execute store result storage nfg:forcefield operations.meta.build_ff.zone.track.offset.z int 1 run scoreboard players get #_zoneOffsetTrack_z ff_calcs
# zone.suspend.bounds{xyz}
execute store result storage nfg:forcefield operations.meta.build_ff.zone.suspend.bounds.x int 1 run scoreboard players get #_boundsSuspendZone_x ff_calcs
execute store result storage nfg:forcefield operations.meta.build_ff.zone.suspend.bounds.y int 1 run scoreboard players get #_boundsSuspendZone_y ff_calcs
execute store result storage nfg:forcefield operations.meta.build_ff.zone.suspend.bounds.z int 1 run scoreboard players get #_boundsSuspendZone_z ff_calcs
# zone.suspend.offset{xyz}
execute store result storage nfg:forcefield operations.meta.build_ff.zone.suspend.offset.x int 1 run scoreboard players get #_zoneOffsetSuspend_x ff_calcs
execute store result storage nfg:forcefield operations.meta.build_ff.zone.suspend.offset.y int 1 run scoreboard players get #_zoneOffsetSuspend_y ff_calcs
execute store result storage nfg:forcefield operations.meta.build_ff.zone.suspend.offset.z int 1 run scoreboard players get #_zoneOffsetSuspend_z ff_calcs

# meta.calc.area
execute store result storage nfg:forcefield operations.meta.build_ff.calc.area int 1 run scoreboard players get #_area nfg_util
