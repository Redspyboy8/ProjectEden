playsound minecraft:block.respawn_anchor.deplete hostile @a[distance=..32] ~ ~ ~ 2 1.5
playsound minecraft:entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 2 2
playsound minecraft:entity.shulker.open hostile @a[distance=..32] ~ ~ ~ 2 .8

particle explosion ~ ~.75 ~ 1.2 1.2 1.2 .2 7 force @a[distance=..64]
particle flash
particle minecraft:end_rod ~ ~ ~ .3 .3 .3 .3 30 force @a[distance=..64]
execute as @e[distance=..4,type=!#1_splatus:creatures/misc,type=!player] at @s run function 1_splatus:creatures/other/damage/entity_damage3
execute as @p[gamemode=!creative,gamemode=!spectator,distance=..4] if entity @s[advancements={1_splatus:creatures/used_shield=false}] at @s run function 1_splatus:creatures/other/damage/entity_damage3


execute as @p[gamemode=!creative,gamemode=!spectator,distance=..2] at @s if entity @s[advancements={1_splatus:creatures/used_shield=true}] at @s run function 1_splatus:creatures/other/commands/damage_shield_high

#custom death message
schedule function 1_splatus:creatures/other/deaths_messages/storm_rider 2t

kill @s