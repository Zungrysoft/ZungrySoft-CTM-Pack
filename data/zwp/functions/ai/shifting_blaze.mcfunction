# AI for dodging blaze

# Track cooldown
execute unless score @s cooldown matches -5.. run scoreboard players set @s cooldown 40
scoreboard players remove @s cooldown 1

# Shift
execute if score @s cooldown matches ..0 run function zwp:ai/shifting_blaze_shift
execute if score @s cooldown matches ..0 run scoreboard players set @s cooldown 40
