particle minecraft:smoke ~ ~ ~ 3 3 3 0 500 normal
## Teleport anything that isn't the caster or a nonmob
tag @e[distance=..6,tag=!spell_point_ender,type=!#majik:nonmob,gamemode=!spectator] add EnderTeleport
## And also projectiles because dropping arrows on people might be funny
tag @e[distance=..6,type=#majik:projectile] add EnderTeleport

effect give @a[distance=..6,tag=!spell_point_ender] blindness 3 0 false

execute at @e[tag=EnderTeleport] run particle minecraft:witch ~ ~1 ~ 0.25 0.5 0.25 1 50 normal
execute at @e[tag=EnderTeleport] run playsound minecraft:entity.enderman.teleport player @a ~ ~1 ~ 1 1
execute as @e[tag=EnderTeleport,sort=random] run function spells:point_ender_individual
execute at @e[tag=EnderTeleport] run particle minecraft:witch ~ ~1 ~ 0.25 0.5 0.25 2 75 normal

## Teleport scroll to random entity for upcoming casts
tp @e[tag=spell_point_ender,type=item] @e[tag=EnderTeleport,sort=random,limit=1]
## Teleport arrows ontop of mobs
execute as @e[tag=EnderTeleport,type=#minecraft:arrows] at @e[tag=EnderTeleport,type=!#majik:nonmob,sort=random,limit=1] run tp @s ~ ~5 ~

tag @e[tag=EnderTeleport] remove EnderTeleport