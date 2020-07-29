tag @s add FunnelingItems

execute as @e[type=item,distance=..3,nbt={OnGround:1b}] at @s run function majik:flux/attract_item
playsound minecraft:ui.toast.in neutral @a ~ ~ ~ 0.5 2

scoreboard players add @s xp 1
execute if score @s xp matches 12.. run scoreboard players remove @s flux 1
execute if score @s xp matches 12.. run scoreboard players set @s xp 0

tag @s remove FunnelingItems