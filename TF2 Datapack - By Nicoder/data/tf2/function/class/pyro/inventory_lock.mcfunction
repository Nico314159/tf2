item replace entity @s weapon.offhand with air
loot replace entity @s hotbar.0 loot tf2:class/pyro/flamethrower
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:[7,0]}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:[7,0]}] 0
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.0 loot tf2:class/pyro/flamethrower
loot replace entity @s hotbar.1 loot tf2:class/pyro/shotgun
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:[7,1]}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:[7,1]}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.1 loot tf2:class/pyro/shotgun
loot replace entity @s hotbar.2 loot tf2:class/pyro/fire_axe
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:[7,2]}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:[7,2]}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.2 loot tf2:class/pyro/fire_axe
loot replace entity @s armor.legs loot tf2:class/pyro/_model
execute store result score $_count_ tf2.var run clear @s iron_leggings 0
execute unless score $_count_ tf2.var matches 1 run clear @s iron_leggings
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.legs loot tf2:class/pyro/_model
loot replace entity @s armor.head loot tf2:head
execute store result score $_count_ tf2.var run clear @s paper 0
execute unless score $_count_ tf2.var matches 1 run clear @s paper
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.head loot tf2:head