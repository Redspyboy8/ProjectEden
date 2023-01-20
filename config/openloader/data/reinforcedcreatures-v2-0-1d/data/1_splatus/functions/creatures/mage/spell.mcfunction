execute as @s[scores={creatures_time=1}] at @s run playsound block.respawn_anchor.deplete block @a[distance=..30] ~ ~ ~ 1.5
execute as @s[scores={creatures_time=1}] at @s run particle large_smoke ~ ~2.5 ~ .3 5 .3 .05 30 force @a[distance=..48]
execute as @s[type=armor_stand,tag=creatures_mage_fire] at @s run particle flame ~ ~ ~ 0 0 0 .1 5 force @a[distance=..48]
execute as @s[type=armor_stand,tag=creatures_mage_fire] at @s run scoreboard players add @s creatures_time 1


execute as @s[scores={creatures_time=26..}] at @s as @e[distance=..3.5,type=!#1_splatus:creatures/misc] run function 1_splatus:creatures/other/damage/entity_damage3
execute as @s[scores={creatures_time=26..}] at @s run function 1_splatus:creatures/other/commands/fire_1

execute as @s[scores={creatures_time=26..}] at @s run playsound entity.ghast.shoot block @a[distance=..30] ~ ~ ~ 2 1
execute as @s[scores={creatures_time=26..}] at @s run playsound block.fire.extinguish block @a[distance=..30] ~ ~ ~ 2 1.25
execute as @s[scores={creatures_time=26..}] at @s run playsound item.axe.scrape block @a[distance=..30] ~ ~ ~ 2 .5

execute as @s[scores={creatures_time=26..}] at @s run playsound item.axe.scrape block @a[distance=..30] ~ ~ ~ 2 .5


execute as @s[scores={creatures_time=26..}] at @s run particle large_smoke ~ ~2.5 ~ .1 5 .1 .01 50 force @a[distance=..48]
execute as @s[scores={creatures_time=26..}] at @s run particle flame ~ ~2.5 ~ .3 5 .3 .05 50 force @a[distance=..48]
execute as @s[scores={creatures_time=26..}] at @s run particle flame ~ ~.5 ~ .3 .3 .3 .2 50 force @a[distance=..48]


execute as @s[scores={creatures_time=26..}] at @s run kill @s