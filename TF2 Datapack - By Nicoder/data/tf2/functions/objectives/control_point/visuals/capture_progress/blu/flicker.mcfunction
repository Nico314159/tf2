scoreboard players operation $flicker tf2.ticks = $global tf2.ticks
scoreboard players operation $flicker tf2.ticks %= $20 tf2.const
execute if score $flicker tf2.ticks matches 0 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#80A7CF"}]'
execute if score $flicker tf2.ticks matches 1..2 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#8DADCE"}]'
execute if score $flicker tf2.ticks matches 3..4 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#9AB3CB"}]'
execute if score $flicker tf2.ticks matches 5..7 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#ABBDCE"}]'
execute if score $flicker tf2.ticks matches 8..11 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#B7C1CC"}]'
execute if score $flicker tf2.ticks matches 12..14 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#ABBDCE"}]'
execute if score $flicker tf2.ticks matches 15..16 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#9AB3CB"}]'
execute if score $flicker tf2.ticks matches 17..18 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#8DADCE"}]'
execute if score $flicker tf2.ticks matches 19 run data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#80A7CF"}]'