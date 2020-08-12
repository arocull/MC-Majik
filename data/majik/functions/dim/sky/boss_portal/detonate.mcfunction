## Summons creeper with wither, naseua, blindness, hunger, and slowness, that detonates in a large area instantly
## Also destroys the item frame immeadietly
summon creeper ~ ~ ~ {Fuse:0,ActiveEffects:[{Id:20b,Duration:600,Amplifier:10,ShowParticles:true},{Id:9b,Duration:500,Amplifier:0,ShowParticles:true},{Id:15b,Duration:500,Amplifier:0,ShowParticles:true},{Id:17b,Duration:500,Amplifier:3,ShowParticles:true},{Id:2b,Duration:500,Amplifier:4,ShowParticles:true}],ExplosionRadius:3,CustomName:'{"text":"a destroyed portal"}'}
summon lightning_bolt ~ ~ ~
kill @e[type=falling_block,tag=BossPortalBlock,distance=..5]
kill @s