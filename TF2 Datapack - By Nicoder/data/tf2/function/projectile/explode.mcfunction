particle minecraft:explosion ~ ~ ~
execute store result score $playersHurt tf2.var run scoreboard players set $_totalDamage_ tf2.var 0
scoreboard players operation $temp tf2.player.id = @s tf2.player.id
execute as @a if score @s tf2.player.id = $temp tf2.player.id run tag @s add tf2.origin
execute as @a if score @s tf2.player.id = $temp tf2.player.id run tag @s add tf2.opponent
$execute at @s as @e[type=#tf2:player_like,tag=tf2.opponent,distance=..$(radius)] run function tf2:projectile/wall_check
tag @a remove tf2.origin