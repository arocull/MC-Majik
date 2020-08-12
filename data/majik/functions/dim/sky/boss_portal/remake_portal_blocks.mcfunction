kill @e[type=falling_block,tag=BossPortalBlock,distance=..5]

execute positioned ~-1 ~ ~-1 run function majik:dim/sky/boss_portal/portal_block
execute positioned ~-1 ~ ~ run function majik:dim/sky/boss_portal/portal_block
execute positioned ~-1 ~ ~1 run function majik:dim/sky/boss_portal/portal_block

execute positioned ~ ~ ~-1 run function majik:dim/sky/boss_portal/portal_block
execute positioned ~ ~ ~ run function majik:dim/sky/boss_portal/portal_block
execute positioned ~ ~ ~1 run function majik:dim/sky/boss_portal/portal_block

execute positioned ~1 ~ ~-1 run function majik:dim/sky/boss_portal/portal_block
execute positioned ~1 ~ ~ run function majik:dim/sky/boss_portal/portal_block
execute positioned ~1 ~ ~1 run function majik:dim/sky/boss_portal/portal_block