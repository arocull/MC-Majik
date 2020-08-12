tp @s ~ ~ ~
playsound minecraft:entity.enderman.teleport player @a[distance=..15] ~ ~ ~ .25 1

particle witch ~ ~ ~ .25 .25 .25 .025 25 normal
particle minecraft:smoke ~ ~-1 ~ .25 .1 .25 0 20 normal
execute as @s at @s positioned ~ ~1 ~ run tp @e[tag=spell_beam_ender,type=item,sort=nearest,limit=1] ^ ^ ^1
effect give @s blindness 1 0 true

scoreboard players set @s beam_length 50