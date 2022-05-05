#> vdv_iris:find_closest_surface/top/main
#
# Finds the closest surface facing up
#
# @within vdv_iris:find_closest_surface/main

data modify storage vdv_iris:data List set from storage vdv_iris:data Surfaces.Top
execute store result score $surfaces vdv_iris run data get storage vdv_iris:data List
scoreboard players operation $cuboid_id vdv_iris = $surfaces vdv_iris
scoreboard players remove $cuboid_id vdv_iris 1
execute if score $surfaces vdv_iris matches 1.. run function vdv_iris:find_closest_surface/top/loop