scoreboard players remove @s[scores={tf2.attack_delay=0..}] tf2.attack_delay 1000
scoreboard players remove @s[scores={tf2.reload_delay=0..}] tf2.reload_delay 1000
data modify storage tf2.__temp__:check_match UUID set from entity @s UUID
tag @s add tf2.self
execute if predicate tf2:empty_hand run function tf2:__private__/if_else/39
tag @s remove tf2.self
execute if predicate tf2:unloaded_crossbow run function tf2:__private__/if_else/40
function tf2:weapons/slot_check
scoreboard players operation $class tf2.var = @s tf2.class
execute store result storage tf2:__storage__ switch_key int 1 run scoreboard players get $class tf2.var
function tf2:__private__/switch_case/12/select with storage tf2:__storage__