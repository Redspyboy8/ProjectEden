### death anim
execute if score @s creatures_time matches 1000 run data merge entity @s {ShowArms:1b,Rotation:[201f],Pose:{Body:[209f,301f,74f],Head:[0f,58f,119f],LeftLeg:[58f,70f,261f],RightLeg:[197f,167f,123f],LeftArm:[241f,263f,294f],RightArm:[201f,124f,0f]}}
execute if score @s creatures_time matches 1002 run data merge entity @s {ShowArms:1b,Rotation:[201f],Pose:{Body:[235f,310f,94f],Head:[0f,76f,141f],LeftLeg:[86f,88f,284f],RightLeg:[215f,183f,145f],LeftArm:[259f,295f,316f],RightArm:[225f,143f,0f]}}

execute if score gamerule_doMobLoot creatures_data matches 1 if score @s creatures_time matches 1020.. run summon minecraft:experience_orb ~ ~ ~ {Value:1,Motion:[0.1,0.2,-0.16]}
execute if score gamerule_doMobLoot creatures_data matches 1 if score @s creatures_time matches 1020.. run summon minecraft:experience_orb ~ ~ ~ {Value:1,Motion:[-0.05,0.4,-0.12]}
execute if score gamerule_doMobLoot creatures_data matches 1 if score @s creatures_time matches 1020.. run summon minecraft:experience_orb ~ ~ ~ {Value:1,Motion:[0.1,-0.05,0.12]}

execute if score @s creatures_time matches 1000 run function 1_splatus:creatures/armor_stand/hurt
execute if score @s creatures_time matches 1020.. run function 1_splatus:creatures/armor_stand/hurt
execute if score @s creatures_time matches 1020.. run playsound minecraft:entity.armor_stand.break hostile @a[distance=..20] ~ ~ ~ 1 1
execute if score @s creatures_time matches 1020.. run kill @s

