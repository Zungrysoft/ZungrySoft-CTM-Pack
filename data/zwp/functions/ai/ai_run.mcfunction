# War Pig
execute if entity @s[type=minecraft:zombified_piglin,tag=zwp_war_pig] run function zwp:ai/war_pig
execute if entity @s[type=minecraft:arrow,tag=zwp_war_pig_fireball] run function zwp:ai/war_pig_fireball

# Flesheater
execute if entity @s[type=minecraft:skeleton,tag=zwp_jumping] run function zwp:ai/jumping_skeleton

# Shifting Blaze
execute if entity @s[type=minecraft:blaze,tag=zwp_shifting] run function zwp:ai/shifting_blaze

# Brood Mother
execute if entity @s[type=minecraft:husk,tag=zwp_broodmother] run function zwp:ai/broodmother
