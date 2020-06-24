## Detonate overcharged conduits
execute at @e[tag=Conduit,scores={flux=7..}] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:2}
kill @e[tag=Conduit,scores={flux=7..}]

## Kill conduits where rod was destroyed
execute as @e[tag=Conduit] at @s unless block ~ ~ ~ end_rod run kill @s


## Then build new conduits
execute as @e[type=item,nbt={Item:{id:"minecraft:redstone_torch",Count:1b}}] at @s align xyz if block ~ ~ ~ end_rod[facing=up] positioned ~.5 ~ ~.5 unless entity @e[tag=Conduit,distance=..0.5] run tag @s add MakeConduit
execute as @e[tag=MakeConduit] at @s align xyz positioned ~.5 ~ ~.5 run function mflux:make_conduit


## Pull mana from player if present
execute as @e[tag=Conduit] at @s if block ~ ~-1 ~ lapis_block if entity @p[gamemode=!spectator,distance=..3] run particle end_rod ~ ~ ~ 0.55 0.05 0.55 0 3 normal
execute as @e[tag=Conduit,scores={age=2}] at @s if block ~ ~-1 ~ lapis_block as @a[scores={mana=1..},distance=..1.1,sort=nearest,limit=1] run function mflux:transduct_mana



## Transfer power
execute as @e[tag=Conduit,scores={flux=1..}] at @s at @e[tag=Conduit,sort=random,distance=1..8,limit=1] if score @s flux > @e[tag=Conduit,sort=nearest,limit=1] flux run function mflux:transfer_flux


## Perform functions
### Furnace
execute as @e[tag=Conduit,scores={flux=1..}] at @s if block ~ ~-1 ~ furnace{Items:[{Slot:0b}],BurnTime:0s} run function mflux:fuel_furnace
### Hopper Funnels
execute as @e[tag=Conduit,scores={flux=1..,age=2}] at @s if block ~ ~-1 ~ hopper if entity @e[type=item,distance=0.4..3,nbt={OnGround:1b}] run function mflux:funnel_items
### Clairvoyance / Seeing Glass
execute as @e[tag=Conduit,scores={flux=1..,age=2}] at @s if block ~ ~-1 ~ glass run function mflux:clairvoyance
### Levitation
execute as @e[tag=Conduit,scores={flux=1..,age=2}] at @s if block ~ ~-1 ~ gold_block positioned ~-0.75 ~ ~-0.75 if entity @a[gamemode=!spectator,dx=0.5,dz=0.5,dy=10] run function mflux:levitate_players
execute as @e[tag=Conduit,scores={flux=1..,age=2}] at @s if block ~ ~-1 ~ gold_block positioned ~-1 ~ ~-1 run effect give @a[gamemode=!spectator,dx=1,dz=1,dy=12] minecraft:slow_falling 2 0 true
### Monster Repulsion Field
execute as @e[tag=Conduit,scores={flux=1..,age=2}] at @s if block ~ ~-1 ~ emerald_block if entity @e[type=#majik:hostile,distance=..20] run function mflux:monster_repulsion
### Projectile Repulsion Field
execute as @e[tag=Conduit,scores={flux=1..,age=2}] at @s if block ~ ~-1 ~ diamond_block if entity @e[type=#majik:projectile,distance=..8,nbt=!{inGround:1b}] run function mflux:projectile_repulsion
### Sun Altar
execute as @e[tag=Conduit,scores={flux=..3,age=2}] at @s positioned ~ ~-1 ~ if block ~-1 ~ ~-1 lapis_block if block ~-1 ~ ~ gold_block if block ~-1 ~ ~1 lapis_block if block ~ ~ ~-1 gold_block if block ~ ~ ~ quartz_block if block ~ ~ ~1 gold_block if block ~1 ~ ~-1 lapis_block if block ~1 ~ ~ gold_block if block ~1 ~ ~1 lapis_block positioned ~ ~1 ~ if block ~-1 ~ ~-1 daylight_detector[inverted=false] if block ~-1 ~ ~1 daylight_detector[inverted=false] if block ~1 ~ ~-1 daylight_detector[inverted=false] if block ~1 ~ ~1 daylight_detector[inverted=false] run function mflux:sun_altar


## Visuals
execute at @e[tag=Conduit,scores={flux=1..,age=2}] run particle flame ~ ~1.25 ~ 0 0 0 0 1 force
execute at @e[tag=Conduit,scores={flux=5..}] run particle smoke ~ ~1.25 ~ 0.05 0.05 0.05 0.05 5 normal
execute at @e[tag=Conduit,scores={flux=..0,age=2}] run particle smoke ~ ~1.25 ~ 0 0 0 0 1 force

execute as @e[tag=Conduit,scores={flux=1..}] at @s if block ~ ~-1 ~ gold_block positioned ~-2.5 ~ ~-2.5 if entity @p[dx=4,dz=4,dy=12] at @s run particle cloud ~ ~.5 ~ 0.1 0.75 0.1 0.01 1 normal


execute if entity @a[tag=RevealMagic] as @e[tag=Conduit] run scoreboard players operation @s beam_length = @s flux
execute if entity @a[tag=RevealMagic] at @a[tag=RevealMagic] as @e[distance=..10,tag=Conduit,scores={flux=1..}] at @s positioned ~ ~1.5 ~ run function mflux:list_flux
execute if entity @a[tag=RevealMagic] at @a[tag=RevealMagic] as @e[distance=..20,tag=Conduit,scores={age=2}] at @s facing entity @e[tag=Conduit,distance=0.5..8] feet run function mflux:show_connection
execute at @a[tag=RevealMagic] as @e[distance=..10,tag=Conduit,scores={flux=1..}] at @s if block ~ ~-1 ~ glass positioned ~ ~1.5 ~ run particle minecraft:instant_effect ~ ~ ~ 3.5 1 3.5 0 3 normal

execute as @e[tag=Conduit,scores={age=2..}] run scoreboard players set @s age 0