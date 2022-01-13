execute if score @s mana matches 2.. run tag @e[type=item,tag=SpellScroll] add spell_freeze_charging

execute at @s at @e[tag=spell_freeze_charging,distance=..2] run playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 2 .5
execute at @s as @e[type=item,tag=spell_smite_charging] run data modify entity @s PickupDelay set value -2

execute if score @s mana matches 2.. if entity @e[tag=spell_fireball_summoning,distance=..2] run scoreboard players add @s xp 1
execute if score @s mana matches 2.. if entity @e[tag=spell_fireball_summoning,distance=..2] run scoreboard players remove @s mana 2

## Caster immunity
##execute as @a[tag=spell_freeze] at @s if score @s mana matches 3.. if entity @e[tag=spell_freeze_summoning,distance=..5] run tag @s add spell_freeze_caster
