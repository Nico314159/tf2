execute store result score @s tf2.max_health run scoreboard players set @s tf2.health 125
attribute @s minecraft:movement_speed base set 0.176
function tf2:class/scout/give
scoreboard players set __found_case__ tf2.var 1