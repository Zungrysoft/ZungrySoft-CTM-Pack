#Find the cursor and start the chain reaction
execute store result score temp value run data get entity @s UUID[0]
execute as @e[type=minecraft:area_effect_cloud,name="player_cursor"] if score @s owner = temp value at @s run function zwp:gameplay/cluster_breaker_chain_place
