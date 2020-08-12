# Remove all aura tags
tag @s remove MajikAura

tag @s remove spell_aura_fire
tag @s remove spell_aura_frost
tag @s remove spell_aura_lightning
tag @s remove spell_aura_ender
tag @s remove spell_aura_nature
tag @s remove spell_aura_earth
tag @s remove spell_aura_wind

# Make item destructible again
execute if entity @s[type=item] run data modify entity @s Invulnerable set value 0b
execute if entity @s[type=item] run data modify entity @s PickupDelay set value 0

# Play sound to indicate that the aura has ended (only if it timed out)
execute if score @s majik_aura_timer matches ..0 run playsound minecraft:entity.zombie_villager.converted player @s ~ ~ ~ 0.5 2

# Reset aura timer
scoreboard players set @s majik_aura_timer 0