# Tick inside Moonlit Plains
execute as @a at @s if entity @s[dx=0,dz=0,y=-50,dy=55,predicate=majik:in_moonlit_plains,gamemode=!spectator] run function majik:dim/moonlit_plains/fall

execute in majik:moonlit_plain positioned 0 140 0 if score %majik majik_sgboss_st matches ..0 run function majik:enemy/sheep_boss/spawn

scoreboard players remove %majik majik_sgboss_st 1

## Sheep God must be despawned for 15 minutes before respawning
execute if entity @e[type=sheep,tag=SheepGod] run scoreboard players set %majik majik_sgboss_st 18000