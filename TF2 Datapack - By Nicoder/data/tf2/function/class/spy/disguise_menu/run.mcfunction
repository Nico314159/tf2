item replace entity @s armor.chest with air
loot replace entity @s weapon.offhand loot tf2:class/spy/disguise_kit
execute store result score $_count_ tf2.var run clear @s crossbow[custom_data~{disguise:true}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s crossbow[custom_data~{disguise:true}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s weapon.offhand loot tf2:class/spy/disguise_kit
item modify entity @s weapon.offhand tf2:load_crossbow
item modify entity @s weapon.offhand {"function":"minecraft:set_custom_model_data","value":{"type":"minecraft:score","target":"this","score":"tf2.disguise.primary_CMD"}}
function tf2:class/spy/disguise_menu/give_heads