# Result
scoreboard players set raytrace_result value 0

# Recurse
scoreboard players set raytrace_limit value 50

# Find the player we're targeting
execute store result score temp value run data get entity @s AngryAt[0]
execute as @a run function zwp:helpers/raytrace_target_run
