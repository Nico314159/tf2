$execute if entity @s[scores={tf2.red_timer.sec=10..59}] run bossbar set tf2:red_timer_$(i) name ["",{"text":"RED - "},{"score":{"name":"@s","objective":"tf2.red_timer.min"}},{"text":":"},{"score":{"name":"@s","objective":"tf2.red_timer.sec"}},{"text":" remaining"}]
$execute if entity @s[scores={tf2.red_timer.sec=0..9}] run bossbar set tf2:red_timer_$(i) name ["",{"text":"RED - "},{"score":{"name":"@s","objective":"tf2.red_timer.min"}},{"text":":0"},{"score":{"name":"@s","objective":"tf2.red_timer.sec"}},{"text":" remaining"}]
$execute if entity @s[scores={tf2.blu_timer.sec=10..59}] run bossbar set tf2:blu_timer_$(i) name ["",{"font":"tf2:square","nbt":"info[$(i)][7].left","interpret":true,"storage":"tf2:control_points"},{"text":"BLU - "},{"score":{"name":"@s","objective":"tf2.blu_timer.min"}},{"text":":"},{"score":{"name":"@s","objective":"tf2.blu_timer.sec"}},{"text":" remaining"},{"font":"tf2:square","nbt":"info[$(i)][7].mid","interpret":true,"storage":"tf2:control_points"},{"font":"tf2:square","nbt":"info[$(i)][0].main","interpret":true,"storage":"tf2:control_points"},{"font":"tf2:square","nbt":"info[$(i)][7].right","interpret":true,"storage":"tf2:control_points"}]
$execute if entity @s[scores={tf2.blu_timer.sec=0..9}] run bossbar set tf2:blu_timer_$(i) name ["",{"font":"tf2:square","nbt":"info[$(i)][7].left","interpret":true,"storage":"tf2:control_points"},{"text":"BLU - "},{"score":{"name":"@s","objective":"tf2.blu_timer.min"}},{"text":":0"},{"score":{"name":"@s","objective":"tf2.blu_timer.sec"}},{"text":" remaining"},{"font":"tf2:square","nbt":"info[$(i)][7].mid","interpret":true,"storage":"tf2:control_points"},{"font":"tf2:square","nbt":"info[$(i)][0].main","interpret":true,"storage":"tf2:control_points"},{"font":"tf2:square","nbt":"info[$(i)][7].right","interpret":true,"storage":"tf2:control_points"}]