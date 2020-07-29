## If this is not a beam spell, make the spell scroll ride the projectile
execute if entity @s[tag=!spell_shape_beam] run summon minecraft:fireball ~ ~ ~ {ExplosionPower:1,direction:[0.0,0.0,0.0],Tags:["Projectile","ProjectileInitial","VectorCalculator"],Passengers:[{id:"minecraft:item",Item:{id:"minecraft:paper",Count:1b},Invulnerable:1b,PickupDelay:30,Tags:["SpellScrollPassenger","SpellScroll"]}]}
execute if entity @s[tag=!spell_shape_beam] run kill @e[tag=!SpellScrollPassenger,tag=SpellScroll]

## Others
execute if entity @s[tag=spell_shape_beam] run summon minecraft:fireball ~ ~ ~ {ExplosionPower:1,direction:[0.0,0.0,0.0],Tags:["Projectile","ProjectileInitial","VectorCalculator"]}

playsound entity.blaze.shoot player @a ~ ~ ~ .25 .9 0

execute as @s at @s run function majik:util/vector

execute as @e[type=fireball,tag=Projectile,limit=1] store result entity @s Motion[0] double 0.015 run scoreboard players get @s vx1
execute as @e[type=fireball,tag=Projectile,limit=1] store result entity @s Motion[1] double 0.015 run scoreboard players get @s vy1
execute as @e[type=fireball,tag=Projectile,limit=1] store result entity @s Motion[2] double 0.015 run scoreboard players get @s vz1
execute as @e[type=fireball,tag=Projectile,limit=1] store result entity @s direction[0] double 0.015 run scoreboard players get @s vx1
execute as @e[type=fireball,tag=Projectile,limit=1] store result entity @s direction[1] double 0.015 run scoreboard players get @s vy1
execute as @e[type=fireball,tag=Projectile,limit=1] store result entity @s direction[2] double 0.015 run scoreboard players get @s vz1
execute as @e[type=fireball,tag=Projectile,limit=1] store result entity @s power[0] double 0.0001 run scoreboard players get @s vx1
execute as @e[type=fireball,tag=Projectile,limit=1] store result entity @s power[1] double 0.0001 run scoreboard players get @s vy1
execute as @e[type=fireball,tag=Projectile,limit=1] store result entity @s power[2] double 0.0001 run scoreboard players get @s vz1


execute at @e[tag=Projectile,type=fireball,sort=nearest,limit=1] run summon armor_stand ~ ~ ~ {Invisible:1,Invulnerable:1,Small:1,Marker:1,Tags:["ProjectileSpell","projectile_marker"]}