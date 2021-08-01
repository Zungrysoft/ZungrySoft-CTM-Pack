#Oxidation Badge
execute if entity @a[predicate=zwp:oxidation_badge] run function zwp:gameplay/oxidation_badge_effect

#Inferno Badge
execute if entity @a[predicate=zwp:inferno_badge] run function zwp:gameplay/inferno_badge_effect

#Lesser Inferno Badge
execute if entity @a[predicate=zwp:lesser_inferno_badge] run function zwp:gameplay/inferno_badge_lesser_effect

#Set tag
tag @s add landed
