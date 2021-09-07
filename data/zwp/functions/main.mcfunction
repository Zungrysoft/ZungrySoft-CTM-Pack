# Custom Monsters
execute as @e at @s rotated as @s run function zwp:ai/ai_run

# Custom Spawners
execute as @e[type=endermite,tag=spawncloud] at @s run function zwp:gameplay/custom_spawn

# Other Stuff
# Strength Totem
execute as @e[type=marker,tag=strength_totem] at @s run function zwp:misc/strength_totem_check
execute as @a run function zwp:misc/instant_attack
