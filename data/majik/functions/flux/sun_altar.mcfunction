execute unless block ~1 ~ ~1 daylight_detector[power=1] unless block ~1 ~ ~1 daylight_detector[power=0] run particle minecraft:dripping_lava ~ ~0.25 ~ 0.5 0.1 0.5 0 1 normal

execute if block ~1 ~ ~1 daylight_detector[power=15] run scoreboard players add @s xp 5
execute if block ~1 ~ ~1 daylight_detector[power=14] run scoreboard players add @s xp 4
execute if block ~1 ~ ~1 daylight_detector[power=13] run scoreboard players add @s xp 4
execute if block ~1 ~ ~1 daylight_detector[power=12] run scoreboard players add @s xp 3
execute if block ~1 ~ ~1 daylight_detector[power=11] run scoreboard players add @s xp 3
execute if block ~1 ~ ~1 daylight_detector[power=10] run scoreboard players add @s xp 3
execute if block ~1 ~ ~1 daylight_detector[power=9] run scoreboard players add @s xp 2
execute if block ~1 ~ ~1 daylight_detector[power=8] run scoreboard players add @s xp 2
execute if block ~1 ~ ~1 daylight_detector[power=7] run scoreboard players add @s xp 2
execute if block ~1 ~ ~1 daylight_detector[power=6] run scoreboard players add @s xp 2
execute if block ~1 ~ ~1 daylight_detector[power=5] run scoreboard players add @s xp 1
execute if block ~1 ~ ~1 daylight_detector[power=4] run scoreboard players add @s xp 1
execute if block ~1 ~ ~1 daylight_detector[power=3] run scoreboard players add @s xp 1
execute if block ~1 ~ ~1 daylight_detector[power=2] run scoreboard players add @s xp 1
#execute if block ~1 ~ ~1 daylight_detector[power=1] run scoreboard players add @s xp 0
#execute if block ~1 ~ ~1 daylight_detector[power=0] run scoreboard players add @s xp 0

execute if score @s xp matches 500.. run scoreboard players add @s flux 1
execute if score @s xp matches 500.. run playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~ 0.08 0.7
execute if score @s xp matches 500.. run scoreboard players set @s xp 0