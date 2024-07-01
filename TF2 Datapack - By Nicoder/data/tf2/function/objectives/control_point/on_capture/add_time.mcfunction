scoreboard players operation @e[type=marker,tag=tf2.batch,tag=tf2.current,limit=1] tf2.timer += @s tf2.increment
scoreboard players set @e[type=marker,tag=tf2.batch,tag=tf2.current,limit=1,scores={tf2.gamemode=2}] tf2.timer 12000
execute as @a if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
execute if score @s tf2.red_progress >= @s tf2.capture_threshold run tellraw @a[tag=tf2.current,scores={tf2.team=1}] {"text":"Success. Additional time has been awarded.","bold":true,"color":"red","type":"text"}
execute if score @s tf2.red_progress >= @s tf2.capture_threshold run tellraw @a[tag=tf2.current,scores={tf2.team=2}] ["",{"text":"The ","bold":true,"color":"blue","type":"text"},{"text":"enemy ","bold":true,"italic":true,"color":"blue","type":"text"},{"text":"has received additional time.","bold":true,"color":"blue","type":"text"}]
execute if score @s tf2.blu_progress >= @s tf2.capture_threshold run tellraw @a[tag=tf2.current,scores={tf2.team=1}] ["",{"text":"The ","bold":true,"color":"red","type":"text"},{"text":"enemy ","bold":true,"italic":true,"color":"red","type":"text"},{"text":"has received additional time.","bold":true,"color":"red","type":"text"}]
execute if score @s tf2.blu_progress >= @s tf2.capture_threshold run tellraw @a[tag=tf2.current,scores={tf2.team=2}] {"text":"Success. Additional time has been awarded.","bold":true,"color":"blue","type":"text"}