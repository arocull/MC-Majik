execute as @e[type=item_frame,nbt={Item:{id:"minecraft:compass"}},nbt=!{Item:{tag:{MajikTrackingCompass:1b}}}] at @s if block ~ ~-1 ~ lapis_block run function majik:craft_tracking_compass_ingredients

execute as @e[tag=CompassCraftingFinished] at @s run playsound minecraft:entity.zombie_villager.converted neutral @a ~ ~ ~ 1 1.5
execute as @e[tag=CompassCraftingFinished] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force
execute as @e[tag=CompassCraftingFinished] run data modify entity @s Item merge value {tag:{MajikTrackingCompass:1b,LodestoneDimension:"majik:null",LodestoneTracked:0b,display:{Name:'{"text":"Tracking Compass","italic":"false","color":"yellow"}',Lore:['{"text":"Senses strong magical presences."}','{"text":"Toss onto ground to locate nearby monsters."}']}}}

tag @e[tag=CompassCraftingFinished] remove CompassCraftingFinished