execute as @a[dx=0.5,dz=0.5,dy=10] run effect give @s minecraft:levitation 1 5
execute as @a[dx=0.5,dz=0.5,dy=10] run effect give @s minecraft:slow_falling 4 0
execute as @a[dx=0.5,dz=0.5,dy=10] at @s run particle minecraft:cloud ~ ~ ~ 0.25 0.05 0.25 0.02 10 normal
execute as @a[dx=0.5,dz=0.5,dy=10] at @s run playsound minecraft:entity.phantom.flap neutral @s ~ ~ ~ 0.25 2

scoreboard players add @s xp 1
execute if score @s xp matches 12.. run scoreboard players remove @s flux 1
execute if score @s xp matches 12.. run scoreboard players set @s xp 0