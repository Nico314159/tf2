#> tf2:objectives/control_point/visuals/capture_progress/blu/12_to_15
#
# @within tf2:objectives/control_point/visuals/capture_progress/blu/main

execute if score $frame tf2.var matches 12 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321e0e0e0e0e0e0e0|e0e0d0c0b0a0)","color":"#517AB8"}]'
execute if score $frame tf2.var matches 13 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321e0e0e0e0e0e0e0|e0e0e0d0c0b0)","color":"#517AB8"}]'
execute if score $frame tf2.var matches 14 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321e0e0e0e0e0e0e0|e0e0e0e0d0c0)","color":"#517AB8"}]'
execute if score $frame tf2.var matches 15 run data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321e0e0e0e0e0e0e0|e0e0e0e0e0d0)","color":"#517AB8"}]'