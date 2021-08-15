#Place one marker entity in each direction.
#These markers will chain off in all directions spawning more markers
summon minecraft:area_effect_cloud ~1 ~ ~ {Duration:5,CustomName:"\"cluster_breaker_chain\""}
summon minecraft:area_effect_cloud ~-1 ~ ~ {Duration:5,CustomName:"\"cluster_breaker_chain\""}
summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:5,CustomName:"\"cluster_breaker_chain\""}
summon minecraft:area_effect_cloud ~ ~-1 ~ {Duration:5,CustomName:"\"cluster_breaker_chain\""}
summon minecraft:area_effect_cloud ~ ~ ~1 {Duration:5,CustomName:"\"cluster_breaker_chain\""}
summon minecraft:area_effect_cloud ~ ~ ~-1 {Duration:5,CustomName:"\"cluster_breaker_chain\""}
