function tf2:weapons/get_ammo
function tf2:hud/actionbar
function tf2:weapons/set_ammo
function tf2:class/medic/inventory_lock
scoreboard players operation $regen_modulo tf2.var = $__global__ 0008it54g_p_join
scoreboard players operation $regen_modulo tf2.var %= 20 tf2.const
execute if score $regen_modulo tf2.var matches 0 run function tf2:class/medic/natural_regen
execute if score @s tf2.current_slot matches 1 unless score @s tf2.attack_delay matches 1.. run function tf2:class/medic/heal_nearest_teammate