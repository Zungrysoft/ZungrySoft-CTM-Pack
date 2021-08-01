#Takes the attribute from the monsters first. The other commands give it back if it should still be active
execute as @e[type=#zwp:monster] run attribute @s minecraft:generic.knockback_resistance modifier remove 11433d2f-4e05-4f9a-9e04-8ee579aab87f

#Give the attribute if applicable
execute if predicate zwp:no_knockback as @e[type=#zwp:monster,distance=0..7] run attribute @s minecraft:generic.knockback_resistance modifier add 11433d2f-4e05-4f9a-9e04-8ee579aab87f no_knockback 100 add
