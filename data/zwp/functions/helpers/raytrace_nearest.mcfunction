# Result
scoreboard players set raytrace_result value 0

# Recurse
scoreboard players set raytrace_limit value 50
execute anchored eyes facing entity @p eyes run function zwp:helpers/raytrace_loop
