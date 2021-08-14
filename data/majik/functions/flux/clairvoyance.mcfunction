## Reveal only entities that are mobs, are nearby, do not have the glowing effect, and are not spectators
execute as @e[type=!#majik:nonmob,distance=..10,nbt=!{ActiveEffects:[{Id:24b,ShowParticles:1b}]}] at @s unless entity @s[gamemode=spectator] run function majik:flux/reveal_entity

## For every 4 reveals, remove 1 flux
execute at @s as @e[tag=Clairvoyance] run scoreboard players add @e[tag=Conduit,sort=nearest,limit=1] xp 1
execute if score @s xp matches 4.. run scoreboard players remove @s flux 1
execute if score @s xp matches 4.. run scoreboard players set @s xp 0

tag @e[tag=Clairvoyance] remove Clairvoyance