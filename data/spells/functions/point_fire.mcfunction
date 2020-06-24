execute as @e[tag=spell_fireball_barrage] run data modify entity @s PickupDelay set value -1
execute as @e[tag=spell_fireball_barrage] run data modify entity @s Invulnerable set value 1b
execute at @e[tag=spell_fireball_barrage] run particle minecraft:flame ~ ~ ~ 3 1 3 0 3 normal

execute at @e[tag=spell_fireball_barrage,nbt={Item:{id:"minecraft:paper"},Age:10s}] run summon minecraft:fireball ~-2 ~20 ~2 {ExplosionPower:1,direction:[0.0,-2.5,0.0],power:[0.0,-0.1,0.0]}
execute at @e[tag=spell_fireball_barrage,nbt={Item:{id:"minecraft:paper"},Age:10s}] run playsound entity.blaze.shoot player @a ~ ~ ~ 1 .9 0
execute at @e[tag=spell_fireball_barrage,nbt={Item:{id:"minecraft:paper"},Age:10s}] run particle minecraft:squid_ink ~ ~ ~ 1 1 1 .5 100 normal

execute at @e[tag=spell_fireball_barrage,nbt={Item:{id:"minecraft:paper"},Age:20s}] run summon minecraft:fireball ~2 ~25 ~-2 {ExplosionPower:1,direction:[0.0,-2.5,0.0],power:[0.0,-0.1,0.0]}
execute at @e[tag=spell_fireball_barrage,nbt={Item:{id:"minecraft:paper"},Age:20s}] run playsound entity.blaze.shoot player @a ~ ~ ~ 1 .9 0
execute at @e[tag=spell_fireball_barrage,nbt={Item:{id:"minecraft:paper"},Age:20s}] run particle minecraft:squid_ink ~ ~ ~ 1 1 1 .5 100 normal

execute at @e[tag=spell_fireball_barrage,nbt={Item:{id:"minecraft:paper"},Age:30s}] run summon minecraft:fireball ~ ~30 ~ {ExplosionPower:2,direction:[0.0,-3.0,0.0],power:[0.0,-0.2,0.0]}
execute at @e[tag=spell_fireball_barrage,nbt={Item:{id:"minecraft:paper"},Age:30s}] run playsound entity.blaze.shoot player @a ~ ~ ~ 1 .9 0
execute at @e[tag=spell_fireball_barrage,nbt={Item:{id:"minecraft:paper"},Age:30s}] run particle minecraft:squid_ink ~ ~ ~ 1 1 1 .5 100 normal

execute as @e[tag=spell_fireball_barrage,nbt={Item:{id:"minecraft:paper"},Age:50s}] run data modify entity @s PickupDelay set value 0
execute as @e[tag=spell_fireball_barrage,nbt={Item:{id:"minecraft:paper"},Age:50s}] run data modify entity @s Invulnerable set value 0b
tag @e[tag=spell_fireball_barrage,nbt={Item:{id:"minecraft:paper"},Age:50s}] remove spell_fireball_barrage