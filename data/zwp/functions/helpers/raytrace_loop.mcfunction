# Test block
execute unless block ~ ~ ~ #zwp:raytrace_ignore run scoreboard players set raytrace_result value 1

# End raytrace early if we hit a block
execute if score raytrace_result value matches 1 run scoreboard players set raytrace_limit value 0

# If we hit a player, end the raytrace with no hit
execute positioned ~ ~-0 ~ if entity @p[distance=0..1] run scoreboard players set raytrace_limit value 0
execute positioned ~ ~-1 ~ if entity @p[distance=0..1] run scoreboard players set raytrace_limit value 0

# Recurse
scoreboard players remove raytrace_limit value 1
execute if score raytrace_limit value matches 1.. positioned ^ ^ ^0.5 run function zwp:helpers/raytrace_loop
