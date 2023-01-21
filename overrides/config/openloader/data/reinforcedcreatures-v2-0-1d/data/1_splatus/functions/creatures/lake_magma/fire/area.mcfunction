scoreboard players add @s creatures_count 1

#execute if score count creatures_count matches 0 run scoreboard players set @s RNG 8
#execute if score count creatures_count matches 5 run scoreboard players set @s RNG 8
#execute if score count creatures_count matches 10 run scoreboard players set @s RNG 8
#execute if score count creatures_count matches 15 run scoreboard players set @s RNG 8

execute if score count2 creatures_count matches 0 if predicate 1_splatus:chance/10_percent run function 1_splatus:creatures/lake_magma/fire/extinguish
execute if score count2 creatures_count matches 5 if predicate 1_splatus:chance/10_percent run function 1_splatus:creatures/lake_magma/fire/extinguish
execute if score count2 creatures_count matches 10 if predicate 1_splatus:chance/10_percent run function 1_splatus:creatures/lake_magma/fire/extinguish
execute if score count2 creatures_count matches 15 if predicate 1_splatus:chance/10_percent run function 1_splatus:creatures/lake_magma/fire/extinguish



execute if score @s creatures_count matches 1 run function 1_splatus:creatures/lake_magma/fire/place_fire
#execute if score @s NUM matches 1 run function 1_splatus:creatures/lake_magma/fire/extinguish
execute if score @s creatures_count matches 200.. run function 1_splatus:creatures/lake_magma/fire/extinguish

