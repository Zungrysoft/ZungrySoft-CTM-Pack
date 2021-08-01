#Takes the haste attribute from the player first. The other commands give it back if it should still be active
attribute @s minecraft:generic.movement_speed modifier remove 11583d2f-4e05-4f9a-9e04-8ee579aab87f

#Give the haste attribute if applicable
execute if predicate zwp:curse_slowness run attribute @s minecraft:generic.movement_speed modifier add 11583d2f-4e05-4f9a-9e04-8ee579aab87f nodamage -0.25 multiply
