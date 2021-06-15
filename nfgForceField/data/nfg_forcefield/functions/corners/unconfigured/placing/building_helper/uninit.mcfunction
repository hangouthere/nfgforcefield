# corner.end[x,y,z]
data modify entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag.corner.end set from entity @s Pos

# Copy initial data to End Corner
data modify entity @s ArmorItems[0].tag set from entity @e[tag=ff_building_helper,sort=nearest,limit=1] ArmorItems[0].tag
