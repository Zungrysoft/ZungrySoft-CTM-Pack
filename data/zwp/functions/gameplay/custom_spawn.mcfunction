#Handles artificial monster spawners

#Tracks if we're actually going to spawn the monster
scoreboard players set spawning value 1

#Ensure there aren't too many others nearby
execute store result score temp value if entity @e[type=#tid:monster,distance=0..10]
execute if score temp value matches 6.. run scoreboard players set spawning value 0

#Ensure it is dark
execute unless entity @s[tag=ignore_light] unless predicate zwp:dark run scoreboard players set spawning value 0

#If checks passed, spawn the mob
execute if score spawning value matches 1 run function zwp:gameplay/custom_spawn_pick

#Kill self
tp @s ~ -100 ~
kill @s
