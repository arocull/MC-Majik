playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1
particle minecraft:witch ~ ~1 ~ 0.25 0.5 0.25 0.5 50 normal
execute at @e[type=!#majik:nonmob,distance=0.1..10,sort=random,limit=1,tag=!BlinkImmune] run tp @s ^ ^ ^3
execute at @s run particle minecraft:witch ~ ~1 ~ 0.25 0.5 0.25 0.5 50 normal
effect give @s minecraft:blindness 5 0
effect give @s minecraft:night_vision 5 0