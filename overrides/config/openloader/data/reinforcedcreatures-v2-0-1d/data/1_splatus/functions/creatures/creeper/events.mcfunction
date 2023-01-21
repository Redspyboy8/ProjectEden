
execute as @e[type=creeper,tag=creatures_creeper,scores={creatures_time=1..}] at @s run scoreboard players add @s creatures_time 1
execute as @e[type=creeper,tag=creatures_creeper,nbt={HurtTime:9s}] at @s unless score @s creatures_time matches 1.. run scoreboard players add @s creatures_time 1


execute as @e[type=creeper,tag=creatures_creeper] at @s run particle firework ~ ~.75 ~ .3 .3 .3 .1 1 force

execute as @e[type=creeper,tag=creatures_creeper,scores={creatures_time=20..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;1675840,4312372],FadeColors:[I;15790320,15790320]}]}}}}

execute as @e[type=creeper,tag=creatures_creeper,scores={creatures_time=20..}] at @s positioned ~ ~2.5 ~ run function 1_splatus:creatures/other/commands/summon_confetti
execute as @e[type=creeper,tag=creatures_creeper,scores={creatures_time=20..}] at @s positioned ~ ~2.5 ~ run function 1_splatus:creatures/other/commands/summon_confetti
execute as @e[type=creeper,tag=creatures_creeper,scores={creatures_time=20..}] at @s positioned ~ ~2.5 ~ run function 1_splatus:creatures/other/commands/summon_confetti
execute as @e[type=creeper,tag=creatures_creeper,scores={creatures_time=20..}] at @s positioned ~ ~2.5 ~ run function 1_splatus:creatures/other/commands/summon_confetti
execute as @e[type=creeper,tag=creatures_creeper,scores={creatures_time=20..}] at @s positioned ~ ~2.5 ~ run function 1_splatus:creatures/other/commands/summon_confetti
execute as @e[type=creeper,tag=creatures_creeper,scores={creatures_time=20..}] at @s positioned ~ ~2.5 ~ run function 1_splatus:creatures/other/commands/summon_confetti

execute as @e[type=creeper,tag=creatures_creeper,scores={creatures_time=1}] at @s run playsound minecraft:entity.creeper.death ambient @a[distance=..20] ~ ~ ~ 1.5 .5
execute as @e[type=creeper,tag=creatures_creeper,scores={creatures_time=1}] at @s run particle flash ~ ~.75 ~ 0 0 0 .3 1 force
execute as @e[type=creeper,tag=creatures_creeper,scores={creatures_time=1..}] at @s run particle large_smoke ~ ~.75 ~ 0 0 0 .3 5 force
execute as @e[type=creeper,tag=creatures_creeper,scores={creatures_time=20..}] at @s run loot spawn ~ ~ ~ loot 1_splatus:creatures/entity/confetti_creeper
execute as @e[type=creeper,tag=creatures_creeper,scores={creatures_time=20..}] at @s run tp @s ~ -100 ~
execute as @e[type=creeper,tag=creatures_creeper,scores={creatures_time=20..}] at @s run kill @s

