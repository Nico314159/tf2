execute store result score @s tf2.max_health run scoreboard players set @s tf2.health 300
attribute @s minecraft:generic.movement_speed base set 0.0924
clear @s
loot replace entity @s hotbar.0 loot tf2:class/heavy/minigun_decoy
loot replace entity @s weapon.offhand loot tf2:class/heavy/minigun_spinning
loot replace entity @s hotbar.1 loot tf2:class/heavy/shotgun
loot replace entity @s hotbar.2 loot tf2:class/heavy/right_fist
loot replace entity @s armor.legs loot tf2:class/heavy/_model
execute store result score @s tf2.primary_maxClip store result score @s tf2.primary_clip run data get entity @s Inventory[{Slot:-106b}].tag.attributes.clip
execute store result score @s tf2.primary_maxAmmo store result score @s tf2.primary_ammo run data get entity @s Inventory[{Slot:-106b}].tag.attributes.ammo
execute store result score @s tf2.secondary_maxClip store result score @s tf2.secondary_clip run data get entity @s Inventory[1].tag.attributes.clip
execute store result score @s tf2.secondary_maxAmmo store result score @s tf2.secondary_ammo run data get entity @s Inventory[1].tag.attributes.ammo
execute store result score @s tf2.rev_threshold run data get entity @s Inventory[{Slot:-106b}].tag.attributes.spinupDelay 20000
scoreboard players set __found_case__ tf2.var 1