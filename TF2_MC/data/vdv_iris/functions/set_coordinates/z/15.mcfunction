execute store success score $within_16 vdv_iris if score $shift_z vdv_iris matches ..15

execute if score $within_16 vdv_iris matches 0 run scoreboard players remove $shift_z vdv_iris 16
execute if score $within_16 vdv_iris matches 0 positioned ~ ~ ~0.000016 run function vdv_iris:set_coordinates/z/16
execute if score $within_16 vdv_iris matches 1 run function vdv_iris:set_coordinates/z/16