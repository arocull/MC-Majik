## Responsible for running dimensional tick functions only if players are present in them
execute if entity @a[predicate=majik:in_skylands] run function majik:dim/sky/tick
execute if entity @a[predicate=majik:in_moonlit_plains] run function majik:dim/moonlit_plains/tick