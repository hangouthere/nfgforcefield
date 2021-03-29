execute store result entity @e[tag=ff_marker,limit=1] BeamTarget.X int 1 run data get entity @p[tag=ff_placing,limit=1] Pos[0]
execute store result entity @e[tag=ff_marker,limit=1] BeamTarget.Y int 1 run data get entity @p[tag=ff_placing,limit=1] Pos[1]
execute store result entity @e[tag=ff_marker,limit=1] BeamTarget.Z int 1 run data get entity @p[tag=ff_placing,limit=1] Pos[2]

schedule function nfg_forcefield:test_tick 1
