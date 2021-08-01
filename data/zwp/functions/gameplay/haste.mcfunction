#Takes the haste attribute from the player first. The other commands give it back if it should still be active
attribute @s minecraft:generic.attack_speed modifier remove 11183d2f-4e05-4f9a-9e04-8ee579aab87f

#Give the haste attribute if applicable
execute if predicate zwp:haste_1 run attribute @s minecraft:generic.attack_speed modifier add 11183d2f-4e05-4f9a-9e04-8ee579aab87f nodamage 0.3 multiply
execute if predicate zwp:haste_2 run attribute @s minecraft:generic.attack_speed modifier add 11183d2f-4e05-4f9a-9e04-8ee579aab87f nodamage 0.6 multiply
execute if predicate zwp:haste_3 run attribute @s minecraft:generic.attack_speed modifier add 11183d2f-4e05-4f9a-9e04-8ee579aab87f nodamage 0.9 multiply
execute if predicate zwp:haste_4 run attribute @s minecraft:generic.attack_speed modifier add 11183d2f-4e05-4f9a-9e04-8ee579aab87f nodamage 1.2 multiply
execute if predicate zwp:haste_5 run attribute @s minecraft:generic.attack_speed modifier add 11183d2f-4e05-4f9a-9e04-8ee579aab87f nodamage 1.5 multiply
