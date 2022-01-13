execute if score @s mana matches 4.. run tag @e[type=item,tag=SpellScroll] add spell_beam_fire

execute if score @s mana matches 4.. if entity @e[tag=spell_beam_fire] as @e[tag=spell_beam_fire] run data modify entity @s Invulnerable set value 1b
execute if score @s mana matches 4.. if entity @e[tag=spell_beam_fire] as @s positioned ~ ~1.25 ~ positioned ^ ^ ^2 run function majik:spells/casting/beam_fire
execute if score @s mana matches 4.. if entity @e[tag=spell_beam_fire] run scoreboard players set @s beam_length 0

execute if score @s mana matches 6.. if entity @e[tag=spell_beam_fire] if entity @s[tag=spell_shape_projectile] as @s positioned ~ ~1 ~ positioned ^ ^ ^2 run function majik:spells/casting/beam_fire_fireball

execute if score @s mana matches 4.. if entity @e[tag=spell_beam_fire] run scoreboard players add @s xp 5
execute if score @s mana matches 4.. if entity @e[tag=spell_beam_fire] run scoreboard players remove @s mana 4

execute as @e[tag=spell_beam_fire] run tag @s remove spell_beam_fire