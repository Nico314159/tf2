#> tf2:objectives/control_point/init
#
# @within tf2:tick

execute unless entity @s[tag=tf2.locked] run setblock ~ ~ ~ air
execute if entity @s[tag=tf2.locked] run setblock ~ ~ ~ stone_slab
execute if score @s tf2.team matches 1 run setblock ~ ~-1 ~ red_stained_glass
execute if score @s tf2.team matches 2 run setblock ~ ~-1 ~ blue_stained_glass

scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
function tf2:objectives/control_point/find_index/main
execute if score @s tf2.team matches 0 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"gray"}]'
execute if score @s tf2.team matches 1 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#D95A58"}]'
execute if score @s tf2.team matches 2 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#487DA1"}]'
data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321))))))))))))))","color":"gray"}]'
execute if entity @s[tag=tf2.locked] run data modify storage tf2.__temp__:lookup points[0].symbol set value '[{"text":"320L@","font":"tf2:square"}]'
execute if entity @s[tag=tf2.star] run data modify storage tf2.__temp__:lookup points[0].symbol set value '[{"text":"321S!)","font":"tf2:square"}]'
execute unless entity @s[tag=tf2.letter] run data modify storage tf2.__temp__:lookup points[0].extra set value '[{"text":"%)","font":"tf2:square"}]'
execute if entity @s[tag=tf2.letter] if score @s tf2.index matches 0 run data modify storage tf2.__temp__:lookup points[0].extra set value '[{"text":"3210|]","color":"gray"},{"text":"|21A%","color":"black"}]'
execute if entity @s[tag=tf2.letter] if score @s tf2.index matches 1 run data modify storage tf2.__temp__:lookup points[0].extra set value '[{"text":"3210|]","color":"gray"},{"text":"|21B%","color":"black"}]'
execute if entity @s[tag=tf2.letter] if score @s tf2.index matches 2 run data modify storage tf2.__temp__:lookup points[0].extra set value '[{"text":"3210|]","color":"gray"},{"text":"|21C%","color":"black"}]'
execute if entity @s[tag=tf2.letter] if score @s tf2.index matches 3 run data modify storage tf2.__temp__:lookup points[0].extra set value '[{"text":"3210|]","color":"gray"},{"text":"|21D%","color":"black"}]'
execute if entity @s[tag=tf2.letter] if score @s tf2.index matches 4 run data modify storage tf2.__temp__:lookup points[0].extra set value '[{"text":"3210|]","color":"gray"},{"text":"|21E%","color":"black"}]'
function tf2:objectives/control_point/find_index/reinsert/main

tag @s add tf2.init