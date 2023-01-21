
val apothspawner = <item:minecraft:spawner>.withTag({BlockEntityTag: {silent: 0 as byte, ignore_players: 0 as byte, MaxNearbyEntities: 6 as short, RequiredPlayerRange: 16 as short, ignore_conditions: 0 as byte, SpawnCount: 4 as short, no_ai: 0 as byte, SpawnData: {entity: {id: "minecraft:zombie" as string}}, MaxSpawnDelay: 800 as short, Delay: 174 as short, redstone_control: 0 as byte, ForgeCaps: {"improvedmobs:opened_flag": {HasBeenOpened: 1 as byte}}, SpawnRange: 4 as short, ignore_light: 0 as byte, MinSpawnDelay: 200 as short, SpawnPotentials: [{data: {entity: {id: "minecraft:zombie" as string}}, weight: 1 as int}]}});

craftingTable.removeByName("undead_expansion:scythe_recipe");
craftingTable.addShaped("grave_scythe",<item:undead_expansion:grave_scythe>, [
    [<item:minecraft:iron_ingot>,<item:minecraft:iron_ingot>,<item:malum:processed_soulstone>],
    [<item:minecraft:air>,<item:minecraft:stick>,<item:undead_expansion:fracturedplating>],
    [<item:minecraft:stick>,<item:minecraft:air>,<item:minecraft:air>]
    ]
);

craftingTable.removeByName("undead_expansion:spawner_crafting");
craftingTable.addShaped("spawner",apothspawner, [
    [<item:undead_expansion:fracturedplating>,<item:undead_expansion:spawner_shard>,<item:undead_expansion:fracturedplating>],
    [<item:undead_expansion:spawner_shard>,<item:undead_expansion:blighted_remains>,<item:undead_expansion:spawner_shard>],
    [<item:undead_expansion:fracturedplating>,<item:undead_expansion:spawner_shard>,<item:undead_expansion:fracturedplating>]]);

