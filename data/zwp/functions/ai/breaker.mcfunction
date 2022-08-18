#If the mob has been damaged since the previous frame, reset the attack time
execute store result score temp value run data get entity @s Health
execute unless score @s prev_health = temp value run scoreboard players set @s ammo 0
execute unless score @s prev_health = temp value run scoreboard players set @s phase 0
execute store result score @s prev_health run data get entity @s Health

#Count up the attack time
scoreboard players add @s ammo 1

#Only allow one breaker attack to run at a time
execute if score @s phase matches 0 if entity @e[type=minecraft:marker,tag=zwp_breaker_marker] run scoreboard players set @s ammo 0

#If the attack is ready to shoot, make sure the targeted player is within range
execute if score @s ammo matches 60.. unless entity @p[distance=2..10,gamemode=survival] run scoreboard players set @s ammo 0

#If the attack is ready to shoot, do a raytrace to make sure we can actually see the target
scoreboard players set raytrace_result value 0
execute if score @s ammo matches 60.. run function zwp:helpers/raytrace_nearest
execute if score raytrace_result value matches 1 run scoreboard players set @s ammo 0

#If the attack is ready to shoot, warn the player with particles
execute if score @s ammo matches 60.. unless score @s phase matches 1 run function zwp:ai/breaker_charge

#Launch the child if fully charged
execute if score @s ammo matches 10.. if score @s phase matches 1 run function zwp:ai/breaker_launch_projectile
