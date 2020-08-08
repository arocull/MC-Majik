## Apply healing and cure some ailments, and wither undead--also do not reset regen if possible
effect give @e[type=!#majik:undead,distance=..5,nbt=!{ActiveEffects:[{Id:10b}]}] regeneration 2 2 true
effect give @e[type=#majik:undead,distance=..5] wither 1 1 true
effect clear @e[type=!#majik:undead,distance=..5] hunger
effect clear @e[type=!#majik:undead,distance=..5] poison
effect clear @e[type=!#majik:undead,distance=..5] weakness

particle minecraft:happy_villager ~ ~.05 ~ 1.2 0.1 1.2 0 7 normal