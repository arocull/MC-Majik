execute if score @s mana matches 6.. run tag @e[type=item,tag=SpellScroll] add spell_beam_lightning

##execute if entity @e[tag=spell_beam_lightning] as @e[tag=spell_beam_lightning] run data modify entity @s Invulnerable set value 1b
execute if entity @e[tag=spell_beam_lightning] at @s positioned ^ ^ ^.1 positioned ~ ~.5 ~ align y as @e[tag=spell_beam_lightning] run tp @s ~ ~ ~

execute if entity @e[tag=spell_beam_lightning] run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 2

## Make scroll invulnerable so it is not destroyed when placed at end of beam, then cast beam
execute if entity @e[tag=spell_beam_lightning] as @e[tag=spell_beam_lightning] run data modify entity @s Invulnerable set value 1b
execute if entity @e[tag=spell_beam_lightning] facing entity @e[tag=spell_beam_lightning] feet positioned ^ ^ ^1 run function spells:beam_lightning

execute if entity @e[tag=spell_beam_lightning] run scoreboard players add @s xp 7
execute if entity @e[tag=spell_beam_lightning] run xp add @s -6 points

execute if entity @e[tag=spell_beam_lightning] as @e[tag=spell_beam_lightning] run tag @s remove spell_beam_lightning