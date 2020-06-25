## Lodestone enemy tracker

execute as @e[type=item,nbt={Item:{id:"minecraft:compass",Count:1b,tag:{MajikTrackingCompass:1b}},OnGround:1b}] at @s run function majik:place_tracking_compass
execute as @e[tag=MajikMonsterTracker] at @s run function majik:tracking_compass

## Then cast spells--only cast if player has paper and is holding a wand
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:paper"}]},nbt={SelectedItem:{tag:{IsWand:1b,Enchantments:[{id:"minecraft:channeling"}]}}}] if score @s clicks matches 1.. run function majik:cast_spells
scoreboard players set @a clicks 0


## Move projectiles
execute as @e[tag=projectile_marker,type=armor_stand] at @s run tp @s @e[tag=Projectile,sort=nearest,distance=..5,limit=1]
execute as @e[tag=projectile_marker,type=armor_stand] at @s unless entity @e[tag=Projectile,sort=nearest,distance=..5] run function majik:projectile_collide

execute at @a[tag=hold_bound_weapon] as @e[type=!#majik:nonmob,nbt={HurtTime:10s},distance=0.1..4.5] run tag @s add hit_bound_weapon
execute at @a[tag=hold_bound_weapon] as @e[type=!#majik:nonmob,nbt={HurtTime:9s},distance=0.1..4.5] run tag @s add hit_bound_weapon
execute at @e[tag=hit_bound_weapon] as @e[tag=hold_bound_weapon,distance=0.1..4.5,sort=nearest,limit=1] run function majik:bound_weapon_attack
tag @e remove hit_bound_weapon

## Tick spells that are time-based
function spells:projectile_fire
function spells:projectile_frost
function spells:projectile_lightning
execute at @e[tag=spell_projectile_ender] run particle minecraft:smoke ~ ~ ~ 0 0 0 0 1 normal

function spells:point_fire
function spells:point_frost
function spells:point_lightning
function spells:point_nature

scoreboard players set * beam_length 0