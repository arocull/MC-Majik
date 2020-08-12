## Apply scores if they do not exist on the player currently
execute unless entity @s[scores={level=-100..}] run scoreboard players set @s level 1
execute unless entity @s[scores={xp=-100..}] run scoreboard players set @s xp 0
execute unless entity @s[scores={xp_old=-100..}] run scoreboard players set @s xp_old 0
execute unless entity @s[scores={xp_time_shown=-100..}] run scoreboard players set @s xp_time_shown 0