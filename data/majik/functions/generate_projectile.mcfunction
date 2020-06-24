#summon minecraft:snowball ~ ~ ~ {NoGravity:1,Motion:[0.0,0.1,0.0],Tags:["ProjectileSpell","VectorCalculator","throw_projectile"],xTile:-1,yTile:-1,zTile:-1}
#playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ .5 1.1

## Because we cannot summon a snowball and set its motion without graphic errors, instead we give the player a snowball to throw in their offhand
## Once they throw this snowball (they will cast a spell at the same time), simply grab the nearest one that is close to the player and use it

execute as @e[type=snowball,sort=nearest,limit=1] run tag @s add Projectile
execute as @e[type=snowball,sort=nearest,limit=1] run tag @s add ProjectileInitial


execute if entity @s[tag=!spell_shape_beam] at @e[tag=Projectile,type=snowball,sort=nearest,limit=1] run summon armor_stand ~ ~ ~ {Invisible:1,Invulnerable:1,Small:1,Marker:1,NoGravity:1,Tags:["ProjectileSpell","projectile_marker"],Passengers:[{id:"minecraft:item",Item:{id:"minecraft:paper",Count:1b},PickupDelay:30,Tags:["SpellScrollPassenger","SpellScroll"]}]}
execute if entity @s[tag=!spell_shape_beam] run kill @e[tag=!SpellScrollPassenger,tag=SpellScroll]

execute if entity @s[tag=spell_shape_beam] at @e[tag=Projectile,type=snowball,sort=nearest,limit=1] run summon armor_stand ~ ~ ~ {Invisible:1,Invulnerable:1,Small:1,Marker:1,NoGravity:1,Tags:["ProjectileSpell","projectile_marker"]}