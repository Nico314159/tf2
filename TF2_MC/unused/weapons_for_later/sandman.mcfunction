execute as @e[type=snowball] at @s unless entity @e[type=!snowball,distance=..2] run tag @s add effect
execute at @e[type=snowball,tag=effect] run effect give @e[type=!snowball,distance=..2] slowness 3 1