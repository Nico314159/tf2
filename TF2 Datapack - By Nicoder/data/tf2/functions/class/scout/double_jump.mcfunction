execute store result score $input_pitch retina.__variable__ run data get entity @s Rotation[1] 10
execute store result score $input_yaw retina.__variable__ run data get entity @s Rotation[0] 10
function retina:math/gimbal_to_vec
scoreboard players operation $x player_motion.api.launch = @s tf2.now_x
scoreboard players operation $x player_motion.api.launch -= @s tf2.last_x
scoreboard players operation $x player_motion.api.launch *= 125 tf2.const
scoreboard players set $y player_motion.api.launch 5000
scoreboard players operation $z player_motion.api.launch = @s tf2.now_z
scoreboard players operation $z player_motion.api.launch -= @s tf2.last_z
scoreboard players operation $z player_motion.api.launch *= 125 tf2.const
function player_motion:api/launch_xyz
clear @s elytra
scoreboard players set @s tf2.elytra_detect 0
scoreboard players add @s tf2.permanent.double_jumps 1
tag @s remove tf2.can_double_jump