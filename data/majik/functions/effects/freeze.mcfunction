effect give @s minecraft:slowness 5 1
effect give @s minecraft:mining_fatigue 5 1
effect give @s minecraft:weakness 5 0
playsound minecraft:entity.zombie_villager.cure player @a ~ ~ ~ .5 1

particle minecraft:cloud ~ ~1 ~ .25 .5 .25 .1 30 normal

execute if block ~ ~ ~ water run setblock ~ ~ ~ ice
execute unless block ~ ~-1 ~ air unless block ~ ~-1 ~ snow unless block ~ ~-1 ~ grass unless block ~ ~-1 ~ #minecraft:flowers run function majik:effects/snow_placement

execute if entity @s[type=!player] run data modify entity @s Motion set value [0.0,0.0,0.0]
execute if entity @s[type=fireball] run data modify entity @s direction set value [0.0,-0.1,0.0]
execute if entity @s[type=small_fireball] run data modify entity @s direction set value [0.0,-0.1,0.0]