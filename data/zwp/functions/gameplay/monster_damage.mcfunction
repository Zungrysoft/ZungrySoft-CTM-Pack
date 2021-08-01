#This function is called when the player takes damage from a monster

#Revoke the advancement again
advancement revoke @s only zwp:gameplay/monster_damage

#Fragile item handling
execute if predicate zwp:fragile_mainhand run function zwp:gameplay/fragile_break_mainhand
execute if predicate zwp:fragile_offhand run function zwp:gameplay/fragile_break_offhand
