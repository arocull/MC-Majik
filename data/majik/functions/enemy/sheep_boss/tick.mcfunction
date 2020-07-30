tag @e[type=phantom,tag=SheepGodMount,distance=..2,sort=nearest,limit=1] add SelectedSheepGodMount
execute as @e[type=phantom,tag=SelectedSheepGodMount,limit=1] run particle witch ~ ~ ~ 0.65 0 0.65 0.05 3 normal


## Both boss and mount share health--Get health values
execute store result score @s vx1 run data get entity @s Health 3
execute store result score @s vx2 run data get entity @e[type=phantom,tag=SelectedSheepGodMount,limit=1] Health 3

## Figure out which one has lowest health and set other to it
execute if score @s vx1 > @s vx2 run data modify entity @s Health set from entity @e[type=phantom,tag=SelectedSheepGodMount,limit=1] Health
execute if score @s vx1 > @s vx2 run playsound entity.sheep.hurt neutral @a ~ ~ ~ 1 1
execute if score @s vx1 < @s vx2 run data modify entity @e[type=phantom,tag=SelectedSheepGodMount,limit=1] Health set from entity @s Health

scoreboard players add @s xp 1

execute if score @s xp matches 60.. if entity @p[distance=..8,scores={mana=15..}] at @p run function majik:enemy/sheep_boss/mana_siphon
execute if score @s xp matches 120.. unless entity @s[tag=CastSpellThisFrame] if entity @p[distance=7..15] facing entity @p[distance=7..15] feet positioned ^ ^0.5 ^3 run function majik:enemy/sheep_boss/super_drill

execute if entity @s[tag=CastSpellThisFrame] run scoreboard players set @s xp 0

tag @s remove CastSpellThisFrame
tag @e[type=phantom,tag=SelectedSheepGodMount] remove SelectedSheepGodMount