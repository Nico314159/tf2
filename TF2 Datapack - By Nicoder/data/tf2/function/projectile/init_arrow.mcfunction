$summon arrow ^$(spawnX) ^$(spawnY) ^$(spawnZ) {Owner:$(owner),damage:0.001,pickup:false,NoGravity:true,Silent:true,PierceLevel:127b,PersistenceRequired:true,ShotFromCrossbow:true,Tags:["tf2.projectile","tf2.new"],Motion:[$(X)d,$(Y)d,$(Z)d],active_effects:[{id:"minecraft:invisibility",amplifier:false,show_particles:false,duration:-1}],Passengers:[{Rotation:[$(yaw)f,$(pitch)f],id:"minecraft:item_display",item:{id:"minecraft:glowstone_dust",components:{"minecraft:custom_model_data":$(CMD),"minecraft:custom_data":{Motion:[$(X)d,$(Y)d,$(Z)d]}}},Tags:["tf2.new","tf2.projectile"]}]}