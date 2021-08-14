tag @s add Firetail
tag @s add CanAge
tag @s add MajikSpecialMonster

data merge entity @s {PersistenceRequired:0b,HandItems:[{id:"minecraft:blaze_powder",Count:1b},{}],HandDropChances:[1.0f,0.0f],Tags:["Firetail","CanAge","MajikSpecialMonster"]}

attribute @s generic.max_health base set 27

effect give @s minecraft:fire_resistance 9000 0 false