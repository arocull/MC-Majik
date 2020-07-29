execute as @e[gamemode=!spectator,type=!item,type=!item_frame,type=!boat,type=!armor_stand,distance=..10,nbt=!{ActiveEffects:[{Id:24b,ShowParticles:1b}]}] at @s run function majik:flux/reveal_entity

execute at @s as @e[tag=Clairvoyance] run scoreboard players add @e[tag=Conduit,sort=nearest,limit=1] xp 1
execute if score @s xp matches 4.. run scoreboard players remove @s flux 1
execute if score @s xp matches 4.. run scoreboard players set @s xp 0

tag @e[tag=Clairvoyance] remove Clairvoyance