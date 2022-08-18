#Edit the ability phase and reset charge time
scoreboard players set @s phase 1
scoreboard players set @s ammo 0

#Play sound effects
playsound minecraft:item.armor.equip_leather hostile @a ~ ~ ~ 1 1.6

#Particles
particle minecraft:flame ~ ~1 ~ 0.4 0.8 0.4 0 12

#Pause before activating the ability
effect give @s minecraft:slowness 1 3 true

#============================
#Precalculate player position
#============================

execute anchored feet facing entity @p feet run summon minecraft:marker ^ ^ ^10 {Tags:["zwp_breaker_marker"]}
