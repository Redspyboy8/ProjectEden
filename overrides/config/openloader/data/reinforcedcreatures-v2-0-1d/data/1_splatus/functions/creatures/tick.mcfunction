######## - REINFORCED CREATURES - ########
  #Created By LimeSplatus#4730

#####################################################
# MAIN ---

function 1_splatus:creatures/randomizer


## spawning

execute unless score creatures_spawn creatures_count matches 1 run function 1_splatus:creatures/spawning


## actual mob events and functions

execute if entity @e[type=drowned,tag=creatures_superiordrowned,tag=creatures_nearedplayer] run function 1_splatus:creatures/superior_drowned/events
execute if entity @e[type=piglin,tag=creatures_mage,tag=creatures_nearedplayer] run function 1_splatus:creatures/mage/events
execute if entity @e[type=zombie,tag=creatures_zombie,tag=creatures_nearedplayer] run function 1_splatus:creatures/splitingzombie/events
execute if entity @e[type=skeleton,tag=creatures_skeleton,tag=creatures_nearedplayer] run function 1_splatus:creatures/enraged_skeleton/events
execute if entity @e[type=husk,tag=creatures_superiorhusk,tag=creatures_nearedplayer] run function 1_splatus:creatures/superior_husk/events
execute if entity @e[type=stray,tag=creatures_superiorstray,tag=creatures_nearedplayer] run function 1_splatus:creatures/superior_stray/events
execute if entity @e[type=wither_skeleton,tag=creatures_wither_skeleton_knight,tag=creatures_nearedplayer] run function 1_splatus:creatures/wither_skeleton_knight/events
execute if entity @e[type=creeper,tag=creatures_creeper,tag=creatures_nearedplayer] run function 1_splatus:creatures/creeper/events
execute if entity @e[type=piglin,tag=creatures_winged_piglin,tag=creatures_nearedplayer] run function 1_splatus:creatures/winged_piglin/events
execute if entity @e[type=glow_squid,tag=creatures_squid,tag=creatures_nearedplayer] run function 1_splatus:creatures/deep_sea_squid/events
execute as @e[type=magma_cube,tag=creatures_lake_magma,tag=creatures_nearedplayer] at @s run function 1_splatus:creatures/lake_magma/magma
execute as @e[type=phantom,tag=creatures_stormrider_phantom,tag=creatures_nearedplayer] at @s run function 1_splatus:creatures/storm_rider/events
execute as @e[type=skeleton,tag=creatures_stormrider_skeleton,tag=creatures_nearedplayer] at @s run function 1_splatus:creatures/storm_rider/skeleton_lol
execute as @e[type=armor_stand,tag=creatures_armorstand,tag=creatures_nearedplayer] at @s run function 1_splatus:creatures/armor_stand/events
execute as @e[type=glow_squid,tag=creatures_jellyfish,tag=creatures_nearedplayer] at @s run function 1_splatus:creatures/jellyfish/events

# helps optimize events and make them only run when a player had near them by 4 chunks

execute as @e[type=drowned,tag=creatures_superiordrowned] at @s if entity @p[distance=..64] run tag @s add creatures_nearedplayer
execute as @e[type=piglin,tag=creatures_mage] at @s if entity @p[distance=..64] run tag @s add creatures_nearedplayer
execute as @e[type=zombie,tag=creatures_zombie] at @s if entity @p[distance=..64] run tag @s add creatures_nearedplayer
execute as @e[type=skeleton,tag=creatures_skeleton] at @s if entity @p[distance=..48] run tag @s add creatures_nearedplayer
execute as @e[type=husk,tag=creatures_superiorhusk] at @s if entity @p[distance=..64] run tag @s add creatures_nearedplayer
execute as @e[type=stray,tag=creatures_superiorstray] at @s if entity @p[distance=..64] run tag @s add creatures_nearedplayer
execute as @e[type=wither_skeleton,tag=creatures_wither_skeleton_knight] at @s if entity @p[distance=..64] run tag @s add creatures_nearedplayer
execute as @e[type=creeper,tag=creatures_creeper,tag=creatures_creeper] at @s if entity @p[distance=..64] run tag @s add creatures_nearedplayer
execute as @e[type=piglin,tag=creatures_winged_piglin] at @s if entity @p[distance=..48] run tag @s add creatures_nearedplayer
execute as @e[type=glow_squid,tag=creatures_squid] at @s if entity @p[distance=..48] run tag @s add creatures_nearedplayer
execute as @e[type=magma_cube,tag=creatures_lake_magma] at @s if entity @p[distance=..64] run tag @s add creatures_nearedplayer
execute as @e[type=phantom,tag=creatures_stormrider_phantom] at @s if entity @p[distance=..96] run tag @s add creatures_nearedplayer
execute as @e[type=skeleton,tag=creatures_stormrider_skeleton] at @s if entity @p[distance=..96] run tag @s add creatures_nearedplayer
execute as @e[type=armor_stand,tag=creatures_armorstand] at @s if entity @p[distance=..32] run tag @s add creatures_nearedplayer
execute as @e[type=glow_squid,tag=creatures_jellyfish] at @s if entity @p[distance=..48] run tag @s add creatures_nearedplayer


#####################################################
# ITEMS ---

#phantom bow
#execute as @a store result score @s creatures_phantom_bow run data get entity @s SelectedItem.tag.CreaturesPhantomBow
execute as @a[predicate=1_splatus:holding/phantom_bow] at @s run function 1_splatus:creatures/storm_rider/phantom_bow
execute as @a[predicate=!1_splatus:holding/phantom_bow] at @s run scoreboard players set @s creatures_phantom_bow_cooldown 0
execute as @e[type=#1_splatus:creatures/arrow,tag=creatures_phantom_bow_arrow] at @s run function 1_splatus:creatures/storm_rider/arrow
execute as @e[type=area_effect_cloud,tag=creatures_phantom_bow_arrow_area] at @s unless entity @e[distance=..3,tag=creatures_phantom_bow_arrow] run function 1_splatus:creatures/storm_rider/arrow_land
advancement revoke @a[predicate=!1_splatus:holding/phantom_bow] only 1_splatus:creatures/charged_phantom_bow

#frost bow
#execute as @a store result score @s creatures_phantom_bow run data get entity @s SelectedItem.tag.CreaturesFrostBow
execute as @a[predicate=1_splatus:holding/frost_bow] at @s run function 1_splatus:creatures/superior_stray/frost_bow
execute as @e[type=#1_splatus:creatures/arrow,tag=creatures_frost_bow_arrow] at @s run function 1_splatus:creatures/superior_stray/arrow
execute as @e[type=area_effect_cloud,tag=creatures_frost_bow_arrow_area] at @s unless entity @e[distance=..3,tag=creatures_frost_bow_arrow] run function 1_splatus:creatures/superior_stray/arrow_land

#blaze staff
execute as @a[predicate=1_splatus:holding/blaze_staff] at @s run function 1_splatus:creatures/mage/staff/root
execute as @a[predicate=!1_splatus:holding/blaze_staff] at @s run scoreboard players set @s creatures_blazestaff_cooldown 0

execute as @e[type=armor_stand,tag=creatures_mage_fire] at @s run function 1_splatus:creatures/mage/spell
execute as @e[type=area_effect_cloud,tag=creatures_fire_area] at @s run function 1_splatus:creatures/mage/area


#winged piglin swords
execute as @a[nbt={SelectedItem:{tag:{CreaturesNotGoldenSword:1}}}] at @s run function 1_splatus:creatures/other/imagine_holding_these_swords

#creeper confetti balls o_O
execute as @e[type=snowball,tag=!creatures_item_confetti,nbt={Item:{tag:{CreaturesCreeperConfettiBall:1}}}] at @s run tag @s add creatures_item_confetti
execute as @e[type=snowball,tag=creatures_item_confetti] at @s run function 1_splatus:creatures/creeper/confetti_ball

#food
execute as @a[advancements={1_splatus:creatures/ate_deep_sea_squid_tentacle=true}] at @s run function 1_splatus:creatures/other/commands/ate_deep_sea_squid_tentacle
execute if predicate 1_splatus:chance/20_percent as @a[advancements={1_splatus:creatures/ate_jellyfish_strip=true}] at @s run function 1_splatus:creatures/other/commands/ate_jellyfish_strip

###################################################################################################################################



# EVERYTHING ELSE
#not very organized, i know

execute if entity @e[type=armor_stand,tag=creatures_superiorhusk_sand] run function 1_splatus:creatures/superior_husk/sand

execute if entity @e[type=armor_stand,tag=creatures_superiorstray_ice] run function 1_splatus:creatures/superior_stray/ice
execute if entity @a[scores={creatures_time=1..10}] run function 1_splatus:creatures/superior_stray/freeze

execute if entity @e[type=area_effect_cloud,tag=creatures_superiordrowned_trident] run function 1_splatus:creatures/superior_drowned/projectiles



execute if entity @e[type=area_effect_cloud,tag=creatures_darkblaze_orb] run function 1_splatus:creatures/dark_blaze/projectile



execute if entity @e[type=arrow,tag=creatures_winged_piglin_arrow] run function 1_splatus:creatures/winged_piglin/arrows
execute as @e[type=armor_stand,tag=creatures_winged_piglin_swords] at @s run function 1_splatus:creatures/winged_piglin/gold_swords

execute if entity @e[type=area_effect_cloud,nbt={Effects:[{Id:27b,Amplifier:43b}]}] run function 1_splatus:creatures/creeper/area_effect_cloud
execute if entity @e[type=arrow,tag=creatures_creeper_firework] run function 1_splatus:creatures/creeper/small_fireworks
execute if entity @e[type=arrow,nbt={Color:7658645}] run function 1_splatus:creatures/items/firework_arrows


function 1_splatus:creatures/wither_skeleton_knight/always_loaded


execute if entity @e[type=piglin,tag=creatures_mage] run function 1_splatus:creatures/mage/setup

execute as @e[type=!#1_splatus:creatures/misc,scores={creatures_player_frozen=1..}] at @s run function 1_splatus:creatures/other/frozen
execute as @a[scores={creatures_player_inked=1..}] at @s run function 1_splatus:creatures/deep_sea_squid/particles
execute as @e[scores={creatures_player_electricuted=1..}] at @s run function 1_splatus:creatures/jellyfish/electricuted
execute if entity @e[type=area_effect_cloud,tag=creatures_squid_inkball] run function 1_splatus:creatures/deep_sea_squid/inkball

###
execute as @e[type=area_effect_cloud,tag=creatures_fire_area] at @s run function 1_splatus:creatures/lake_magma/fire/area
execute as @e[type=area_effect_cloud,tag=creatures_lake_magma_fireball] at @s run function 1_splatus:creatures/lake_magma/fireball

execute as @e[type=area_effect_cloud,tag=creatures_storm_rider_explosive] at @s run function 1_splatus:creatures/storm_rider/explosive
execute as @e[type=armor_stand,tag=creatures_storm_rider_explosive] at @s run function 1_splatus:creatures/storm_rider/explosive





execute as @e[type=experience_orb,tag=creatures_experience_orb] at @s run function 1_splatus:creatures/other/homing_experience
execute as @e[type=bat,tag=creatures_dust] at @s run function 1_splatus:creatures/other/bat_particles
execute as @e[type=bat,tag=creatures_dust_confetti] at @s run function 1_splatus:creatures/creeper/bat_confetti
execute as @e[type=area_effect_cloud,tag=creatures_boomerang] at @s run function 1_splatus:creatures/enraged_skeleton/boomerang

execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{CreaturesFirecrackerFirework:1}}}] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["creatures_item_firecracker"]}
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{CreaturesFirecrackerFirework:1}}}] at @s run kill @s
execute as @e[type=area_effect_cloud,tag=creatures_item_firecracker] at @s run function 1_splatus:creatures/firecracker/firework
execute as @e[type=area_effect_cloud,tag=creatures_fang] at @s run function 1_splatus:creatures/armor_stand/area

execute if score count2 creatures_count matches 1 run function 1_splatus:creatures/tick_4x
execute if score count2 creatures_count matches 6 run function 1_splatus:creatures/tick_4x
execute if score count2 creatures_count matches 11 run function 1_splatus:creatures/tick_4x
execute if score count2 creatures_count matches 16 run function 1_splatus:creatures/tick_4x










execute as @e[tag=creatures_boomerang_target] at @s run scoreboard players add @s creatures_boomerang 1
execute as @e[tag=creatures_boomerang_target,scores={creatures_boomerang=100..}] at @s run tag @s remove creatures_boomerang_target
execute if predicate 1_splatus:chance/20_percent as @e[tag=!creatures_boomerang_target] at @s run scoreboard players reset @s creatures_boomerang

#general counter
scoreboard players add count creatures_count 0
execute if score count creatures_count matches ..2 run scoreboard players add count creatures_count 1

#tick loop - 0.25 seconds
scoreboard players add count3 creatures_count 0
scoreboard players add count3 creatures_count 1
execute if score count3 creatures_count matches 5.. run scoreboard players set count3 creatures_count 0

#tick loop  - 1 second
scoreboard players add count2 creatures_count 0
scoreboard players add count2 creatures_count 1
execute if score count2 creatures_count matches 20 run scoreboard players set count2 creatures_count 0


scoreboard players set @a[scores={creatures_kills=1..}] creatures_kills 0
scoreboard players add @a[scores={creatures_death=1..}] creatures_death_count 1
scoreboard players reset @a[scores={creatures_death_count=40..}] creatures_death
scoreboard players reset @a[scores={creatures_death_count=40..}] creatures_death_count
scoreboard players set @a creatures_right_click 0

execute run advancement revoke @a only 1_splatus:creatures/used_shield


