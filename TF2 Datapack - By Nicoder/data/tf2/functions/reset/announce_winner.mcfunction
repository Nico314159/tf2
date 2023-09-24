execute as @e if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
execute as @e[type=marker,tag=tf2.control_point,tag=tf2.current] at @s run function tf2:objectives/control_point/lock
kill @e[type=villager,tag=tf2.current]
execute if score $winner tf2.var matches 1 run tellraw @a[tag=tf2.current] ["",{"text":"MATCH ","color":"yellow"},{"text":"| ","color":"white"},{"text":"RED wins!","color":"red","bold":true,"italic":true}]
execute if score $winner tf2.var matches 2 run tellraw @a[tag=tf2.current] ["",{"text":"MATCH ","color":"yellow"},{"text":"| ","color":"white"},{"text":"BLU wins!","color":"blue","bold":true,"italic":true}]
execute if score $winner tf2.var matches -1 run tellraw @a[tag=tf2.current] {"text":"Stalemate....","color":"gray","italic":true,"hoverEvent":{"action":"show_text","contents":["",{"text":"You're "},{"text":"all losers!","bold":true}]}}
execute as @a[tag=tf2.current] run function tf2:__private__/anonymous/6
execute store result storage tf2.__temp__:index i int 1 run scoreboard players get @s tf2.batch_number
function tf2:timer/hide with storage tf2.__temp__:index
scoreboard players set @s tf2.timer -1
tag @a remove tf2.current