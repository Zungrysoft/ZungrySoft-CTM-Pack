#Sound effect
playsound minecraft:entity.item.break player @s ~ ~ ~ 2 0.9

#Special Particles for badges
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:yellow_dye"}]}] anchored eyes run particle minecraft:block yellow_wool ^ ^-0.3 ^1 0.1 0.05 0.1 1 3
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:red_dye"}]}] anchored eyes run particle minecraft:block red_wool ^ ^-0.3 ^1 0.1 0.05 0.1 1 3
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:lime_dye"}]}] anchored eyes run particle minecraft:block lime_wool ^ ^-0.3 ^1 0.1 0.05 0.1 1 3
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:cyan_dye"}]}] anchored eyes run particle minecraft:block cyan_wool ^ ^-0.3 ^1 0.1 0.05 0.1 1 3

#Break the item
item replace entity @s weapon.offhand with air
