## TODO: Instead of making player fall, teleport them to the last location they entered a sky portal

execute as @e[type=!#majik:nonmob,distance=..5,sort=nearest,limit=1,predicate=majik:in_overworld] at @s run function majik:dim/sky/teleport_in
execute as @e[type=!#majik:nonmob,distance=..5,sort=nearest,limit=1,predicate=!majik:in_overworld] at @s run function majik:dim/sky/sky_portal/teleport_overworld

summon lightning_bolt ~ ~ ~

scoreboard players remove @s flux 3