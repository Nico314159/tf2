scoreboard players remove @s tf2.mot_y 100
execute if entity @s[tag=tf2.stuck] run function tf2:__private__/if_else/40
execute if entity @s[tag=!tf2.stuck] run function tf2:motion/move
scoreboard players set @s[scores={tf2.collision_y=-1}] tf2.mot_y 0
scoreboard players set $hit_object tf2.var 0
execute positioned ~-0.55 ~-1.15 ~-0.55 if entity @a[dx=0.1,dy=1.3,dz=0.1] run scoreboard players set $hit_object tf2.var 1
execute positioned ~-0.55 ~-1.15 ~-0.55 if entity @e[type=armor_stand,dx=0.1,dy=1.3,dz=0.1] run scoreboard players set $hit_object tf2.var 1
execute if score $hit_object tf2.var matches 0 run tag @s add tf2.has_escaped_player
execute if score $hit_object tf2.var matches 1 if entity @s[tag=tf2.has_escaped_player] run function tf2:__private__/if_else/42
scoreboard players set __logic__0 tf2.var 0
execute unless score @s tf2.collision_x matches 0 run scoreboard players set __logic__0 tf2.var 1
execute unless score __logic__0 tf2.var matches 1 unless score @s tf2.collision_z matches 0 run scoreboard players set __logic__0 tf2.var 1
execute if score __logic__0 tf2.var matches 1 run function tf2:__private__/if_else/43
tag @s[scores={tf2.collision=1}] add tf2.has_hit_wall
execute unless score @s tf2.collision_x matches 0 run scoreboard players operation @s tf2.mot_x *= -1 tf2.const
execute unless score @s tf2.collision_y matches 0 run scoreboard players operation @s tf2.mot_y *= -1 tf2.const
execute unless score @s tf2.collision_z matches 0 run scoreboard players operation @s tf2.mot_z *= -1 tf2.const
tag @s[tag=tf2.sticky,scores={tf2.collision=1}] add tf2.stuck
execute if entity @s[tag=!tf2.stuck] run function tf2:__private__/if_else/50
execute if entity @s[tag=tf2.sticky] run return 1
particle minecraft:smoke ~ ~ ~ 0 0 0 0 1
scoreboard players add @s tf2.timer 1
execute if score @s tf2.timer matches 60.. run function tf2:grenade/explode