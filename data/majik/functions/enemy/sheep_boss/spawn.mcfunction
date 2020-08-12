summon phantom ~ ~ ~ {LootTable:"majik:entities/none",Tags:["SheepGodMount","CanAge"],Attributes:[{Name:"generic.follow_range",Base:1000},{Name:"generic.flying_speed",Base:200},{Name:"generic.movement_speed",Base:200},{Name:"generic.attack_damage",Base:2},{Name:"generic.max_health",Base:100},{Name:"generic.armor",Base:3}],Silent:1b,PersistenceRequired:1b,CustomName:'{"text":"Sheep God\'s bite"}',CustomNameVisible:0b,Passengers:[{id:sheep,NoAI:1b,DeathLootTable:"majik:entities/sheep_god",Tags:["SheepGod","MajikSpecialMonster","BlinkImmune"],CustomName:'{"text":"Sheep God"}',Attributes:[{Name:"generic.max_health",Base:100},{Name:"generic.armor",Base:1}],Color:10,PersistenceRequired:1b}]}

# Age phantom so it is not turned into a firetail
scoreboard players set @e[type=phantom,tag=SheepGodMount] age 100
effect give @e[type=phantom,tag=SheepGodMount] invisibility 9000 0 true
effect give @e[type=phantom,tag=SheepGodMount] fire_resistance 9000 100 true
effect give @e[type=phantom,tag=SheepGodMount] instant_damage 3 100 true

scoreboard players set @e[type=sheep,tag=SheepGod] age 100
scoreboard players set @e[type=sheep,tag=SheepGod] xp -5
scoreboard players set @e[type=sheep,tag=SheepGod,sort=nearest,limit=1] flux 0
effect give @e[type=sheep,tag=SheepGod] glowing 9000 0 true
effect give @e[type=sheep,tag=SheepGod] instant_health 3 100 true

playsound minecraft:entity.zombie_villager.converted hostile @a ~ ~ ~ 2 1.5 1
particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force

summon lightning_bolt ~-10 100 ~-4
summon lightning_bolt ~10 100 ~4
summon lightning_bolt ~ 100 ~12