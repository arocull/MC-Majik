execute if score @s mana matches 3.. run tag @e[tag=ProjectileSpell] add spell_projectile_lightning
execute if score @s mana matches 3.. if entity @e[tag=spell_projectile_lightning,tag=SpellProjectile] run playsound minecraft:block.conduit.activate ambient @a ~ ~ ~ .5 1.5
execute if score @s mana matches 3.. if entity @e[tag=spell_projectile_lightning,tag=SpellProjectile] run scoreboard players add @s xp 4
execute if score @s mana matches 3.. if entity @e[tag=spell_projectile_lightning,tag=SpellProjectile] run xp add @s -4 points