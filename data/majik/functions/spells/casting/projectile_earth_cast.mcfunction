execute if score @s mana matches 1.. as @e[tag=ProjectileSpell] run tag @s add spell_projectile_earth
execute if score @s mana matches 1.. if entity @e[tag=spell_projectile_earth,tag=ProjectileSpell] run playsound minecraft:block.stone.place player @a ~ ~ ~ 1 1
#execute if score @s mana matches 1.. if entity @e[tag=spell_projectile_earth,tag=ProjectileSpell] run scoreboard players add @s xp 0
execute if score @s mana matches 1.. if entity @e[tag=spell_projectile_earth,tag=ProjectileSpell] run scoreboard players remove @s mana 1