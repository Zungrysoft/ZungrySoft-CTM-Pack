#Sound effect
playsound minecraft:entity.item.break player @s ~ ~ ~ 2 0.8

#Particles
execute anchored eyes run particle minecraft:block oak_log ^ ^-0.3 ^1 0.1 0.05 0.1 1 5

#Special Particles for weapons
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_sword"}}] anchored eyes run particle minecraft:block gold_block ^ ^-0.3 ^1 0.1 0.05 0.1 1 3
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_axe"}}] anchored eyes run particle minecraft:block gold_block ^ ^-0.3 ^1 0.1 0.05 0.1 1 3
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_sword"}}] anchored eyes run particle minecraft:block stone ^ ^-0.3 ^1 0.1 0.05 0.1 1 3
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_axe"}}] anchored eyes run particle minecraft:block stone ^ ^-0.3 ^1 0.1 0.05 0.1 1 3
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword"}}] anchored eyes run particle minecraft:block iron_block ^ ^-0.3 ^1 0.1 0.05 0.1 1 3
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_axe"}}] anchored eyes run particle minecraft:block iron_block ^ ^-0.3 ^1 0.1 0.05 0.1 1 3
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] anchored eyes run particle minecraft:block diamond_block ^ ^-0.3 ^1 0.1 0.05 0.1 1 3
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] anchored eyes run particle minecraft:block diamond_block ^ ^-0.3 ^1 0.1 0.05 0.1 1 3

#Break the item
item replace entity @s weapon.mainhand with air
