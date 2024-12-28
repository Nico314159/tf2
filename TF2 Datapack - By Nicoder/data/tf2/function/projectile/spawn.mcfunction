scoreboard players operation $temp tf2.team = @s tf2.team
scoreboard players operation $temp tf2.player.id = @s tf2.player.id
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
function tf2:math/facing_vector
data modify storage tf2:summon projectile set value {X:0.0,Y:0.0,Z:0.0,yaw:0.0,pitch:0.0,spawnX:0.0,spawnY:0.0,spawnZ:0.0}
execute store result storage tf2:summon projectile.speed double 0.01905 run data get storage tf2:lookup item.components.minecraft:custom_data.projectile.speed
data modify storage tf2:summon projectile.speed_range set from storage tf2:lookup item.components.minecraft:custom_data.projectile.speed_range
execute if data storage tf2:summon projectile.speed_range store result storage tf2:summon projectile.speed double 0.01905 run function tf2:math/macro_random with storage tf2:summon projectile.speed_range
execute store result storage tf2:summon projectile.speed double 0.00005 run data get storage tf2:summon projectile.speed 1000
data modify storage tf2:summon projectile.deviation set from storage tf2:lookup item.components.minecraft:custom_data.projectile.deviation
execute if data storage tf2:summon projectile.deviation run function tf2:projectile/deviation
execute store result score $mot.mot_x tf2.var run data get storage tf2:summon projectile.speed 1000
scoreboard players operation $mot.mot_x tf2.var *= $output_vector_x tf2.var
scoreboard players operation $mot.mot_x tf2.var /= 1000 tf2.const
execute store result score $mot.mot_y tf2.var run data get storage tf2:summon projectile.speed 1000
scoreboard players operation $mot.mot_y tf2.var *= $output_vector_y tf2.var
scoreboard players operation $mot.mot_y tf2.var /= 1000 tf2.const
execute store result score $mot.mot_z tf2.var run data get storage tf2:summon projectile.speed 1000
scoreboard players operation $mot.mot_z tf2.var *= $output_vector_z tf2.var
scoreboard players operation $mot.mot_z tf2.var /= 1000 tf2.const
execute store result storage tf2:summon projectile.yaw double 0.1 run scoreboard players get $input_yaw tf2.var
execute store result storage tf2:summon projectile.pitch double 0.1 run scoreboard players get $input_pitch tf2.var
data modify storage tf2:summon projectile.weapon set from storage tf2:lookup item
execute store result score $relative_to_player tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.projectile.relative_to_player
execute if score $relative_to_player tf2.var matches 1.. run function tf2:projectile/compensate_velocity
data modify storage tf2:summon projectile.spawnX set from storage tf2:lookup item.components.minecraft:custom_data.projectile.spawn[0]
data modify storage tf2:summon projectile.spawnY set from storage tf2:lookup item.components.minecraft:custom_data.projectile.spawn[1]
data modify storage tf2:summon projectile.spawnZ set from storage tf2:lookup item.components.minecraft:custom_data.projectile.spawn[2]
data modify storage tf2:summon projectile.weapon_name set from storage tf2:lookup item.components.minecraft:custom_name
execute store result storage tf2:summon projectile.CMD int 100 run data get storage tf2:lookup item.components.minecraft:custom_model_data
data modify storage tf2:summon projectile.owner set from entity @s UUID
execute store result score $explosion tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.projectile.explosion
execute store result score $has_trail tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.projectile.has_trail
execute store result score $gravity tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.projectile.gravity
execute store result score $drag tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.projectile.drag
execute store result score $ignore_env tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.projectile.ignore_env
execute store result score $convection tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.projectile.convection
execute store result score $unreflectable tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.projectile.unreflectable
execute store result score $animated tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.projectile.animated
execute store success storage tf2:summon projectile.no_gravity int 1 if score $gravity tf2.var matches 0
execute at @s anchored eyes run function tf2:projectile/spawn_internal with storage tf2:summon projectile
execute as @n[type=item_display,tag=tf2.new,tag=tf2.projectile] run function tf2:__private__/anonymous/9