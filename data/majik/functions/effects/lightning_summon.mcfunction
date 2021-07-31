summon lightning_bolt ~ ~ ~

# Power lightning rod if present
execute if block ~ ~ ~ lightning_rod[facing=up] run setblock ~ ~ ~ lightning_rod[facing=up,powered=true] replace
execute if block ~ ~ ~ lightning_rod[facing=down] run setblock ~ ~ ~ lightning_rod[facing=down,powered=true] replace
execute if block ~ ~ ~ lightning_rod[facing=north] run setblock ~ ~ ~ lightning_rod[facing=north,powered=true] replace
execute if block ~ ~ ~ lightning_rod[facing=south] run setblock ~ ~ ~ lightning_rod[facing=south,powered=true] replace
execute if block ~ ~ ~ lightning_rod[facing=east] run setblock ~ ~ ~ lightning_rod[facing=east,powered=true] replace
execute if block ~ ~ ~ lightning_rod[facing=west] run setblock ~ ~ ~ lightning_rod[facing=west,powered=true] replace

tag @s add MajikSpawnedLightning