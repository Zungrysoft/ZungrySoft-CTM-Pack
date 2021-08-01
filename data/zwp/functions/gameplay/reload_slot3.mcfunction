#Fill the crossbow
item modify entity @s hotbar.3 zwp:load_arrow

#Check for multishot
execute if entity @s[nbt={Inventory:[{Slot:3b,tag:{Enchantments:[{id:"minecraft:multishot"}]}}]}] run item modify entity @s hotbar.3 zwp:load_arrow_multishot

#Mark the temp value for the sound effect
scoreboard players set temp value 1
