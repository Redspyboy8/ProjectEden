summon lightning_bolt
execute positioned ~ ~20 ~ run particle end_rod ~ ~ ~ .3 20 .3 .075 100 force @a[distance=..48]
execute positioned ~ ~20 ~ run particle end_rod ~ ~ ~ 0 0 0 .4 20 force @a[distance=..48]
execute positioned ~ ~20 ~ run playsound minecraft:item.trident.thunder block @a[distance=..80] ~ ~ ~ 5 .8
execute positioned ~ ~20 ~ run playsound minecraft:entity.lightning_bolt.thunder block @a[distance=..80] ~ ~ ~ 5 .8



summon phantom ~ ~10 ~ {Passengers:[{id:"skeleton",Tags:["creatures_stormrider_skeleton"],Attributes:[{Base:200.0d,Name:"minecraft:generic.max_health"}],Health:200f,CustomName:'{"translate":"Storm Rider"}',HandItems:[{Count:1,id:"bow",tag:{CreaturesPhantomBow:1,CustomModelData:27014}},{}],ArmorItems:[{},{},{},{Count:1,id:"iron_helmet",tag:{Enchantments:[{id:"protection",lvl:1}]}}],HandDropChances:[0.0f,0.0f],DeathLootTable:"minecraft:entities/skeleton",ActiveEffects:[{Id:28,Amplifier:0,Duration:999999,ShowParticles:true},{Id:2,Amplifier:0,Duration:999999,ShowParticles:false}]}],Tags:["creatures_stormrider_phantom"],CustomName:'{"translate":"Storm Rider"}',Attributes:[{Base:200.0d,Name:"minecraft:generic.max_health"}],Health:200f}
summon phantom ~ ~10 ~ {Passengers:[{id:"skeleton",Tags:["creatures_stormrider_skeleton"],Attributes:[{Base:200.0d,Name:"minecraft:generic.max_health"}],Health:200f,CustomName:'{"translate":"Storm Rider"}',HandItems:[{Count:1,id:"bow",tag:{CreaturesPhantomBow:1,CustomModelData:27014}},{}],ArmorItems:[{},{},{},{Count:1,id:"iron_helmet",tag:{Enchantments:[{id:"protection",lvl:1}]}}],HandDropChances:[0.0f,0.0f],DeathLootTable:"1_splatus:creatures/entity/storm_rider",ActiveEffects:[{Id:28,Amplifier:0,Duration:999999,ShowParticles:true},{Id:2,Amplifier:0,Duration:999999,ShowParticles:false}]}],Tags:["creatures_stormrider_phantom"],CustomName:'{"translate":"Storm Rider"}',Attributes:[{Base:200.0d,Name:"minecraft:generic.max_health"}],Health:200f}
execute positioned ~ ~10 ~ run effect give @e[distance=..3,type=phantom] fire_resistance 999999 1 true
execute positioned ~ ~10 ~ run effect give @e[distance=..3,type=skeleton] fire_resistance 999999 1 true
kill @s[type=!player]