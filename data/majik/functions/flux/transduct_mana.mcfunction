scoreboard players remove @s mana 1
scoreboard players add @e[tag=Conduit,sort=nearest,limit=1] flux 1
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.05 1
execute at @s run particle minecraft:witch ~ ~1 ~ 0.25 0.5 0.25 0.1 20 normal