execute if score @s mana matches 5.. run tag @e[type=item,tag=SpellScroll] add spell_fireball_barrage
execute if score @s mana matches 5.. if entity @e[tag=spell_fireball_barrage,distance=..2] run playsound minecraft:entity.ghast.hurt player @a ~ ~ ~ 1 .9
execute if score @s mana matches 5.. if entity @e[tag=spell_fireball_barrage,distance=..2] run scoreboard players add @s xp 7
execute if score @s mana matches 5.. if entity @e[tag=spell_fireball_barrage,distance=..2] run scoreboard players remove @s mana 5