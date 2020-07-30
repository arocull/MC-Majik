execute if score @s mana matches 5.. run tag @e[type=item,tag=SpellScroll] add spell_earth_blast_charging
execute if score @s mana matches 5.. if entity @e[tag=spell_earth_blast_charging,distance=..2] run playsound minecraft:block.grass.break player @a ~ ~ ~ 1 1
execute if score @s mana matches 5.. if entity @e[tag=spell_earth_blast_charging,distance=..2] run scoreboard players add @s xp 8
execute if score @s mana matches 5.. if entity @e[tag=spell_earth_blast_charging,distance=..2] run xp add @s -5 points