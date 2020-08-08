scoreboard players remove @s majik_aura_timer 1

execute if entity @s[type=item] run data modify entity @s Invulnerable set value 1b
execute if entity @s[type=item] run data modify entity @s PickupDelay set value -1

# Run auras
execute if entity @s[tag=spell_aura_fire] run function majik:spells/casting/aura_fire
execute if entity @s[tag=spell_aura_frost] run function majik:spells/casting/aura_frost
execute if entity @s[tag=spell_aura_lightning] run function majik:spells/casting/aura_lightning
execute if entity @s[tag=spell_aura_ender] run function majik:spells/casting/aura_ender
execute if entity @s[tag=spell_aura_nature] run function majik:spells/casting/aura_nature
execute if entity @s[tag=spell_aura_earth] run function majik:spells/casting/aura_earth
execute if entity @s[tag=spell_aura_wind] run function majik:spells/casting/aura_wind

execute if score @s majik_aura_timer matches ..0 run function majik:spells/aura_end