#> tf2:objectives/control_point/on_capture/red/symmetric
# 
# @within tf2:objectives/control_point/set_owner/red
# @context marker & position

scoreboard players operation $temp tf2.index = @s tf2.index
scoreboard players remove $temp tf2.index 1

execute as @e[type=marker,tag=tf2.current,scores={tf2.team=2}] if score @s tf2.index = $temp tf2.index run function tf2:objectives/control_point/unlock
execute as @e[type=marker,tag=tf2.current,scores={tf2.team=2}] if score @s tf2.index = $temp tf2.index at @s run setblock ~ ~ ~ air

scoreboard players add $temp tf2.index 2
execute unless score $last tf2.team matches 0 as @e[type=marker,tag=tf2.current,scores={tf2.team=1}] if score @s tf2.index = $temp tf2.index run function tf2:objectives/control_point/lock
execute unless score $last tf2.team matches 0 as @e[type=marker,tag=tf2.current,scores={tf2.team=1}] if score @s tf2.index = $temp tf2.index at @s run setblock ~ ~ ~ stone_slab
# TODO: add support for map events (like doors opening)