# TODO expand this as time goes on
scoreboard objectives add tf2.ticks dummy
scoreboard objectives add tf2.const dummy
scoreboard objectives add tf2.var dummy
scoreboard objectives add tf2.settings dummy
scoreboard objectives add tf2.selected_mode trigger
scoreboard objectives add tf2.gamestate dummy
scoreboard objectives add tf2.capture_progress dummy
scoreboard objectives add tf2.sprinting dummy
scoreboard objectives add tf2.class dummy
scoreboard objectives add tf2.team dummy
scoreboard objectives add tf2.health dummy
scoreboard objectives add tf2.batch_number dummy

# TODO remove this line later
scoreboard players set $show_debug_messages tf2.settings 1 

# only runs the very first time datapack is loaded
execute unless score $initialization_complete tf2.settings = $initialization_complete tf2.settings run function tf2:initial

scoreboard players set $number_of_maps tf2.var 3

