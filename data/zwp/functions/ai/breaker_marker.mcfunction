# Kill after certain time
scoreboard players add @s ammo 1
execute if score @s ammo matches 40.. run kill @e[type=minecraft:marker,tag=zwp_breaker_marker]
execute if score @s ammo matches 40.. run kill @s
particle flame