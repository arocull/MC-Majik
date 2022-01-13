## First, if there is no sky portal value on this entity, set one
execute unless entity @s[scores={skyPortalX=-500000..500000}] run scoreboard players set @s skyPortalX 0
execute unless entity @s[scores={skyPortalY=0..}] run scoreboard players set @s skyPortalY 100
execute unless entity @s[scores={skyPortalZ=-500000..500000}] run scoreboard players set @s skyPortalZ 0

# Summon armor stand in the same position and dimension as the player so it is always loaded
summon armor_stand ~ ~ ~ {Marker:1b,Tags:["SkyPortalExit"]}

# Forceload a chunk (0, 0 is fine and easy) so the armor stand is not unloaded when it is teleported
execute in overworld run spreadplayers 0 0 1 100 true @e[type=armor_stand,tag=SkyPortalExit,limit=1]
# Teleport armor stand to loaded chunk
execute in overworld run tp @e[type=armor_stand,tag=SkyPortalExit,limit=1] 0 64 0

# Position armor stand to player's stored Sky Portal position, do not teleport armor stand however as it may try and unload
execute store result entity @e[type=armor_stand,tag=SkyPortalExit,limit=1] Pos[0] double 0.1 run scoreboard players get @s skyPortalX
execute store result entity @e[type=armor_stand,tag=SkyPortalExit,limit=1] Pos[1] double 0.1 run scoreboard players get @s skyPortalY
execute store result entity @e[type=armor_stand,tag=SkyPortalExit,limit=1] Pos[2] double 0.1 run scoreboard players get @s skyPortalZ

# Teleport player to the armor stand and have them face up
execute in overworld at @e[type=armor_stand,tag=SkyPortalExit,limit=1] run tp @s ~ ~ ~ facing ~ ~10 ~
# Refund the player's experience if the armor stand was unloaded
execute unless entity @e[type=armor_stand,tag=SkyPortalExit,limit=1] run tell @s Teleport to overworld failed because the teleport destination failed to load.
execute unless entity @e[type=armor_stand,tag=SkyPortalExit,limit=1] run scoreboard players add @s mana 3
execute unless entity @e[type=armor_stand,tag=SkyPortalExit,limit=1] run tell @s You have been refunded 3 mana.

# Kill armor stand so other people don't accidentally teleport to it
execute in overworld run kill @e[type=armor_stand,tag=SkyPortalExit]

# Teleport effects, with minimum debuffs as this is the way we want players to teleport
execute in overworld run particle minecraft:witch ~ ~ ~ 1 1 1 3 200 normal
execute in overworld run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0.9
effect give @s weakness 3 0 false
effect give @s resistance 5 0 false

# Draw 3 flux from the portal
execute at @s unless entity @s[predicate=majik:in_overworld] run scoreboard players add @e[type=area_effect_cloud,tag=Counduit,sort=nearest,limit=1,distance=..5] flux 3