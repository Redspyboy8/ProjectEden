


execute store result score @s creatures_uuid1 run data get entity @s UUID[0]
execute store result score @s creatures_uuid2 run data get entity @s UUID[1]



execute if entity @s[advancements={1_splatus:creatures/charged_phantom_bow=true}] unless score @s creatures_phantom_bow_cooldown matches 29.. run scoreboard players add @s creatures_phantom_bow_cooldown 1

#ready sound
execute if entity @s if score @s creatures_phantom_bow_cooldown matches 28 run playsound minecraft:entity.ender_eye.death player @a[distance=..20] ~ ~ ~ 1 1
execute if score @s creatures_phantom_bow_cooldown matches ..27 run title @s actionbar [{"translate": "Charging... - "},{"score":{"objective":"creatures_phantom_bow_cooldown","name": "@s"}},{"translate": "/28"}]
execute if score @s creatures_phantom_bow_cooldown matches 28.. run title @s actionbar [{"translate": "Phantom Bow is charged! - 28"},{"translate": "/28"}]
execute if score @s creatures_phantom_bow_cooldown matches 28.. positioned ~ ~1.5 ~ run particle dust_color_transition 0.878 0.298 0.878 .9 0.137 0.278 0.729 ^-.2 ^ ^.6 .1 .1 .1 .075 1 force @a[distance=..64]
execute if score @s creatures_phantom_bow_cooldown matches 28.. positioned ~ ~1.5 ~ if predicate 1_splatus:chance/25_percent run particle soul_fire_flame ^-.2 ^ ^.6 .05 .05 .05 .075 1 force @a[distance=..64]

execute as @e[distance=..6,type=arrow,tag=!creatures_phantom_bow_arrow,nbt=!{inGround:1b}] store result score @s creatures_uuid1 run data get entity @s Owner[0]
execute as @e[distance=..6,type=arrow,tag=!creatures_phantom_bow_arrow,nbt=!{inGround:1b}] store result score @s creatures_uuid2 run data get entity @s Owner[1]

execute as @e[distance=..6,type=spectral_arrow,tag=!creatures_phantom_bow_arrow,nbt=!{inGround:1b}] store result score @s creatures_uuid1 run data get entity @s Owner[0]
execute as @e[distance=..6,type=spectral_arrow,tag=!creatures_phantom_bow_arrow,nbt=!{inGround:1b}] store result score @s creatures_uuid2 run data get entity @s Owner[1]

execute as @e[distance=..6,type=arrow,tag=!creatures_phantom_bow_arrow] at @s if score @s creatures_uuid1 = @p creatures_uuid1 if score @s creatures_uuid2 = @p creatures_uuid2 run function 1_splatus:creatures/storm_rider/arrow_checks
execute as @e[distance=..6,type=spectral_arrow,tag=!creatures_phantom_bow_arrow] at @s if score @s creatures_uuid1 = @p creatures_uuid1 if score @s creatures_uuid2 = @p creatures_uuid2 run function 1_splatus:creatures/storm_rider/arrow_checks



