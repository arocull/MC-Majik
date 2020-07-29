scoreboard players add @s beam_length 1

tag @s add VectorCalculator
execute as @e[type=!player,distance=..4,tag=!VectorCalculator] at @s run function majik:spells/casting/beam_wind_knockback
execute as @a[distance=..4,tag=!VectorCalculator] run effect give @s levitation 1 10 false
tag @s remove VectorCalculator

execute align xyz run particle minecraft:effect ~ ~ ~ 0.5 0.5 0.5 0.1 7 normal
playsound minecraft:entity.phantom.flap player @a ~ ~ ~ .2 0.9

execute as @s positioned ^ ^ ^0.5 if block ~ ~ ~ #majik:nonsolid if score @s beam_length matches ..30 run function majik:spells/casting/beam_wind

execute as @s if score @s beam_length matches 31 run tp @e[tag=SpellScroll,type=item] ~ ~ ~
execute as @s if score @s beam_length matches 31 run scoreboard players set @s beam_length 50