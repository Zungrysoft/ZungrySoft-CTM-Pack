#Edit the fireball phase and reset charge time
scoreboard players set @s phase 0
scoreboard players set @s ammo 0

#If this is a Gunner War Pig, use a much shorter reset time
execute if entity @s[tag=gunner] run scoreboard players set @s phase 1
execute if entity @s[tag=gunner] run scoreboard players set @s ammo 2

#Sound effect
playsound minecraft:item.firecharge.use hostile @a ~ ~ ~ 0.8 1.2
playsound minecraft:item.crossbow.shoot hostile @a ~ ~ ~ 1.2 0.7

#Store the coords of the target player
#But we have to figure out who the target player is
execute store result score temp value run data get entity @s AngryAt[0]
execute as @a at @s run function zwp:ai/war_pig_target

#Store the coords of the war pig
#They are stored as a factor of 100 since scoreboards can only hold integers
#This allows us to get more decimal places
execute store result score x2 value run data get entity @s Pos[0] 100
execute store result score y2 value run data get entity @s Pos[1] 100
execute store result score z2 value run data get entity @s Pos[2] 100

#Launch the fireball
function zwp:ai/war_pig_shoot_launch

#If this is a Multishot War Pig, fire another shot to the left or right
execute if entity @s[tag=multishot] run function zwp:ai/war_pig_aim
execute if entity @s[tag=multishot] run function zwp:ai/war_pig_shoot_launch
