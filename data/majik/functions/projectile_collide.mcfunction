kill @e[tag=Projectile,sort=nearest,distance=..3,limit=1]

execute if entity @s[tag=spell_projectile_frost] positioned ~ ~-1 ~ as @e[distance=..2,type=!#majik:nonmob] at @s run function majik:freeze

execute if entity @s[tag=spell_projectile_lightning] run summon lightning_bolt ~ ~ ~

execute if entity @s[tag=spell_projectile_earth] run setblock ~ ~ ~ cobblestone keep
execute if entity @s[tag=spell_projectile_earth] run playsound block.stone.place player @a ~ ~ ~ 1 1

## Do ender last as it involves a teleport
execute if entity @s[tag=spell_projectile_ender] as @e[distance=..3,type=!#majik:nonmob,sort=nearest,limit=1] at @s run function spells:projectile_ender_collide

kill @s