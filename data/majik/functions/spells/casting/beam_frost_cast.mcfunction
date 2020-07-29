execute if score @s mana matches 4.. run tag @e[type=item,tag=SpellScroll] add spell_beam_frost

execute if score @s mana matches 4.. if entity @e[tag=spell_beam_frost] as @e[tag=spell_beam_frost] run data modify entity @s Invulnerable set value 1b
execute if score @s mana matches 4.. if entity @e[tag=spell_beam_frost] as @s positioned ~ ~1.25 ~ positioned ^ ^ ^2 run function majik:spells/casting/beam_frost
execute if score @s mana matches 4.. if entity @e[tag=spell_beam_frost] run scoreboard players set @s beam_length 0

execute if score @s mana matches 4.. if entity @e[tag=spell_beam_frost] run scoreboard players add @s xp 3
execute if score @s mana matches 4.. if entity @e[tag=spell_beam_frost] run xp add @s -4 points

execute as @e[tag=spell_beam_frost] run tag @s remove spell_beam_frost