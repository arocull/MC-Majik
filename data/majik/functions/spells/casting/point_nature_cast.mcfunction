execute if score @s mana matches 12.. run tag @e[type=item,tag=SpellScroll] add spell_nature_charging
execute at @e[type=item,tag=spell_nature_charging] run playsound minecraft:block.conduit.ambient.short player @a ~ ~ ~ 0.5 1.5

execute if score @s mana matches 12.. if entity @e[tag=spell_nature_charging,distance=..2] run scoreboard players add @s xp 16
execute if score @s mana matches 12.. if entity @e[tag=spell_nature_charging,distance=..2] run scoreboard players remove @s mana 12