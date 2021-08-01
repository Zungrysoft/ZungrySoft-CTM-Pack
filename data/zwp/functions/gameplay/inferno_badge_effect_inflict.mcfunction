#Set fire
execute if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:fire
data modify entity @s Fire set value 120
#effect give @s minecraft:instant_damage 1 0

#Particles
particle minecraft:flame ~ ~1 ~ 0.5 1 0.5 0 15
