tag @e[tag=spell_smite_charging,nbt={Item:{id:"minecraft:paper"},Age:15s}] add spell_smite_charged
tag @e[tag=spell_smite_charging,nbt={Item:{id:"minecraft:paper"},Age:15s}] remove spell_smite_charging

execute as @e[type=item,tag=spell_smite_charged] run data modify entity @s PickupDelay set value -1
execute as @e[type=item,tag=spell_smite_charged] run data modify entity @s Invulnerable set value 1b
execute at @e[type=item,tag=spell_smite_charged] run particle minecraft:end_rod ~ ~ ~ 2 .25 2 0 12 normal
execute at @e[type=item,tag=spell_smite_charged] run playsound minecraft:block.conduit.activate ambient @a ~ ~ ~ .1 2
execute at @e[type=item,tag=spell_smite_charged] run effect give @e[distance=..5] minecraft:glowing 1 0 false

tag @e[tag=spell_smite_charged,nbt={Item:{id:"minecraft:paper"},Age:50s}] add spell_smite_summoning
tag @e[tag=spell_smite_charged,nbt={Item:{id:"minecraft:paper"},Age:50s}] remove spell_smite_charged

execute at @e[tag=spell_smite_summoning] run summon minecraft:lightning_bolt ~ ~ ~
execute at @e[tag=spell_smite_summoning] run effect give @e[distance=..5] minecraft:instant_damage 1 1 true
execute at @e[tag=spell_smite_summoning] run particle minecraft:enchanted_hit ~ ~ ~ 1 1 1 1 500 normal
execute as @e[tag=spell_smite_summoning] run data modify entity @s PickupDelay set value 0
execute as @e[tag=spell_smite_summoning] run tag @s remove spell_smite_summoning