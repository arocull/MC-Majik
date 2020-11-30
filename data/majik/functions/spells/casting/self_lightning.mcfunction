function majik:effects/lightning
particle minecraft:end_rod ~ ~1 ~ .25 .5 .25 .1 50 normal
particle minecraft:end_rod ~ ~.05 ~ .75 .05 .75 0 75 normal
playsound minecraft:block.beacon.activate ambient @a ~ ~ ~ 1 1
effect give @s resistance 8 1
effect give @s glowing 8 0
effect give @s strength 8 0
effect give @s speed 8 0
effect give @s haste 4 0