execute unless entity @e[tag=Endersquid,distance=..200] run tag @e[type=squid,sort=random,limit=1] add Endersquid

execute as @e[tag=Endersquid] run data merge entity @s {HandItems:[{id:"minecraft:ender_pearl",Count:1b},{}],HandDropChances:[1.0f,0.0f]}

effect give @e[tag=Endersquid] blindness 9000 0 false
tag @a[tag=Endersquid] add spell_point_ender
## Do not tag as a special monster as it might make hunting more annoying
#tag @a[tag=Endersquid] add MajikSpecialMonster