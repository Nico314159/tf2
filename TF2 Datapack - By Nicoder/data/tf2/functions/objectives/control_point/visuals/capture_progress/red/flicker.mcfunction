#> tf2:objectives/control_point/visuals/capture_progress/red/flicker
#
# @within tf2:objectives/control_point/visuals/capture_progress/blu/main

scoreboard players operation $flicker tf2.ticks = $global tf2.ticks
scoreboard players operation $flicker tf2.ticks %= $20 tf2.const
execute if score $flicker tf2.ticks matches 0 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#D28991"}]'
execute if score $flicker tf2.ticks matches 1..2 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#CF9198"}]'
execute if score $flicker tf2.ticks matches 3..4 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#CDACB1"}]'
execute if score $flicker tf2.ticks matches 5..7 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#CEB6B9"}]'
execute if score $flicker tf2.ticks matches 8..11 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#CABCC0"}]'
execute if score $flicker tf2.ticks matches 12..14 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#CEB6B9"}]'
execute if score $flicker tf2.ticks matches 15..16 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#CDACB1"}]'
execute if score $flicker tf2.ticks matches 17..18 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#CF9198"}]'
execute if score $flicker tf2.ticks matches 19 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#D28991"}]'