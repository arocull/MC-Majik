## Spawning
execute as @e[type=skeleton,scores={age=1}] at @s unless block ~ ~-1 ~ stone unless entity @e[tag=FrostMage,distance=..95] if predicate majik:random_one_third run function majik:enemy/make_frostmage
execute as @e[type=zombie,scores={age=1}] at @s unless block ~ ~-1 ~ stone unless entity @e[tag=ZombieKnight,distance=..95] if predicate majik:random_one_third run function majik:enemy/make_zombie_knight
execute as @e[type=phantom,scores={age=1},tag=!Firetail] at @s if predicate majik:random_one_fifteenth run function majik:enemy/make_firetail
execute in minecraft:the_nether as @e[type=zombified_piglin,scores={age=1},predicate=majik:in_nether] at @s unless entity @e[tag=FireMage,distance=..300] run function majik:enemy/make_firemage
execute at @e[type=squid,scores={age=1}] run function majik:enemy/make_endersquid
execute as @e[type=creeper,scores={age=1}] unless entity @e[tag=Creeeper,distance=..200] if predicate majik:random_one_fifth run function majik:enemy/make_creeeper

## Effects
execute as @e[tag=FrostMage] at @s run particle minecraft:firework ~ ~.05 ~ .3 0 .3 0 1 normal
execute at @e[tag=Firetail] run particle flame ~ ~ ~ 0.5 0.1 0.5 0 3 normal
execute as @e[tag=Creeeper] at @s run particle happy_villager ~ ~ ~ 0.5 0.1 0.5 0.5 1 normal

## Attacks
# Fire Mage, Fire Beam Arrows
execute at @e[tag=FireMage] as @e[type=arrow,sort=nearest,limit=1,nbt=!{Fire:-1s},nbt={ShotFromCrossbow:0b,inGround:0b},tag=!FireMageBolt] run tag @s add FireMageBoltNew
execute at @e[tag=FireMageBoltNew] as @e[tag=FireMage,sort=nearest,limit=1] at @s positioned ~ ~1.25 ~ positioned ^ ^ ^2 run function majik:spells/casting/beam_fire
kill @e[tag=FireMageBoltNew]

# Frost Mage, Frost Beam
execute as @e[tag=FrostMage,scores={age=170..}] at @s if entity @a[gamemode=!creative,gamemode=!spectator,distance=..15] facing entity @a[gamemode=!creative,gamemode=!spectator,distance=..15,sort=nearest,limit=1] feet facing ^ ^.25 ^100 run function majik:enemy/frostmage_frost_beam

# Zombie Night, Lightning Shield
execute as @e[tag=ZombieKnight,scores={age=150..}] at @s if entity @a[gamemode=!creative,gamemode=!spectator,distance=..8] run function majik:enemy/zombie_knight_lightning_shield

# Firetail, Firebomb
execute as @e[tag=Firetail,scores={age=200..}] at @s if entity @a[gamemode=!creative,gamemode=!spectator,distance=..3.5] run function majik:enemy/firetail_firebomb

# Endersquid Teleport
execute as @e[tag=Endersquid,nbt={HurtTime:10s}] at @s run function majik:spells/casting/point_ender
execute as @e[tag=Endersquid,nbt={HurtTime:9s}] at @s run function majik:spells/casting/point_ender


## Bosses
# Tick Sheep Boss
execute as @e[type=sheep,tag=SheepGod] at @s run function majik:enemy/sheep_boss/tick
# Kill mount if no sheep present, but only if it's not fresh
execute as @e[type=phantom,tag=SheepGodMount] at @s unless entity @e[type=sheep,tag=SheepGod,distance=..3] unless score @s age matches ..110 run kill @s