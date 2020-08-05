setblock ~ ~ ~ minecraft:structure_block{powered:0b,author:"majik",rotation:"NONE",mode:"LOAD",posX:-2,posY:-1,posZ:-2,name:"majik:well_broken"} replace
execute if predicate majik:random_one_fifth run fill ~ ~ ~ ~ ~ ~ minecraft:structure_block{powered:0b,author:"majik",rotation:"NONE",mode:"LOAD",posX:-2,posY:-1,posZ:-2,name:"majik:well"} replace minecraft:structure_block
setblock ~ ~-1 ~ redstone_block replace

kill @e[type=#majik:docile,distance=..1]

function majik:dim/sky/structure_gen/build_structure_base