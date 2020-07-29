## Tag players who are just now entering the skylands, and remove tags from others
execute as @a[predicate=majik:in_skylands,tag=!InMajikSkylands] run tag @s add NewlyEnteredSkylands
tag @a[tag=InMajikSkylands,predicate=!majik:in_skylands] remove InMajikSkylands
execute as @a[predicate=majik:in_skylands] run tag @s add InMajikSkylands


execute if entity @a[tag=InMajikSkylands] run function majik:structure_gen/tick_skylands_structures


execute as @a[tag=NewlyEnteredSkylands] at @s run function majik:skylands/enter_skylands

tag @a[tag=NewlyEnteredSkylands] remove NewlyEnteredSkylands