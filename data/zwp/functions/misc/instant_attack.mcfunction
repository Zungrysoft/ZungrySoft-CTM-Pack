# Take it from player
attribute @s minecraft:generic.attack_speed modifier remove 9a3316c2-0891-4276-a940-bedfabd674c9

# Count down
scoreboard players remove @s instant_attack 1

# Re-give it to the player if they should still have it
execute if score @s instant_attack matches 1.. run attribute @s minecraft:generic.attack_speed modifier add 9a3316c2-0891-4276-a940-bedfabd674c9 instant_attack 1000 add

