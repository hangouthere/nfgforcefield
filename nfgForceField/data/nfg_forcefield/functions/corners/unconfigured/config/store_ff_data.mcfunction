
# Copy Template to build FF data
data modify storage nfg:forcefield _buildFF set from storage nfg:forcefield _tmpl.buildFF

## Set Values:
# FF ID
execute store result storage nfg:forcefield _buildFF.id int 1 run scoreboard players get #_ffNextId _ff_calcs
# Owner ID (set to Player ID)
execute store result storage nfg:forcefield _buildFF.ownerId int 1 run scoreboard players get @p _nfg_player_id
# start xyz
execute store result storage nfg:forcefield _buildFF.start.x int 1 run scoreboard players get #_temp1_x _nfg_calcs
execute store result storage nfg:forcefield _buildFF.start.y int 1 run scoreboard players get #_temp1_y _nfg_calcs
execute store result storage nfg:forcefield _buildFF.start.z int 1 run scoreboard players get #_temp1_z _nfg_calcs
# end xyz
execute store result storage nfg:forcefield _buildFF.end.x int 1 run scoreboard players get #_temp2_x _nfg_calcs
execute store result storage nfg:forcefield _buildFF.end.y int 1 run scoreboard players get #_temp2_y _nfg_calcs
execute store result storage nfg:forcefield _buildFF.end.z int 1 run scoreboard players get #_temp2_z _nfg_calcs
# Set Calculations:
# vec
execute store result storage nfg:forcefield _buildFF.calcs.vec.x int 1 run scoreboard players get #_vec_x _nfg_calcs
execute store result storage nfg:forcefield _buildFF.calcs.vec.y int 1 run scoreboard players get #_vec_y _nfg_calcs
execute store result storage nfg:forcefield _buildFF.calcs.vec.z int 1 run scoreboard players get #_vec_z _nfg_calcs
# volume
execute store result storage nfg:forcefield _buildFF.calcs.vol.x int 1 run scoreboard players get #_vol_x _nfg_calcs
execute store result storage nfg:forcefield _buildFF.calcs.vol.y int 1 run scoreboard players get #_vol_y _nfg_calcs
execute store result storage nfg:forcefield _buildFF.calcs.vol.z int 1 run scoreboard players get #_vol_z _nfg_calcs
# dist_sq
execute store result storage nfg:forcefield _buildFF.calcs.dist_sq int 1 run scoreboard players get #_dist_sq _nfg_calcs
execute store result storage nfg:forcefield _buildFF.calcs.dist_sq_max int 1 run scoreboard players get #_dist_sq_max _ff_calcs
# area
execute store result storage nfg:forcefield _buildFF.calcs.area int 1 run scoreboard players get #_area _nfg_calcs
# center
execute store result storage nfg:forcefield _buildFF.calcs.center.x int 1 run scoreboard players get #_center_offset_x _ff_calcs
execute store result storage nfg:forcefield _buildFF.calcs.center.y int 1 run scoreboard players get #_center_offset_y _ff_calcs
execute store result storage nfg:forcefield _buildFF.calcs.center.z int 1 run scoreboard players get #_center_offset_z _ff_calcs

# w2l.offset xyz
execute store result storage nfg:forcefield _buildFF.calcs.w2l.offset.x int 1 run scoreboard players get #_W2Loffset_x _nfg_calcs
execute store result storage nfg:forcefield _buildFF.calcs.w2l.offset.y int 1 run scoreboard players get #_W2Loffset_y _nfg_calcs
execute store result storage nfg:forcefield _buildFF.calcs.w2l.offset.z int 1 run scoreboard players get #_W2Loffset_z _nfg_calcs
# w2l.bounds xyz, from in2 (since prev calcs moved us to Local Space)
execute store result storage nfg:forcefield _buildFF.calcs.w2l.bounds.x int 1 run scoreboard players get in2_x _nfg_calcs
execute store result storage nfg:forcefield _buildFF.calcs.w2l.bounds.y int 1 run scoreboard players get in2_y _nfg_calcs
execute store result storage nfg:forcefield _buildFF.calcs.w2l.bounds.z int 1 run scoreboard players get in2_z _nfg_calcs

data modify storage nfg:forcefield ForceFields append from storage nfg:forcefield _buildFF
