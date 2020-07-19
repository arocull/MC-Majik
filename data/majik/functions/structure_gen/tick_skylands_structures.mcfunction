execute as @e[type=area_effect_cloud,tag=MajikStructureGen] run data modify entity @s Age set value 0


## Select valid entity for spawning a strucutre (newly spawned, not near existing structure, succeeds random chance)
execute in majik:skylands as @e[type=#majik:docile,nbt={Age:0},predicate=majik:in_skylands,predicate=majik:in_flower_forest] at @s unless entity @e[type=area_effect_cloud,tag=MajikStructureGen,distance=..1000] if predicate majik:random_one_tenth run function majik:structure_gen/summon_well
## Mark docile mobs as having existed for a while 
execute as @e[type=#majik:docile,nbt={Age:0},predicate=majik:in_skylands] run data modify entity @s Age set value 1