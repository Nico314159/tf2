item replace entity @s weapon.offhand with air
loot replace entity @s hotbar.0 loot tf2:class/medic/syringe_gun
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:90}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:90}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.0 loot tf2:class/medic/syringe_gun
loot replace entity @s hotbar.1 loot tf2:class/medic/medi_gun
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:91}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:91}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.1 loot tf2:class/medic/medi_gun
loot replace entity @s hotbar.2 loot tf2:class/medic/bonesaw
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:92}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:92}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.2 loot tf2:class/medic/bonesaw
loot replace entity @s armor.legs loot tf2:class/medic/_model
execute store result score $_count_ tf2.var run clear @s iron_leggings 0
execute unless score $_count_ tf2.var matches 1 run clear @s iron_leggings
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.legs loot tf2:class/medic/_model
loot replace entity @s armor.head loot tf2:head
execute store result score $_count_ tf2.var run clear @s paper 0
execute unless score $_count_ tf2.var matches 1 run clear @s paper
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.head loot tf2:head