tag @e[tag=CraftingSpell] remove CraftingSpell
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:writable_book"}}] at @s if block ~ ~-1 ~ lapis_block run tag @s add CraftingSpell
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:writable_book"}}] at @s if block ~ ~-1 ~ command_block run tag @s add CraftingSpell
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:writable_book"}}] at @s if block ~ ~-1 ~ command_block run tag @s add SpellCraftCompleted

tag @e[tag=CraftingSpell] remove spell_shape_projectile
tag @e[tag=CraftingSpell] remove spell_shape_point
tag @e[tag=CraftingSpell] remove spell_shape_beam
tag @e[tag=CraftingSpell] remove spell_shape_self
tag @e[tag=CraftingSpell] remove spell_shape_bound

tag @e[tag=CraftingSpell] remove spell_fire
tag @e[tag=CraftingSpell] remove spell_frost
tag @e[tag=CraftingSpell] remove spell_lightning
tag @e[tag=CraftingSpell] remove spell_ender
tag @e[tag=CraftingSpell] remove spell_nature
tag @e[tag=CraftingSpell] remove spell_earth
tag @e[tag=CraftingSpell] remove spell_wind

tag @e[tag=spell_level_two] remove spell_level_two

tag @e[tag=CraftingSpell,nbt={Item:{id:"minecraft:writable_book",tag:{pages:["projectile"]}}}] add spell_shape_projectile
tag @e[tag=CraftingSpell,nbt={Item:{id:"minecraft:writable_book",tag:{pages:["point"]}}}] add spell_shape_point
tag @e[tag=CraftingSpell,nbt={Item:{id:"minecraft:writable_book",tag:{pages:["beam"]}}}] add spell_shape_beam
tag @e[tag=CraftingSpell,nbt={Item:{id:"minecraft:writable_book",tag:{pages:["self"]}}}] add spell_shape_self
tag @e[tag=CraftingSpell,nbt={Item:{id:"minecraft:writable_book",tag:{pages:["bound"]}}}] add spell_shape_bound

tag @e[tag=CraftingSpell,nbt={Item:{id:"minecraft:writable_book",tag:{pages:["fire"]}}}] add spell_fire
tag @e[tag=CraftingSpell,nbt={Item:{id:"minecraft:writable_book",tag:{pages:["frost"]}}}] add spell_frost
tag @e[tag=CraftingSpell,nbt={Item:{id:"minecraft:writable_book",tag:{pages:["lightning"]}}}] add spell_lightning
tag @e[tag=CraftingSpell,nbt={Item:{id:"minecraft:writable_book",tag:{pages:["ender"]}}}] add spell_ender
tag @e[tag=CraftingSpell,nbt={Item:{id:"minecraft:writable_book",tag:{pages:["nature"]}}}] add spell_nature
tag @e[tag=CraftingSpell,nbt={Item:{id:"minecraft:writable_book",tag:{pages:["earth"]}}}] add spell_earth
tag @e[tag=CraftingSpell,nbt={Item:{id:"minecraft:writable_book",tag:{pages:["wind"]}}}] add spell_wind

tag @e[tag=CraftingSpell,tag=spell_shape_point] add spell_level_two
tag @e[tag=CraftingSpell,tag=spell_shape_beam] add spell_level_two

execute as @e[tag=CraftingSpell] at @s run function majik:check_ingredients
execute as @e[tag=CraftingSpell,tag=SpellCraftCompleted] at @s run function majik:craft_spell_finish