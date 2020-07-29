## Converts the block at the given location to a tile entity with
execute if block ~ ~ ~ grass_block run summon minecraft:falling_block ~ ~ ~ {DropItem:1,HurtEntities:1,BlockState:{Name:"minecraft:grass_block"}}
execute if block ~ ~ ~ dirt run summon minecraft:falling_block ~ ~ ~ {DropItem:1,HurtEntities:1,BlockState:{Name:"minecraft:dirt"}}
execute if block ~ ~ ~ stone run summon minecraft:falling_block ~ ~ ~ {DropItem:1,HurtEntities:1,BlockState:{Name:"minecraft:stone"}}

execute if block ~ ~ ~ coal_ore run summon minecraft:falling_block ~ ~ ~ {DropItem:1,HurtEntities:1,BlockState:{Name:"minecraft:coal_ore"}}
execute if block ~ ~ ~ iron_ore run summon minecraft:falling_block ~ ~ ~ {DropItem:1,HurtEntities:1,BlockState:{Name:"minecraft:iron_ore"}}
execute if block ~ ~ ~ gold_ore run summon minecraft:falling_block ~ ~ ~ {DropItem:1,HurtEntities:1,BlockState:{Name:"minecraft:gold_ore"}}

execute if block ~ ~ ~ cobblestone run summon minecraft:falling_block ~ ~ ~ {DropItem:1,HurtEntities:1,BlockState:{Name:"minecraft:cobblestone"}}
execute if block ~ ~ ~ stone_bricks run summon minecraft:falling_block ~ ~ ~ {DropItem:1,HurtEntities:1,BlockState:{Name:"minecraft:stone_bricks"}}
execute if block ~ ~ ~ mossy_stone_bricks run summon minecraft:falling_block ~ ~ ~ {DropItem:1,HurtEntities:1,BlockState:{Name:"minecraft:mossy_stone_bricks"}}
execute if block ~ ~ ~ cracked_stone_bricks run summon minecraft:falling_block ~ ~ ~ {DropItem:1,HurtEntities:1,BlockState:{Name:"minecraft:cracked_stone_bricks"}}

execute if block ~ ~ ~ gold_block run summon minecraft:falling_block ~ ~ ~ {DropItem:1,HurtEntities:1,BlockState:{Name:"minecraft:gold_block"}}


## Nether
execute if block ~ ~ ~ netherrack run summon minecraft:falling_block ~ ~ ~ {DropItem:1,HurtEntities:1,BlockState:{Name:"minecraft:netherrack"}}
execute if block ~ ~ ~ soul_sand run summon minecraft:falling_block ~ ~ ~ {DropItem:1,HurtEntities:1,BlockState:{Name:"minecraft:soul_sand"}}
execute if block ~ ~ ~ soul_soil run summon minecraft:falling_block ~ ~ ~ {DropItem:1,HurtEntities:1,BlockState:{Name:"minecraft:soul_soil"}}

execute if block ~ ~ ~ nether_bricks run summon minecraft:falling_block ~ ~ ~ {DropItem:1,HurtEntities:1,BlockState:{Name:"minecraft:nether_bricks"}}
execute if block ~ ~ ~ nether_brick_fence run summon minecraft:falling_block ~ ~ ~ {DropItem:1,HurtEntities:1,BlockState:{Name:"minecraft:nether_brick_fence"}}

execute if block ~ ~ ~ quartz_block run summon minecraft:falling_block ~ ~ ~ {DropItem:1,HurtEntities:1,BlockState:{Name:"minecraft:quartz_block"}}
execute if block ~ ~ ~ quartz_bricks run summon minecraft:falling_block ~ ~ ~ {DropItem:1,HurtEntities:1,BlockState:{Name:"minecraft:quartz_bricks"}}
execute if block ~ ~ ~ quartz_pillar run summon minecraft:falling_block ~ ~ ~ {DropItem:1,HurtEntities:1,BlockState:{Name:"minecraft:quartz_pillar"}}

## End
execute if block ~ ~ ~ end_stone run summon minecraft:falling_block ~ ~ ~ {DropItem:1,HurtEntities:1,BlockState:{Name:"minecraft:end_stone"}}
execute if block ~ ~ ~ end_stone_bricks run summon minecraft:falling_block ~ ~ ~ {DropItem:1,HurtEntities:1,BlockState:{Name:"minecraft:end_stone_bricks"}}
execute if block ~ ~ ~ purpur_block run summon minecraft:falling_block ~ ~ ~ {DropItem:1,HurtEntities:1,BlockState:{Name:"minecraft:purpur_block"}}
execute if block ~ ~ ~ purpur_pillar run summon minecraft:falling_block ~ ~ ~ {DropItem:1,HurtEntities:1,BlockState:{Name:"minecraft:purpur_pillar"}}



# execute if block ~ ~ ~ command_block run summon minecraft:falling_block ~ ~ ~ {DropItem:1,HurtEntities:1,BlockState:{Name:"minecraft:command_block"}}

# data modify entity @e[type=falling_block,sort=nearest,limit=1,distance=..0.5] BlockState.Name set from block ~ ~ ~ id
# data modify entity @e[type=falling_block,sort=nearest,limit=1,distance=..0.5] TileEntityData set from block ~ ~ ~