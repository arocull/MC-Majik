scoreboard players add @s beam_length 1

## Damage player, place ice
execute if score @s beam_length matches 3.. as @e[distance=..2] run function majik:freeze

execute if block ~ ~ ~ water run setblock ~ ~ ~ ice
execute unless block ~ ~-1 ~ air unless block ~ ~-1 ~ grass run function majik:snow_placement
execute positioned ~ ~-1 ~ unless block ~ ~-1 ~ air unless block ~ ~-1 ~ grass run function majik:snow_placement

particle minecraft:firework ^ ^ ^3 .5 .5 .5 0 20 normal
playsound minecraft:block.snow.place player @a ~ ~ ~ .5 1

execute as @s positioned ^ ^ ^1 if block ~ ~ ~ #majik:nonsolid if score @s beam_length matches ..25 run function spells:beam_frost
execute as @s positioned ^ ^ ^1 if block ~ ~ ~ #majik:all_fluids if score @s beam_length matches ..25 run function spells:beam_frost

## Endpoint
execute as @s positioned ^ ^ ^1 unless block ~ ~ ~ air unless block ~ ~ ~ ice unless block ~ ~ ~ grass unless block ~ ~ ~ torch unless block ~ ~ ~ snow unless block ~ ~ ~ water run function spells:beam_frost_end
execute as @s if score @s beam_length matches 26 run function spells:beam_frost_end