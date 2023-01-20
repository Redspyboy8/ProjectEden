scoreboard players add @s creatures_time 1
execute if score @s creatures_time matches 100..103 run scoreboard players set @s creatures_time 41

tp @e[type=zombie,sort=nearest,limit=1,tag=creatures_armorstand_hitbox] @s

#hit!
execute if entity @p[distance=..1.5,gamemode=!creative,gamemode=!spectator] if score @s creatures_time matches 40.. run data merge entity @s {ShowArms:1b,Pose:{LeftArm:[283f,0f,0f],RightArm:[285f,0f,0f]}}
execute if entity @p[distance=..1.5,gamemode=!creative,gamemode=!spectator] if score @s creatures_time matches 40.. run execute as @p[distance=..1.5] run function 1_splatus:creatures/other/damage/entity_damage1



#summon hitbox
execute if score @s creatures_time matches 1 run summon zombie ~ ~ ~ {Attributes:[{Name:"minecraft:generic.max_health",Base:30.0d}],Health:30f,Tags:["creatures_armorstand_hitbox"],ActiveEffects:[{Id:14b,Duration:100000000,ShowParticles:1b}],Silent:1b,NoAI:1b,NoGravity:1b,CustomName:'{"translate":"Armor Stand"}'}
execute if score @s creatures_time matches 1 run function 1_splatus:creatures/other/commands/randomize_armor

#damage
execute as @e[distance=..1,type=zombie,tag=creatures_armorstand_hitbox,sort=nearest,limit=1] if entity @s[nbt={HurtTime:10s}] run function 1_splatus:creatures/armor_stand/hurt


#if no one is nearby it'll go passive
execute unless score @s creatures_time matches 1000.. unless entity @p[distance=..12,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s creatures_time 2

#i face u with magic
execute if score @s creatures_time matches 40..100 run tp @s ~ ~ ~ facing entity @p[gamemode=!creative,gamemode=!spectator] eyes
execute if score @s creatures_time matches 40..100 at @s unless entity @p[distance=..1.5,gamemode=!creative,gamemode=!spectator] positioned ~ ~1.75 ~ run particle minecraft:effect ^.8 ^ ^ 0 0 0 .2 1 normal
execute if score @s creatures_time matches 40..100 at @s unless entity @p[distance=..1.5,gamemode=!creative,gamemode=!spectator] positioned ~ ~1.75 ~ run particle minecraft:effect ^-.8 ^ ^ 0 0 0 .2 1 normal

execute if score @s creatures_time matches 40 run playsound minecraft:entity.illusioner.prepare_mirror hostile @a[distance=..20] ~ ~ ~ 1.25 1.25
execute unless entity @p[distance=..1.5,gamemode=!creative,gamemode=!spectator] if score @s creatures_time matches 40..100 run data merge entity @s {ShowArms:1b,Pose:{LeftArm:[0f,0f,235f],RightArm:[0f,0f,127f]}}
execute if score @s creatures_time matches ..39 run data merge entity @s {ShowArms:1b,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}


#fangs
execute if score @s creatures_time matches 60 run function 1_splatus:creatures/other/commands/summon_evoker_fangs









#death
execute unless entity @e[distance=..1,tag=creatures_armorstand_hitbox] if score @s creatures_time matches ..999 run scoreboard players set @s creatures_time 1000


### death anim
execute if score @s creatures_time matches 1000.. run function 1_splatus:creatures/armor_stand/death_animation
