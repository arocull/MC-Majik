scoreboard players add @s beam_length 1

function majik:dig

execute align xyz run particle minecraft:enchanted_hit ~ ~ ~ 0.25 0.25 0.25 0.1 10 normal
playsound minecraft:block.stone.break player @a ~ ~ ~ .1 0.9

execute as @s positioned ^ ^ ^0.25 unless block ~ ~ ~ #majik:indestructible if score @s beam_length matches ..25 run function spells:beam_earth

execute as @s if score @s beam_length matches 26 run tp @e[tag=SpellScroll,type=item] ~ ~ ~
execute as @s if score @s beam_length matches 26 run scoreboard players set @s beam_length 50