execute as @a if entity @s[scores={killS=1..},nbt={SelectedItem:{tag:{healthOnKill:8b}}}] run effect give @s minecraft:health_boost 40 3 true
execute as @a if entity @s[scores={killS=1..},nbt={SelectedItem:{tag:{healthOnKill:8b}}}] run effect give @s minecraft:instant_health 1 1 true
execute as @a if entity @s[scores={killS=1..},nbt={SelectedItem:{tag:{healthOnKill:8b}}}] run scoreboard players set @s killS 0