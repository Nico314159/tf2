#> tf2:objectives/control_point/visuals/capture_progress/red/0_to_3
#
# @within tf2:objectives/control_point/visuals/capture_progress/red/main

execute if score $frame tf2.var matches 0 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321#@|a0)","color":"#D95A58"}]'
execute if score $frame tf2.var matches 1 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321#!)|a0b0)","color":"#D95A58"}]'
execute if score $frame tf2.var matches 2 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321#!|a0b0c0)","color":"#D95A58"}]'
execute if score $frame tf2.var matches 3 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321#)|a0b0c0d0)","color":"#D95A58"}]'