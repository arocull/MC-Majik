tag @s add RepulsionField

execute as @e[type=#majik:projectile,distance=..7,tag=!ReplusionFieldCooldown] at @s run function majik:flux/repel_entity_strong
playsound minecraft:entity.blaze.hurt ambient @a ~ ~ ~ 0.5 1.3
particle minecraft:soul_fire_flame ~ ~ ~ 2 2 2 0 100 normal

scoreboard players add @s xp 1
execute if score @s xp matches 3.. run scoreboard players remove @s flux 1
execute if score @s xp matches 3.. run scoreboard players set @s xp 0

execute if score @s flux matches 0 run playsound minecraft:block.respawn_anchor.deplete ambient @a[distance=..40] ~ ~ ~ 2 0.5 1

tag @s remove RepulsionField