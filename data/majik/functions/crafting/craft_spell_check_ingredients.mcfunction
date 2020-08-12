## For reference, XP is requirements met, and XP Max is total requirements

scoreboard players set @s xp_max 0
scoreboard players set @s xp 0


tag @e[type=item,distance=..3,nbt={OnGround:1b}] add SpellIngredientEligible


## Basic stick requirement
scoreboard players add @s xp_max 1
execute as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:stick"}}] at @s run function majik:crafting/confirm_ingredient



## Shapes
execute if entity @s[tag=spell_shape_projectile] run scoreboard players add @s xp_max 2
execute if entity @s[tag=spell_shape_projectile] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:arrow"}}] at @s run function majik:crafting/confirm_ingredient
execute if entity @s[tag=spell_shape_projectile] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:snowball"}}] at @s run function majik:crafting/confirm_ingredient

execute if entity @s[tag=spell_shape_point] run scoreboard players add @s xp_max 2
execute if entity @s[tag=spell_shape_point] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:redstone_torch"}}] at @s run function majik:crafting/confirm_ingredient
execute if entity @s[tag=spell_shape_point] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:tnt"}}] at @s run function majik:crafting/confirm_ingredient

execute if entity @s[tag=spell_shape_beam] run scoreboard players add @s xp_max 2
execute if entity @s[tag=spell_shape_beam] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:iron_sword",tag:{Damage:0}}}] at @s run function majik:crafting/confirm_ingredient
execute if entity @s[tag=spell_shape_beam] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:bow",tag:{Damage:0}}}] at @s run function majik:crafting/confirm_ingredient

execute if entity @s[tag=spell_shape_self] run scoreboard players add @s xp_max 2
execute if entity @s[tag=spell_shape_self] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:clay_ball"}}] at @s run function majik:crafting/confirm_ingredient
execute if entity @s[tag=spell_shape_self] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:cod"}}] at @s run function majik:crafting/confirm_ingredient

execute if entity @s[tag=spell_shape_bound] run scoreboard players add @s xp_max 2
execute if entity @s[tag=spell_shape_bound] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:golden_axe"}}] at @s run function majik:crafting/confirm_ingredient
execute if entity @s[tag=spell_shape_bound] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:slime_ball"}}] at @s run function majik:crafting/confirm_ingredient

execute if entity @s[tag=spell_shape_aura] run scoreboard players add @s xp_max 2
execute if entity @s[tag=spell_shape_aura] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:repeater"}}] at @s run function majik:crafting/confirm_ingredient
execute if entity @s[tag=spell_shape_aura] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:light_weighted_pressure_plate"}}] at @s run function majik:crafting/confirm_ingredient



## Elements
execute if entity @s[tag=spell_fire] run scoreboard players add @s xp_max 2
execute if entity @s[tag=spell_fire,tag=spell_level_two] run scoreboard players add @s xp_max 1
execute if entity @s[tag=spell_fire] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:torch"}}] at @s run function majik:crafting/confirm_ingredient
execute if entity @s[tag=spell_fire] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:dandelion"}}] at @s run function majik:crafting/confirm_ingredient
execute if entity @s[tag=spell_fire,tag=spell_level_two] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:fire_charge"}}] at @s run function majik:crafting/confirm_ingredient

execute if entity @s[tag=spell_lightning] run scoreboard players add @s xp_max 2
execute if entity @s[tag=spell_lightning,tag=spell_level_two] run scoreboard players add @s xp_max 2
execute if entity @s[tag=spell_lightning] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:golden_sword",tag:{Damage:0}}}] at @s run function majik:crafting/confirm_ingredient
execute if entity @s[tag=spell_lightning] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:blue_orchid"}}] at @s run function majik:crafting/confirm_ingredient
execute if entity @s[tag=spell_lightning,tag=spell_level_two] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:quartz"}}] at @s run function majik:crafting/confirm_ingredient
execute if entity @s[tag=spell_lightning,tag=spell_level_two] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:glowstone_dust"}}] at @s run function majik:crafting/confirm_ingredient

execute if entity @s[tag=spell_frost] run scoreboard players add @s xp_max 2
execute if entity @s[tag=spell_frost,tag=spell_level_two] run scoreboard players add @s xp_max 2
execute if entity @s[tag=spell_frost] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:snow_block"}}] at @s run function majik:crafting/confirm_ingredient
execute if entity @s[tag=spell_frost] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:white_tulip"}}] at @s run function majik:crafting/confirm_ingredient
execute if entity @s[tag=spell_frost,tag=spell_level_two] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:packed_ice"}}] at @s run function majik:crafting/confirm_ingredient
execute if entity @s[tag=spell_frost,tag=spell_level_two] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:lily_of_the_valley"}}] at @s run function majik:crafting/confirm_ingredient

execute if entity @s[tag=spell_ender] run scoreboard players add @s xp_max 2
execute if entity @s[tag=spell_ender,tag=spell_level_two] run scoreboard players add @s xp_max 2
execute if entity @s[tag=spell_ender] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:ender_pearl"}}] at @s run function majik:crafting/confirm_ingredient
execute if entity @s[tag=spell_ender] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:red_mushroom"}}] at @s run function majik:crafting/confirm_ingredient
execute if entity @s[tag=spell_ender,tag=spell_level_two] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:ender_eye"}}] at @s run function majik:crafting/confirm_ingredient
execute if entity @s[tag=spell_ender,tag=spell_level_two] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:allium"}}] at @s run function majik:crafting/confirm_ingredient

execute if entity @s[tag=spell_nature] run scoreboard players add @s xp_max 3
execute if entity @s[tag=spell_nature,tag=spell_level_two] run scoreboard players add @s xp_max 2
execute if entity @s[tag=spell_nature] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:glistering_melon_slice"}}] at @s run function majik:crafting/confirm_ingredient
execute if entity @s[tag=spell_nature] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:poppy"}}] at @s run function majik:crafting/confirm_ingredient
execute if entity @s[tag=spell_nature] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:cactus"}}] at @s run function majik:crafting/confirm_ingredient
execute if entity @s[tag=spell_nature,tag=spell_level_two] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:ghast_tear"}}] at @s run function majik:crafting/confirm_ingredient
execute if entity @s[tag=spell_nature,tag=spell_level_two] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:golden_apple"}}] at @s run function majik:crafting/confirm_ingredient

execute if entity @s[tag=spell_earth] run scoreboard players add @s xp_max 3
execute if entity @s[tag=spell_earth,tag=spell_level_two] run scoreboard players add @s xp_max 2
execute if entity @s[tag=spell_earth] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:iron_shovel"}}] at @s run function majik:crafting/confirm_ingredient
execute if entity @s[tag=spell_earth] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:oxeye_daisy"}}] at @s run function majik:crafting/confirm_ingredient
execute if entity @s[tag=spell_earth] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:stone"}}] at @s run function majik:crafting/confirm_ingredient
execute if entity @s[tag=spell_earth,tag=spell_level_two] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:golden_pickaxe"}}] at @s run function majik:crafting/confirm_ingredient
execute if entity @s[tag=spell_earth,tag=spell_level_two] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:gunpowder"}}] at @s run function majik:crafting/confirm_ingredient

execute if entity @s[tag=spell_wind] run scoreboard players add @s xp_max 3
execute if entity @s[tag=spell_wind,tag=spell_level_two] run scoreboard players add @s xp_max 2
execute if entity @s[tag=spell_wind] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:glistering_melon_slice"}}] at @s run function majik:crafting/confirm_ingredient
execute if entity @s[tag=spell_wind] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:poppy"}}] at @s run function majik:crafting/confirm_ingredient
execute if entity @s[tag=spell_wind] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:cactus"}}] at @s run function majik:crafting/confirm_ingredient
execute if entity @s[tag=spell_wind,tag=spell_level_two] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:paper"}}] at @s run function majik:crafting/confirm_ingredient
execute if entity @s[tag=spell_wind,tag=spell_level_two] as @e[sort=nearest,limit=1,tag=SpellIngredientEligible,nbt={Item:{id:"minecraft:gold_ingot"}}] at @s run function majik:crafting/confirm_ingredient



## Add data to this entity for each spell ingredient
execute at @e[type=item,distance=..3,tag=SpellIngredient] run scoreboard players add @s xp 1


## List number of ingredients left
scoreboard players operation @s beam_length = @s xp_max
scoreboard players operation @s beam_length -= @s xp
execute if score @s beam_length matches 1.. positioned ~ ~1 ~ run function majik:crafting/list_ingredients


## If all ingredients exist
execute if score @s xp = @s xp_max as @e[distance=..3,tag=SpellIngredient] run kill @s
execute if score @s xp = @s xp_max run tag @s add SpellCraftCompleted

tag @e[tag=SpellIngredientEligible] remove SpellIngredientEligible