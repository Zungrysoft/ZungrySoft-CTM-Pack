#Haste Enchantment
function zwp:gameplay/haste

#Curse of Slowness Enchantment
function zwp:gameplay/curse_slowness

#Pierce Badge
function zwp:gameplay/pierce_badge

#No Knockback
function zwp:gameplay/no_knockback

#On-kill effects
execute if score @s kill_mob matches 1.. run function zwp:gameplay/kill_effects
scoreboard players reset @s kill_mob
