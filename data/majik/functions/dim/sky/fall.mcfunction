# Called when players fall out of the Skylands (Y level of 5 to -55)
execute in minecraft:overworld run tp @s ~ 300 ~
effect give @s slow_falling 30 0 false
playsound minecraft:item.trident.thunder player @s ~ ~ ~ 1 1.1 1