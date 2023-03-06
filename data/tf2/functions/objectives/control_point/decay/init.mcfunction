#> tf2:objectives/control_point/decay/init
#
# @within tf2:tick

# if non-owner team still has players on point, don't decay
scoreboard players reset $break tf2.var
execute if score $red_on_point tf2.var matches 1.. unless score @s tf2.team matches 1 run scoreboard players set $break tf2.var 1
execute if score $blu_on_point tf2.var matches 1.. unless score @s tf2.team matches 2 run scoreboard players set $break tf2.var 1
execute unless score $break tf2.var matches 1 run function tf2:objectives/control_point/decay/main 