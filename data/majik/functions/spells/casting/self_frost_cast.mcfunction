execute if score @s mana matches 3.. run tag @e[type=item,tag=SpellScroll] add spell_self_frost

execute if entity @e[tag=spell_self_frost] as @s at @s run function majik:spells/casting/self_frost

execute if entity @e[tag=spell_self_frost] run scoreboard players add @s xp 1
execute if entity @e[tag=spell_self_frost] run scoreboard players remove @s mana 3

execute as @e[tag=spell_self_frost] run tag @s remove spell_self_frost