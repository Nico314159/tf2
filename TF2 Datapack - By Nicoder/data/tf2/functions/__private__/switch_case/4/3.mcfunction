execute store result score @s tf2.max_health run scoreboard players set @s tf2.health 125
attribute @s minecraft:generic.movement_speed base set 0.176
clear @s
loot replace entity @s hotbar.0 loot tf2:class/scout/scattergun
loot replace entity @s hotbar.1 loot tf2:class/scout/pistol
loot replace entity @s hotbar.2 loot tf2:class/scout/baseball_bat
loot replace entity @s armor.legs loot tf2:class/scout/_model
execute store result score @s tf2.primary_maxClip store result score @s tf2.primary_clip run data get entity @s Inventory[0].tag.attributes.clip
execute store result score @s tf2.primary_ammo run data get entity @s Inventory[0].tag.attributes.ammo
execute store result score @s tf2.secondary_maxClip store result score @s tf2.secondary_clip run data get entity @s Inventory[1].tag.attributes.clip
execute store result score @s tf2.secondary_ammo run data get entity @s Inventory[1].tag.attributes.ammo
scoreboard players set __found_case__ tf2.var 1