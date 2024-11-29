execute store result score $_centerDist_ tf2.var run data get storage retina:output Distance 52.493
tellraw @a ["",{"text":"$_centerDist_ = "},{"score":{"name":"$_centerDist_","objective":"tf2.var"},"type":"score"}]
execute store result score $_splashEdge_ tf2.var run data get storage tf2:vars radius 52.493
tellraw @a ["",{"text":"$_splashEdge_ = "},{"score":{"name":"$_splashEdge_","objective":"tf2.var"},"type":"score"}]
function tf2:projectile/pythagorean_3d
tellraw @a ["",{"text":"$_damage_ = "},{"score":{"name":"$_damage_","objective":"tf2.var"},"type":"score"}]
scoreboard players operation $_finalDamage_ tf2.var = $_damage_ tf2.var
function tf2:weapons/calculate_falloff
scoreboard players operation $_finalDamage_ tf2.var *= $_multiplier_ tf2.var
tellraw @a ["",{"text":"mult = "},{"score":{"name":"$_multiplier_","objective":"tf2.var"},"type":"score"}]
scoreboard players add $_finalDamage_ tf2.var 99
scoreboard players operation $_finalDamage_ tf2.var /= 100 tf2.const
tellraw @a ["",{"text":"damage after multiplier = "},{"score":{"name":"$_finalDamage_","objective":"tf2.var"},"type":"score"}]
execute if entity @s[tag=tf2.hit_by_projectile,tag=!tf2.origin] run return run scoreboard players get $_finalDamage_ tf2.var
execute if entity @s[tag=tf2.origin] run scoreboard players operation $_finalDamage_ tf2.var = $_selfDamage_ tf2.var
tellraw @a ["",{"text":"selfDamage = "},{"score":{"name":"$_selfDamage_","objective":"tf2.var"},"type":"score"}]
scoreboard players operation $_splash_multiplier_ tf2.var = $_centerDist_ tf2.var
scoreboard players operation $_splash_multiplier_ tf2.var *= 50 tf2.const
scoreboard players operation $_splash_multiplier_ tf2.var /= $_splashEdge_ tf2.var
scoreboard players operation $_splash_multiplier_ tf2.var *= -1 tf2.const
scoreboard players add $_splash_multiplier_ tf2.var 100
tellraw @a ["",{"text":"splash = "},{"score":{"name":"$_splash_multiplier_","objective":"tf2.var"},"type":"score"}]
scoreboard players operation $_finalDamage_ tf2.var *= $_splash_multiplier_ tf2.var
scoreboard players add $_finalDamage_ tf2.var 99
scoreboard players operation $_finalDamage_ tf2.var /= 100 tf2.const
tellraw @a ["",{"text":"damage after splash multiplier = "},{"score":{"name":"$_finalDamage_","objective":"tf2.var"},"type":"score"}]
execute unless entity @s[tag=tf2.origin,scores={tf2.class=4..5}] run return run scoreboard players get $_finalDamage_ tf2.var
execute if score $playersHurt tf2.var matches 2.. run return run scoreboard players get $_finalDamage_ tf2.var
scoreboard players operation $_finalDamage_ tf2.var *= 3 tf2.const
scoreboard players set $_temp_ tf2.var 9
scoreboard players operation $_temp_ tf2.var -= @s tf2.class
scoreboard players operation $_finalDamage_ tf2.var /= $_temp_ tf2.var
tellraw @a ["",{"text":"damage after self multiplier = "},{"score":{"name":"$_finalDamage_","objective":"tf2.var"},"type":"score"}]
return run scoreboard players get $_finalDamage_ tf2.var