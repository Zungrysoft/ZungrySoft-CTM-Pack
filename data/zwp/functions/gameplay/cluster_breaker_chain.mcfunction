#Check for spawner
scoreboard players set has_spawner value 0
execute if block ~ ~ ~ spawner run scoreboard players set has_spawner value 1

#If there is a spawner, break it and chain off
execute if score has_spawner value matches 1 run function zwp:gameplay/cluster_breaker_chain_place
execute if score has_spawner value matches 1 run setblock ~ ~ ~ air destroy

#Kill self
kill @s
