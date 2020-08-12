summon lightning_bolt ~ ~ ~

playsound minecraft:ambient.nether_wastes.mood ambient @a ~ ~ ~ 1 2 0.1
playsound minecraft:ambient.nether_wastes.mood ambient @a ~ ~ ~ 1 1.5 0.1
playsound minecraft:ambient.nether_wastes.mood ambient @a ~ ~ ~ 1 1 0.1

function majik:dim/sky/boss_portal/remake_portal_blocks

## Set xp_old for ambient effect sounds
scoreboard players set @s xp_old 0

fill ~-1 ~ ~-1 ~1 ~ ~1 air replace fire

effect give @a[distance=..20] blindness 3 0 true

tag @s add BossPortal
tag @s remove BossPortalCandidate