#> tf2:objectives/control_point/find_index/3
#
# @context CP entity
# @within tf2:objectives/control_point/find_index/main

execute if score @s tf2.index matches 0 run data modify storage tf2.__temp__:lookup points[0] set from storage tf2:control_points data[3][0]
execute if score @s tf2.index matches 10 run data modify storage tf2.__temp__:lookup points[0] set from storage tf2:control_points data[3][1]
execute if score @s tf2.index matches 20 run data modify storage tf2.__temp__:lookup points[0] set from storage tf2:control_points data[3][2]
execute if score @s tf2.index matches 30 run data modify storage tf2.__temp__:lookup points[0] set from storage tf2:control_points data[3][3]
execute if score @s tf2.index matches 40 run data modify storage tf2.__temp__:lookup points[0] set from storage tf2:control_points data[3][4]
execute if score @s tf2.index matches 50 run data modify storage tf2.__temp__:lookup points[0] set from storage tf2:control_points data[3][5]
execute if score @s tf2.index matches 60 run data modify storage tf2.__temp__:lookup points[0] set from storage tf2:control_points data[3][6]
execute if score @s tf2.index matches 70 run data modify storage tf2.__temp__:lookup points[0] set from storage tf2:control_points data[3][7]