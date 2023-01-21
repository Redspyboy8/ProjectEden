execute as @a[scores={creatures_death=1..}] run tellraw @a [{"selector":"@s"},{"translate": " went out with confetti"}]
gamerule showDeathMessages true
scoreboard players reset @a creatures_death