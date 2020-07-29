## Transfer power - Filters to area effect clouds for optimization purposes, but could be removed if wanted mobile conduits (i.e. add Conduit tag to creeper)
execute at @e[type=area_effect_cloud,tag=Conduit,sort=random,distance=1..8,limit=1] if score @s flux > @e[type=area_effect_cloud,tag=Conduit,distance=..0.5,limit=1] flux run function majik:flux/transfer_flux

## Dump mana if player is present or if system is overflowing (done after power-transfer to allow dumping of over-charged conduits)
execute if block ~ ~-1 ~ chiseled_polished_blackstone if entity @p[gamemode=!spectator,distance=..3] run particle minecraft:witch ~ ~ ~ 0.55 0.05 0.55 0 3 normal
execute if score @s age matches 2 if block ~ ~-1 ~ chiseled_polished_blackstone if entity @a[distance=..1.1] run function majik:flux/expel_mana
execute if score @s flux matches 6.. at @s if block ~ ~-1 ~ chiseled_polished_blackstone run function majik:flux/expel_mana



# Tick ambient block sounds
scoreboard players add @s xp_old 1

execute if score @s xp_old matches 240.. if block ~ ~-1 ~ emerald_block run playsound minecraft:block.beacon.ambient ambient @a[distance=..30] ~ ~ ~ 1 0.8 0.5
execute if score @s xp_old matches 10 if block ~ ~-1 ~ diamond_block run playsound minecraft:block.beacon.ambient ambient @a[distance=..20] ~ ~ ~ 0.7 1.5 0.1

execute if score @s xp_old matches 240.. run scoreboard players set @s xp_old 0



# Ticks block functions--main selectors are already performed
### Furnace
execute as @e[tag=Conduit,scores={flux=1..}] if block ~ ~-1 ~ furnace{Items:[{Slot:0b}],BurnTime:0s} run function majik:flux/fuel_furnace

### Hopper Funnels
execute if score @s age matches 2 if block ~ ~-1 ~ hopper if entity @e[type=item,distance=0.4..3,nbt={OnGround:1b}] run function majik:flux/funnel_items

### Clairvoyance / Seeing Glass
execute if score @s age matches 2 if block ~ ~-1 ~ glass run function majik:flux/clairvoyance

### Levitation
execute if score @s age matches 2 if block ~ ~-1 ~ gold_block positioned ~-0.75 ~ ~-0.75 if entity @a[gamemode=!spectator,dx=0.5,dz=0.5,dy=10] run function majik:flux/levitate_players
execute if score @s age matches 2 if block ~ ~-1 ~ gold_block positioned ~-1 ~ ~-1 run effect give @a[gamemode=!spectator,dx=1,dz=1,dy=12] minecraft:slow_falling 2 0 true
execute if block ~ ~-1 ~ gold_block positioned ~-2.5 ~ ~-2.5 if entity @p[dx=4,dz=4,dy=12] at @s run particle cloud ~ ~.5 ~ 0.1 0.75 0.1 0.01 1 normal

### Monster Repulsion Field
execute if score @s age matches 2 if block ~ ~-1 ~ emerald_block if entity @e[type=#majik:hostile,distance=..20] run function majik:flux/monster_repulsion

### Projectile Repulsion Field - run every frame for more accurate and rapid reflections
execute if block ~ ~-1 ~ diamond_block if entity @e[type=#majik:projectile,distance=..7,nbt=!{inGround:1b},tag=!RepulsionFieldCooldown] run function majik:flux/projectile_repulsion