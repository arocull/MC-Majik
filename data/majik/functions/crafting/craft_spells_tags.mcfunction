tag @e[tag=CraftingSpell] remove CraftingSpell
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:writable_book"}}] at @s if block ~ ~-1 ~ lapis_block run tag @s add CraftingSpell
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:writable_book"}}] at @s if block ~ ~-1 ~ command_block run tag @s add CraftingSpell
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:writable_book"}}] at @s if block ~ ~-1 ~ command_block run tag @s add SpellCraftCompleted

## Sorts out entities with CraftingSpell tag early on for optimization
execute as @e[type=item_frame,tag=CraftingSpell] run function majik:crafting/craft_spells