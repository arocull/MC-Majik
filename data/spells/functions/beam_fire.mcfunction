scoreboard players add @s beam_length 1

## Damage player, place fire
effect give @e[distance=..1] wither 1 100
execute as @e[type=!item,type=!player,distance=..1] run data modify entity @s Fire set value 80

## Place fire, burn grass away
setblock ~ ~ ~ fire keep
setblock ~ ~-1 ~ fire keep
execute if block ~ ~ ~ grass run setblock ~ ~ ~ fire
execute unless block ~ ~-1 ~ snow run setblock ~ ~ ~ air

particle flame ~ ~ ~ .25 .25 .25 .02 10 normal
playsound entity.blaze.shoot player @a ~ ~ ~ .5 2

execute as @s positioned ^ ^ ^1 if block ~ ~ ~ fire if score @s beam_length matches ..25 run function spells:beam_fire
execute as @s positioned ^ ^ ^1 if block ~ ~ ~ air if score @s beam_length matches ..25 run function spells:beam_fire
execute as @s positioned ^ ^ ^1 if block ~ ~ ~ grass if score @s beam_length matches ..25 run function spells:beam_fire
execute as @s positioned ^ ^ ^1 if block ~ ~ ~ torch if score @s beam_length matches ..25 run function spells:beam_fire
execute as @s positioned ^ ^ ^1 if block ~ ~ ~ snow[layers=1] if score @s beam_length matches ..25 run function spells:beam_fire

## Endpoint
execute as @s positioned ^ ^ ^1 unless block ~ ~ ~ air unless block ~ ~ ~ fire unless block ~ ~ ~ grass unless block ~ ~ ~ torch unless block ~ ~ ~ snow[layers=1] run function spells:beam_fire_end
execute as @s positioned ^ ^ ^1 unless block ~ ~ ~ air unless block ~ ~ ~ fire unless block ~ ~ ~ grass unless block ~ ~ ~ torch unless block ~ ~ ~ snow[layers=1] run playsound entity.blaze.hurt player @s ~ ~ ~ 1 1 1
execute as @s if score @s beam_length matches 26 run function spells:beam_fire_end