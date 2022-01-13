execute if score @s mana matches 4.. run tag @e[type=item,tag=SpellScroll] add spell_beam_earth

execute if score @s mana matches 4.. if entity @e[tag=spell_beam_earth] as @s positioned ~ ~1.25 ~ run function majik:spells/casting/beam_earth
scoreboard players set @s beam_length 0

execute if score @s mana matches 4.. if entity @e[tag=spell_beam_earth] run scoreboard players add @s xp 5
execute if score @s mana matches 4.. if entity @e[tag=spell_beam_earth] run scoreboard players remove @s mana 4

execute as @e[tag=spell_beam_earth] run tag @s remove spell_beam_earth