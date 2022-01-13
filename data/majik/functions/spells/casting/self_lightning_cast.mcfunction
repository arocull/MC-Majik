execute if score @s mana matches 7.. run tag @e[type=item,tag=SpellScroll] add spell_self_lightning

execute if score @s mana matches 7.. as @e[type=item,tag=SpellScroll] run data modify entity @s Invulnerable set value 1b
execute if entity @e[tag=spell_self_lightning] as @s at @s run function majik:spells/casting/self_lightning

execute if entity @e[tag=spell_self_lightning] run scoreboard players add @s xp 9
execute if entity @e[tag=spell_self_lightning] run scoreboard players remove @s mana 7

execute as @e[tag=spell_self_lightning] run tag @s remove spell_self_lightning