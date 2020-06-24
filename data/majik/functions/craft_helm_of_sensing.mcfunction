execute as @e[type=item_frame,nbt={Item:{id:"minecraft:golden_helmet"}},nbt=!{Item:{tag:{Revealing:1}}}] at @s if block ~ ~-1 ~ lapis_block if entity @e[type=potion,distance=..3,nbt={Item:{id:"minecraft:splash_potion",tag:{Potion:"minecraft:night_vision"}}}] run tag @s add HelmCrafting
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:golden_helmet"}},nbt=!{Item:{tag:{Revealing:1}}}] at @s if block ~ ~-1 ~ lapis_block if entity @e[type=potion,distance=..3,nbt={Item:{id:"minecraft:splash_potion",tag:{Potion:"minecraft:long_night_vision"}}}] run tag @s add HelmCrafting

scoreboard players add @e[type=item_frame,tag=HelmCrafting] xp_time_shown 1

execute as @e[type=item_frame,tag=HelmCrafting,scores={xp_time_shown=1..40}] at @s run particle witch ~ ~ ~ 0.5 0.5 0.5 0.05 5 normal
execute as @e[type=item_frame,tag=HelmCrafting,scores={xp_time_shown=1}] at @s run playsound block.beacon.activate neutral @a ~ ~ ~ 1 1
execute as @e[type=item_frame,tag=HelmCrafting,scores={xp_time_shown=35}] at @s run playsound entity.zombie_villager.converted neutral @a ~ ~ ~ 1 1.5
execute as @e[type=item_frame,tag=HelmCrafting,scores={xp_time_shown=40..}] at @s run particle flash ~ ~ ~ 0 0 0 0 1 force


execute as @e[type=item_frame,nbt={Item:{id:"minecraft:golden_helmet"}},tag=HelmCrafting,scores={xp_time_shown=40..}] run data modify entity @s Item merge value {tag:{Revealing:1,display:{Name:'{"text":"Helm of Sensing","italic":"false","color":"yellow"}'}}}


execute as @e[type=item_frame,tag=HelmCrafting,scores={xp_time_shown=40..}] run tag @s remove HelmCrafting
execute as @e[type=item_frame,tag=!HelmCrafting,tag=!CompendiumCrafting,scores={xp_time_shown=1..}] run scoreboard players set @s xp_time_shown 0