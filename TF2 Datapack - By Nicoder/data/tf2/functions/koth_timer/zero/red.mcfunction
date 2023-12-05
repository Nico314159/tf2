scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @e[type=marker,tag=tf2.control_point] if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
tag @e[tag=tf2.current,tag=tf2.objective] remove tf2.overtime
execute store success score @s tf2.red_overtime as @e[type=marker,tag=tf2.current,tag=tf2.objective] if score @s tf2.red_progress < @s tf2.capture_threshold
execute unless score @s tf2.red_overtime matches 1.. run function tf2:koth_timer/end_game