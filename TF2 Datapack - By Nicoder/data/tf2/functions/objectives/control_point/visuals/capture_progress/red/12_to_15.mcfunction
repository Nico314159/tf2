#> tf2:objectives/control_point/visuals/capture_progress/red/12_to_15
#
# @within tf2:objectives/control_point/visuals/capture_progress/red/main

execute if score $frame tf2.var matches 12 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321|a0b0c0d0e0e0e0e0e0e0e0e0e0)","color":"#D95A58"}]'
execute if score $frame tf2.var matches 13 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321|b0c0d0e0e0e0e0e0e0e0e0e0e0)","color":"#D95A58"}]'
execute if score $frame tf2.var matches 14 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321|c0d0e0e0e0e0e0e0e0e0e0e0e0)","color":"#D95A58"}]'
execute if score $frame tf2.var matches 15 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321|d0e0e0e0e0e0e0e0e0e0e0e0e0)","color":"#D95A58"}]'