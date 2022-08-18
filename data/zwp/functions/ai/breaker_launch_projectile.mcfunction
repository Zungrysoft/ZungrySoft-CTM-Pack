# Edit the phase and reset charge time
scoreboard players set @s phase 0
scoreboard players set @s ammo 0

# Summon projectile
execute positioned ^ ^ ^1.5 run summon minecraft:marker ~ ~1 ~ {Tags:["zwp_breaker_projectile","zwp_m1"]}
execute positioned ^ ^ ^1.5 run summon minecraft:marker ~ ~1 ~ {Tags:["zwp_breaker_projectile","zwp_m2"]}
execute positioned ^ ^ ^1.5 run summon minecraft:marker ~ ~1 ~ {Tags:["zwp_breaker_projectile","zwp_m3"]}
execute positioned ^ ^ ^1.5 run summon minecraft:marker ~ ~1 ~ {Tags:["zwp_breaker_projectile","zwp_m4"]}
execute positioned ^ ^ ^1.5 run summon minecraft:marker ~ ~1 ~ {Tags:["zwp_breaker_projectile","zwp_m5"]}
execute positioned ^ ^ ^1.5 run summon minecraft:marker ~ ~1 ~ {Tags:["zwp_breaker_projectile","zwp_m6"]}
execute positioned ^ ^ ^1.5 run summon minecraft:marker ~ ~1 ~ {Tags:["zwp_breaker_projectile","zwp_m7"]}
