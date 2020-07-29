## Lodestone enemy tracker

execute as @e[type=item,nbt={Item:{id:"minecraft:compass",Count:1b,tag:{MajikTrackingCompass:1b}},OnGround:1b}] at @s run function majik:tools/place_tracking_compass
execute as @e[tag=MajikMonsterTracker] at @s run function majik:tools/tracking_compass

## Then cast spells--only cast if player has paper and is holding a wand
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:paper"}]},nbt={SelectedItem:{tag:{IsWand:1b,Enchantments:[{id:"minecraft:channeling"}]}}}] if score @s clicks matches 1.. run function majik:spells/cast_spells
scoreboard players set @a clicks 0


## Move projectiles
execute as @e[tag=projectile_marker,type=armor_stand] at @s run tp @s @e[tag=Projectile,sort=nearest,distance=..5,limit=1]
execute as @e[tag=projectile_marker,type=armor_stand] at @s unless entity @e[tag=Projectile,sort=nearest,distance=..5] run function majik:spells/projectile_collide

execute at @a[tag=hold_bound_weapon] as @e[type=!#majik:nonmob,nbt={HurtTime:10s},distance=0.1..4.5] run tag @s add hit_bound_weapon
execute at @a[tag=hold_bound_weapon] as @e[type=!#majik:nonmob,nbt={HurtTime:9s},distance=0.1..4.5] run tag @s add hit_bound_weapon
execute at @e[tag=hit_bound_weapon] as @e[tag=hold_bound_weapon,distance=0.1..4.5,sort=nearest,limit=1] run function majik:spells/bound_weapon_attack
tag @e remove hit_bound_weapon

## Tick spells that are time-based
function majik:spells/casting/projectile_fire
function majik:spells/casting/projectile_frost
function majik:spells/casting/projectile_lightning
execute at @e[tag=spell_projectile_ender] run particle minecraft:smoke ~ ~ ~ 0 0 0 0 1 normal

function majik:spells/casting/point_fire
function majik:spells/casting/point_frost
function majik:spells/casting/point_lightning
function majik:spells/casting/point_nature

scoreboard players set * beam_length 0