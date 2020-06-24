execute if score @s mana matches 5.. run tag @e[type=item,tag=SpellScroll] add spell_smite_charging
execute if score @s mana matches 5.. if entity @e[tag=spell_smite_charging,distance=..2] run scoreboard players add @s xp 8
execute if score @s mana matches 5.. if entity @e[tag=spell_smite_charging,distance=..2] run xp add @s -5 points

execute at @e[tag=spell_smite_charging] run playsound minecraft:block.portal.trigger hostile @a ~ ~ ~ 1 2 0