execute if score @s mana matches 1.. run tag @e[type=item,tag=SpellScroll] add spell_self_fire

execute if entity @e[tag=spell_self_fire] as @s at @s run function spells:self_fire

## Player gets no XP for casting this spell, hah
## execute if entity @e[tag=spell_self_fire] run scoreboard players add @s xp 0
execute if entity @e[tag=spell_self_fire] run xp add @s -1 points

execute as @e[tag=spell_self_fire] run tag @s remove spell_self_fire