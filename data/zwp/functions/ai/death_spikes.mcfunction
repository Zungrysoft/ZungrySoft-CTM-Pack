# Summon the fangs (only for visuals)
summon minecraft:evoker_fangs ~2 ~ ~ {Rotation:[0f,0f]}
summon minecraft:evoker_fangs ~1.4 ~ ~1.4 {Rotation:[45f,0f]}
summon minecraft:evoker_fangs ~ ~ ~2 {Rotation:[90f,0f]}
summon minecraft:evoker_fangs ~-1.4 ~ ~1.4 {Rotation:[135f,0f]}
summon minecraft:evoker_fangs ~-2 ~ ~ {Rotation:[180f,0f]}
summon minecraft:evoker_fangs ~-1.4 ~ ~-1.4 {Rotation:[225f,0f]}
summon minecraft:evoker_fangs ~ ~ ~-2 {Rotation:[270f,0f]}
summon minecraft:evoker_fangs ~1.4 ~ ~-1.4 {Rotation:[315f,0f]}

# Summon the marker entity that will deal the damage
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["zwp_death_spikes_damage"]}

# Kill marker item
kill @s
