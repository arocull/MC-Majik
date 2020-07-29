tag @e[type=item,distance=..3,nbt={OnGround:1b}] add SpellIngredientEligible

scoreboard players set @s xp_max 0
scoreboard players set @s xp 0

scoreboard players add @s xp_max 3
execute as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:allium"}}] at @s run function majik:crafting/confirm_ingredient
execute as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:blue_orchid"}}] at @s run function majik:crafting/confirm_ingredient
execute as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:note_block"}}] at @s run function majik:crafting/confirm_ingredient

## Add data to this entity for each spell ingredient
execute at @e[distance=..3,tag=SpellIngredient] run scoreboard players add @s xp 1

## List number of ingredients left
scoreboard players operation @s beam_length = @s xp_max
scoreboard players operation @s beam_length -= @s xp
execute if score @s beam_length matches 1.. positioned ~ ~1 ~ run function majik:crafting/list_ingredients

## If all ingredients exist
execute if score @s xp = @s xp_max as @e[distance=..3,tag=SpellIngredient] run kill @s
execute if score @s xp = @s xp_max run tag @s add CompassCraftingFinished

tag @e[tag=SpellIngredientEligible] remove SpellIngredientEligible