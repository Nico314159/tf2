#> tf2:objectives/control_point/visuals/capture_progress/neutral_flicker
#
# @within tf2:objectives/control_point/visuals/capture_progress/*/main

scoreboard players operation $flicker tf2.ticks = $global tf2.ticks
scoreboard players operation $flicker tf2.ticks %= $20 tf2.const
execute if score $flicker tf2.ticks matches 0 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#A0A0A0"}]'
execute if score $flicker tf2.ticks matches 1..2 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#ABABAB"}]'
execute if score $flicker tf2.ticks matches 3..4 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#B6B6B6"}]'
execute if score $flicker tf2.ticks matches 5..7 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#BDBDBD"}]'
execute if score $flicker tf2.ticks matches 8..11 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#C4C4C4"}]'
execute if score $flicker tf2.ticks matches 12..14 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#BDBDBD"}]'
execute if score $flicker tf2.ticks matches 15..16 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#B6B6B6"}]'
execute if score $flicker tf2.ticks matches 17..18 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#ABABAB"}]'
execute if score $flicker tf2.ticks matches 19 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#A0A0A0"}]'