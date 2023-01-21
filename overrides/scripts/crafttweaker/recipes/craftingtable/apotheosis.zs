#priority 1

val bookshelf = <tag:items:forge:bookshelves>;

craftingTable.removeByName("apotheosis:helmet_tome");
craftingTable.addShaped("helmet_tome",<item:apotheosis:helmet_tome>, [
    [bookshelf,<item:minecraft:book>,bookshelf],
    [<item:minecraft:book>,<item:tinkers_reforged:red_beryl_gem>,<item:minecraft:book>]
    ]
);

craftingTable.removeByName("apotheosis:chestplate_tome");
craftingTable.addShaped("chestplate_tome",<item:apotheosis:chestplate_tome>, [ 
    [<item:minecraft:book>,<item:tinkers_reforged:red_beryl_gem>,<item:minecraft:book>],
    [bookshelf,bookshelf,bookshelf],
    [<item:minecraft:book>,<item:minecraft:book>,<item:minecraft:book>]]);

craftingTable.removeByName("apotheosis:leggings_tome");
craftingTable.addShaped("leggings_tome",<item:apotheosis:leggings_tome>, 
[[<item:minecraft:book>,bookshelf,<item:minecraft:book>],
[<item:minecraft:book>,<item:tinkers_reforged:red_beryl_gem>,<item:minecraft:book>],
[bookshelf,<item:minecraft:air>,bookshelf]]);

craftingTable.removeByName("apotheosis:boots_tome");
craftingTable.addShaped("boots_tome",<item:apotheosis:boots_tome>, [
[<item:minecraft:book>,<item:minecraft:air>,<item:minecraft:book>],
[bookshelf,<item:tinkers_reforged:red_beryl_gem>,bookshelf]]);

craftingTable.removeByName("apotheosis:other_tome");
craftingTable.addShaped("other_tome",<item:apotheosis:other_tome> * 4, [
    [<item:minecraft:air>,<item:minecraft:book>,<item:minecraft:air>],
    [<item:minecraft:book>,<item:tinkers_reforged:red_beryl_gem>,<item:minecraft:book>],
    [<item:minecraft:air>,<item:minecraft:book>,<item:minecraft:air>]
    ]
);

craftingTable.removeByName("apotheosis:weapon_tome");
craftingTable.addShaped("weapon_tome",<item:apotheosis:weapon_tome>, [
    [<item:minecraft:book>],
    [<item:minecraft:book>],
    [<item:tinkers_reforged:red_beryl_gem>]
    ]
);

craftingTable.removeByName("apotheosis:pickaxe_tome");
craftingTable.addShaped("pickaxe_tome",<item:apotheosis:pickaxe_tome>, [
    [<item:minecraft:book>,<item:minecraft:book>,<item:minecraft:book>],
    [<item:minecraft:air>,<item:tinkers_reforged:red_beryl_gem>,<item:minecraft:air>],
    [<item:minecraft:air>,<item:minecraft:blaze_rod>,<item:minecraft:air>]
    ]
);

craftingTable.removeByName("apotheosis:scrap_tome");
craftingTable.addShaped("scrap_tome",<item:apotheosis:scrap_tome>, [
    [<item:tinkers_reforged:red_beryl_gem>,<item:minecraft:book>,<item:tinkers_reforged:red_beryl_gem>],
    [<item:minecraft:book>,<item:endrem:lost_eye>.reuse(),<item:minecraft:book>],
    [<item:tinkers_reforged:red_beryl_gem>,<item:minecraft:book>,<item:tinkers_reforged:red_beryl_gem>]
    ]
);


//New potion charm recipe handled by datapack.


// craftingTable.removeByName("minecraft:sugar_from_sugar_cane");
// craftingTable.removeByName("minecraft:sugar_from_sugar_cane");
// craftingTable.removeByName("minecraft:sugar_from_sugar_cane");
// craftingTable.removeByName("minecraft:sugar_from_sugar_cane");
// craftingTable.removeByName("minecraft:sugar_from_sugar_cane");
// craftingTable.removeByName("minecraft:sugar_from_sugar_cane");
// craftingTable.removeByName("minecraft:sugar_from_sugar_cane");
// craftingTable.removeByName("minecraft:sugar_from_sugar_cane");
// craftingTable.removeByName("minecraft:sugar_from_sugar_cane");
// craftingTable.removeByName("minecraft:sugar_from_sugar_cane");
// craftingTable.removeByName("minecraft:sugar_from_sugar_cane");
// craftingTable.removeByName("minecraft:sugar_from_sugar_cane");
// craftingTable.removeByName("minecraft:sugar_from_sugar_cane");
