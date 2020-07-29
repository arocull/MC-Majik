## Sorts through tags on entity, essentially builds the spell recipe
tag @s remove spell_shape_projectile
tag @s remove spell_shape_point
tag @s remove spell_shape_beam
tag @s remove spell_shape_self
tag @s remove spell_shape_bound

tag @s remove spell_fire
tag @s remove spell_frost
tag @s remove spell_lightning
tag @s remove spell_ender
tag @s remove spell_nature
tag @s remove spell_earth
tag @s remove spell_wind

execute if entity @s[tag=spell_level_two] run tag @s remove spell_level_two
execute if entity @s[nbt={Item:{id:"minecraft:writable_book",tag:{pages:["projectile"]}}}] run tag @s add spell_shape_projectile
execute if entity @s[nbt={Item:{id:"minecraft:writable_book",tag:{pages:["point"]}}}] run tag @s add spell_shape_point
execute if entity @s[nbt={Item:{id:"minecraft:writable_book",tag:{pages:["beam"]}}}] run tag @s add spell_shape_beam
execute if entity @s[nbt={Item:{id:"minecraft:writable_book",tag:{pages:["self"]}}}] run tag @s add spell_shape_self
execute if entity @s[nbt={Item:{id:"minecraft:writable_book",tag:{pages:["bound"]}}}] run tag @s add spell_shape_bound
execute if entity @s[nbt={Item:{id:"minecraft:writable_book",tag:{pages:["fire"]}}}] run tag @s add spell_fire
execute if entity @s[nbt={Item:{id:"minecraft:writable_book",tag:{pages:["frost"]}}}] run tag @s add spell_frost
execute if entity @s[nbt={Item:{id:"minecraft:writable_book",tag:{pages:["lightning"]}}}] run tag @s add spell_lightning
execute if entity @s[nbt={Item:{id:"minecraft:writable_book",tag:{pages:["ender"]}}}] run tag @s add spell_ender
execute if entity @s[nbt={Item:{id:"minecraft:writable_book",tag:{pages:["nature"]}}}] run tag @s add spell_nature
execute if entity @s[nbt={Item:{id:"minecraft:writable_book",tag:{pages:["earth"]}}}] run tag @s add spell_earth
execute if entity @s[nbt={Item:{id:"minecraft:writable_book",tag:{pages:["wind"]}}}] run tag @s add spell_wind
execute if entity @s[tag=spell_shape_point] run tag @s add spell_level_two
execute if entity @s[tag=spell_shape_beam] run tag @s add spell_level_two

execute at @s run function majik:crafting/craft_spell_check_ingredients
execute if entity @s[tag=SpellCraftCompleted] at @s run function majik:crafting/craft_spell_finish