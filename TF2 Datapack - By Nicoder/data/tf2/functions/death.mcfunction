title @s actionbar ["",{"text":"\u2764 Health: 0 / ","color":"red","type":"text"},{"score":{"name":"@s","objective":"tf2.max_health"},"color":"red","type":"score"}]
title @s times 0 3 3
spawnpoint @s ~ ~ ~
tag @s add tf2.dead
gamemode spectator @s
execute store result storage tf2.__temp__:index i int 1 run scoreboard players get @s tf2.batch_number
function tf2:__private__/anonymous/40 with storage tf2.__temp__:index
execute at @s[scores={tf2.class=1..}] run summon axolotl ~ ~ ~ {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.0d},{Name:"minecraft:generic.jump_strength",Base:0.0d},{Name:"minecraft:generic.scale",Base:0.0625d}],Invulnerable:1b,Silent:1b,Tags:["tf2.no_respawn","tf2.new"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}],Passengers:[{id:"minecraft:item",NoGravity:0b,Invulnerable:1b,Tags:["tf2.pickup","tf2.ammo_pack","tf2.no_respawn"],Age:-32768s,PickupDelay:32767s,Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:22}}}]}
execute as @e[type=axolotl,tag=tf2.new,tag=tf2.no_respawn] run execute store result score @s tf2.batch_number on passengers store result score @s tf2.batch_number run data get storage tf2.__temp__:index i 1.0
execute as @e[type=axolotl,tag=tf2.new,tag=tf2.no_respawn] run team join delta.no_collide
execute as @e[type=axolotl,tag=tf2.new,tag=tf2.no_respawn] run tag @s remove tf2.new