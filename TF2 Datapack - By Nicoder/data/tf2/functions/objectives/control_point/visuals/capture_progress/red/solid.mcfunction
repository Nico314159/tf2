function tf2:objectives/control_point/find_index/main
data modify storage tf2.__temp__:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#D95A58"}]'
data modify storage tf2.__temp__:lookup points[0].progress set value '[{"text":"321))))))))))))))","color":"gray"}]'
function tf2:objectives/control_point/find_index/reinsert/main
tag @s remove tf2.said_dialogue
