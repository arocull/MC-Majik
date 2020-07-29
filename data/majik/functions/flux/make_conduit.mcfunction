summon minecraft:area_effect_cloud ~ ~ ~ {RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:10000,Invulnerable:1,Tags:["Conduit","CanAge"]}
scoreboard players set @e[tag=Conduit,sort=nearest,limit=1] flux 0

playsound minecraft:block.beacon.activate block @a ~ ~ ~ 0.2 0.7
particle poof ~ ~.6 ~ 0.1 0.6 0.1 0 15 normal

kill @s