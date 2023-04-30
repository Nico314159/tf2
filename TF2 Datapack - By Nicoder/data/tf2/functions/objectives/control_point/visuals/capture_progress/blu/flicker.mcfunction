#> tf2:objectives/control_point/visuals/capture_progress/blu/flicker
#
# @within tf2:objectives/control_point/visuals/capture_progress/red/main

scoreboard players operation $flicker tf2.ticks = $global tf2.ticks
scoreboard players operation $flicker tf2.ticks %= $20 tf2.const
execute if score $flicker tf2.ticks matches 0 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#7EA3CE"}]'
execute if score $flicker tf2.ticks matches 1..2 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#8EABCD"}]'
execute if score $flicker tf2.ticks matches 3..4 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#9AB1CB"}]'
execute if score $flicker tf2.ticks matches 5..7 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#A8B9CC"}]'
execute if score $flicker tf2.ticks matches 8..11 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#B4BECA"}]'
execute if score $flicker tf2.ticks matches 12..14 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#A8B9CC"}]'
execute if score $flicker tf2.ticks matches 15..16 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#9AB1CB"}]'
execute if score $flicker tf2.ticks matches 17..18 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#8EABCD"}]'
execute if score $flicker tf2.ticks matches 19 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#7EA3CE"}]'