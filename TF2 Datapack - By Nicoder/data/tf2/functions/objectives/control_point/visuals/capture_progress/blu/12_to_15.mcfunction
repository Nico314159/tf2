scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
function tf2:objectives/control_point/find_index/main
execute if score $frame tf2.var matches 12 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321e0e0e0e0e0e0e0|e0e0d0c0b0a0)","color":"blue"}]'
execute if score $frame tf2.var matches 13 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321e0e0e0e0e0e0e0|e0e0e0d0c0b0)","color":"blue"}]'
execute if score $frame tf2.var matches 14 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321e0e0e0e0e0e0e0|e0e0e0e0d0c0)","color":"blue"}]'
execute if score $frame tf2.var matches 15 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321e0e0e0e0e0e0e0|e0e0e0e0e0d0)","color":"blue"}]'
function tf2:objectives/control_point/find_index/reinsert/main