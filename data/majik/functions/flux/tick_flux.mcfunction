## Detonate overcharged conduits--strong detonation on portals
execute as @e[type=area_effect_cloud,tag=Conduit,scores={flux=7..},tag=BossPortal] at @s run function majik:dim/sky/boss_portal/detonate
execute at @e[tag=Conduit,scores={flux=7..}] run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:2}
kill @e[tag=Conduit,scores={flux=7..}]

## Kill conduits where rod was destroyed--only kill AoC clouds in case of mobile conduits
execute as @e[type=area_effect_cloud,tag=Conduit,tag=BossPortal] at @s unless block ~ ~ ~ end_rod run function majik:dim/sky/boss_portal/detonate
execute as @e[type=area_effect_cloud,tag=Conduit] at @s unless block ~ ~ ~ end_rod run kill @s


## Then build new conduits
execute as @e[type=item,nbt={Item:{id:"minecraft:redstone_torch",Count:1b}}] at @s align xyz if block ~ ~ ~ end_rod[facing=up] positioned ~.5 ~ ~.5 unless entity @e[tag=Conduit,distance=..0.5] run tag @s add MakeConduit
execute as @e[tag=MakeConduit] at @s align xyz positioned ~.5 ~ ~.5 run function majik:flux/make_conduit


## Pull mana from player if present
execute as @e[tag=Conduit] at @s if block ~ ~-1 ~ lapis_block if entity @p[gamemode=!spectator,distance=..3] run particle end_rod ~ ~ ~ 0.55 0.05 0.55 0 3 normal
execute as @e[tag=Conduit,scores={age=2}] at @s if block ~ ~-1 ~ lapis_block as @a[scores={mana=1..},distance=..1.1,sort=nearest,limit=1] run function majik:flux/transduct_mana

## Perform flux transfers, then block-specific functions, visuals, and ambient sounds
### Filters to area effect clouds for optimization purposes, but could be removed if wanted mobile conduits (i.e. add Conduit tag to creeper)
execute as @e[type=area_effect_cloud,tag=Conduit,scores={flux=1..}] at @s run function majik:flux/tick_flux_block_functions

### Sun Altar - Outside of block-specific as it requires flux levels less than 1
execute as @e[type=area_effect_cloud,tag=Conduit,scores={flux=..3,age=2}] at @s positioned ~ ~-1 ~ if block ~-1 ~ ~-1 lapis_block if block ~-1 ~ ~ gold_block if block ~-1 ~ ~1 lapis_block if block ~ ~ ~-1 gold_block if block ~ ~ ~ quartz_block if block ~ ~ ~1 gold_block if block ~1 ~ ~-1 lapis_block if block ~1 ~ ~ gold_block if block ~1 ~ ~1 lapis_block positioned ~ ~1 ~ if block ~-1 ~ ~-1 daylight_detector[inverted=false] if block ~-1 ~ ~1 daylight_detector[inverted=false] if block ~1 ~ ~-1 daylight_detector[inverted=false] if block ~1 ~ ~1 daylight_detector[inverted=false] run function majik:flux/sun_altar


## Visuals
execute at @e[type=area_effect_cloud,tag=Conduit,scores={flux=1..,age=2}] run particle flame ~ ~1.25 ~ 0 0 0 0 1 force
execute at @e[type=area_effect_cloud,tag=Conduit,scores={flux=5..}] run particle smoke ~ ~1.25 ~ 0.05 0.05 0.05 0.05 3 normal
execute at @e[type=area_effect_cloud,tag=Conduit,scores={flux=..0,age=2}] run particle smoke ~ ~1.25 ~ 0 0 0 0 1 force

execute if entity @a[tag=RevealMagic] as @e[tag=Conduit] run scoreboard players operation @s beam_length = @s flux
execute if entity @a[tag=RevealMagic] at @a[tag=RevealMagic] as @e[distance=..10,tag=Conduit,scores={flux=1..}] at @s positioned ~ ~1.5 ~ run function majik:flux/list_flux
### Once again, filters type to Area effect Cloud for potential optimization, but can be removed if wanting mobile conduits
execute if entity @a[tag=RevealMagic] at @a[tag=RevealMagic] as @e[type=area_effect_cloud,distance=..20,tag=Conduit,scores={age=2}] at @s facing entity @e[type=area_effect_cloud,tag=Conduit,distance=0.5..8] feet run function majik:flux/show_connection

## Show clairvoyance fields
execute at @a[tag=RevealMagic] as @e[distance=..20,tag=Conduit,scores={flux=1..}] at @s if block ~ ~-1 ~ glass positioned ~ ~1.5 ~ run particle minecraft:instant_effect ~ ~ ~ 3.5 3.5 3.5 0 5 normal

execute as @e[type=area_effect_cloud,tag=Conduit,scores={age=2..}] run scoreboard players set @s age 0
execute as @e[type=area_effect_cloud,tag=Conduit] run data modify entity @s Age set value 0