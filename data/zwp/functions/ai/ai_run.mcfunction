# War Pig
execute if entity @s[type=zombified_piglin,tag=war_pig] run function zwp:ai/war_pig
execute if entity @s[type=minecraft:arrow,tag=war_pig_fireball] run function zwp:ai/war_pig_fireball

# Flesheater
execute if entity @s[type=skeleton,tag=jumping_skeleton] run function zwp:ai/jumping_skeleton

# Dodge Blaze
execute if entity @s[type=blaze,tag=dodge_blaze] run function zwp:ai/dodge_blaze
