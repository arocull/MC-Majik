execute in majik:moonlit_plain run tp @s ~ ~ ~
particle minecraft:witch ~ ~ ~ 1 1 1 3 200 normal
playsound entity.enderman.teleport player @s ~ ~ ~ 1 0.9
playsound minecraft:ambient.cave player @s ~ ~ ~ 1 0.5 1
effect give @s blindness 1 0 true
effect give @s slow_falling 10 0 true