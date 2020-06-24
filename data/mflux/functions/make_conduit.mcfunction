summon armor_stand ~ ~ ~ {Invisible:1,Invulnerable:1,Small:1,Marker:1,Tags:["Conduit","CanAge"]}
scoreboard players set @e[tag=Conduit,sort=nearest,limit=1] flux 0

playsound minecraft:block.beacon.activate neutral @a ~ ~ ~ 0.2 0.7
particle poof ~ ~.6 ~ 0.1 0.6 0.1 0 15 normal

kill @s