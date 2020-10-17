## Set up key variables
scoreboard objectives add level dummy "Magic Level"
scoreboard objectives add xp dummy "Magic Experience"
scoreboard objectives add xp_max dummy "Required Experience"
scoreboard players set %majik xp_max 50
scoreboard objectives add mana xp "Mana"

## Spell and mechanic helpers
scoreboard objectives add beam_length dummy "Beam Length"
scoreboard objectives add elem_selected dummy "Elements Selected"
scoreboard objectives add age dummy "Age"
scoreboard objectives add flux dummy "Magical Flux"
scoreboard objectives add majik_aura_timer dummy "Aura Timer"
scoreboard objectives add majik_aura_hs dummy "Aura Half Second Timer"

## Used for detecting when a spell is cast from the main hand
scoreboard objectives add clicks minecraft.used:minecraft.carrot_on_a_stick

## Used for vector math
scoreboard objectives add vx1 dummy
scoreboard objectives add vy1 dummy
scoreboard objectives add vz1 dummy
scoreboard objectives add vx2 dummy
scoreboard objectives add vy2 dummy
scoreboard objectives add vz2 dummy

## Used for placement after leaving a portal
scoreboard objectives add skyPortalX dummy
scoreboard objectives add skyPortalY dummy
scoreboard objectives add skyPortalZ dummy

## Used for boss sheep summoning--default to 15 seconds before boss spawns
scoreboard objectives add majik_sgboss_st dummy "Sheep God Spawn Timer"
execute unless score %majik majik_sgboss_st matches -1000..1000000 run scoreboard players set %majik majik_sgboss_st 300

## Cosmetic variables
scoreboard objectives add xp_old dummy
scoreboard objectives add xp_time_shown dummy

## Set up level-up XP bar
bossbar add magic_level "Level"
bossbar set magic_level color yellow
bossbar set magic_level visible false
bossbar set magic_level visible true

bossbar add majik_boss_sheep "Sheep God"
bossbar set majik_boss_sheep color purple
bossbar set majik_boss_sheep visible false

scoreboard players set %majik xp_max 50
scoreboard players set * beam_length 0