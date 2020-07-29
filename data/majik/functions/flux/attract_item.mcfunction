execute store result score @s vx1 run data get entity @s Pos[0] 100
execute store result score @s vy1 run data get entity @s Pos[1] 100
execute store result score @s vz1 run data get entity @s Pos[2] 100

execute store result score @s vx2 run data get entity @e[tag=FunnelingItems,sort=nearest,limit=1] Pos[0] 100
execute store result score @s vy2 run data get entity @e[tag=FunnelingItems,sort=nearest,limit=1] Pos[1] 100
execute store result score @s vz2 run data get entity @e[tag=FunnelingItems,sort=nearest,limit=1] Pos[2] 100

scoreboard players remove @s vy2 25

scoreboard players operation @s vx2 -= @s vx1
scoreboard players operation @s vy2 -= @s vy1
scoreboard players operation @s vz2 -= @s vz1

execute as @s store result entity @s Motion[0] double 0.0015 run scoreboard players get @s vx2
execute as @s store result entity @s Motion[1] double 0.0015 run scoreboard players get @s vy2
execute as @s store result entity @s Motion[2] double 0.0015 run scoreboard players get @s vz2