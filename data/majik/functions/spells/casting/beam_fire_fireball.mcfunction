summon minecraft:fireball ~ ~ ~ {ExplosionPower:2,direction:[0.0,0.0,0.0],Tags:["ProjectileSpell","VectorCalculator"]}
playsound entity.blaze.shoot player @a ~ ~ ~ .5 .9 0

execute as @s at @s run function majik:util/vector

execute as @e[tag=ProjectileSpell] store result entity @s Motion[0] double 0.015 run scoreboard players get @s vx1
execute as @e[tag=ProjectileSpell] store result entity @s Motion[1] double 0.015 run scoreboard players get @s vy1
execute as @e[tag=ProjectileSpell] store result entity @s Motion[2] double 0.015 run scoreboard players get @s vz1
execute as @e[tag=ProjectileSpell] store result entity @s direction[0] double 0.015 run scoreboard players get @s vx1
execute as @e[tag=ProjectileSpell] store result entity @s direction[1] double 0.015 run scoreboard players get @s vy1
execute as @e[tag=ProjectileSpell] store result entity @s direction[2] double 0.015 run scoreboard players get @s vz1
execute as @e[tag=ProjectileSpell] store result entity @s power[0] double 0.0001 run scoreboard players get @s vx1
execute as @e[tag=ProjectileSpell] store result entity @s power[1] double 0.0001 run scoreboard players get @s vy1
execute as @e[tag=ProjectileSpell] store result entity @s power[2] double 0.0001 run scoreboard players get @s vz1