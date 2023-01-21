execute as @a[scores={creatures_death=1..}] run tellraw @a [{"selector":"@s"},{"translate": " was struck by Winged Piglin swords"}]
gamerule showDeathMessages true
scoreboard players reset @a creatures_death