#> tf2:start_game/as_marker/main
#
# Starts a new running game with the players in the queue. 
#
# @within tf2:__tick__
# @context a marker (position/rotation irrelevant)
# @handles start of game
# @input
#   score $(casual/competitive/chaos)_queue_length tf2.var 
#       The number of people queued for each game format.
#   storage tf2:maps <num>
#       The currently selected map and all its associated data.
# @output
#   score @s tf2.batch_number
#   score ⟨players⟩ tf2.batch_number
#       Pairs the players in a queue to each other and to the storage marker.
# @writes
#   score $break tf2.queue_type
#       Prevents multiple queues from getting assigned to same game.
execute if score $show_debug_messages tf2.settings matches 1 run tellraw NicoWill314 ["",{"text":"<Debug> ","bold":true},"Game has been started by ",{"selector":"@s"}," at ",{"score":{"name":"$global","objective":"tf2.ticks"}}," ticks gametime"]
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
scoreboard players reset $break tf2.queue_type
# TODO: make dynamic for selected maps instead of hardcoding
data modify entity @s[scores={tf2.map=0}] data.map set from storage tf2:maps 0
data modify entity @s[scores={tf2.map=1}] data.map set from storage tf2:maps 1
execute store result score @s tf2.gamemode run data get entity @s data.map.gamemode
scoreboard players operation $temp tf2.gamemode = @s tf2.gamemode
data modify storage tf2.__temp__:summon objectives set from entity @s data.map.objectives
scoreboard players set $temp tf2.index 0
execute if data storage tf2.__temp__:summon objectives[] run function tf2:__private__/while_loop/0
execute if score @s tf2.gamemode matches 1..4 run function tf2:objectives/control_point/visuals/spacing
execute as @e[type=marker,tag=tf2.objective] if score @s tf2.index = $highest tf2.index run tag @s add tf2.last
data remove entity @s data.map.objectives
execute as @e[type=marker,tag=tf2.control_point,scores={tf2.team=1}] at @s run setblock ~ ~-1 ~ red_stained_glass
execute as @e[type=marker,tag=tf2.control_point,scores={tf2.team=2}] at @s run setblock ~ ~-1 ~ blue_stained_glass
# TODO: replace random assignment with first come, first serve
scoreboard players set __if_else__ tf2.var 0
execute if score $comp_queue_length tf2.var matches 12.. run function tf2:__private__/if_else/4
execute if score __if_else__ tf2.var matches 0 run function tf2:__private__/if_else/5
scoreboard players operation @s tf2.queue_type = @e[type=#tf2:player_like,tag=tf2.current,limit=1] tf2.queue_type
execute store result score @s tf2.timer run data get entity @s data.map.timer 20
execute if data entity @s data.map.timer run function tf2:timer/set_max
execute if data entity @s data.map.timer run function tf2:timer/show
execute if data entity @s data.map.setup_time run function tf2:timer/begin_setup
function tf2:start_game/as_marker/tell_info
scoreboard players reset @e[tag=tf2.current] tf2.team
scoreboard players set $team_temp tf2.var 0
execute store result score $count tf2.var if entity @e[tag=tf2.current]
execute as @e[tag=tf2.current,sort=random] run function tf2:team_assign
scoreboard players operation $count tf2.var %= 2 tf2.const
execute if score $count tf2.var matches 1 if predicate tf2:coin_flip run scoreboard players set @e[tag=tf2.current,sort=random,limit=1,scores={tf2.team=1}] tf2.team 2
tag @s add tf2.in_use
tag @e remove tf2.current