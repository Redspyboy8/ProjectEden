

val planks = <tag:items:minecraft:planks>;

craftingTable.removeByName("sophisticatedbackpacks:backpack");
craftingTable.addShaped("backpack",<item:sophisticatedbackpacks:backpack>, [
    [<item:minecraft:string>,<item:minecraft:leather>,<item:minecraft:string>],
    [<item:minecraft:string>,<item:supplementaries:sack>,<item:minecraft:string>],
    [<item:minecraft:leather>,<item:minecraft:leather>,<item:minecraft:leather>]]);

craftingTable.removeByName("sophisticatedstorage:upgrade_base");
craftingTable.addShaped("storageupgradebase",<item:sophisticatedstorage:upgrade_base>, [
    [<item:create:zinc_ingot>,<item:create:zinc_ingot>,<item:create:zinc_ingot>],
    [<item:create:zinc_ingot>,planks,<item:create:zinc_ingot>],
    [<item:create:zinc_ingot>,<item:create:zinc_ingot>,<item:create:zinc_ingot>]
    ]
);

craftingTable.removeByName("sophisticatedbackpacks:upgrade_base");
craftingTable.addShaped("backpackupgradebase",<item:sophisticatedbackpacks:upgrade_base>, [
    [<item:minecraft:string>,<item:create:zinc_ingot>,<item:minecraft:string>],
    [<item:create:zinc_ingot>,<item:alexsmobs:kangaroo_hide>,<item:create:zinc_ingot>],
    [<item:minecraft:string>,<item:create:zinc_ingot>,<item:minecraft:string>]
    ]
);
craftingTable.removeByName("sophisticatedbackpacks:magnet_upgrade");
craftingTable.addShaped("backpackmagnet",<item:sophisticatedbackpacks:magnet_upgrade>, [
    [<item:minecraft:ender_pearl>,<item:minecraft:iron_ingot>,<item:minecraft:ender_pearl>],
    [<item:minecraft:iron_ingot>,<item:sophisticatedbackpacks:pickup_upgrade>,<item:minecraft:iron_ingot>],
    [<item:minecraft:redstone>,<item:create_sa:copper_magnet>,<item:minecraft:lapis_lazuli>]
    ]
);
craftingTable.removeByName("sophisticatedstorage:magnet_upgrade");
craftingTable.addShaped("storagemagnet",<item:sophisticatedstorage:magnet_upgrade>, [
    [<item:minecraft:ender_pearl>,<item:minecraft:iron_ingot>,<item:minecraft:ender_pearl>],
    [<item:minecraft:iron_ingot>,<item:sophisticatedstorage:pickup_upgrade>,<item:minecraft:iron_ingot>],
    [<item:minecraft:redstone>,<item:create_sa:copper_magnet>,<item:minecraft:lapis_lazuli>]
    ]
);

craftingTable.removeByName("sophisticatedbackpacks:everlasting_upgrade");
craftingTable.addShaped("everlasting_upgrade",<item:sophisticatedbackpacks:everlasting_upgrade>, [
    [<item:minecraft:end_crystal>,<item:minecraft:netherite_ingot>,<item:minecraft:end_crystal>],
    [<item:minecraft:netherite_ingot>,<item:sophisticatedbackpacks:upgrade_base>,<item:minecraft:netherite_ingot>],
    [<item:minecraft:end_crystal>,<item:minecraft:netherite_ingot>,<item:minecraft:end_crystal>]
    ]
);