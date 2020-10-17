## First, if there is no sky portal value on this entity, set one
execute unless entity @s[scores={skyPortalX=-500000..500000}] run scoreboard players set @s skyPortalX 0
execute unless entity @s[scores={skyPortalY=0..}] run scoreboard players set @s skyPortalY 100
execute unless entity @s[scores={skyPortalZ=-500000..500000}] run scoreboard players set @s skyPortalZ 0

execute in overworld run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["SkyPortalExit"]}
#execute in overworld run tp @e[type=armor_stand,tag=SkyPortalExit,limit=1] ~ ~ ~

execute store result entity @e[type=armor_stand,tag=SkyPortalExit,limit=1] Pos[0] double 0.1 run scoreboard players get @s skyPortalX
execute store result entity @e[type=armor_stand,tag=SkyPortalExit,limit=1] Pos[1] double 0.1 run scoreboard players get @s skyPortalY
execute store result entity @e[type=armor_stand,tag=SkyPortalExit,limit=1] Pos[2] double 0.1 run scoreboard players get @s skyPortalZ
execute in overworld as @e[type=armor_stand,tag=SkyPortalExit,limit=1] at @s run tp @s ~ ~ ~

execute in overworld at @e[type=armor_stand,tag=SkyPortalExit,limit=1] run tp @s ~ ~ ~ facing ~ ~10 ~

execute in overworld run kill @e[type=armor_stand,tag=SkyPortalExit]

particle minecraft:witch ~ ~ ~ 1 1 1 3 200 normal
playsound entity.enderman.teleport player @s ~ ~ ~ 1 0.9
effect give @s weakness 3 0 false