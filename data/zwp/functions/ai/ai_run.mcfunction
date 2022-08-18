# War Pig
execute if entity @s[type=minecraft:zombified_piglin,tag=zwp_war_pig] run function zwp:ai/war_pig
execute if entity @s[type=minecraft:arrow,tag=zwp_war_pig_fireball] run function zwp:ai/war_pig_fireball

# Flesheater
execute if entity @s[tag=zwp_jumping] run function zwp:ai/jumping_skeleton

# Shifting Blaze
execute if entity @s[type=minecraft:blaze,tag=zwp_shifting] run function zwp:ai/shifting_blaze

# Brood Mother
execute if entity @s[tag=zwp_broodmother] run function zwp:ai/broodmother

# Breaker
execute if entity @s[tag=zwp_breaker] run function zwp:ai/breaker
execute if entity @s[type=minecraft:marker,tag=zwp_breaker_projectile] run function zwp:ai/breaker_projectile
execute if entity @s[type=minecraft:marker,tag=zwp_breaker_marker] run function zwp:ai/breaker_marker

# Death Spikes
execute as @e[type=item,nbt={Item:{id:"minecraft:arrow",tag:{zwp_death_spikes:1b}}}] at @s run function zwp:ai/death_spikes
execute as @e[type=area_effect_cloud,tag=zwp_death_spikes_damage] at @s run function zwp:ai/death_spikes_damage
