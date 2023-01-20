#runs 4 times per tick

execute as @e[type=skeleton,tag=creatures_skeleton] at @s run scoreboard players set @s RNG 2
execute as @e[type=skeleton,tag=creatures_skeleton] at @s run scoreboard players set @s RNG 2
execute as @e[type=skeleton,tag=creatures_skeleton] at @s run scoreboard players set @s RNG 2
execute as @e[type=skeleton,tag=creatures_skeleton] at @s run scoreboard players set @s RNG 2

function 1_splatus:creatures/detect_wearing_gold


team join noname @e[type=phantom,tag=phantom_jockey]
team join noname @e[type=piglin,tag=creatures_mage]
team join noname @e[type=husk,tag=creatures_superiorhusk]
team join noname @e[type=stray,tag=creatures_superiorstray]
team join noname @e[type=drowned,tag=creatures_superiordrowned]
team join noname @e[type=blaze,tag=creatures_darkblaze]
team join noname @e[type=wither_skeleton,tag=creatures_wither_skeleton_knight]
team join noname @e[type=creeper,tag=creatures_creeper]
team join noname @e[type=piglin,tag=creatures_winged_piglin]
team join noname @e[type=glow_squid,tag=creatures_squid]

team join noname @e[type=magma_cube,tag=creatures_lake_magma]
team join noname @e[type=skeleton,tag=creatures_stormrider_skeleton]
team join noname @e[type=phantom,tag=creatures_stormrider_phantom]
team join noname @e[type=pillager,tag=creatures_firecracker]
team join noname @e[type=skeleton,tag=creatures_skeleton]
team join noname @e[type=armor_stand,tag=creatures_armorstand]
team join noname @e[type=glow_squid,tag=creatures_jellyfish]




execute store result score gamerule_doMobLoot creatures_data run gamerule doMobLoot