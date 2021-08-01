#If the mob has been damaged since the previous frame, reset the fireball time
execute store result score temp value run data get entity @s Health
execute unless score @s prev_health = temp value run scoreboard players set @s ammo 0
execute unless score @s prev_health = temp value run scoreboard players set @s phase 0
execute store result score @s prev_health run data get entity @s Health

#Count up the attack time
scoreboard players add @s ammo 1

#If the attack is ready to shoot, warn the player with particles
execute if score @s ammo matches 40.. unless score @s phase matches 1 run function zwp:ai/jumping_skeleton_charge

#Shoot the fireball if fully charged
execute if score @s ammo matches 10.. if score @s phase matches 1 run function zwp:ai/jumping_skeleton_jump
