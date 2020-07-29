scoreboard players add @s beam_length 1

particle witch ~ ~ ~ .1 .1 .1 0 10 normal

execute as @s positioned ^ ^ ^1 if block ~ ~ ~ air if score @s beam_length matches ..20 run function majik:spells/casting/beam_ender
execute as @s positioned ^ ^ ^1 if block ~ ~ ~ fire if score @s beam_length matches ..20 run function majik:spells/casting/beam_ender
execute as @s positioned ^ ^ ^1 if block ~ ~ ~ grass if score @s beam_length matches ..20 run function majik:spells/casting/beam_ender
execute as @s positioned ^ ^ ^1 if block ~ ~ ~ torch if score @s beam_length matches ..20 run function majik:spells/casting/beam_ender

## Endpoint
execute as @s positioned ^ ^ ^1 unless block ~ ~ ~ air unless block ~ ~ ~ fire unless block ~ ~ ~ grass unless block ~ ~ ~ torch run function majik:spells/casting/beam_ender_end_condition

execute as @s if score @s beam_length matches ..21 run function majik:spells/casting/beam_ender_end