execute if score @s mana matches 3.. unless entity @e[tag=ProjectileSpell] unless score @s elem_selected matches 2.. run tag @e[type=item,tag=SpellScroll] add spell_fireball_summoning
execute if score @s mana matches 3.. if entity @e[tag=spell_fireball_summoning,distance=..2] run scoreboard players add @s xp 4
execute if score @s mana matches 3.. if entity @e[tag=spell_fireball_summoning,distance=..2] run xp add @s -3 points

execute if score @s mana matches 2.. unless entity @e[tag=ProjectileSpell] if score @s elem_selected matches 2.. as @s positioned ^ ^ ^2 positioned ~ ~1 ~ run function majik:generate_fireball

execute if score @s mana matches 2.. if entity @e[tag=ProjectileSpell] run scoreboard players add @s xp 3
execute if score @s mana matches 2.. if entity @e[tag=ProjectileSpell] run xp add @s -2 points