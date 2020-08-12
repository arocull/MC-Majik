summon minecraft:lightning_bolt ~ ~ ~
tp @e[tag=SpellScroll,type=item] ~ ~1 ~
tag @e[type=!#majik:nonmob,distance=..0.1] add MajikChainLightningHit

execute unless entity @e[type=!#majik:nonmob,tag=!MajikChainLightningHit,tag=!MajikCasting,distance=..8] run scoreboard players set @s beam_length 1000

## Extend beam length and shift beam to bounce to nearest mob
scoreboard players remove @s beam_length 16
execute facing entity @e[type=!#majik:nonmob,tag=!MajikChainLightningHit,tag=!MajikCasting,distance=..8,sort=nearest,limit=1] feet positioned ^ ^ ^0.5 run function majik:spells/casting/beam_lightning