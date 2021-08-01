#Find the difference between the war pig and the player
scoreboard players operation xp value = x1 value
scoreboard players operation zp value = z1 value
scoreboard players operation xp value -= x2 value
scoreboard players operation zp value -= z2 value

#Scale this vector down by a factor of 3
scoreboard players set calc value 3
scoreboard players operation xp value /= calc value
scoreboard players operation zp value /= calc value

#Rotate this vector
scoreboard players operation swapper value = xp value
scoreboard players operation xp value = zp value
scoreboard players operation zp value = swapper value
scoreboard players set calc value -1

#Decide whether to rotate it left or right
scoreboard players set aimdir value 0
execute if predicate zwp:random_50 run scoreboard players set aimdir value 1
execute if score aimdir value matches 0 run scoreboard players operation zp value *= calc value
execute if score aimdir value matches 1 run scoreboard players operation xp value *= calc value

#Save this back into the data
scoreboard players operation x1 value += xp value
scoreboard players operation z1 value += zp value
