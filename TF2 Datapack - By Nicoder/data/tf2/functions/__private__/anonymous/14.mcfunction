data modify storage tf2.__temp__:summon entity.Pos set from storage tf2.__temp__:summon doors[-1].Pos
data modify storage tf2.__temp__:summon entity.Rotation set from storage tf2.__temp__:summon doors[-1].Rotation
data modify storage tf2.__temp__:summon entity.data set from storage tf2.__temp__:summon doors[-1].data
execute store success score $team tf2.var if score $i tf2.var < $blu_length tf2.var
scoreboard players add $team tf2.var 1
execute store result storage tf2.__temp__:summon entity.data.team int 1 run scoreboard players get $team tf2.var
data modify entity @s {} merge from storage tf2.__temp__:summon entity
tag @s add tf2.spawn_door