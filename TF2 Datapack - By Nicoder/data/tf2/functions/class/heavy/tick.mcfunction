function tf2:weapons/get_ammo
function tf2:weapons/actionbar
function tf2:weapons/set_ammo
attribute @s[predicate=tf2:class/heavy/is_revving] minecraft:generic.movement_speed modifier add 736c6f77-7768-696c-6572-657676696e67 "slowwhilerevving" -0.476 multiply
attribute @s[predicate=!tf2:class/heavy/is_revving] minecraft:generic.movement_speed modifier remove 736c6f77-7768-696c-6572-657676696e67
scoreboard players add @s[predicate=tf2:class/heavy/is_revving] tf2.time_revved 1000
execute unless score @s tf2.current_slot matches 0 unless score @s tf2.time_revved matches 0 run function tf2:__private__/if_else/1
scoreboard players set @s[predicate=!tf2:class/heavy/is_revving] tf2.time_revved 0
function tf2:class/heavy/inventory_lock