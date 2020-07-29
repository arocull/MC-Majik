playsound minecraft:entity.zombie_villager.converted neutral @a ~ ~ ~ 1 1.5
particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force

## Merge NBT data--keeps book pages, but makes item a stick with proper data
data merge entity @s {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{IsWand:1b,RepairCost:0,display:{Name:'{"text":"Wand","italic":"false"}',Lore:["\"Right click while holding to cast spell.\""]},Enchantments:[{lvl:1,id:"minecraft:channeling"}]}}}

## String is not formatted properly, oops
#data modify entity @s Item.tag.display.Lore set from entity @s Item.tag.pages

data modify entity @s Item.tag.display.Lore append value "\" \""

execute if entity @s[tag=spell_shape_self] run data modify entity @s Item.tag.display.Lore append value "\"Self\""
execute if entity @s[tag=spell_shape_bound] run data modify entity @s Item.tag.display.Lore append value "\"Bound\""
execute if entity @s[tag=spell_shape_projectile] run data modify entity @s Item.tag.display.Lore append value "\"Projectile\""
execute if entity @s[tag=spell_shape_beam] run data modify entity @s Item.tag.display.Lore append value "\"Beam\""
execute if entity @s[tag=spell_shape_point] run data modify entity @s Item.tag.display.Lore append value "\"Point\""

data modify entity @s Item.tag.display.Lore append value "\" \""

execute if entity @s[tag=spell_fire] run data modify entity @s Item.tag.display.Lore append value "\"Fire\""
execute if entity @s[tag=spell_frost] run data modify entity @s Item.tag.display.Lore append value "\"Frost\""
execute if entity @s[tag=spell_lightning] run data modify entity @s Item.tag.display.Lore append value "\"Lightning\""
execute if entity @s[tag=spell_ender] run data modify entity @s Item.tag.display.Lore append value "\"Ender\""
execute if entity @s[tag=spell_nature] run data modify entity @s Item.tag.display.Lore append value "\"Nature\""
execute if entity @s[tag=spell_earth] run data modify entity @s Item.tag.display.Lore append value "\"Earth\""
execute if entity @s[tag=spell_wind] run data modify entity @s Item.tag.display.Lore append value "\"Wind\""


## Make sure the spell had some components on it--otherwise, explode violently at this poor research or potential cash grab
execute if entity @s[tag=!spell_shape_self,tag=!spell_shape_bound,tag=!spell_shape_projectile,tag=!spell_shape_beam,tag=!spell_shape_point] run tag @s add FailedSpellCraft
execute if entity @s[tag=!spell_fire,tag=!spell_frost,tag=!spell_lightning,tag=!spell_ender,tag=!spell_nature,tag=!spell_earth,tag=!spell_wind] run tag @s add FailedSpellCraft

execute if entity @s[tag=FailedSpellCraft] run function majik:crafting/craft_spell_failed

tag @s remove FailedSpellCraft
tag @s remove SpellCraftCompleted