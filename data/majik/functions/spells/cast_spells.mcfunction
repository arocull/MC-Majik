## Tag paper so we know what it is
tag @s add MajikCasting
clear @s paper 1
execute as @s anchored eyes positioned ~ ~1 ~ run summon item ^ ^ ^1 {Item:{id:"minecraft:paper",Count:1b},Tags:["SpellScroll","VectorCalculator","throw"],PickupDelay:20}
execute as @s at @s run function majik:util/vector


## First-Priority Spells - Spells that should always cast first due to relocation of paper and player
execute as @s if entity @s[tag=spell_shape_beam,tag=spell_ender] run function majik:spells/casting/beam_ender_cast


## Self Spells
execute as @s if entity @s[tag=spell_shape_self,tag=spell_fire] run function majik:spells/casting/self_fire_cast
execute as @s if entity @s[tag=spell_shape_self,tag=spell_frost] run function majik:spells/casting/self_frost_cast
execute as @s if entity @s[tag=spell_shape_self,tag=spell_lightning] run function majik:spells/casting/self_lightning_cast
execute as @s if entity @s[tag=spell_shape_self,tag=spell_nature] run function majik:spells/casting/self_nature_cast
execute as @s if entity @s[tag=spell_shape_self,tag=spell_wind] run function majik:spells/casting/self_wind_cast


## Beam Spells - Execute earth first because it is short and destroys blocks
execute as @s if entity @s[tag=spell_shape_beam,tag=spell_earth] run function majik:spells/casting/beam_earth_cast
execute as @s if entity @s[tag=spell_shape_beam,tag=spell_fire] run function majik:spells/casting/beam_fire_cast
execute as @s if entity @s[tag=spell_shape_beam,tag=spell_frost] run function majik:spells/casting/beam_frost_cast
execute as @s if entity @s[tag=spell_shape_beam,tag=spell_lightning] run function majik:spells/casting/beam_lightning_cast
execute as @s if entity @s[tag=spell_shape_beam,tag=spell_wind] run function majik:spells/casting/beam_wind_cast


## Projectile Spells - First create snowball base
execute as @s if entity @s[tag=spell_shape_projectile,tag=!spell_fire] if entity @e[tag=SpellScroll] if score @s mana matches 2.. unless entity @e[tag=ProjectileSpell] run xp add @s -1
execute as @s if entity @s[tag=spell_shape_projectile,tag=!spell_fire] if entity @e[tag=SpellScroll] if score @s mana matches 1.. unless entity @e[tag=ProjectileSpell] as @s positioned ~ ~1 ~ positioned ^ ^ ^4 run function majik:spells/generate_projectile

execute as @s if entity @s[tag=spell_shape_projectile,tag=spell_fire] run function majik:spells/casting/projectile_fire_cast
execute as @s if entity @s[tag=spell_shape_projectile,tag=spell_frost] run function majik:spells/casting/projectile_frost_cast
execute as @s if entity @s[tag=spell_shape_projectile,tag=spell_lightning] run function majik:spells/casting/projectile_lightning_cast
execute as @s if entity @s[tag=spell_shape_projectile,tag=spell_ender] run function majik:spells/casting/projectile_ender_cast
execute as @s if entity @s[tag=spell_shape_projectile,tag=spell_earth] run function majik:spells/casting/projectile_earth_cast


## Point Spells - Ender takes first priority
execute as @s if entity @s[tag=spell_shape_point,tag=spell_ender] run function majik:spells/casting/point_ender_cast
execute as @s if entity @s[tag=spell_shape_point,tag=spell_fire] run function majik:spells/casting/point_fire_cast
execute as @s if entity @s[tag=spell_shape_point,tag=spell_frost] run function majik:spells/casting/point_frost_cast
execute as @s if entity @s[tag=spell_shape_point,tag=spell_lightning] run function majik:spells/casting/point_lightning_cast
execute as @s if entity @s[tag=spell_shape_point,tag=spell_nature] run function majik:spells/casting/point_nature_cast
execute as @s if entity @s[tag=spell_shape_point,tag=spell_earth] run function majik:spells/casting/point_earth_cast


## Tack on auras--attaches to spell if no self shape, attaches to hit entity if was a bound weapon attack
execute as @s if entity @s[tag=spell_shape_aura,tag=spell_fire] if score @s mana matches 5.. run function majik:spells/casting/aura_fire_cast
execute as @s if entity @s[tag=spell_shape_aura,tag=spell_frost] if score @s mana matches 5.. run function majik:spells/casting/aura_frost_cast
execute as @s if entity @s[tag=spell_shape_aura,tag=spell_lightning] if score @s mana matches 5.. run function majik:spells/casting/aura_lightning_cast
execute as @s if entity @s[tag=spell_shape_aura,tag=spell_ender] if score @s mana matches 5.. run function majik:spells/casting/aura_ender_cast
execute as @s if entity @s[tag=spell_shape_aura,tag=spell_nature] if score @s mana matches 7.. run function majik:spells/casting/aura_nature_cast
execute as @s if entity @s[tag=spell_shape_aura,tag=spell_earth] if score @s mana matches 5.. run function majik:spells/casting/aura_earth_cast
execute as @s if entity @s[tag=spell_shape_aura,tag=spell_wind] if score @s mana matches 5.. run function majik:spells/casting/aura_wind_cast


## Finally, apply modifications to scroll in case of bound spells
execute if entity @s[tag=spell_shape_bound,tag=spell_lightning,tag=spell_shape_point] as @e[tag=SpellScroll] run data modify entity @s Invulnerable set value 1b
execute if entity @s[tag=spell_shape_bound,tag=spell_fire,tag=spell_shape_projectile] as @e[tag=SpellScroll] run data modify entity @s Invulnerable set value 1b

tag @e[tag=ProjectileSpell] add CanAge
tag @e[tag=ProjectileSpell] remove ProjectileSpell
tag @e[tag=ProjectileInitial] remove ProjectileInitial
tag @e[tag=SpellScrollPassenger] remove SpellScrollPassenger
tag @e[tag=SpellScroll] remove SpellScroll
tag @s remove MajikCasting

scoreboard players set @s clicks 0