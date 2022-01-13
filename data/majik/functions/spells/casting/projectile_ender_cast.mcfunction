execute if score @s mana matches 3.. as @e[tag=ProjectileSpell] run tag @s add spell_projectile_ender
execute if score @s mana matches 3.. as @e[tag=ProjectileInitial,sort=nearest,limit=1] run data modify entity @s Item set value {id:"minecraft:ender_pearl",Count:1b}
execute if score @s mana matches 3.. if entity @e[tag=spell_projectile_ender,tag=ProjectileSpell] run scoreboard players add @s xp 4
execute if score @s mana matches 3.. if entity @e[tag=spell_projectile_ender,tag=ProjectileSpell] run scoreboard players remove @s mana 3