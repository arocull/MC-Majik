execute as @e[type=skeleton,scores={age=1},sort=random,limit=1] at @s unless block ~ ~-1 ~ stone unless entity @e[tag=FrostMage,distance=..100] run function enemy:make_frostmage
execute as @e[type=zombie,scores={age=1},sort=random,limit=1] at @s unless block ~ ~-1 ~ stone unless entity @e[tag=ZombieKnight,distance=..100] run function enemy:make_zombie_knight
execute unless entity @e[tag=Firetail] as @e[type=phantom,scores={age=1},sort=random,limit=1] at @s run function enemy:make_firetail
execute in minecraft:the_nether unless entity @e[tag=FireMage] as @e[type=zombified_piglin,scores={age=1},sort=random,limit=1,nbt={Dimension:-1}] at @s run function enemy:make_firemage

execute as @e[tag=FrostMage] at @s run particle minecraft:firework ~ ~.05 ~ .3 0 .3 0 1 normal
execute at @e[tag=Firetail] run particle flame ~ ~ ~ 0.5 0.1 0.5 0 20 normal


## Fire Mage fire beam arrows
execute at @e[tag=FireMage] as @e[type=arrow,sort=nearest,limit=1,nbt=!{Fire:-1s},nbt={ShotFromCrossbow:0b,inGround:0b},tag=!FireMageBolt] run tag @s add FireMageBoltNew
execute at @e[tag=FireMageBoltNew] as @e[tag=FireMage,sort=nearest,limit=1] at @s positioned ~ ~1.25 ~ positioned ^ ^ ^2 run function spells:beam_fire
kill @e[tag=FireMageBoltNew]





execute as @e[tag=FrostMage,scores={age=170..}] at @s if entity @a[gamemode=!creative,gamemode=!spectator,distance=..15] facing entity @a[gamemode=!creative,gamemode=!spectator,distance=..15,sort=nearest,limit=1] feet facing ^ ^.25 ^100 run function enemy:frostmage_frost_beam
execute as @e[tag=ZombieKnight,scores={age=150..}] at @s if entity @a[gamemode=!creative,gamemode=!spectator,distance=..8] run function enemy:zombie_knight_lightning_shield
execute as @e[tag=Firetail,scores={age=200..}] at @s if entity @a[gamemode=!creative,gamemode=!spectator,distance=..3.5] run function enemy:firetail_firebomb



## Blink + Lightning spell, perhaps stick it to an enderman or shulker?
#tag @e[tag=FireMageBoltNew] add FireMageBolt
#tag @e[tag=FireMageBoltNew] add Projectile
#execute at @e[tag=FireMageBoltNew] run summon armor_stand ~ ~ ~ {Invisible:1,Invulnerable:1,Small:1,Marker:1,NoGravity:1,Tags:["projectile_marker","spell_projectile_ender"],Passengers:[{id:"minecraft:item",Invulnerable:1b,Item:{id:"minecraft:paper",Count:1b},PickupDelay:-1,Tags:["spell_smite_charging"]}]}
#tag @e[tag=FireMageBoltNew] remove FireMageBoltNew