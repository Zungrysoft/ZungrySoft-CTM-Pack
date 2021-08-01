#Fill the crossbow
item modify entity @s hotbar.2 zwp:load_arrow

#Check for multishot
execute if entity @s[nbt={Inventory:[{Slot:2b,tag:{Enchantments:[{id:"minecraft:multishot"}]}}]}] run item modify entity @s hotbar.2 zwp:load_arrow_multishot

#Mark the temp value for the sound effect
scoreboard players set temp value 1
