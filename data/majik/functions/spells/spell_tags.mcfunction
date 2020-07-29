tag @a remove spell_shape_point
tag @a remove spell_shape_projectile
tag @a remove spell_shape_beam
tag @a remove spell_shape_self
tag @a remove spell_shape_bound

tag @a remove spell_fire
tag @a remove spell_frost
tag @a remove spell_lightning
tag @a remove spell_ender
tag @a remove spell_nature
tag @a remove spell_earth
tag @a remove spell_wind

## Remove traces of un-tossed magic snowballs
kill @e[type=item,nbt={Item:{id:"minecraft:snowball",tag:{IsMagical:1b}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:wooden_sword",tag:{IsMagical:1b}}}]
clear @a snowball{IsMagical:1b}
clear @a[nbt=!{SelectedItem:{id:"minecraft:wooden_sword",tag:{IsMagical:1b}}}] wooden_sword{IsMagical:1b}
# clear @a[nbt={Inventory:{id:"minecraft:wooden_sword",Enchantments:[{}]}}] wooden_sword{IsMagical:1b}
tag @a remove hold_projectile
tag @a remove hold_bound_weapon


## Get sepll attributes
tag @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{pages:["point"]}}}] add spell_shape_point
tag @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{pages:["projectile"]}}}] add spell_shape_projectile
tag @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{pages:["beam"]}}}] add spell_shape_beam
tag @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{pages:["self"]}}}] add spell_shape_self

tag @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{pages:["fire"]}}}] add spell_fire
tag @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{pages:["frost"]}}}] add spell_frost
tag @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{pages:["lightning"]}}}] add spell_lightning
tag @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{pages:["ender"]}}}] add spell_ender
tag @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{pages:["nature"]}}}] add spell_nature
tag @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{pages:["earth"]}}}] add spell_earth
tag @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{pages:["wind"]}}}] add spell_wind

## Dualcasting--get NBT data from wand in offhand, still requires a spell to be in the main hand to cast, however
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{pages:["point"]}}]}] add spell_shape_point
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{pages:["projectile"]}}]}] add spell_shape_projectile
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{pages:["beam"]}}]}] add spell_shape_beam
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{pages:["self"]}}]}] add spell_shape_self
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{pages:["bound"]}}]}] add spell_shape_bound

tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{pages:["fire"]}}]}] add spell_fire
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{pages:["frost"]}}]}] add spell_frost
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{pages:["lightning"]}}]}] add spell_lightning
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{pages:["ender"]}}]}] add spell_ender
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{pages:["nature"]}}]}] add spell_nature
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{pages:["earth"]}}]}] add spell_earth
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{pages:["wind"]}}]}] add spell_wind


scoreboard players set @a elem_selected 0
scoreboard players add @a[tag=spell_fire] elem_selected 1
scoreboard players add @a[tag=spell_frost] elem_selected 1
scoreboard players add @a[tag=spell_lightning] elem_selected 1
scoreboard players add @a[tag=spell_ender] elem_selected 1
scoreboard players add @a[tag=spell_nature] elem_selected 1
scoreboard players add @a[tag=spell_earth] elem_selected 1
scoreboard players add @a[tag=spell_wind] elem_selected 1


## Helm of Revealing tagging and night vision
tag @a remove RevealMagic
tag @a[nbt={Inventory:[{id:"minecraft:golden_helmet",Slot:103b,tag:{Revealing:1}}]}] add RevealMagic
effect give @a[tag=RevealMagic] minecraft:night_vision 11 0 true


## Age tagging, age monsters and items
tag @e[type=#majik:track_age] add CanAge

scoreboard players add @e[tag=CanAge] age 1

## Repulsion field cooldowns
scoreboard players remove @e[tag=RepulsionFieldCooldown] xp_old 1
execute as @e[tag=RepulsionFieldCooldown] if score @s xp_old matches ..0 run tag @s remove RepulsionFieldCooldown