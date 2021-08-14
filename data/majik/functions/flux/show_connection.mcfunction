scoreboard players add @s beam_length 1

execute if entity @a[tag=RevealMagic,distance=..10] run particle mycelium ~ ~1.25 ~ 0 0 0 0 1 normal @a[tag=RevealMagic]

execute if score @s beam_length matches 5.. if entity @e[tag=Conduit,distance=..0.75] run scoreboard players set @s beam_length 100

execute if score @s beam_length matches ..40 positioned ^ ^ ^.3 run function majik:flux/show_connection

scoreboard players set @s beam_length 0