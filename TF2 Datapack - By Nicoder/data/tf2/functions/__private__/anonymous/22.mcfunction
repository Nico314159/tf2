execute store result score $_maxRamp_ tf2.var run data get entity @s item.tag.attributes.damage.maxRamp 100
execute unless data entity @s item.tag.attributes.damage.maxRamp run scoreboard players set $_maxRamp_ tf2.var 150
execute store result score $_rangeDependent_ tf2.var run data get entity @s item.tag.attributes.damage.uniform
execute store success score $_rangeDependent_ tf2.var if score $_rangeDependent_ tf2.var matches 0