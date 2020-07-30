# Fuse particle
particle mycelium ~ ~0.5 ~ 0 0.05 0 0.03 2 normal
data modify entity @s PickupDelay set value -1

execute if entity @s[nbt={Item:{id:"minecraft:paper"},Age:10s}] run playsound entity.tnt.primed hostile @a ~ ~ ~ 1 1

execute if entity @s[nbt={Item:{id:"minecraft:paper"},Age:60s}] run tag @s add spell_earth_blast_summoning

execute if entity @s[tag=spell_earth_blast_summoning] run function majik:spells/casting/point_earth_blast
execute if entity @s[tag=spell_earth_blast_summoning] run data modify entity @s PickupDelay set value 0

## Remove spell tags
execute if entity @s[tag=spell_earth_blast_summoning] run tag @s remove spell_earth_blast_charging
execute if entity @s[tag=spell_earth_blast_summoning] run tag @s remove spell_earth_blast_summoning