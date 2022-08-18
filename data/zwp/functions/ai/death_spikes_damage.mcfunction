#Deal the damage
effect give @e[type=#zwp:undead,type=minecraft:player,distance=0..3.5] instant_health 1 1
effect give @e[type=!#zwp:undead,type=!minecraft:player,distance=0..3.5] instant_damage 1 1
effect give @a[distance=0..2.7] instant_damage 1 0

#Kill self
kill @s
