execute as @a[scores={creatures_death=1..}] run tellraw @a [{"selector":"@s"},{"translate": " was swept by Superior Husk sand"}]
gamerule showDeathMessages true
scoreboard players reset @a creatures_death