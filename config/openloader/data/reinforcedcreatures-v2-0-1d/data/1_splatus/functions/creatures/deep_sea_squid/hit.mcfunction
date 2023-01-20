execute unless score creatures_deathmessages creatures_count matches 0 run gamerule showDeathMessages false
playsound minecraft:entity.shulker_bullet.hit ambient @a[distance=..30] ~ ~ ~ 1.5 .5
execute as @p[gamemode=!creative,gamemode=!spectator,distance=..1.5] if entity @s[advancements={1_splatus:creatures/used_shield=false}] at @s run effect give @p[distance=..2,gamemode=!creative,gamemode=!spectator] resistance 1 1 true
execute as @p[gamemode=!creative,gamemode=!spectator,distance=..1.5] if entity @s[advancements={1_splatus:creatures/used_shield=false}] at @s run effect give @p[distance=..2,gamemode=!creative,gamemode=!spectator] instant_damage 1 0 true
execute as @p[gamemode=!creative,gamemode=!spectator,distance=..1.5] if entity @s[advancements={1_splatus:creatures/used_shield=false}] at @s run effect give @p[distance=..2,gamemode=!creative,gamemode=!spectator] slowness 2 0 false
execute as @p[gamemode=!creative,gamemode=!spectator,distance=..1.5] if entity @s[advancements={1_splatus:creatures/used_shield=false}] at @s run scoreboard players set @p[distance=..2,gamemode=!creative,gamemode=!spectator] creatures_player_inked 1

execute as @p[gamemode=!creative,gamemode=!spectator,distance=..1.5] if entity @s[advancements={1_splatus:creatures/used_shield=true}] at @s run function 1_splatus:creatures/other/commands/damage_shield

playsound minecraft:entity.shulker_bullet.hit ambient @a[distance=..30] ~ ~ ~ 1.5 .5
particle squid_ink ~ ~ ~ 0 0 0 .3 10 force
execute unless score creatures_deathmessages creatures_count matches 0 run schedule function 1_splatus:creatures/other/deaths_messages/ink 2t
kill @s