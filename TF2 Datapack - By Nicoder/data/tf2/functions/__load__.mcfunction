scoreboard objectives add tf2.var dummy
scoreboard objectives add on_event_1mqyp2x used:carrot_on_a_stick
scoreboard objectives add tf2.const dummy
scoreboard players set 0 tf2.const 0
scoreboard players set 2 tf2.const 2
scoreboard players set 3 tf2.const 3
scoreboard players set 4 tf2.const 4
scoreboard players set 5 tf2.const 5
scoreboard players set 6 tf2.const 6
scoreboard players set 1800 tf2.const 1800
scoreboard players set 8 tf2.const 8
scoreboard players set 10 tf2.const 10
scoreboard players set 20 tf2.const 20
scoreboard players set 60 tf2.const 60
scoreboard objectives add tf2.ticks dummy
scoreboard objectives add tf2.gamemode dummy
scoreboard objectives add tf2.map dummy
scoreboard objectives add tf2.index dummy
scoreboard objectives add tf2.red_progress dummy
scoreboard objectives add tf2.blu_progress dummy
scoreboard objectives add tf2.capture_threshold dummy
scoreboard objectives add tf2.timer dummy
scoreboard objectives add tf2.timer.min dummy
scoreboard objectives add tf2.timer.sec dummy
scoreboard objectives add tf2.increment dummy
scoreboard objectives add tf2.queue_type trigger
scoreboard objectives add tf2.batch_number dummy
scoreboard objectives add tf2.session dummy
scoreboard objectives add tf2.class dummy
scoreboard objectives add tf2.team dummy
scoreboard objectives add tf2.health dummy
scoreboard objectives add tf2.max_health dummy
scoreboard objectives add tf2.attack_delay dummy
scoreboard objectives add tf2.respawn_timer dummy
scoreboard objectives add tf2.respawn_timer.sec dummy
scoreboard objectives add tf2.permanent.games_won dummy
scoreboard objectives add tf2.permanent.games_played dummy
team add RED {"text":"RED"}
team modify RED color red
team modify RED prefix "[RED] "
team modify RED friendlyFire false
team add BLU {"text":"BLU"}
team modify BLU color blue
team modify BLU prefix "[BLU] "
team modify BLU friendlyFire false
bossbar add tf2:timer_1 ""
bossbar add tf2:timer_2 ""
bossbar add tf2:timer_3 ""
bossbar add tf2:timer_4 ""
bossbar add tf2:timer_5 ""
execute store success score $retina_installed tf2.var run function retina:__load__
execute unless score $retina_installed tf2.var matches 1.. run tellraw @a ["",{"text":"[ERROR] ","color":"dark_red"},{"text":"Dependency ","color":"red"},{"text":"Retina 2","color":"aqua","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/Nico314159/Retina_v2"},"hoverEvent":{"action":"show_text","contents":{"text":"https://github.com/Nico314159/Retina_v2"}}},{"text":" was not found.","color":"red"}]
execute unless score $retina_installed tf2.var matches 1.. run return -118
gamerule doImmediateRespawn true
gamerule doMobSpawning false
gamerule fallDamage false
gamerule keepInventory true
gamerule mobGriefing false
gamerule naturalRegeneration false
gamerule showDeathMessages false
scoreboard players set $Settings.show_debug_messages tf2.var 1
data merge storage tf2:maps {0:{name:"ad_test",origin:[-500.0d,1.0d,-500.0d],spawn:{red:[[-487.0d,1.0d,-487.0d]],blu:[[-513.0d,1.0d,-513.0d]]},spawn_time:{red:[5.0f],blu:[5.0f]},objectives:[{Pos:[-489.5d,1.0d,-499.5d],Tags:["tf2.objective","tf2.control_point"],data:{capture_threshold:20.0f,team:1b,increment:60.0f}},{Pos:[-499.5d,1.0d,-499.5d],Tags:["tf2.objective","tf2.control_point","tf2.locked"],data:{capture_threshold:20.0f,team:1b,increment:60.0f}},{Pos:[-509.5d,1.0d,-499.5d],Tags:["tf2.objective","tf2.control_point","tf2.locked"],data:{capture_threshold:25.0f,team:1b,increment:60.0f}}],gamemode:1b,timer:480.0f,setup_time:30.0f},1:{name:"cp_test",origin:[-300.0d,1.0d,-300.0d],spawn:{red:[[-279.0d,1.0d,-300.0d]],blu:[[-321.0d,1.0d,-300.0d]]},spawn_time:{red:[5.0f],blu:[5.0f]},objectives:[{Pos:[-311.5d,1.0d,-303.5d],Tags:["tf2.objective","tf2.control_point","tf2.locked"],data:{capture_threshold:5.0f,team:2b,increment:600.0f}},{Pos:[-306.5d,1.0d,-295.5d],Tags:["tf2.objective","tf2.control_point","tf2.locked"],data:{capture_threshold:15.0f,team:2b,increment:600.0f}},{Pos:[-299.5d,1.0d,-299.5d],Tags:["tf2.objective","tf2.control_point"],data:{capture_threshold:30.0f,team:0b,increment:600.0f}},{Pos:[-292.5d,1.0d,-303.5d],Tags:["tf2.objective","tf2.control_point","tf2.locked"],data:{capture_threshold:15.0f,team:1b,increment:600.0f}},{Pos:[-287.5d,1.0d,-295.5d],Tags:["tf2.objective","tf2.control_point","tf2.locked"],data:{capture_threshold:5.0f,team:1b,increment:600.0f}}],gamemode:2b,timer:600.0f}}
execute unless score $initialization_complete tf2.var matches 1.. run function tf2:__private__/if_else/0
scoreboard players operation $Settings.max_batches tf2.var < 5 tf2.const
execute store result score $batch_markers tf2.var if entity @e[type=marker,tag=tf2.batch]
execute unless score $batch_markers tf2.var = $Settings.max_batches tf2.var run function tf2:setup_markers
execute unless entity @a run function tf2:__private__/anonymous/0