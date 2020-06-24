## Position of entity to repel
execute store result score @s vx1 run data get entity @s Pos[0] 100
execute store result score @s vy1 run data get entity @s Pos[1] 100
execute store result score @s vz1 run data get entity @s Pos[2] 100

## Position of repulsion field
execute store result score @s vx2 run data get entity @e[tag=RepulsionField,sort=nearest,limit=1] Pos[0] 100
execute store result score @s vy2 run data get entity @e[tag=RepulsionField,sort=nearest,limit=1] Pos[1] 100
execute store result score @s vz2 run data get entity @e[tag=RepulsionField,sort=nearest,limit=1] Pos[2] 100

## Lower repulsion center
scoreboard players remove @s vy2 25

## Get direction vector
scoreboard players operation @s vx1 -= @s vx2
scoreboard players operation @s vy1 -= @s vy2
scoreboard players operation @s vz1 -= @s vz2

## Ignore existing entity velocity

## Tilt entity up so knockback is a little more effective
scoreboard players add @s vy1 50

execute as @s store result entity @s Motion[0] double 0.005 run scoreboard players get @s vx1
execute as @s store result entity @s Motion[1] double 0.005 run scoreboard players get @s vy1
execute as @s store result entity @s Motion[2] double 0.005 run scoreboard players get @s vz1

execute if entity @s[type=fireball] store result entity @s power[0] double 0.005 run scoreboard players get @s vx1
execute if entity @s[type=fireball] store result entity @s power[1] double 0.005 run scoreboard players get @s vx1
execute if entity @s[type=fireball] store result entity @s power[2] double 0.005 run scoreboard players get @s vx1

particle minecraft:sweep_attack ~ ~0.1 ~ 0 0 0 0 1 force
execute at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force