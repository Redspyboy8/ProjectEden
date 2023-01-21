
execute as @p[gamemode=!creative,gamemode=!spectator,distance=..2] at @s if entity @s[advancements={1_splatus:creatures/used_shield=false}] at @s run effect give @p[distance=..2,gamemode=!spectator,gamemode=!creative] resistance 1 1 true
playsound entity.stray.death ambient @a[distance=..20] ~ ~ ~ 1.25 1.85
execute as @p[gamemode=!creative,gamemode=!spectator,distance=..2] at @s if entity @s[advancements={1_splatus:creatures/used_shield=false}] at @s run effect give @p[distance=..2,gamemode=!spectator,gamemode=!creative] instant_damage
scoreboard players set @p[distance=..2.5,gamemode=!spectator,gamemode=!creative] creatures_time 1
particle minecraft:poof ~ ~ ~ .3 .3 .3 .075 10 force
kill @s


execute as @p[gamemode=!creative,gamemode=!spectator,distance=..2] at @s if entity @s[advancements={1_splatus:creatures/used_shield=true}] at @s run function 1_splatus:creatures/other/commands/damage_shield