execute if score $x tf2.var matches 0.. if score $y tf2.var matches 0.. run particle block_marker barrier ~0.5 ~0.5 ~0.5 0 0 0 0 1 force @a[tag=tf2.enemy]
execute if score $x tf2.var matches 0.. if score $y tf2.var matches 2.. run particle block_marker barrier ~0.5 ~2.5 ~0.5 0 0 0 0 1 force @a[tag=tf2.enemy]
execute if score $x tf2.var matches 0.. if score $y tf2.var matches 4.. run particle block_marker barrier ~0.5 ~4.5 ~0.5 0 0 0 0 1 force @a[tag=tf2.enemy]
execute if score $x tf2.var matches 2.. if score $y tf2.var matches 0.. run particle block_marker barrier ~2.5 ~0.5 ~0.5 0 0 0 0 1 force @a[tag=tf2.enemy]
execute if score $x tf2.var matches 2.. if score $y tf2.var matches 2.. run particle block_marker barrier ~2.5 ~2.5 ~0.5 0 0 0 0 1 force @a[tag=tf2.enemy]
execute if score $x tf2.var matches 2.. if score $y tf2.var matches 4.. run particle block_marker barrier ~2.5 ~4.5 ~0.5 0 0 0 0 1 force @a[tag=tf2.enemy]
execute if score $x tf2.var matches 4.. if score $y tf2.var matches 0.. run particle block_marker barrier ~4.5 ~0.5 ~0.5 0 0 0 0 1 force @a[tag=tf2.enemy]
execute if score $x tf2.var matches 4.. if score $y tf2.var matches 2.. run particle block_marker barrier ~4.5 ~2.5 ~0.5 0 0 0 0 1 force @a[tag=tf2.enemy]
execute if score $x tf2.var matches 4.. if score $y tf2.var matches 4.. run particle block_marker barrier ~4.5 ~4.5 ~0.5 0 0 0 0 1 force @a[tag=tf2.enemy]
execute if score $x tf2.var matches 1.. if score $y tf2.var matches 1.. run particle block_marker barrier ~1.5 ~1.5 ~0.5 0 0 0 0 1 force @a[tag=tf2.enemy]
execute if score $x tf2.var matches 1.. if score $y tf2.var matches 3.. run particle block_marker barrier ~1.5 ~3.5 ~0.5 0 0 0 0 1 force @a[tag=tf2.enemy]
execute if score $x tf2.var matches 3.. if score $y tf2.var matches 1.. run particle block_marker barrier ~3.5 ~1.5 ~0.5 0 0 0 0 1 force @a[tag=tf2.enemy]
execute if score $x tf2.var matches 3.. if score $y tf2.var matches 3.. run particle block_marker barrier ~3.5 ~3.5 ~0.5 0 0 0 0 1 force @a[tag=tf2.enemy]
scoreboard players set $drawn_particles tf2.var 1