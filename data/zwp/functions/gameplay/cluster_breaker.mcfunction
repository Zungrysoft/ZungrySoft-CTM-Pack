#Check for item
execute if predicate zwp:cluster_breaker run function zwp:gameplay/cluster_breaker_effect

#Reset score
scoreboard players reset @s break_spawner
