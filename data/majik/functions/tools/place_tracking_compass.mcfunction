summon armor_stand ~0.35 ~-0.5 ~-0.35 {NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:7967,Pose:{RightArm:[0.0f,0.0f,0.0f]},HandItems:[{id:"minecraft:compass",Count:1,tag:{LodestoneTracked:0b}},{}],Tags:["MajikMonsterTracker","MajikMonsterTrackerSetup","CanAge"]}

playsound minecraft:block.bell.resonate ambient @a ~ ~ ~ 1 2

## Set dimension according to nearest player (items do not carry dimension info)
data modify entity @e[tag=MajikMonsterTrackerSetup,limit=1] HandItems[0].tag.LodestoneDimension set from entity @p Dimension

scoreboard players set @e[tag=MajikMonsterTrackersetup] age 0

# Remove setup tag
tag @e[tag=MajikMonsterTrackerSetup] remove MajikMonsterTrackerSetup
# Then kill item
kill @s