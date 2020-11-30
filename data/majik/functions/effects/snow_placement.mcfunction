# If the snow block is already filled, go ahead and stack snow ontop of it instead
execute if block ~ ~ ~ powder_snow positioned ~ ~1 ~ run function majik:effects/snow_placement

# If a snow block is filled, convert it to powder snow for a deadly upgrade
execute if block ~ ~ ~ snow[layers=8] run setblock ~ ~ ~ powder_snow

execute if block ~ ~ ~ snow[layers=7] run setblock ~ ~ ~ snow[layers=8]
execute if block ~ ~ ~ snow[layers=6] run setblock ~ ~ ~ snow[layers=7]
execute if block ~ ~ ~ snow[layers=5] run setblock ~ ~ ~ snow[layers=6]
execute if block ~ ~ ~ snow[layers=4] run setblock ~ ~ ~ snow[layers=5]
execute if block ~ ~ ~ snow[layers=3] run setblock ~ ~ ~ snow[layers=4]
execute if block ~ ~ ~ snow[layers=2] run setblock ~ ~ ~ snow[layers=3]
execute if block ~ ~ ~ snow[layers=1] run setblock ~ ~ ~ snow[layers=2]
execute if block ~ ~ ~ air run setblock ~ ~ ~ snow
execute if block ~ ~ ~ grass run setblock ~ ~ ~ snow
execute if block ~ ~ ~ fern run setblock ~ ~ ~ snow
execute if block ~ ~ ~ water run setblock ~ ~ ~ ice