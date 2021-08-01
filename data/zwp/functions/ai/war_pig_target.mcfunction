#Store this player's UUID and compare it to the war pig's target UUID
#If they match, set the coords
execute store result score temp2 value run data get entity @s UUID[0]
execute if score temp2 value = temp value run function zwp:ai/war_pig_target_run
