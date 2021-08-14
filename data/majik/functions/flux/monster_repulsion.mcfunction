tag @s add RepulsionField

effect give @e[type=#majik:hostile,distance=..20] glowing 1 0 true
execute as @e[type=#majik:hostile,distance=..20] at @s run function majik:flux/repel_entity
playsound minecraft:block.respawn_anchor.charge ambient @a[distance=..30] ~ ~ ~ 0.35 2 0.01
particle minecraft:enchanted_hit ~ ~ ~ 10 10 10 0.1 310 normal

scoreboard players add @s xp 1
execute if score @s xp matches 5.. run scoreboard players remove @s flux 1
execute if score @s xp matches 5.. run scoreboard players set @s xp 0

execute if score @s flux matches 0 run playsound minecraft:block.respawn_anchor.deplete ambient @a[distance=..50] ~ ~ ~ 2 1 0.8

tag @s remove RepulsionField