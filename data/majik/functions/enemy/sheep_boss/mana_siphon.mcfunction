# data get entity @s XpTotal

xp add @p -7
scoreboard players add @s flux 7
playsound minecraft:entity.experience_orb.pickup player @p ~ ~ ~ 0.05 1
particle minecraft:witch ~ ~1 ~ 0.25 0.5 0.25 0.1 20 normal
execute at @s run particle minecraft:happy_villager ~ ~1 ~ 0.25 0.5 0.25 0.1 20 normal

execute at @s positioned ~ ~1 ~ run function majik:flux/list_flux

tag @s add CastSpellThisFrame