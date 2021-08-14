effect give @s glowing 15 0 false
execute if entity @s[nbt={ActiveEffects:[{Id:24b,ShowParticles:1b}]}] run tag @s add Clairvoyance

execute if entity @s[tag=Clairvoyance] run playsound minecraft:entity.experience_orb.pickup neutral @a ~ ~ ~ 0.05 0.8
execute if entity @s[tag=Clairvoyance] run particle minecraft:instant_effect ~ ~.5 ~ 0.5 0.5 0.5 1 10 normal