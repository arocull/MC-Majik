particle minecraft:smoke ~ ~ ~ 3 3 3 0 500 normal
tag @e[distance=..6,tag=!spell_point_ender,type=!item_frame,type=!painting] add EnderTeleport

execute at @e[tag=EnderTeleport] run particle minecraft:witch ~ ~1 ~ 0.25 0.5 0.25 1 50 normal
execute at @e[tag=EnderTeleport] run playsound minecraft:entity.enderman.teleport player @a ~ ~1 ~ 1 1
execute as @e[tag=EnderTeleport,sort=random] at @e[tag=EnderTeleport,sort=random,limit=1] run tp @s ^ ^1 ^5
execute at @e[tag=EnderTeleport] run particle minecraft:witch ~ ~1 ~ 0.25 0.5 0.25 2 75 normal

tp @e[tag=spell_point_ender,type=item] @e[tag=EnderTeleport,sort=random,limit=1]
execute as @e[tag=EnderTeleport,type=arrow] at @e[tag=EnderTeleport,type=!arrow,type=!item,sort=random,limit=1] run tp @s ~ ~5 ~

tag @e[tag=EnderTeleport] remove EnderTeleport