#> vdv_iris:find_closest_surface/south/loop
#
# Determines if the ray hits the current surface
#
# @within vdv_iris:find_closest_surface/south/main
# @within vdv_iris:find_closest_surface/south/loop

# Store all coordinates to scores (List[2] and List[5] should have the same values)
execute store result score $x0 vdv_iris run data get storage vdv_iris:data List[-1][0]
execute store result score $y0 vdv_iris run data get storage vdv_iris:data List[-1][1]
execute store result score $z0 vdv_iris run data get storage vdv_iris:data List[-1][2]
execute store result score $x1 vdv_iris run data get storage vdv_iris:data List[-1][3]
execute store result score $y1 vdv_iris run data get storage vdv_iris:data List[-1][4]

# If the current position is already in the plane of the surface, check if it is in the surface
execute if score ${z} vdv_iris = $z0 vdv_iris if score ${x} vdv_iris >= $x0 vdv_iris if score ${x} vdv_iris <= $x1 vdv_iris if score ${y} vdv_iris >= $y0 vdv_iris if score ${y} vdv_iris <= $y1 vdv_iris run function vdv_iris:find_closest_surface/ray_already_in_surface

# If the current position is before the plane, check if it hits the surface and get the position of that intersection
execute if score ${z} vdv_iris > $z0 vdv_iris run function vdv_iris:find_closest_surface/south/get_distance

# Loop this function
data remove storage vdv_iris:data List[-1]
scoreboard players remove $surfaces vdv_iris 1
scoreboard players remove $cuboid_id vdv_iris 1
execute if score $surfaces vdv_iris matches 1.. run function vdv_iris:find_closest_surface/south/loop