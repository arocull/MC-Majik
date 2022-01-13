execute if score @s mana matches 6.. run tag @e[type=item,tag=SpellScroll] add spell_beam_lightning

execute if entity @e[tag=spell_beam_lightning] run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 2

## Make scroll invulnerable so it is not destroyed when placed at end of beam, then cast beam
execute if entity @e[tag=spell_beam_lightning] as @e[tag=spell_beam_lightning] run data modify entity @s Invulnerable set value 1b
execute if entity @e[tag=spell_beam_lightning] positioned ^ ^0.5 ^1 run function majik:spells/casting/beam_lightning

execute if entity @e[tag=spell_beam_lightning] run scoreboard players add @s xp 7
execute if entity @e[tag=spell_beam_lightning] run scoreboard players remove @s mana 6

execute if entity @e[tag=spell_beam_lightning] as @e[tag=spell_beam_lightning] run tag @s remove spell_beam_lightning