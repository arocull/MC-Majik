execute as @e[type=!#majik:nonmob,distance=..5,sort=nearest,limit=1,predicate=majik:in_overworld] at @s run function majik:dim/sky/teleport_in
execute as @e[type=!#majik:nonmob,distance=..5,sort=nearest,limit=1,predicate=!majik:in_overworld] at @s run function majik:dim/sky/sky_portal/teleport_overworld

function majik:effects/lightning

scoreboard players remove @s flux 3