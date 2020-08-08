execute as @e[type=!#majik:nonmob,distance=0.1..3,type=!player] run data modify entity @s Fire set value 60s
effect give @a[distance=0.1..3] wither 1 0 true

fill ~-3 ~-2 ~-3 ~3 ~1 ~3 air replace fire
fill ~-1 ~-1 ~-2 ~1 ~ ~2 fire replace #majik:incinerable
fill ~-2 ~-1 ~-1 ~2 ~ ~1 fire replace #majik:incinerable