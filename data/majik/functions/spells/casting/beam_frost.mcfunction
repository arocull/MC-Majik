scoreboard players add @s beam_length 1

## Damage player, place ice
execute as @e[distance=..2,tag=!MajikCasting,type=!item] run function majik:effects/freeze

execute unless block ~ ~-1 ~ #majik:nonsolid run function majik:effects/snow_placement
execute positioned ~ ~-1 ~ unless block ~ ~-1 ~ #majik:nonsolid run function majik:effects/snow_placement

particle minecraft:firework ^ ^ ^3 .3 .3 .3 0 15 normal
playsound minecraft:block.snow.place player @a ~ ~ ~ .5 1

execute as @s positioned ^ ^ ^1 if block ~ ~ ~ #majik:frost_pathable if score @s beam_length matches ..25 run function majik:spells/casting/beam_frost
execute as @s positioned ^ ^ ^1 if block ~ ~ ~ water if score @s beam_length matches ..25 run function majik:spells/casting/beam_frost

## Endpoint
execute as @s positioned ^ ^ ^1 unless block ~ ~ ~ #majik:frost_pathable unless block ~ ~ ~ water run function majik:spells/casting/beam_frost_end
execute as @s if score @s beam_length matches 26 run function majik:spells/casting/beam_frost_end