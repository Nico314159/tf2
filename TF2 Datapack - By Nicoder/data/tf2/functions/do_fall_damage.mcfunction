scoreboard players operation $2nd_previous_dy tf2.var = @s tf2.fall_y3
scoreboard players operation $2nd_previous_dy tf2.var -= @s tf2.fall_y2
scoreboard players operation $previous_dy tf2.var = @s tf2.fall_y2
scoreboard players operation $previous_dy tf2.var -= @s tf2.fall_y1
scoreboard players operation $current_dy tf2.var = @s tf2.fall_y1
scoreboard players operation $current_dy tf2.var -= @s tf2.fall_y
scoreboard players set __if_else__ tf2.var 0
execute if score $previous_dy tf2.var >= $current_dy tf2.var run function tf2:__private__/if_else/38
execute if score __if_else__ tf2.var matches 0 run scoreboard players operation $impact_velocity tf2.var = $current_dy tf2.var
scoreboard players operation $impact_velocity tf2.var *= 1050 tf2.const
execute if score $impact_velocity tf2.var matches ..92000 run scoreboard players set $impact_velocity tf2.var 0
scoreboard players operation $fall_damage tf2.var = $impact_velocity tf2.var
scoreboard players operation $fall_damage tf2.var /= 120 tf2.const
scoreboard players operation $fall_damage tf2.var < 5833 tf2.const
scoreboard players operation $fall_damage tf2.var *= @s tf2.max_health
scoreboard players operation $fall_damage tf2.var /= 100 tf2.const
execute store result score $random_mult tf2.var run random value 80..120
scoreboard players operation $fall_damage tf2.var *= $random_mult tf2.var
scoreboard players operation $fall_damage tf2.var /= 10000 tf2.const
execute if block ~ ~-1 ~ #tf2:no_fall_dmg run scoreboard players set $fall_damage tf2.var 0
execute if block ~ ~-1 ~ slime_block unless predicate tf2:sneaking run scoreboard players set $fall_damage tf2.var 0
execute if block ~ ~-1 ~ #tf2:reduce_fall_dmg run scoreboard players operation $fall_damage tf2.var /= 5 tf2.const
execute if block ~ ~-1 ~ #minecraft:beds run scoreboard players operation $fall_damage tf2.var /= 2 tf2.const
scoreboard players operation @s tf2.health -= $fall_damage tf2.var
execute if score $fall_damage tf2.var matches 1.. run damage @s 0.01 tf2:screenshake
execute if score @s tf2.health matches ..0 run tellraw @a[tag=tf2.current] ["",{"selector":"@s","type":"selector"},{"text":" fell to their death"}]
execute store result score $previous_dy tf2.var store result score $current_dy tf2.var store result score $impact_velocity tf2.var store result score $fall_damage tf2.var store result score @s tf2.fall_y3 store result score @s tf2.fall_y2 store result score @s tf2.fall_y1 store result score @s tf2.fall_y run scoreboard players set @s tf2.fall 0