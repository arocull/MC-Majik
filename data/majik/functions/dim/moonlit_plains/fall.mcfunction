# Called when players fall out of the Moonlit Plains (Y level of 5 to -55) -- However, it does perform some punishment as well
summon lightning_bolt ~ ~ ~

execute in majik:skylands run tp @s ~ 300 ~
effect give @s slow_falling 35 0 false
effect give @s poison 25 0 true
effect give @s weakness 25 0 true
effect give @s slowness 25 0 true
effect give @s blindness 30 0 true
playsound minecraft:item.trident.thunder player @s ~ ~ ~ 1 1.1 1

## Summon a lightning bolt both in the Moonlit Plains as well as the Skylands (teleport out + teleport in)
execute in majik:skylands run summon lightning_bolt ~ ~ ~

# Note: If player does not hit any terrain on way through skylands, they will end up in the overworld anyways, which is fine!