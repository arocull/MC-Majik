execute store result score @s vx1 run data get entity @s Pos[0] 100
execute store result score @s vy1 run data get entity @s Pos[1] 100
execute store result score @s vz1 run data get entity @s Pos[2] 100

## Offset Y of player by 1 due to projectile being placed at head level
scoreboard players add @s vy1 100

execute store result score @s vx2 run data get entity @e[tag=VectorCalculator,sort=nearest,limit=1] Pos[0] 100
execute store result score @s vy2 run data get entity @e[tag=VectorCalculator,sort=nearest,limit=1] Pos[1] 100
execute store result score @s vz2 run data get entity @e[tag=VectorCalculator,sort=nearest,limit=1] Pos[2] 100

scoreboard players operation @s vx2 -= @s vx1
scoreboard players operation @s vy2 -= @s vy1
scoreboard players operation @s vz2 -= @s vz1

scoreboard players operation @e[tag=VectorCalculator,sort=nearest,limit=1] vx1 = @s vx2
scoreboard players operation @e[tag=VectorCalculator,sort=nearest,limit=1] vy1 = @s vy2
scoreboard players operation @e[tag=VectorCalculator,sort=nearest,limit=1] vz1 = @s vz2

tag @e[tag=VectorCalculator,sort=nearest,limit=1] remove VectorCalculator