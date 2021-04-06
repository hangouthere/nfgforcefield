# Copy Template to build FF data
data modify storage nfg:forcefield _buildFF set from storage nfg:forcefield _tmpl.buildFF

## Set Values:
# id.ff - Unique ForceField ID
execute store result storage nfg:forcefield _buildFF.id.ff int 1 run scoreboard players get #_ffNextId _ff_calcs
# id.owner - Owner ID (set to Player ID)
execute store result storage nfg:forcefield _buildFF.id.owner int 1 run scoreboard players get @p _nfg_player_id
# zone.kill.bounds{xyz}
execute store result storage nfg:forcefield _buildFF.zone.kill.bounds.x int 1 run scoreboard players get in2_x _nfg_calcs
execute store result storage nfg:forcefield _buildFF.zone.kill.bounds.y int 1 run scoreboard players get in2_y _nfg_calcs
execute store result storage nfg:forcefield _buildFF.zone.kill.bounds.z int 1 run scoreboard players get in2_z _nfg_calcs
# zone.kill.offset{xyz}
execute store result storage nfg:forcefield _buildFF.zone.kill.offset.x int 1 run scoreboard players get #_W2Loffset_x _nfg_calcs
execute store result storage nfg:forcefield _buildFF.zone.kill.offset.y int 1 run scoreboard players get #_W2Loffset_y _nfg_calcs
execute store result storage nfg:forcefield _buildFF.zone.kill.offset.z int 1 run scoreboard players get #_W2Loffset_z _nfg_calcs
# zone.track.bounds{xyz}
execute store result storage nfg:forcefield _buildFF.zone.track.bounds.x int 1 run scoreboard players get #_zoneBoundsTrack_x _ff_calcs
execute store result storage nfg:forcefield _buildFF.zone.track.bounds.y int 1 run scoreboard players get #_zoneBoundsTrack_y _ff_calcs
execute store result storage nfg:forcefield _buildFF.zone.track.bounds.z int 1 run scoreboard players get #_zoneBoundsTrack_z _ff_calcs
# zone.track.offset{xyz}
execute store result storage nfg:forcefield _buildFF.zone.track.offset.x int 1 run scoreboard players get #_zoneOffsetTrack_x _ff_calcs
execute store result storage nfg:forcefield _buildFF.zone.track.offset.y int 1 run scoreboard players get #_zoneOffsetTrack_y _ff_calcs
execute store result storage nfg:forcefield _buildFF.zone.track.offset.z int 1 run scoreboard players get #_zoneOffsetTrack_z _ff_calcs
# zone.suspend.bounds{xyz}
execute store result storage nfg:forcefield _buildFF.zone.suspend.bounds.x int 1 run scoreboard players get #_boundsSuspendZone_x _ff_calcs
execute store result storage nfg:forcefield _buildFF.zone.suspend.bounds.y int 1 run scoreboard players get #_boundsSuspendZone_y _ff_calcs
execute store result storage nfg:forcefield _buildFF.zone.suspend.bounds.z int 1 run scoreboard players get #_boundsSuspendZone_z _ff_calcs
# zone.suspend.offset{xyz}
execute store result storage nfg:forcefield _buildFF.zone.suspend.offset.x int 1 run scoreboard players get #_zoneOffsetSuspend_x _ff_calcs
execute store result storage nfg:forcefield _buildFF.zone.suspend.offset.y int 1 run scoreboard players get #_zoneOffsetSuspend_y _ff_calcs
execute store result storage nfg:forcefield _buildFF.zone.suspend.offset.z int 1 run scoreboard players get #_zoneOffsetSuspend_z _ff_calcs

# Add ForceField to storage array
data modify storage nfg:forcefield ForceFields append from storage nfg:forcefield _buildFF

# Wipe template copy to clean up storage
data remove storage nfg:forcefield _buildFF
