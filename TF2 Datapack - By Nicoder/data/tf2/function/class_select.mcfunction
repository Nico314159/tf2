clear @s[scores={tf2.class=1..9}]
tag @s remove tf2.on_fire
tag @s remove tf2.can_double_jump
effect clear @s invisibility
attribute @s minecraft:generic.jump_strength modifier remove tf2:no_jump
attribute @s minecraft:generic.movement_speed modifier remove tf2:no_move
scoreboard players set __found_case__ tf2.var 0
execute store result storage tf2:__storage__ switch_key int 1 run scoreboard players get @s tf2.class
function tf2:__private__/switch_case/7/select with storage tf2:__storage__
execute unless score __found_case__ tf2.var matches 1 run function tf2:__private__/switch_case/7/default
scoreboard players operation @s tf2.model_number = @s tf2.class
scoreboard players operation @s tf2.model_number *= 10 tf2.const
scoreboard players operation @s tf2.model_number += @s tf2.team
playsound tf2:pickup.ammo player @s[scores={tf2.health=1..,tf2.class=1..9}]