clear @s
loot replace entity @s hotbar.0 loot tf2:class/sniper/sniper_rifle
loot replace entity @s weapon.offhand loot tf2:class/sniper/sniper_rifle_scope
loot replace entity @s hotbar.1 loot tf2:class/sniper/smg
loot replace entity @s hotbar.2 loot tf2:class/sniper/kukri
loot replace entity @s armor.legs loot tf2:class/sniper/_model
execute store result score @s tf2.primary_maxClip store result score @s tf2.primary_clip run data get entity @s Inventory[0].components.minecraft:custom_data.attributes.clip
execute store result score @s tf2.primary_maxAmmo store result score @s tf2.primary_ammo run data get entity @s Inventory[0].components.minecraft:custom_data.attributes.ammo
execute store result score @s tf2.secondary_maxClip store result score @s tf2.secondary_clip run data get entity @s Inventory[1].components.minecraft:custom_data.attributes.clip
execute store result score @s tf2.secondary_maxAmmo store result score @s tf2.secondary_ammo run data get entity @s Inventory[1].components.minecraft:custom_data.attributes.ammo