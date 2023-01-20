

#fail 
execute unless score @p[predicate=1_splatus:holding/phantom_bow] creatures_phantom_bow_cooldown matches 28.. run particle soul ~ ~ ~ 0 0 0 .05 4 normal
execute unless score @p[predicate=1_splatus:holding/phantom_bow] creatures_phantom_bow_cooldown matches 28.. run kill @s
playsound minecraft:entity.phantom.flap player @a[distance=..20] ~ ~ ~ 1 1.5

execute run scoreboard players set @p[predicate=1_splatus:holding/phantom_bow] creatures_phantom_bow_cooldown 0

execute run advancement revoke @p[predicate=1_splatus:holding/phantom_bow] only 1_splatus:creatures/charged_phantom_bow

tag @s add creatures_phantom_bow_arrow
