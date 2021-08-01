#This function is called when the player deals damage with an arrow

#Revoke the advancement again
advancement revoke @s only zwp:gameplay/hit_with_arrow

#Autoreload handling
execute if predicate zwp:auto_reload run function zwp:gameplay/auto_reload
