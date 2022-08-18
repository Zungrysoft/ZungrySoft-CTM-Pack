# Edit the phase and reset charge time
scoreboard players set @s phase 0
scoreboard players set @s ammo 0

# Sound effect
playsound minecraft:entity.drowned.hurt hostile @a ~ ~ ~ 0.8 1.2
playsound minecraft:item.crossbow.shoot hostile @a ~ ~ ~ 1.2 0.7
playsound minecraft:block.vine.step hostile @a ~ ~ ~ 0.4 0.7

# Summon the child
execute positioned ~ ~0.7 ~ run function zwp:ai/broodmother_summon

# Merge data into the child
execute store result entity @e[tag=zwp_broodchild,tag=new,sort=nearest,limit=1] Motion[0] double 0.01 run scoreboard players get @s dx
execute store result entity @e[tag=zwp_broodchild,tag=new,sort=nearest,limit=1] Motion[2] double 0.01 run scoreboard players get @s dz

# Do the child's y motion
data modify entity @e[tag=zwp_broodchild,tag=new,sort=nearest,limit=1] Motion[1] set value 0.4

# Untag the child
tag @e[tag=zwp_broodchild,tag=new,sort=nearest] remove new
