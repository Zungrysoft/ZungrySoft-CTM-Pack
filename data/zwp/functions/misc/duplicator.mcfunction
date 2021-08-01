#Check to make sure everything is valid
scoreboard players set temp value 0
execute unless data entity @p SelectedItem run scoreboard players set temp value 1
execute if entity @p[nbt={SelectedItem:{id:"minecraft:shulker_box"}}] run scoreboard players set temp value 2

#Error if the player is not holding anything
execute if score temp value matches 1 run tellraw @p "<Duplicator> You are not holding anything!"

#Error if the player tries to duplicate a shulker box
execute if score temp value matches 2 run tellraw @p "<Duplicator> Shulker Boxes cannot be duplicated."

#Duplicate
execute if score temp value matches 0 run function zwp:misc/duplicator_run
