#Places the player's aim cursor for aim effects

#Count down distance limiter
scoreboard players remove recurses_left value 1

#Decide whether to recurse
scoreboard players set recurse value 0
execute if block ~ ~ ~ #zwp:raytrace_ignore if score recurses_left value matches 1.. run scoreboard players set recurse value 1

#Recurse
execute if score recurse value matches 1 positioned ^ ^ ^0.05 run function zwp:gameplay/cursor_trace

#Place crosshair
execute if score recurse value matches 0 positioned ^ ^ ^0.05 run function zwp:gameplay/cursor_place

#Tail-end protection
scoreboard players set recurse value 2
