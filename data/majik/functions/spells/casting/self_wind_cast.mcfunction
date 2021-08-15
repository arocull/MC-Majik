execute if score @s mana matches 2.. run tag @e[type=item,tag=SpellScroll] add spell_self_wind

execute if entity @e[tag=spell_self_wind] as @s at @s run function majik:spells/casting/self_wind

execute if entity @e[tag=spell_self_wind] run scoreboard players add @s xp 2
execute if entity @e[tag=spell_self_wind] run xp add @s -2 points

execute as @e[tag=spell_self_wind] run tag @s remove spell_self_wind