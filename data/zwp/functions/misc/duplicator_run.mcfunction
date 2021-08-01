#Remove nearby buttons
fill ~-1 ~ ~-1 ~1 ~ ~1 air replace #minecraft:buttons

#Remove self
setblock ~ ~ ~ air

#Place barrel
setblock ~ ~ ~ barrel[facing=up]

#Copy item
item replace block ~ ~ ~ container.13 from entity @p weapon.mainhand

#Sound effect
playsound minecraft:entity.ender_eye.death block @a
playsound minecraft:block.chest.open block @a ~ ~ ~ 1 0.5
