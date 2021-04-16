# corner.end[x,y,z]
data modify entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag._ff.corner.end set from entity @s Pos

# Copy initial data to corner
data modify entity @e[tag=ff_corner,sort=nearest,limit=1] ArmorItems[0].tag set from entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag

# TODO: Finish this...
# Destroy Building Helper as we're finished
#kill @e[tag=ff_building_helper,sort=nearest,limit=1]
