execute store result score $get_coordinates.within_2048 vdv_iris if entity @s[distance=..0.002048]

execute if score $get_coordinates.within_2048 vdv_iris matches 0 run scoreboard players add ${z} vdv_iris 2048
execute if score $get_coordinates.within_2048 vdv_iris matches 0 positioned ~ ~ ~0.002048 run function vdv_iris:get_coordinates/z/9
execute if score $get_coordinates.within_2048 vdv_iris matches 1 run function vdv_iris:get_coordinates/z/9