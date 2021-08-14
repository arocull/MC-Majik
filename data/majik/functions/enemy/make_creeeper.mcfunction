tag @s add Creeeper
tag @s add MajikSpecialMonster
tag @s add CanAge

data merge entity @s {PersistenceRequired:0b,CustomName:'{"text":"Creeeper"}',CustomNameVisible:false,ExplosionRadius:8b,HandItems:[{id:"minecraft:glistering_melon_slice",Count:1b},{id:"minecraft:gold_nugget",Count:3b}],HandDropChances:[1.0f,1.0f]}

attribute @s generic.max_health base set 30
attribute @s generic.armor base set 1
attribute @s generic.knockback_resistance base set 0.2

effect give @s instant_health 1 100 true