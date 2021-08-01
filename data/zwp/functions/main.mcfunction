#Custom item effects
execute as @a at @s run function zwp:gameplay/item_checks

#Custom Monsters
execute as @e at @s run function zwp:ai/ai_run

#Custom Arrows
execute as @e[type=arrow,predicate=zwp:landed_arrow,tag=!landed] at @s run function zwp:gameplay/arrow_effects

#Custom Spawners
execute as @e[type=armor_stand,tag=spawncloud] at @s run function zwp:gameplay/custom_spawn
