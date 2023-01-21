execute unless score creatures_load creatures_count matches 1 run tellraw @a [{"translate": "Successfully loaded","color": "gray"},{"translate": " Reinforced Creatures v2.0.1","color": "green"}]
scoreboard objectives add creatures_count dummy
scoreboard objectives add creatures_data dummy

scoreboard objectives add creatures_time dummy
scoreboard objectives add creatures_time2 dummy
scoreboard objectives add creatures_time3 dummy

scoreboard objectives add creatures_spawn dummy
scoreboard objectives add creatures_wither dummy
scoreboard objectives add creatures_sand dummy
scoreboard objectives add creatures_health dummy

scoreboard objectives add creatures_ocean dummy
scoreboard objectives add creatures_c_ocean dummy
scoreboard objectives add creatures_dc_ocean dummy
scoreboard objectives add creatures_d_ocean dummy

scoreboard objectives add creatures_kills custom:mob_kills

scoreboard objectives add creatures_mbounce dummy
scoreboard objectives add creatures_player_inked dummy
scoreboard objectives add creatures_player_electricuted dummy
scoreboard objectives add creatures_lake_magma_spawn dummy
scoreboard objectives add creatures_storm_rider_spawn dummy

scoreboard objectives add creatures_death_count dummy

scoreboard objectives add creatures_phantom_bow dummy
scoreboard objectives add creatures_phantom_bow_cooldown dummy

scoreboard objectives add creatures_frost_bow dummy

scoreboard objectives add creatures_uuid1 dummy
scoreboard objectives add creatures_uuid2 dummy

scoreboard objectives add creatures_player_frozen dummy

scoreboard objectives add creatures_randomizer_output dummy

scoreboard objectives add creatures_blazestaff_cooldown dummy
scoreboard objectives add creatures_right_click used:fishing_rod

### Pack Installed

scoreboard objectives add splatus.packs_installed dummy
scoreboard players set ReinforcedCreatures splatus.packs_installed 1 

###

scoreboard objectives add creatures_death deathCount

#hidden names
team add noname
team modify noname nametagVisibility never


scoreboard objectives add creatures_boomerang dummy

