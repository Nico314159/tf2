execute store success score $within_2048 vdv_iris if score $shift_z vdv_iris matches ..2047

execute if score $within_2048 vdv_iris matches 0 run scoreboard players remove $shift_z vdv_iris 2048
execute if score $within_2048 vdv_iris matches 0 positioned ~ ~ ~0.002048 run function vdv_iris:set_coordinates/z/9
execute if score $within_2048 vdv_iris matches 1 run function vdv_iris:set_coordinates/z/9