execute store success score $within_256 vdv_iris if score $shift_z vdv_iris matches ..255

execute if score $within_256 vdv_iris matches 0 run scoreboard players remove $shift_z vdv_iris 256
execute if score $within_256 vdv_iris matches 0 positioned ~ ~ ~0.000256 run function vdv_iris:set_coordinates/z/12
execute if score $within_256 vdv_iris matches 1 run function vdv_iris:set_coordinates/z/12