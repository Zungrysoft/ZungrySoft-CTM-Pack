#Pierce
execute if predicate zwp:pierce_badge as @e[type=arrow,nbt={pickup:1b}] run data modify entity @s PierceLevel set value 10
execute if predicate zwp:pierce_badge as @e[type=arrow,nbt={pickup:2b}] run data modify entity @s PierceLevel set value 10
