scoreboard players add @s xp_old 1
execute if entity @a[distance=..30] run scoreboard players add @s xp_time_shown 1

execute if score @s xp_old matches 240.. at @s run playsound minecraft:block.conduit.ambient ambient @a[distance=..10] ~ ~ ~ 1 0.8 0.3
execute if score @s xp_old matches 240.. run scoreboard players set @s xp_old 0

execute if score @s xp_time_shown matches 10.. run function majik:dim/sky/boss_portal/remake_portal_blocks
execute if score @s xp_time_shown matches 10.. run scoreboard players set @s xp_time_shown 0

execute positioned ~-1.5 ~ ~-1.5 as @a[dx=3,dz=3,dy=0] at @s run function majik:dim/moonlit_plains/teleport_in

## If the portal is harmed, blow it up
function majik:dim/sky/boss_portal/check_blocks
execute if score @s level matches 0 run kill @e[type=falling_block,distance=..5,tag=BossPortalBlock]
execute if score @s level matches 0 run function majik:dim/sky/boss_portal/detonate