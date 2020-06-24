execute if score @s mana matches 4.. run tag @e[type=item,tag=SpellScroll] add spell_beam_ender

execute if score @s mana matches 4.. if entity @e[tag=spell_beam_ender] as @s positioned ~ ~1 ~ align xyz run function spells:beam_ender
execute if score @s mana matches 4.. if entity @e[tag=spell_beam_ender] run scoreboard players set @s beam_length 0

execute if score @s mana matches 4.. if entity @e[tag=spell_beam_ender] run scoreboard players add @s xp 4
execute if score @s mana matches 4.. if entity @e[tag=spell_beam_ender] run xp add @s -4 points

execute as @e[tag=spell_beam_ender] run tag @s remove spell_beam_ender