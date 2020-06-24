execute as @e[type=item,tag=spell_nature_charing] run data modify entity @s PickupDelay set value -1
execute as @e[type=item,tag=spell_nature_charing] run data modify entity @s Invulnerable set value 1b

tag @e[tag=spell_nature_charging,nbt={Item:{id:"minecraft:paper"},Age:15s}] add spell_nature_charged
tag @e[tag=spell_nature_charging,nbt={Item:{id:"minecraft:paper"},Age:15s}] remove spell_nature_charging

execute as @e[type=item,tag=spell_nature_charged] run data modify entity @s PickupDelay set value -1
execute as @e[type=item,tag=spell_nature_charged] run data modify entity @s Invulnerable set value 1b
execute at @e[type=item,tag=spell_nature_charged] run particle minecraft:mycelium ~ ~.1 ~ 2 .25 2 0 6 normal
execute at @e[type=item,tag=spell_nature_charged] run playsound minecraft:block.conduit.activate ambient @a ~ ~ ~ .02 1

execute at @e[tag=spell_nature_charged,nbt={Item:{id:"minecraft:paper"},Age:20s}] run playsound minecraft:block.chorus_flower.grow player @a ~ ~ ~ 1 0.8
execute at @e[tag=spell_nature_charged,nbt={Item:{id:"minecraft:paper"},Age:30s}] run playsound minecraft:block.chorus_flower.grow player @a ~ ~ ~ 1 1.1
execute at @e[tag=spell_nature_charged,nbt={Item:{id:"minecraft:paper"},Age:40s}] run playsound minecraft:block.chorus_flower.grow player @a ~ ~ ~ 1 1.4
execute at @e[tag=spell_nature_charged,nbt={Item:{id:"minecraft:paper"},Age:50s}] run playsound minecraft:block.chorus_flower.grow player @a ~ ~ ~ 1 1.7
execute at @e[tag=spell_nature_charged,nbt={Item:{id:"minecraft:paper"},Age:60s}] run playsound minecraft:block.chorus_flower.grow player @a ~ ~ ~ 1 2

tag @e[tag=spell_nature_charged,nbt={Item:{id:"minecraft:paper"},Age:60s}] add spell_nature_summoning
tag @e[tag=spell_nature_charged,nbt={Item:{id:"minecraft:paper"},Age:60s}] remove spell_nature_charged



## Main Effects
execute at @e[tag=spell_nature_summoning] run particle minecraft:happy_villager ~ ~ ~ 1 0.5 1 5 300 normal
execute at @e[tag=spell_nature_summoning] run playsound minecraft:block.conduit.ambient.short player @a ~ ~ ~ 2 2

## Heal
execute at @e[tag=spell_nature_summoning] run effect give @e[distance=..5] minecraft:instant_health 1 2 true
execute at @e[tag=spell_nature_summoning] run effect give @e[distance=..5] minecraft:saturation 1 1 true
execute at @e[tag=spell_nature_summoning] at @e[type=!item,type=!item_frame,type=!arrow,type=!boat,distance=..5] run particle minecraft:happy_villager ~ ~1 ~ 0.25 0.5 0.25 0 25 normal

## Grow
execute at @e[tag=spell_nature_summoning] run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 grass_block replace dirt

## Finish
execute as @e[tag=spell_nature_summoning] run data modify entity @s PickupDelay set value 0
execute as @e[tag=spell_nature_summoning] run tag @s remove spell_nature_summoning