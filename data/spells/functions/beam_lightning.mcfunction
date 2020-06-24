scoreboard players add @s beam_length 1

particle minecraft:end_rod ~ ~ ~ .5 .1 .5 0 8 normal
playsound minecraft:block.conduit.activate ambient @a ~ ~ ~ .1 2

## If it finds any entities within the given radius, smite them and then end the beam
execute as @s if score @s beam_length matches 5.. at @e[type=!arrow,type=!snowball,type=!fireball,type=!item,type=!item_frame,type=!firework_rocket,distance=..3.5] run function spells:beam_lightning_end

## Don't collide with non-solid blocks
execute as @s positioned ^ ^ ^1 unless block ~ ~ ~ air unless block ~ ~ ~ torch unless block ~ ~ ~ grass unless block ~ ~ ~ fire run function spells:beam_lightning_end

execute as @s positioned ^ ^ ^1 if score @s beam_length matches ..25 run function spells:beam_lightning
execute as @s if score @s beam_length matches 26 run function spells:beam_lightning_end