#> tf2:start_game/as_players/generic
#
# Adds players to the game and gives them a tag so that other functions know.
#
# @within tf2:start_game/as_marker/main
# @context all players in the current queue
# @handles start of game
# @output
#   score @s tf2.batch_number
#       Pairs the players in the queue to each other and to the storage marker
# @writes
#   score $break tf2.queue_type
#       Prevents multiple queues from getting assigned to same game

effect give @s glowing 1000 0 true
# execute if score $show_debug_messages tf2.settings matches 1 run say generic
scoreboard players operation @s tf2.batch_number = $local tf2.batch_number 
tag @s remove tf2.in_queue
tag @s add tf2.is_playing
scoreboard players set $break tf2.queue_type 1

# used for team assignment
tag @s add tf2.current

# gametype specific
execute if score @s tf2.queue_type matches 1 run function tf2:start_game/as_players/competitive
execute if score @s tf2.queue_type matches 2 run function tf2:start_game/as_players/casual
execute if score @s tf2.queue_type matches 3 run function tf2:start_game/as_players/chaos