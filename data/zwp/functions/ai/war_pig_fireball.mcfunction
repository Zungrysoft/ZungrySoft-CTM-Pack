#This function handles the projectile fired by the war pig

#Fizzle the fireball out if it's travelled too long
scoreboard players add @s lifetime 1
execute if score @s lifetime matches 40.. run function zwp:gameplay/fireball_fizzle

#Fizzle the fireball out if it's travelling too slow
execute store result score motion0 value run data get entity @s Motion[0] 10
execute store result score motion1 value run data get entity @s Motion[1] 10
execute store result score motion2 value run data get entity @s Motion[2] 10
execute if score motion0 value matches -1..1 if score motion1 value matches -1..1 if score motion2 value matches -1..1 run function zwp:gameplay/fireball_fizzle

#Fizzle the fireball out if it hits a wall
execute if entity @s[nbt={inGround:1b}] run function tid:gameplay/fireball_fizzle

#Particles
particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0 1
