scoreboard players operation $flicker tf2.var = $__global__ 0008it54g_p_join
scoreboard players operation $flicker tf2.var %= 20 tf2.const
execute if score $flicker tf2.var matches 0 run data modify storage tf2.__temp__:lookup points[0].owner set value "[{\"text\":\"[\",\"color\":\"#F5EACB\"},{\"text\":\"3210=\",\"color\":\"#A0A0A0\"}]"
execute if score $flicker tf2.var matches 1..2 run data modify storage tf2.__temp__:lookup points[0].owner set value "[{\"text\":\"[\",\"color\":\"#F5EACB\"},{\"text\":\"3210=\",\"color\":\"#ABABAB\"}]"
execute if score $flicker tf2.var matches 3..4 run data modify storage tf2.__temp__:lookup points[0].owner set value "[{\"text\":\"[\",\"color\":\"#F5EACB\"},{\"text\":\"3210=\",\"color\":\"#B6B6B6\"}]"
execute if score $flicker tf2.var matches 5..7 run data modify storage tf2.__temp__:lookup points[0].owner set value "[{\"text\":\"[\",\"color\":\"#F5EACB\"},{\"text\":\"3210=\",\"color\":\"#BDBDBD\"}]"
execute if score $flicker tf2.var matches 8..11 run data modify storage tf2.__temp__:lookup points[0].owner set value "[{\"text\":\"[\",\"color\":\"#F5EACB\"},{\"text\":\"3210=\",\"color\":\"#C4C4C4\"}]"
execute if score $flicker tf2.var matches 12..14 run data modify storage tf2.__temp__:lookup points[0].owner set value "[{\"text\":\"[\",\"color\":\"#F5EACB\"},{\"text\":\"3210=\",\"color\":\"#BDBDBD\"}]"
execute if score $flicker tf2.var matches 15..16 run data modify storage tf2.__temp__:lookup points[0].owner set value "[{\"text\":\"[\",\"color\":\"#F5EACB\"},{\"text\":\"3210=\",\"color\":\"#B6B6B6\"}]"
execute if score $flicker tf2.var matches 17..18 run data modify storage tf2.__temp__:lookup points[0].owner set value "[{\"text\":\"[\",\"color\":\"#F5EACB\"},{\"text\":\"3210=\",\"color\":\"#ABABAB\"}]"
execute if score $flicker tf2.var matches 19 run data modify storage tf2.__temp__:lookup points[0].owner set value "[{\"text\":\"[\",\"color\":\"#F5EACB\"},{\"text\":\"3210=\",\"color\":\"#A0A0A0\"}]"