#TODO make this more modular so it doesn't repeat itself three times
execute if score @s tf2.selected_mode matches 1 run function tf2:select/comp_mode
execute if score @s tf2.selected_mode matches 2 run function tf2:select/casual_mode
execute if score @s tf2.selected_mode matches 3 run function tf2:select/chaos_mode
execute unless score @s tf2.batch_number = @s tf2.batch_number run scoreboard players set @s tf2.batch_number 0
