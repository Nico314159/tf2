scoreboard players reset $winner tf2.var
tag @s remove tf2.overtime
scoreboard players operation $temp tf2.var = @s tf2.gamemode
scoreboard players operation $temp tf2.var %= 4 tf2.const
execute if score $temp tf2.var matches 1 run scoreboard players set $winner tf2.var 1
execute unless score $temp tf2.var matches 1 run scoreboard players set $winner tf2.var -1
function tf2:reset/announce_winner