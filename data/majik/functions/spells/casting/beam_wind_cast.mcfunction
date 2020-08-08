execute if score @s mana matches 7.. run tag @e[type=item,tag=SpellScroll] add spell_beam_wind

execute if score @s mana matches 7.. if entity @e[tag=spell_beam_wind] as @s at @s positioned ~ ~ ~ positioned ^ ^1 ^0.5 run function majik:spells/casting/beam_wind
scoreboard players set @s beam_length 0

execute if score @s mana matches 7.. if entity @e[tag=spell_beam_wind] run scoreboard players add @s xp 9
execute if score @s mana matches 7.. if entity @e[tag=spell_beam_wind] run xp add @s -7 points

execute as @e[tag=spell_beam_wind] run tag @s remove spell_beam_wind