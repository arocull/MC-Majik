execute positioned ~-1 ~-1 ~-1 run function majik:effects/block_gravity_aligned
execute positioned ~-1 ~-1 ~ run function majik:effects/block_gravity_aligned
execute positioned ~-1 ~-1 ~1 run function majik:effects/block_gravity_aligned

execute positioned ~ ~-1 ~-1 run function majik:effects/block_gravity_aligned
execute positioned ~ ~-1 ~ run function majik:effects/block_gravity_aligned
execute positioned ~ ~-1 ~1 run function majik:effects/block_gravity_aligned

execute positioned ~1 ~-1 ~-1 run function majik:effects/block_gravity_aligned
execute positioned ~1 ~-1 ~ run function majik:effects/block_gravity_aligned
execute positioned ~1 ~-1 ~1 run function majik:effects/block_gravity_aligned

execute positioned ~-1 ~ ~-1 run function majik:effects/block_gravity_aligned
execute positioned ~-1 ~ ~ run function majik:effects/block_gravity_aligned
execute positioned ~-1 ~ ~1 run function majik:effects/block_gravity_aligned

execute positioned ~ ~ ~-1 run function majik:effects/block_gravity_aligned
execute positioned ~ ~ ~ run function majik:effects/block_gravity_aligned
execute positioned ~ ~ ~1 run function majik:effects/block_gravity_aligned

execute positioned ~1 ~ ~-1 run function majik:effects/block_gravity_aligned
execute positioned ~1 ~ ~ run function majik:effects/block_gravity_aligned
execute positioned ~1 ~ ~1 run function majik:effects/block_gravity_aligned

execute positioned ~-1 ~1 ~-1 run function majik:effects/block_gravity_aligned
execute positioned ~-1 ~1 ~ run function majik:effects/block_gravity_aligned
execute positioned ~-1 ~1 ~1 run function majik:effects/block_gravity_aligned

execute positioned ~ ~1 ~-1 run function majik:effects/block_gravity_aligned
execute positioned ~ ~1 ~ run function majik:effects/block_gravity_aligned
execute positioned ~ ~1 ~1 run function majik:effects/block_gravity_aligned

execute positioned ~1 ~1 ~-1 run function majik:effects/block_gravity_aligned
execute positioned ~1 ~1 ~ run function majik:effects/block_gravity_aligned
execute positioned ~1 ~1 ~1 run function majik:effects/block_gravity_aligned

tag @s add VectorCalculator
execute as @e[type=falling_block,distance=..5] run function majik:spells/casting/point_earth_blast_knockback
tag @s remove VectorCalculator

# particle explosion ~ ~ ~ 3 3 3 2 50 normal
summon creeper ~ ~ ~ {Fuse:0,CustomName:'{"text":"Earth Blast"}',ExplosionRadius:3}