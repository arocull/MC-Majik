execute at @e[tag=spell_fireball_summoning,nbt={Item:{id:"minecraft:paper"},Age:15s}] run summon minecraft:fireball ~ ~ ~ {ExplosionPower:2,direction:[0.0,0.080,0.0]}
execute at @e[tag=spell_fireball_summoning,nbt={Item:{id:"minecraft:paper"},Age:15s}] run playsound entity.blaze.shoot player @a ~ ~ ~ 1 .9 0
execute at @e[tag=spell_fireball_summoning,nbt={Item:{id:"minecraft:paper"},Age:15s}] run particle minecraft:squid_ink ~ ~ ~ 1 1 1 .5 100 normal

tag @e[tag=spell_fireball_summoning,nbt={Item:{id:"minecraft:paper"},Age:15s}] remove spell_fireball_summoning