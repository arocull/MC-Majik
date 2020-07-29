#execute if block ~ ~ ~ stone run summon item ~ ~ ~ {Tags:["spell_dig"],Item:{id:"minecraft:cobblestone",Count:1b}}
#execute if block ~ ~ ~ cobblestone run summon item ~ ~ ~ {Tags:["spell_dig"],Item:{id:"minecraft:cobblestone",Count:1b}}
#execute if block ~ ~ ~ dirt run summon item ~ ~ ~ {Tags:["spell_dig"],Item:{id:"minecraft:dirt",Count:1b}}
#execute if block ~ ~ ~ sand run summon item ~ ~ ~ {Tags:["spell_dig"],Item:{id:"minecraft:sand",Count:1b}}

#execute if entity @e[type=item,tag=spell_dig] run setblock ~ ~ ~ air destroy

#tag @e[type=item,tag=spell_dig] remove spell_dig

execute unless block ~ ~ ~ water unless block ~ ~ ~ lava run setblock ~ ~ ~ air destroy