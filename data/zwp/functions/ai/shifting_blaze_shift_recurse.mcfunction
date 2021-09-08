# AI for dodging blaze

# Roll direction
scoreboard players set dir value 0
execute if predicate zwp:random_50 run scoreboard players set dir value 1
execute if predicate zwp:random_33 run scoreboard players set dir value 2
execute if predicate zwp:random_25 run scoreboard players set dir value 3
execute if predicate zwp:random_20 run scoreboard players set dir value 4
execute if predicate zwp:random_15 run scoreboard players set dir value 5

# Check blocking
execute if score dir value matches 0 unless block ~1 ~ ~ air run scoreboard players set dir value -1
execute if score dir value matches 1 unless block ~-1 ~ ~ air run scoreboard players set dir value -1
execute if score dir value matches 2 unless block ~ ~ ~1 air run scoreboard players set dir value -1
execute if score dir value matches 3 unless block ~ ~ ~-1 air run scoreboard players set dir value -1
execute if score dir value matches 4 unless block ~ ~1 ~ air run scoreboard players set dir value -1
execute if score dir value matches 5 unless block ~ ~-1 ~ air run scoreboard players set dir value -1

# Move
execute if score dir value matches 0 run data modify entity @s Motion set value [0.8d,0d,0d]
execute if score dir value matches 1 run data modify entity @s Motion set value [-0.8d,0d,0d]
execute if score dir value matches 2 run data modify entity @s Motion set value [0d,0d,0.8d]
execute if score dir value matches 3 run data modify entity @s Motion set value [0d,0d,-0.8d]
execute if score dir value matches 4 run data modify entity @s Motion set value [0d,0.8d,0d]
execute if score dir value matches 5 run data modify entity @s Motion set value [0d,-2.4d,0d]

# Recurse
scoreboard players remove attempts value 1
execute if score dir value matches -1 if score attempts value matches 1.. run function zwp:ai/shifting_blaze_shift_recurse
