#Fill the crossbow
item modify entity @s weapon.offhand zwp:load_arrow

#Check for multishot
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"minecraft:multishot"}]}}]}] run item modify entity @s weapon.offhand zwp:load_arrow_multisho

#Mark the temp value for the sound effect
scoreboard players set temp value 1