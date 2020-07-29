scoreboard players remove @s beam_length 1
particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force
execute if score @s beam_length matches 1.. positioned ~ ~.5 ~ run function majik:flux/list_flux