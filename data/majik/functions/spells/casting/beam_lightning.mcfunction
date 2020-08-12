scoreboard players add @s beam_length 1

particle minecraft:end_rod ~ ~ ~ .1 .1 .1 0 3 normal
playsound minecraft:block.conduit.activate ambient @a ~ ~ ~ .1 2

## If it finds any entities within the given radius, smite them and then end the beam
execute as @s if score @s beam_length matches ..25 at @e[type=!#majik:nonmob,distance=..3,tag=!MajikCasting,tag=!MajikChainLightningHit,sort=nearest,limit=1] run function majik:spells/casting/beam_lightning_bounce

## Don't collide with non-solid blocks (check current block, not future block--we want lightning to strike the block it's looking at, or hit nearest target and bounce first)
execute as @s unless block ~ ~ ~ #majik:nonsolid if score @s beam_length matches ..25 run function majik:spells/casting/beam_lightning_end

execute as @s positioned ^ ^ ^0.5 if score @s beam_length matches ..25 run function majik:spells/casting/beam_lightning
execute as @s if score @s beam_length matches 26 run function majik:spells/casting/beam_lightning_end