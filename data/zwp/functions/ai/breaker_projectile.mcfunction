# Travel Forward
execute if entity @s[tag=zwp_m1] anchored feet facing entity @e[type=minecraft:marker,tag=zwp_breaker_marker] feet rotated ~-30 ~ run tp @s ^ ^ ^1
execute if entity @s[tag=zwp_m2] anchored feet facing entity @e[type=minecraft:marker,tag=zwp_breaker_marker] feet rotated ~-20 ~ run tp @s ^ ^ ^1
execute if entity @s[tag=zwp_m3] anchored feet facing entity @e[type=minecraft:marker,tag=zwp_breaker_marker] feet rotated ~-10 ~ run tp @s ^ ^ ^1
execute if entity @s[tag=zwp_m4] anchored feet facing entity @e[type=minecraft:marker,tag=zwp_breaker_marker] feet rotated ~0 ~ run tp @s ^ ^ ^1
execute if entity @s[tag=zwp_m5] anchored feet facing entity @e[type=minecraft:marker,tag=zwp_breaker_marker] feet rotated ~10 ~ run tp @s ^ ^ ^1
execute if entity @s[tag=zwp_m6] anchored feet facing entity @e[type=minecraft:marker,tag=zwp_breaker_marker] feet rotated ~20 ~ run tp @s ^ ^ ^1
execute if entity @s[tag=zwp_m7] anchored feet facing entity @e[type=minecraft:marker,tag=zwp_breaker_marker] feet rotated ~30 ~ run tp @s ^ ^ ^1

# Break Blocks
execute if predicate zwp:random_20 positioned ~ ~0.2 ~ run function zwp:ai/breaker_break
execute if predicate zwp:random_20 positioned ~ ~-0.8 ~ run function zwp:ai/breaker_break
execute if predicate zwp:random_20 positioned ~ ~-1.8 ~ run function zwp:ai/breaker_break
execute if predicate zwp:random_05 positioned ~ ~-2.8 ~ run function zwp:ai/breaker_break
execute if predicate zwp:random_01 positioned ~ ~-3.8 ~ run function zwp:ai/breaker_break

# Particle
execute if predicate zwp:random_50 run particle minecraft:dust 0.5 0.4 0.4 2 ~ ~ ~ 0.1 0.1 0.1 0 1
execute if score @s ammo matches 5 if entity @s[tag=zwp_m4] run playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 1 0.8

# Kill after certain distance
scoreboard players add @s ammo 1
execute if score @s ammo matches 7.. run kill @e[type=minecraft:marker,tag=zwp_breaker_marker]
execute if score @s ammo matches 7.. run kill @s
