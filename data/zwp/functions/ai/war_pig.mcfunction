#If it is not angry at anything, find a player to attack
execute if entity @s[nbt={AngerTime:0}] run function zwp:ai/war_pig_anger

#If it is not angry at anything, reset the fireball time
execute if entity @s[nbt={AngerTime:0}] run scoreboard players set @s ammo 0
execute if entity @s[nbt={AngerTime:0}] run scoreboard players set @s phase 0

#If the mob has been damaged since the previous frame, reset the fireball time
execute store result score temp value run data get entity @s Health
execute unless score @s prev_health = temp value run scoreboard players set @s ammo 0
execute unless score @s prev_health = temp value run scoreboard players set @s phase 0
execute store result score @s prev_health run data get entity @s Health

#Count up the fireball time
scoreboard players add @s ammo 1

#If the attack is ready to shoot, do a raytrace to make sure we can actually see the target
scoreboard players set raytrace_result value 0
execute if score @s ammo matches 40.. run function zwp:helpers/raytrace_target
execute if score raytrace_result value matches 1 run scoreboard players set @s ammo 0

#If the fireball is ready to shoot, warn the player with particles
execute if score @s ammo matches 40.. if score @s phase matches 0 run function zwp:ai/war_pig_charge

#Shoot the fireball if fully charged
execute if score @s ammo matches 10.. if score @s phase matches 1 run function zwp:ai/war_pig_shoot
