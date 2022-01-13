execute if score @s mana matches 7.. run tag @e[type=item,tag=SpellScroll] add spell_self_nature

execute if entity @e[tag=spell_self_nature] as @s at @s run function majik:spells/casting/self_nature

execute if entity @e[tag=spell_self_nature] run scoreboard players add @s xp 9
execute if entity @e[tag=spell_self_nature] run scoreboard players remove @s mana 7

execute as @e[tag=spell_self_nature] run tag @s remove spell_self_nature