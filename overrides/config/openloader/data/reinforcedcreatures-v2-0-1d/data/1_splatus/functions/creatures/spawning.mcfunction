execute if score spawn.phantom_jockey creatures_data matches 1 as @e[type=phantom,tag=!creatures_spawnattempted,tag=!creatures_nonvariant] at @s run function 1_splatus:creatures/old_phantom_jockey/spawn

execute unless score spawn.piglin_mage creatures_data matches 0 as @e[type=piglin,tag=!creatures_spawnattempted,tag=!creatures_nonvariant] at @s run function 1_splatus:creatures/mage/spawn
execute unless score spawn.enraged_skeleton creatures_data matches 0 as @e[type=skeleton,tag=!creatures_spawnattempted,tag=!creatures_nonvariant] at @s run function 1_splatus:creatures/enraged_skeleton/spawn
execute unless score spawn.slime_zombie creatures_data matches 0 as @e[type=zombie,tag=!creatures_spawnattempted,tag=!creatures_nonvariant,tag=!creatures_armorstand_hitbox] at @s run function 1_splatus:creatures/splitingzombie/spawn
execute unless score spawn.superior_husk creatures_data matches 0 as @e[type=husk,tag=!creatures_spawnattempted,tag=!creatures_nonvariant] at @s run function 1_splatus:creatures/superior_husk/spawn
execute unless score spawn.superior_stray creatures_data matches 0 as @e[type=stray,tag=!creatures_spawnattempted,tag=!creatures_nonvariant,tag=!sanctumboss,tag=!ultris_boss] at @s run function 1_splatus:creatures/superior_stray/spawn
execute unless score spawn.superior_drowned creatures_data matches 0 as @e[type=drowned,tag=!creatures_spawnattempted,tag=!creatures_nonvariant] at @s run function 1_splatus:creatures/superior_drowned/spawn
execute unless score spawn.wither_skeleton_knight creatures_data matches 0 as @e[type=wither_skeleton,tag=!creatures_spawnattempted,tag=!creatures_nonvariant] at @s run function 1_splatus:creatures/wither_skeleton_knight/spawn
execute unless score spawn.confetti_creeper creatures_data matches 0 as @e[type=creeper,tag=!creatures_nonvariant,tag=!creatures_spawnattempted] at @s run function 1_splatus:creatures/creeper/spawn
execute unless score spawn.winged_piglin creatures_data matches 0 as @e[type=piglin,tag=!creatures_spawnattempted,tag=!creatures_nonvariant] at @s run function 1_splatus:creatures/winged_piglin/spawn

execute unless score spawn.deep_sea_squid creatures_data matches 0 as @e[type=cod,tag=!creatures_nonvariant,tag=!creatures_spawnattempted] at @s run function 1_splatus:creatures/deep_sea_squid/spawn
execute unless score spawn.deep_sea_squid creatures_data matches 0 as @e[type=salmon,tag=!creatures_nonvariant,tag=!creatures_spawnattempted] at @s run function 1_splatus:creatures/deep_sea_squid/spawn
execute if score spawn.sentient_armorstand creatures_data matches 1 as @e[type=zombie,tag=!creatures_nonvariant,tag=!creatures_spawnattempted] at @s run function 1_splatus:creatures/armor_stand/spawn

execute unless score spawn.firecracker creatures_data matches 0 as @e[type=pillager,tag=!creatures_nonvariant,tag=!creatures_spawnattempted] at @s run function 1_splatus:creatures/firecracker/spawn
execute unless score spawn.jellyfish creatures_data matches 0 as @e[type=tropical_fish,tag=!creatures_nonvariant,tag=!creatures_spawnattempted] at @s run function 1_splatus:creatures/jellyfish/spawn

execute unless score spawn.lake_magma creatures_data matches 0 as @a[predicate=1_splatus:in/the_nether] at @s run function 1_splatus:creatures/lake_magma/spawning
execute unless score spawn.storm_rider creatures_data matches 0 if predicate 1_splatus:other/weather_thunder as @a[predicate=1_splatus:in/overworld] at @s run function 1_splatus:creatures/storm_rider/spawn


tag @e[type=!#1_splatus:creatures/misc] add creatures_spawnattempted