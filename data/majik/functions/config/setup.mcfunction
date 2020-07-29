gamerule commandBlockOutput false
# xp add @a -100 levels


## Set up key variables
scoreboard objectives add level dummy "Magic Level"
scoreboard objectives add xp dummy "Magic Experience"
scoreboard objectives add xp_max dummy "Required Experience"
scoreboard objectives add mana xp "Mana"

scoreboard objectives add beam_length dummy "Beam Length"
scoreboard objectives add elem_selected dummy "Elements Selected"
scoreboard objectives add age dummy "Age"
scoreboard objectives add flux dummy "Magical Flux"

scoreboard objectives add clicks minecraft.used:minecraft.carrot_on_a_stick

## Used for vector math
scoreboard objectives add vx1 dummy
scoreboard objectives add vy1 dummy
scoreboard objectives add vz1 dummy
scoreboard objectives add vx2 dummy
scoreboard objectives add vy2 dummy
scoreboard objectives add vz2 dummy
#scoreboard objectives add rot dummy


## Cosmetic variables
scoreboard objectives add xp_old dummy
scoreboard objectives add xp_time_shown dummy

## Reset scores
scoreboard players set * level 1
scoreboard players set * xp 0
scoreboard players set base_values xp_max 50
scoreboard players set * beam_length 0

scoreboard players set * xp_old 0
scoreboard players set * xp_time_shown 0

bossbar add magic_level "Level"
bossbar set magic_level color yellow
bossbar set magic_level visible false
bossbar set magic_level visible true

schedule function majik:tick 1t