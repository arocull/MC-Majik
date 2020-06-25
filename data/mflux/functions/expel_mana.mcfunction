execute if score @s flux matches 1..3 run summon experience_orb ~ ~1 ~ {Value:1s}
execute if score @s flux matches 1..3 run scoreboard players remove @e[tag=Conduit,sort=nearest,limit=1] flux 1

execute if score @s flux matches 4.. run summon experience_orb ~ ~1 ~ {Value:2s}
execute if score @s flux matches 4.. run scoreboard players remove @e[tag=Conduit,sort=nearest,limit=1] flux 2

execute at @s run particle minecraft:witch ~ ~0.5 ~ 0.05 0.25 0.05 0.1 20 normal
playsound minecraft:entity.experience_orb.pickup block @s ~ ~ ~ 0.05 0.3