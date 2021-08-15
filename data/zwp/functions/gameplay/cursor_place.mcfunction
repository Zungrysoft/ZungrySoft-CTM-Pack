#Place cursor
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,CustomName:"\"player_cursor\"",Tags:["new"]}

#Give the cursor its UUID score
execute store result score temp value run data get entity @s UUID[0]
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=new,limit=1] owner = temp value

#Particle effect for debug
#particle flame

#Remove new tag
tag @e[type=minecraft:area_effect_cloud,tag=new,limit=1] remove new
