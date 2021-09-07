# AI for dodging blaze

# Particles
scoreboard players add @s phase 1
execute if score @s phase matches 4.. run function zwp:ai/dodge_blaze_particles
execute if score @s phase matches 4.. run scoreboard players set @s phase 0

# Check for projectiles in directions
scoreboard players set direction value 0
execute if score @s cooldown matches ..0 as @e[type=#zwp:dodge_blaze_dodge,distance=..5,nbt=!{inGround:1b}] run function zwp:ai/dodge_blaze_projectile_check

# Dodge cooldown
scoreboard players remove @s cooldown 1
execute if score direction value matches 1.. run scoreboard players set @s cooldown 20
execute if score direction value matches 1.. run say MISSED ME!

# Dodge
execute if score direction value matches 1 run data modify entity @s Motion set value [1d,0d,0d]
