## Because we cannot summon a snowball and set its motion without graphic errors, instead we give the player a snowball to throw in their offhand
execute as @a[tag=spell_shape_projectile,tag=!spell_fire] if entity @s[nbt=!{Inventory:[{Slot:-106b}]},nbt={Inventory:[{id:"minecraft:paper"}]},scores={mana=2..}] run tag @s add hold_projectile
item replace entity @a[tag=hold_projectile] weapon.offhand with snowball{IsMagical:1b}

## Make sure players can create a bound weapon
execute as @a[tag=spell_shape_bound,nbt={Inventory:[{Slot:-106b,tag:{IsWand:1b,Enchantments:[{id:"minecraft:channeling"}]}}]},nbt=!{SelectedItem:{}}] run tag @s add hold_bound_weapon

# execute as @a[tag=hold_bound_weapon] if entity @s[nbt={Inventory:[{id:"minecraft:stone_sword"}]},nbt=!{SelectedItem:{id:"minecraft:stone_sword",tag:{IsMagical:1b}}}] run title @s actionbar "You cannot wield a bound weapon while holding a stone sword..."
# execute as @a[tag=hold_bound_weapon] if entity @s[nbt={Inventory:[{id:"minecraft:stone_sword"}]},nbt=!{SelectedItem:{id:"minecraft:stone_sword",tag:{IsMagical:1b}}}] run tag @s remove hold_bound_weapon


## If a player does not have enough mana to cast a wind or earth spell, remove those tags temporarily
execute as @a[tag=hold_bound_weapon] unless score @s mana matches 2.. run tag @s remove spell_wind
execute as @a[tag=hold_bound_weapon] unless score @s mana matches 2.. run tag @s remove spell_earth

item replace entity @a[tag=hold_bound_weapon,tag=!spell_earth,tag=!spell_wind] weapon.mainhand with stone_sword{IsMagical:1b,Damage:137,RepairCost:100000,Enchantments:[{id:"minecraft:vanishing_curse",lvl:1}],display:{Name:'{"text":"Bound_Sword","color":"gray","italic":true,"obfuscated":true}'}}
item replace entity @a[tag=hold_bound_weapon,tag=spell_earth,tag=!spell_wind] weapon.mainhand with stone_sword{IsMagical:1b,Damage:137,RepairCost:100000,Enchantments:[{id:"minecraft:sharpness",lvl:2},{id:"minecraft:vanishing_curse",lvl:1}],display:{Name:'{"text":"Bound_Sword","color":"gray","italic":true,"obfuscated":true}'}}
item replace entity @a[tag=hold_bound_weapon,tag=!spell_earth,tag=spell_wind] weapon.mainhand with stone_sword{IsMagical:1b,Damage:137,RepairCost:100000,Enchantments:[{id:"minecraft:knockback",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}],display:{Name:'{"text":"Bound_Sword","color":"gray","italic":true,"obfuscated":true}'}}
item replace entity @a[tag=hold_bound_weapon,tag=spell_earth,tag=spell_wind] weapon.mainhand with stone_sword{IsMagical:1b,Damage:137,RepairCost:100000,Enchantments:[{id:"minecraft:sharpness",lvl:2},{id:"minecraft:knockback",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}],display:{Name:'{"text":"Bound Sword","color":"gray","italic":true,"obfuscated":true}'}}

## Destroy any experience harvested from bound weapons
execute at @a[tag=spell_shape_bound] as @e[type=experience_orb,distance=..3] at @s if block ~ ~ ~ grindstone run kill @s