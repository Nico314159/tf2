$execute if entity @s[scores={tf2.timer.sec=10..59}] run bossbar set tf2:timer_$(i) name ["",{"font":"tf2:square","type":"nbt","source":"storage","nbt":"info[$(i)][7].left","interpret":true,"storage":"tf2:control_points"},{"text":"Setup - "},{"score":{"name":"@s","objective":"tf2.timer.min"},"type":"score"},{"text":":"},{"score":{"name":"@s","objective":"tf2.timer.sec"},"type":"score"},{"text":" remaining"},{"font":"tf2:square","type":"nbt","source":"storage","nbt":"info[$(i)][7].mid","interpret":true,"storage":"tf2:control_points"},{"font":"tf2:square","type":"nbt","source":"storage","nbt":"info[$(i)][0].main","interpret":true,"storage":"tf2:control_points"},{"font":"tf2:square","type":"nbt","source":"storage","nbt":"info[$(i)][1].main","interpret":true,"storage":"tf2:control_points"},{"font":"tf2:square","type":"nbt","source":"storage","nbt":"info[$(i)][2].main","interpret":true,"storage":"tf2:control_points"},{"font":"tf2:square","type":"nbt","source":"storage","nbt":"info[$(i)][3].main","interpret":true,"storage":"tf2:control_points"},{"font":"tf2:square","type":"nbt","source":"storage","nbt":"info[$(i)][4].main","interpret":true,"storage":"tf2:control_points"},{"font":"tf2:square","type":"nbt","source":"storage","nbt":"info[$(i)][5].main","interpret":true,"storage":"tf2:control_points"},{"font":"tf2:square","type":"nbt","source":"storage","nbt":"info[$(i)][6].main","interpret":true,"storage":"tf2:control_points"},{"font":"tf2:square","type":"nbt","source":"storage","nbt":"info[$(i)][7].right","interpret":true,"storage":"tf2:control_points"}]
$execute if entity @s[scores={tf2.timer.sec=0..9}] run bossbar set tf2:timer_$(i) name ["",{"font":"tf2:square","type":"nbt","source":"storage","nbt":"info[$(i)][7].left","interpret":true,"storage":"tf2:control_points"},{"text":"Setup - "},{"score":{"name":"@s","objective":"tf2.timer.min"},"type":"score"},{"text":":0"},{"score":{"name":"@s","objective":"tf2.timer.sec"},"type":"score"},{"text":" remaining"},{"font":"tf2:square","type":"nbt","source":"storage","nbt":"info[$(i)][7].mid","interpret":true,"storage":"tf2:control_points"},{"font":"tf2:square","type":"nbt","source":"storage","nbt":"info[$(i)][0].main","interpret":true,"storage":"tf2:control_points"},{"font":"tf2:square","type":"nbt","source":"storage","nbt":"info[$(i)][1].main","interpret":true,"storage":"tf2:control_points"},{"font":"tf2:square","type":"nbt","source":"storage","nbt":"info[$(i)][2].main","interpret":true,"storage":"tf2:control_points"},{"font":"tf2:square","type":"nbt","source":"storage","nbt":"info[$(i)][3].main","interpret":true,"storage":"tf2:control_points"},{"font":"tf2:square","type":"nbt","source":"storage","nbt":"info[$(i)][4].main","interpret":true,"storage":"tf2:control_points"},{"font":"tf2:square","type":"nbt","source":"storage","nbt":"info[$(i)][5].main","interpret":true,"storage":"tf2:control_points"},{"font":"tf2:square","type":"nbt","source":"storage","nbt":"info[$(i)][6].main","interpret":true,"storage":"tf2:control_points"},{"font":"tf2:square","type":"nbt","source":"storage","nbt":"info[$(i)][7].right","interpret":true,"storage":"tf2:control_points"}]