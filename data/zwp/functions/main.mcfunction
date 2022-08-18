# Custom Monsters
execute as @e[type=#zwp:monster] at @s rotated as @s run function zwp:ai/ai_run

# Projectiles and markers
execute as @e[type=minecraft:arrow,tag=zwp_war_pig_fireball] at @s rotated as @s run function zwp:ai/war_pig_fireball
execute as @e[type=minecraft:marker,tag=zwp_breaker_projectile] at @s rotated as @s run function zwp:ai/breaker_projectile
execute as @e[type=minecraft:marker,tag=zwp_breaker_marker] at @s rotated as @s run function zwp:ai/breaker_marker
execute as @e[type=area_effect_cloud,tag=zwp_death_spikes_damage] at @s at @s rotated as @s run function zwp:ai/death_spikes_damage

# Other Stuff
# Strength Totem
execute as @e[type=marker,tag=strength_totem] at @s run function zwp:misc/strength_totem_check
execute as @a run function zwp:misc/instant_attack
