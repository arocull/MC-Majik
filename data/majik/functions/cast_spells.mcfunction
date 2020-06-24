## Tag paper so we know what it is
clear @s paper 1
execute as @s anchored eyes positioned ~ ~1 ~ run summon item ^ ^ ^1 {Item:{id:"minecraft:paper",Count:1b},Tags:["SpellScroll","VectorCalculator"],PickupDelay:20}
execute as @s at @s run function majik:vector
tag @e[tag=SpellScroll] add throw


## First-Priority Spells - Spells that should always cast first due to relocation of paper
execute as @s if entity @s[tag=spell_shape_beam,tag=spell_ender] run function spells:beam_ender_cast


## Self Spells
execute as @s if entity @s[tag=spell_shape_self,tag=spell_fire] run function spells:self_fire_cast
execute as @s if entity @s[tag=spell_shape_self,tag=spell_frost] run function spells:self_frost_cast
execute as @s if entity @s[tag=spell_shape_self,tag=spell_lightning] run function spells:self_lightning_cast
execute as @s if entity @s[tag=spell_shape_self,tag=spell_nature] run function spells:self_nature_cast


## Beam Spells - Execute earth first because it is short and destroys blocks
execute as @s if entity @s[tag=spell_shape_beam,tag=spell_earth] run function spells:beam_earth_cast
execute as @s if entity @s[tag=spell_shape_beam,tag=spell_fire] run function spells:beam_fire_cast
execute as @s if entity @s[tag=spell_shape_beam,tag=spell_frost] run function spells:beam_frost_cast
execute as @s if entity @s[tag=spell_shape_beam,tag=spell_lightning] run function spells:beam_lightning_cast


## Projectile Spells - First create snowball base
execute as @s if entity @s[tag=spell_shape_projectile,tag=!spell_fire] if entity @e[tag=SpellScroll] if score @s mana matches 2.. unless entity @e[tag=ProjectileSpell] run xp add @s -1
execute as @s if entity @s[tag=spell_shape_projectile,tag=!spell_fire] if entity @e[tag=SpellScroll] if score @s mana matches 1.. unless entity @e[tag=ProjectileSpell] as @s positioned ~ ~1 ~ positioned ^ ^ ^4 run function majik:generate_projectile

execute as @s if entity @s[tag=spell_shape_projectile,tag=spell_fire] run function spells:projectile_fire_cast
execute as @s if entity @s[tag=spell_shape_projectile,tag=spell_frost] run function spells:projectile_frost_cast
execute as @s if entity @s[tag=spell_shape_projectile,tag=spell_lightning] run function spells:projectile_lightning_cast
execute as @s if entity @s[tag=spell_shape_projectile,tag=spell_ender] run function spells:projectile_ender_cast
execute as @s if entity @s[tag=spell_shape_projectile,tag=spell_earth] run function spells:projectile_earth_cast


## Point Spells - Ender takes first priority
execute as @s if entity @s[tag=spell_shape_point,tag=spell_ender] run function spells:point_ender_cast
execute as @s if entity @s[tag=spell_shape_point,tag=spell_fire] run function spells:point_fire_cast
execute as @s if entity @s[tag=spell_shape_point,tag=spell_frost] run function spells:point_frost_cast
execute as @s if entity @s[tag=spell_shape_point,tag=spell_lightning] run function spells:point_lightning_cast
execute as @s if entity @s[tag=spell_shape_point,tag=spell_nature] run function spells:point_nature_cast


## Finally, apply modifications to scroll in case of bound spells
execute if entity @s[tag=spell_shape_bound,tag=spell_lightning,tag=spell_shape_point] as @e[tag=SpellScroll] run data modify entity @s Invulnerable set value 1b
execute if entity @s[tag=spell_shape_bound,tag=spell_fire,tag=spell_shape_projectile] as @e[tag=SpellScroll] run data modify entity @s Invulnerable set value 1b

tag @e[tag=ProjectileSpell] add CanAge
tag @e[tag=ProjectileSpell] remove ProjectileSpell
tag @e[tag=ProjectileInitial] remove ProjectileInitial
tag @e[tag=SpellScrollPassenger] remove SpellScrollPassenger
tag @e[tag=SpellScroll] remove SpellScroll