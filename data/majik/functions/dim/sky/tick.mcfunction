## Perform structure gen
# function majik:dim/sky/structure_gen/tick_skylands_structures

execute as @a at @s if entity @s[dx=0,dz=0,y=-50,dy=55,predicate=majik:in_skylands,gamemode=!spectator] run function majik:dim/sky/fall

execute in majik:skylands as @e[type=area_effect_cloud,tag=Conduit,tag=!BossPortal,scores={flux=3..},predicate=majik:in_skylands] at @s if block ~ ~-1 ~ sea_lantern run tag @s add BossPortalCandidate
execute as @e[type=area_effect_cloud,tag=BossPortalCandidate] at @s run function majik:dim/sky/boss_portal/check_blocks
execute as @e[type=area_effect_cloud,tag=BossPortalCandidate,scores={level=1}] at @s run function majik:dim/sky/boss_portal/make

execute as @e[type=area_effect_cloud,tag=Conduit,tag=BossPortal] at @s run function majik:dim/sky/boss_portal/tick

tag @e[type=area_effect_cloud,tag=BossPortalCandidate] remove BossPortalCandidate