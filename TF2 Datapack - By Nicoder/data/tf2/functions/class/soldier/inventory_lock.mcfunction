item replace entity @s weapon.offhand with air
loot replace entity @s hotbar.0 loot tf2:class/soldier/rocket_launcher
execute store result score $_count_ tf2.var run clear @s crossbow{CustomModelData:41000} 0
execute unless score $_count_ tf2.var matches 1 run clear @s crossbow{CustomModelData:41000}
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.0 loot tf2:class/soldier/rocket_launcher
loot replace entity @s hotbar.1 loot tf2:class/soldier/shotgun
execute store result score $_count_ tf2.var run clear @s crossbow{CustomModelData:42000} 0
execute unless score $_count_ tf2.var matches 1 run clear @s crossbow{CustomModelData:42000}
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.1 loot tf2:class/soldier/shotgun
loot replace entity @s hotbar.2 loot tf2:class/soldier/shovel
execute store result score $_count_ tf2.var run clear @s snowball{CustomModelData:43000} 0
execute unless score $_count_ tf2.var matches 1 run clear @s snowball{CustomModelData:43000}
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.2 loot tf2:class/soldier/shovel
loot replace entity @s armor.legs loot tf2:class/soldier/_model
execute store result score $_count_ tf2.var run clear @s iron_leggings{Trim:{pattern:"tf2:soldier"}} 0
execute unless score $_count_ tf2.var matches 1 run clear @s iron_leggings{Trim:{pattern:"tf2:soldier"}}
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.legs loot tf2:class/soldier/_model