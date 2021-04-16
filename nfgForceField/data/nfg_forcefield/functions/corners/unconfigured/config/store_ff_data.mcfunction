## Set Values:
# zone.kill.bounds{xyz}
execute store result entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag._ff.zone.kill.bounds.x int 1 run scoreboard players get in2_x _nfg_calcs
execute store result entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag._ff.zone.kill.bounds.y int 1 run scoreboard players get in2_y _nfg_calcs
execute store result entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag._ff.zone.kill.bounds.z int 1 run scoreboard players get in2_z _nfg_calcs
# zone.kill.offset{xyz}
execute store result entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag._ff.zone.kill.offset.x int 1 run scoreboard players get #_W2Loffset_x _nfg_calcs
execute store result entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag._ff.zone.kill.offset.y int 1 run scoreboard players get #_W2Loffset_y _nfg_calcs
execute store result entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag._ff.zone.kill.offset.z int 1 run scoreboard players get #_W2Loffset_z _nfg_calcs
# zone.protect.bounds{xyz}
execute store result entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag._ff.zone.protect.bounds.x int 1 run scoreboard players get #_zoneBoundsProtect_x _ff_calcs
execute store result entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag._ff.zone.protect.bounds.y int 1 run scoreboard players get #_zoneBoundsProtect_y _ff_calcs
execute store result entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag._ff.zone.protect.bounds.z int 1 run scoreboard players get #_zoneBoundsProtect_z _ff_calcs
# zone.protect.offset{xyz}
execute store result entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag._ff.zone.protect.offset.x int 1 run scoreboard players get #_zoneOffsetProtect_x _ff_calcs
execute store result entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag._ff.zone.protect.offset.y int 1 run scoreboard players get #_zoneOffsetProtect_y _ff_calcs
execute store result entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag._ff.zone.protect.offset.z int 1 run scoreboard players get #_zoneOffsetProtect_z _ff_calcs
# zone.track.bounds{xyz}
execute store result entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag._ff.zone.track.bounds.x int 1 run scoreboard players get #_zoneBoundsTrack_x _ff_calcs
execute store result entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag._ff.zone.track.bounds.y int 1 run scoreboard players get #_zoneBoundsTrack_y _ff_calcs
execute store result entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag._ff.zone.track.bounds.z int 1 run scoreboard players get #_zoneBoundsTrack_z _ff_calcs
# zone.track.offset{xyz}
execute store result entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag._ff.zone.track.offset.x int 1 run scoreboard players get #_zoneOffsetTrack_x _ff_calcs
execute store result entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag._ff.zone.track.offset.y int 1 run scoreboard players get #_zoneOffsetTrack_y _ff_calcs
execute store result entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag._ff.zone.track.offset.z int 1 run scoreboard players get #_zoneOffsetTrack_z _ff_calcs
# zone.suspend.bounds{xyz}
execute store result entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag._ff.zone.suspend.bounds.x int 1 run scoreboard players get #_boundsSuspendZone_x _ff_calcs
execute store result entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag._ff.zone.suspend.bounds.y int 1 run scoreboard players get #_boundsSuspendZone_y _ff_calcs
execute store result entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag._ff.zone.suspend.bounds.z int 1 run scoreboard players get #_boundsSuspendZone_z _ff_calcs
# zone.suspend.offset{xyz}
execute store result entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag._ff.zone.suspend.offset.x int 1 run scoreboard players get #_zoneOffsetSuspend_x _ff_calcs
execute store result entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag._ff.zone.suspend.offset.y int 1 run scoreboard players get #_zoneOffsetSuspend_y _ff_calcs
execute store result entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag._ff.zone.suspend.offset.z int 1 run scoreboard players get #_zoneOffsetSuspend_z _ff_calcs
