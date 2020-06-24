execute if score @s mana matches 3.. run tag @e[type=item,tag=SpellScroll] add spell_point_ender
##execute if score @s mana matches 3.. if entity @e[tag=spell_point_ender] run tag @s add spell_point_ender

execute if score @s mana matches 3.. as @s at @e[tag=spell_point_ender] run function spells:point_ender

execute if score @s mana matches 3.. if entity @e[tag=spell_point_ender] run scoreboard players add @s xp 4
execute if score @s mana matches 3.. if entity @e[tag=spell_point_ender] run xp add @s -3 points
tag @e[tag=spell_point_ender] remove spell_point_ender