execute at @e[tag=spell_freeze_charging] run particle minecraft:firework ~ ~ ~ 4 4 4 0 12 normal

tag @e[tag=spell_freeze_charging,type=item,nbt={Item:{id:"minecraft:paper"},Age:25s}] add spell_freeze_summoning

execute at @e[tag=spell_freeze_summoning] run particle cloud ~ ~ ~ 3 3 3 2 500 normal
execute at @e[tag=spell_freeze_summoning] run playsound minecraft:entity.zombie_villager.cure player @a ~ ~ ~ 1 1
execute at @e[tag=spell_freeze_summoning] run effect give @e[distance=..7] minecraft:slowness 8 2
execute at @e[tag=spell_freeze_summoning] run effect give @e[distance=..7] minecraft:mining_fatigue 8 2
execute at @e[tag=spell_freeze_summoning] run effect give @e[distance=..7] minecraft:weakness 8 1
#execute at @e[tag=spell_freeze_summoning] run effect give @a[distance=..7] minecraft:jump_boost 8 128 true
execute at @e[tag=spell_freeze_summoning] as @e[distance=..7,type=!player] run data modify entity @s Motion set value [0.0,0.0,0.0]
execute as @e[type=item,tag=spell_freeze_summoning] run data modify entity @s PickupDelay set value 0

tag @e[tag=spell_freeze_charging,tag=spell_freeze_summoning] remove spell_freeze_charging
tag @e[tag=spell_freeze_summoning] remove spell_freeze_summoning