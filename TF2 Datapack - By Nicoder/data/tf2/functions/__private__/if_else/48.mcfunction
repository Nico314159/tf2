playsound tf2:pickup.ammo player @a[tag=tf2.recipient] ~ ~ ~ 0.6 0.9 0.2
scoreboard players operation $total_ammo tf2.var = @a[tag=tf2.recipient] tf2.primary_maxAmmo
scoreboard players operation $total_ammo tf2.var += @a[tag=tf2.recipient] tf2.primary_maxClip
scoreboard players operation $add_amount tf2.var *= $total_ammo tf2.var
scoreboard players add $add_amount tf2.var 99
scoreboard players operation $add_amount tf2.var /= 100 tf2.const
scoreboard players operation $clip_space tf2.var = @a[tag=tf2.recipient] tf2.primary_maxClip
scoreboard players operation $clip_space tf2.var -= @a[tag=tf2.recipient] tf2.primary_clip
scoreboard players operation $clip_space tf2.var < $add_amount tf2.var
scoreboard players operation @a[tag=tf2.recipient] tf2.primary_clip += $clip_space tf2.var
scoreboard players operation $add_amount tf2.var -= $clip_space tf2.var
scoreboard players operation @a[tag=tf2.recipient] tf2.primary_ammo += $add_amount tf2.var
scoreboard players operation @a[tag=tf2.recipient] tf2.primary_ammo < @a[tag=tf2.recipient] tf2.primary_maxAmmo
scoreboard players operation $add_amount tf2.var = $percent tf2.var
scoreboard players operation $total_ammo tf2.var = @a[tag=tf2.recipient] tf2.secondary_maxAmmo
scoreboard players operation $total_ammo tf2.var += @a[tag=tf2.recipient] tf2.secondary_maxClip
scoreboard players operation $add_amount tf2.var *= $total_ammo tf2.var
scoreboard players add $add_amount tf2.var 99
scoreboard players operation $add_amount tf2.var /= 100 tf2.const
scoreboard players operation $clip_space tf2.var = @a[tag=tf2.recipient] tf2.secondary_maxClip
scoreboard players operation $clip_space tf2.var -= @a[tag=tf2.recipient] tf2.secondary_clip
scoreboard players operation $clip_space tf2.var < $add_amount tf2.var
scoreboard players operation @a[tag=tf2.recipient] tf2.secondary_clip += $clip_space tf2.var
scoreboard players operation $add_amount tf2.var -= $clip_space tf2.var
scoreboard players operation @a[tag=tf2.recipient] tf2.secondary_ammo += $add_amount tf2.var
scoreboard players operation @a[tag=tf2.recipient] tf2.secondary_ammo < @a[tag=tf2.recipient] tf2.secondary_maxAmmo