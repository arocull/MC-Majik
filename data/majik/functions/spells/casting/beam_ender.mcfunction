scoreboard players add @s beam_length 1

particle witch ~ ~ ~ .1 .1 .1 0 10 normal

execute as @s positioned ^ ^ ^1 if block ~ ~ ~ #majik:nonsolid if score @s beam_length matches ..20 run function majik:spells/casting/beam_ender

## Endpoint
execute as @s positioned ^ ^ ^1 unless block ~ ~ ~ #majik:nonsolid run function majik:spells/casting/beam_ender_end_condition

execute as @s if score @s beam_length matches ..21 run function majik:spells/casting/beam_ender_end