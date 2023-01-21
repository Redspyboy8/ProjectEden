

execute as @e[type=area_effect_cloud,nbt={Effects:[{Id:27b,Amplifier:43b}]}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;1675840,4312372],FadeColors:[I;15790320,15790320]}]}}}}

execute as @e[type=area_effect_cloud,nbt={Effects:[{Id:27b,Amplifier:43b}]}] at @s positioned ~ ~2.5 ~ run function 1_splatus:creatures/other/commands/summon_confetti
execute as @e[type=area_effect_cloud,nbt={Effects:[{Id:27b,Amplifier:43b}]}] at @s positioned ~ ~2.5 ~ run function 1_splatus:creatures/other/commands/summon_confetti
execute as @e[type=area_effect_cloud,nbt={Effects:[{Id:27b,Amplifier:43b}]}] at @s positioned ~ ~2.5 ~ run function 1_splatus:creatures/other/commands/summon_confetti
execute as @e[type=area_effect_cloud,nbt={Effects:[{Id:27b,Amplifier:43b}]}] at @s positioned ~ ~2.5 ~ run function 1_splatus:creatures/other/commands/summon_confetti
execute as @e[type=area_effect_cloud,nbt={Effects:[{Id:27b,Amplifier:43b}]}] at @s positioned ~ ~2.5 ~ run function 1_splatus:creatures/other/commands/summon_confetti
execute as @e[type=area_effect_cloud,nbt={Effects:[{Id:27b,Amplifier:43b}]}] at @s positioned ~ ~2.5 ~ run function 1_splatus:creatures/other/commands/summon_confetti
execute as @e[type=area_effect_cloud,nbt={Effects:[{Id:27b,Amplifier:43b}]}] at @s if score gamerule_doMobLoot creatures_data matches 1 run loot spawn ~ ~1 ~ loot 1_splatus:creatures/entity/confetti_creeper
execute as @e[type=area_effect_cloud,nbt={Effects:[{Id:27b,Amplifier:43b}]}] at @s run kill @s