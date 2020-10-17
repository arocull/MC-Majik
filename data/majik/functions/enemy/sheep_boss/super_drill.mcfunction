summon item ~ ~ ~ {Tags:["SpellScroll","CanAge","spell_fireball_barrage","spell_freeze_charging","spell_earth_blast_charing"],Age:0s,Item:{id:"minecraft:paper",Count:1b},Motion:[0.0,0.5,0.0]}

scoreboard players set @s beam_length 0
function majik:spells/casting/beam_earth
scoreboard players set @s beam_length 0
function majik:spells/casting/beam_fire
scoreboard players set @s beam_length 0
function majik:spells/casting/beam_frost

tag @e[type=item,tag=SpellScroll] remove SpellScroll

tag @s add CastSpellThisFrame