## First, try to cast whatever was bound to this wand
execute at @s if entity @s[nbt={Inventory:[{id:"minecraft:paper"}]}] run function majik:cast_spells

## Take experience from using enchant modifiers like earth and wind
execute if entity @s[tag=spell_earth] if score @s mana matches 1.. run xp add @s -1
execute if entity @s[tag=spell_wind] if score @s mana matches 1.. run particle cloud ~ ~1 ~ 0.25 0.5 0.25 0 10 normal
execute if entity @s[tag=spell_wind] if score @s mana matches 1.. run xp add @s -1

## Run bound attack spells
execute if entity @s[tag=spell_fire] if score @s mana matches 1.. as @e[tag=hit_bound_weapon,distance=..2,type=!player] run data modify entity @s Fire set value 60s
execute if entity @s[tag=spell_fire] if score @s mana matches 1.. if entity @e[tag=hit_bound_weapon,distance=..2,type=player] run setblock ~ ~ ~ fire keep
execute if entity @s[tag=spell_fire] if score @s mana matches 1.. run particle flame ~ ~1 ~ 0.25 0.5 0.25 1 25 normal
execute if entity @s[tag=spell_fire] if score @s mana matches 1.. run playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 1 1
execute if entity @s[tag=spell_fire] if score @s mana matches 1.. run xp add @s -1

execute if entity @s[tag=spell_frost] if score @s mana matches 1.. as @e[tag=hit_bound_weapon,distance=..2] run function majik:freeze
execute if entity @s[tag=spell_frost] if score @s mana matches 1.. run xp add @s -1

execute if entity @s[tag=spell_lightning] if score @s mana matches 3.. run summon lightning_bolt ~ ~ ~
execute if entity @s[tag=spell_lightning] if score @s mana matches 3.. run scoreboard players add @s xp 2
execute if entity @s[tag=spell_lightning] if score @s mana matches 3.. run xp add @s -3

execute if entity @s[tag=spell_nature] if score @s mana matches 2.. if entity @e[tag=hit_bound_weapon,distance=..2,type=#majik:undead] run tag @s add MajikLifestealHit
execute if entity @s[tag=spell_nature,tag=MajikLifestealHit] if score @s mana matches 2.. at @e[tag=hit_bound_weapon,distance=..2,type=#majik:undead] run particle minecraft:enchanted_hit ~ ~0.5 ~ 0.25 0.5 0.25 1 100 normal
execute if entity @s[tag=spell_nature,tag=MajikLifestealHit] if score @s mana matches 2.. at @e[tag=hit_bound_weapon,distance=..2,type=#majik:undead] run playsound minecraft:entity.zombie_villager.cure player @a ~ ~ ~ 0.5 1.9
execute if entity @s[tag=spell_nature,tag=MajikLifestealHit] if score @s mana matches 2.. as @e[tag=hit_bound_weapon,distance=..2,type=#majik:undead] run effect give @s instant_health 1 0 true
execute if entity @s[tag=spell_nature,tag=MajikLifestealHit] if score @s mana matches 2.. at @s run function spells:self_nature
execute if entity @s[tag=spell_nature,tag=MajikLifestealHit] if score @s mana matches 2.. run scoreboard players add @s xp 1
execute if entity @s[tag=spell_nature,tag=MajikLifestealHit] if score @s mana matches 2.. run xp add @s -2
tag @a[tag=MajikLifestealHit] remove MajikLifestealHit

execute if entity @s[tag=spell_ender] if score @s mana matches 2.. as @e[tag=hit_bound_weapon,distance=..2] run function spells:projectile_ender_collide
execute if entity @s[tag=spell_ender] if score @s mana matches 2.. run scoreboard players add @s xp 1
execute if entity @s[tag=spell_ender] if score @s mana matches 2.. run xp add @s -2