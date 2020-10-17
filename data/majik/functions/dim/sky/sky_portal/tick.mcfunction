scoreboard players add @s xp_old 1
execute if score @s xp_old matches 240.. at @s run playsound minecraft:block.conduit.ambient ambient @a[distance=..10] ~ ~ ~ 1 0.8 0.3
execute if score @s xp_old matches 240.. run scoreboard players set @s xp_old 0

execute if entity @p[distance=..10] run particle portal ~ ~ ~ 1 1 1 0.1 10 normal
execute if entity @p[distance=..5] run particle end_rod ~ ~ ~ 0.2 0 0.2 0 1 normal

## Store player position outside of teleport range
execute at @s as @e[type=!#majik:nonmob,distance=3..5,predicate=majik:in_overworld] run function majik:dim/sky/sky_portal/store_position

execute positioned ~-1 ~ ~-1 at @e[dx=1,dz=1,dy=0,type=!#majik:nonmob] run function majik:dim/sky/sky_portal/teleport