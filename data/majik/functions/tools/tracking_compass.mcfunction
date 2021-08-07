# Pick closest monster to track
tag @e[tag=MajikSpecialMonster,sort=nearest,limit=1] add CompassTracking

## Lift up and spin
execute if score @s age matches 0..11 at @s run tp @s ~ ~0.05 ~
execute if score @s age matches 1..10 at @s run tp @s ^0.18 ^ ^0.18 ~34 ~

particle cloud ^0.267 ^0.5 ^0.4 0.1 0 0.1 0.01 1 normal

## Play radar sounds (more beeps, louder, and higher pitch if monster is closer)
scoreboard players add @s xp 1
execute if score @s xp matches 30.. if entity @e[tag=CompassTracking,distance=25.01..50] run playsound minecraft:block.note_block.bass ambient @a ~ ~ ~ 0.3 1

execute if score @s xp matches 25 if entity @e[tag=CompassTracking,distance=10.01..25] run playsound minecraft:block.note_block.bass ambient @a ~ ~ ~ 0.5 1.5
execute if score @s xp matches 30.. if entity @e[tag=CompassTracking,distance=10.01..25] run playsound minecraft:block.note_block.bass ambient @a ~ ~ ~ 0.5 1.5

execute if score @s xp matches 20 if entity @e[tag=CompassTracking,distance=..10] run playsound minecraft:block.note_block.bass ambient @a ~ ~ ~ 1 2
execute if score @s xp matches 25 if entity @e[tag=CompassTracking,distance=..10] run playsound minecraft:block.note_block.bass ambient @a ~ ~ ~ 1 2
execute if score @s xp matches 30.. if entity @e[tag=CompassTracking,distance=..10] run playsound minecraft:block.note_block.bass ambient @a ~ ~ ~ 1 2

execute if score @s xp matches 30.. run scoreboard players set @s xp 0

## Reveal monster if it is very close nearby (helps reveal if monster is hiding inside cave)
execute as @e[tag=CompassTracking,distance=..7.5] run effect give @s glowing 2 0 false


## Set position of compass to position of nearest monster
execute if entity @e[tag=CompassTracking] run data modify entity @s HandItems[0].tag.LodestonePos.X set from entity @e[tag=CompassTracking,limit=1] Pos[0]
execute if entity @e[tag=CompassTracking] run data modify entity @s HandItems[0].tag.LodestonePos.Y set from entity @e[tag=CompassTracking,limit=1] Pos[1]
execute if entity @e[tag=CompassTracking] run data modify entity @s HandItems[0].tag.LodestonePos.Z set from entity @e[tag=CompassTracking,limit=1] Pos[2]

execute if entity @e[tag=CompassTracking] run data modify entity @s HandItems[0].tag.LodestoneTracked set value 1b
execute unless entity @e[tag=CompassTracking] run data modify entity @s HandItems[0].tag.LodestoneTracked set value 0b

## Regulate dimension to continue to match that of armor stand
execute if entity @e[tag=CompassTracking] run data modify entity @s HandItems[0].tag.LodestoneDimension set from entity @s Dimension
## Set to a non-existant dimension if no monster exists to indicate that no such monster is present
execute unless entity @e[tag=CompassTracking] run data modify entity @s HandItems[0].tag.LodestoneDimension set value "majik:null"

tag @e[tag=CompassTracking] remove CompassTracking

## Kill item if player comes close and hand item to them
execute if entity @p[distance=..1] run kill @s
execute if entity @p[distance=..1] run give @p[distance=..1] compass{MajikTrackingCompass:1b,LodestoneDimension:"majik:null",LodestoneTracked:0b,display:{Name:'{"text":"Tracking Compass","italic":false,"color":"yellow"}',Lore:['{"text":"Senses strong magical presences."}','{"text":"Toss onto ground to locate nearby monsters."}']}}