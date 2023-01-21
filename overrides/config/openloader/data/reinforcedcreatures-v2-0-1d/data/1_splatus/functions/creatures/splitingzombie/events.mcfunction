execute as @e[type=zombie,tag=creatures_zombie,nbt={HurtTime:9s}] at @s run summon zombie ~ ~ ~ {IsBaby:1b,Motion:[0.3,0.3,0.0],Health:10f}
execute as @e[type=zombie,tag=creatures_zombie,nbt={HurtTime:9s}] at @s run summon zombie ~ ~ ~ {IsBaby:1b,Motion:[-0.3,0.3,0.0],Health:10f}

execute as @e[type=zombie,tag=creatures_zombie,nbt={HurtTime:9s}] at @s run particle minecraft:item_slime ~ ~1 ~ .3 .3 .3 .2 41 force
execute as @e[type=zombie,tag=creatures_zombie,nbt={HurtTime:9s}] at @s run playsound entity.zombie.ambient hostile @a[distance=..20] ~ ~ ~ 1 1.5
execute as @e[type=zombie,tag=creatures_zombie,nbt={HurtTime:9s}] at @s run playsound entity.zombie.ambient hostile @a[distance=..20] ~ ~ ~ 1 1.5
execute as @e[type=zombie,tag=creatures_zombie,nbt={HurtTime:9s}] at @s run playsound entity.zombie.ambient hostile @a[distance=..20] ~ ~ ~ 1 1.5
execute as @e[type=zombie,tag=creatures_zombie,nbt={HurtTime:9s}] at @s run playsound entity.zombie.death hostile @a[distance=..20] ~ ~ ~ 1 1
execute as @e[type=zombie,tag=creatures_zombie,nbt={HurtTime:9s}] at @s run playsound entity.item.pickup ambient @a[distance=..20] ~ ~ ~ 1 .5
execute as @e[type=zombie,tag=creatures_zombie,nbt={HurtTime:9s}] at @s run kill @s


execute as @e[tag=creatures_randomizer_entity] if score @s NUM matches 0..20 as @e[type=zombie,tag=creatures_zombie] at @s run particle minecraft:item_slime ~ ~1 ~ .3 .3 .3 .2 1 force
