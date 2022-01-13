execute if score @s mana matches 3.. as @e[tag=ProjectileSpell] run tag @s add spell_projectile_frost
execute if score @s mana matches 3.. if entity @e[tag=spell_projectile_frost,tag=ProjectileSpell] run playsound minecraft:block.snow.place player @a ~ ~ ~ 1 1
execute if score @s mana matches 3.. if entity @e[tag=spell_projectile_frost,tag=ProjectileSpell] run scoreboard players add @s xp 4
execute if score @s mana matches 3.. if entity @e[tag=spell_projectile_frost,tag=ProjectileSpell] run scoreboard players remove @s mana 3