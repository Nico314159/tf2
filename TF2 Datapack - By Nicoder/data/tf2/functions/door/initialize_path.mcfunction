$scoreboard players set @s tf2.wait $(wait)
tag @s remove tf2.newest
data modify storage tf2:lookup entity set from entity @s {}
data modify storage tf2:lookup entity.item.components.minecraft:custom_data.goal_positions.closed set value 0f
execute store result storage tf2:lookup entity.item.components.minecraft:custom_data.goal_positions.open float 1 run data get storage tf2:lookup entity.item.components.minecraft:custom_data.size_y
execute store result score $x_from tf2.var run data get storage tf2:lookup entity.Pos[0]
execute store result score $x_to tf2.var run data get storage tf2:lookup entity.item.components.minecraft:custom_data.size_x
scoreboard players operation $x_to tf2.var > 1 tf2.const
scoreboard players operation $x_to tf2.var += $x_from tf2.var
scoreboard players remove $x_to tf2.var 1
execute store result storage tf2:lookup entity.item.components.minecraft:custom_data.fill.x_from int 1 run scoreboard players get $x_from tf2.var
execute store result storage tf2:lookup entity.item.components.minecraft:custom_data.fill.x_to int 1 run scoreboard players get $x_to tf2.var
execute store result score $y_from tf2.var run data get storage tf2:lookup entity.Pos[1]
execute store result score $y_to tf2.var run data get storage tf2:lookup entity.item.components.minecraft:custom_data.size_y
scoreboard players operation $y_to tf2.var > 1 tf2.const
scoreboard players operation $y_to tf2.var += $y_from tf2.var
scoreboard players remove $y_to tf2.var 1
execute store result storage tf2:lookup entity.item.components.minecraft:custom_data.fill.y_from int 1 run scoreboard players get $y_from tf2.var
execute store result storage tf2:lookup entity.item.components.minecraft:custom_data.fill.y_to int 1 run scoreboard players get $y_to tf2.var
execute store result score $z_from tf2.var run data get storage tf2:lookup entity.Pos[2]
execute store result score $z_to tf2.var run data get storage tf2:lookup entity.item.components.minecraft:custom_data.size_z
scoreboard players operation $z_to tf2.var > 1 tf2.const
scoreboard players operation $z_to tf2.var += $z_from tf2.var
scoreboard players remove $z_to tf2.var 1
execute store result storage tf2:lookup entity.item.components.minecraft:custom_data.fill.z_from int 1 run scoreboard players get $z_from tf2.var
execute store result storage tf2:lookup entity.item.components.minecraft:custom_data.fill.z_to int 1 run scoreboard players get $z_to tf2.var
data modify entity @s item.components set from storage tf2:lookup entity.item.components