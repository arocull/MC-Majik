execute as @a run scoreboard players operation @s xp_max = @s level
execute as @a run scoreboard players operation @s xp_max *= base_values xp_max

bossbar set magic_level visible false
bossbar set magic_level visible true

execute unless entity @a[tag=ShowMagicExperience] as @r if score @s xp > @s xp_old run tag @s add ShowMagicExperience

bossbar set magic_level players @a[tag=ShowMagicExperience]
execute as @a[tag=ShowMagicExperience] run function majik:config/set_bars_client
tag @a[tag=ShowMagicExperience,scores={xp_time_shown=60..}] remove ShowMagicExperience

scoreboard players set @a[tag=!ShowMagicExperience] xp_time_shown 0

execute as @a if score @s xp > @s xp_max run tag @s add MagicLevelUp
execute as @a[tag=MagicLevelUp] run scoreboard players add @s level 1
execute as @a[tag=MagicLevelUp] run scoreboard players set @s xp 0
execute as @a[tag=MagicLevelUp] run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 .75 1
execute as @a[tag=MagicLevelUp] run tag @s remove MagicLevelUp