#Get the coord deltas
scoreboard players operation dx value = x1 value
scoreboard players operation dy value = y1 value
scoreboard players operation dz value = z1 value
scoreboard players operation dx value -= x2 value
scoreboard players operation dy value -= y2 value
scoreboard players operation dz value -= z2 value

#Get the squares of the deltas
scoreboard players operation xs value = dx value
scoreboard players operation ys value = dy value
scoreboard players operation zs value = dz value
scoreboard players operation xs value *= xs value
scoreboard players operation ys value *= ys value
scoreboard players operation zs value *= zs value

#Sum the squares into sqrt
scoreboard players operation sqrt value = xs value
scoreboard players operation sqrt value += ys value
scoreboard players operation sqrt value += zs value

#Take the square root
function zwp:helpers/sqrt

#Scale the vector by 100 so we don't lose precision on the next step
scoreboard players set calc value 100
scoreboard players operation dx value *= calc value
scoreboard players operation dy value *= calc value
scoreboard players operation dz value *= calc value

#Scale the delta vector by its length to turn it into a unit vector (length 100 instead of 1)
scoreboard players operation dx value /= sqrt value
scoreboard players operation dy value /= sqrt value
scoreboard players operation dz value /= sqrt value

#Scale the delta vector by the war pigs' projectile speed
scoreboard players set calc2 value 60
scoreboard players operation dx value *= calc2 value
scoreboard players operation dy value *= calc2 value
scoreboard players operation dz value *= calc2 value
scoreboard players operation dx value /= calc value
scoreboard players operation dy value /= calc value
scoreboard players operation dz value /= calc value

#Set up the data to merge into the fireball
data modify storage temp fireball.Owner set from entity @s UUID
data modify storage temp fireball.Motion set value [0.,0.,0.]
execute store result storage temp fireball.Motion[0] double .01 run scoreboard players get dx value
execute store result storage temp fireball.Motion[1] double .01 run scoreboard players get dy value
execute store result storage temp fireball.Motion[2] double .01 run scoreboard players get dz value

#Summon the fireball and merge the data into it
summon arrow ~ ~1.4 ~ {Motion:[0d,0d,0d],NoGravity:1,LeftOwner:0b,PierceLevel:50,Tags:["war_pig_fireball","new"]}
data modify entity @e[type=arrow,limit=1,tag=new] {} merge from storage temp fireball

#Set the fireball's damage
execute if entity @s[tag=power_low] run data modify entity @e[type=arrow,limit=1,tag=new] damage set value 9
execute if entity @s[tag=power_medium] run data modify entity @e[type=arrow,limit=1,tag=new] damage set value 14
execute if entity @s[tag=power_high] run data modify entity @e[type=arrow,limit=1,tag=new] damage set value 22
execute if entity @s[tag=power_super] run data modify entity @e[type=arrow,limit=1,tag=new] damage set value 34
execute if entity @s[tag=power_super,predicate=tid:in_layer_finale] run data modify entity @e[type=arrow,limit=1,tag=new] damage set value 42

#Cleanup
data remove storage temp fireball
tag @e[type=arrow,limit=1,tag=new] remove new

#Can I please go back to a programming language where this kind of thing can be done in like six lines of code?
