// craftingTable.removeByName("farmersdelight:skillet");
// craftingTable.removeByName("minecraft:sugar_from_sugar_cane");
// craftingTable.removeByName("minecraft:sugar_from_sugar_cane");
// craftingTable.removeByName("minecraft:sugar_from_sugar_cane");

val wools = <tag:items:minecraft:wool>;
val glass = <tag:items:forge:glass>;

//Heavy
craftingTable.removeByName("immersive_armors:heavy_helmet");
craftingTable.addShaped("heavy_helmet",<item:immersive_armors:heavy_helmet>, [
    [<item:byg:chain_plating>,<item:oreganized:lead_block>,<item:byg:chain_plating>],
    [<item:byg:chain_plating>,<item:minecraft:air>,<item:byg:chain_plating>]
    ]
);

craftingTable.removeByName("immersive_armors:heavy_chestplate");
craftingTable.addShaped("heavy_chestplate",<item:immersive_armors:heavy_chestplate>, [
    [<item:byg:chain_plating>,<item:minecraft:air>,<item:byg:chain_plating>],
    [<item:oreganized:lead_block>,<item:oreganized:lead_block>,<item:oreganized:lead_block>],
    [<item:byg:chain_plating>,<item:oreganized:lead_block>,<item:byg:chain_plating>]
    ]
);

craftingTable.removeByName("immersive_armors:heavy_leggings");
craftingTable.addShaped("heavy_leggings",<item:immersive_armors:heavy_leggings>, [
    [<item:byg:chain_plating>,<item:oreganized:lead_block>,<item:byg:chain_plating>],
    [<item:oreganized:lead_block>,<item:minecraft:air>,<item:oreganized:lead_block>],
    [<item:byg:chain_plating>,<item:minecraft:air>,<item:byg:chain_plating>]
    ]
);

craftingTable.removeByName("immersive_armors:heavy_boots");
craftingTable.addShaped("heavy_boots",<item:immersive_armors:heavy_boots>, [
    [<item:byg:chain_plating>,<item:minecraft:air>,<item:byg:chain_plating>],
    [<item:oreganized:lead_block>,<item:minecraft:air>,<item:oreganized:lead_block>]
    ]
);


//Robe 
craftingTable.removeByName("immersive_armors:robe_helmet");
craftingTable.addShaped("robe_helmet",<item:immersive_armors:robe_helmet>.withTag({display: {color: 8991416 as int}}), [
    [wools,<item:minecraft:amethyst_shard>,wools],
    [<item:minecraft:amethyst_shard>,<item:minecraft:air>,<item:minecraft:amethyst_shard>]
    ]
);


craftingTable.removeByName("immersive_armors:robe_chestplate");
craftingTable.addShaped("robe_chestplate",<item:immersive_armors:robe_chestplate>.withTag({display: {color: 8991416 as int}}), [
    [<item:minecraft:amethyst_shard>,<item:minecraft:air>,<item:minecraft:amethyst_shard>],
    [wools,<item:minecraft:amethyst_shard>,wools],
    [wools,<item:minecraft:amethyst_shard>,wools]
    ]
);


craftingTable.removeByName("immersive_armors:robe_leggings");
craftingTable.addShaped("robe_leggings",<item:immersive_armors:robe_leggings>.withTag({display: {color: 8991416 as int}}), [
    [<item:minecraft:amethyst_shard>,wools,<item:minecraft:amethyst_shard>],
    [wools,<item:minecraft:air>,wools],
    [wools,<item:minecraft:air>,wools]
    ]
);

craftingTable.removeByName("immersive_armors:robe_boots");
craftingTable.addShaped("robe_boots",<item:immersive_armors:robe_boots>.withTag({display: {color: 8991416 as int}}), [
    [<item:minecraft:amethyst_shard>,<item:minecraft:air>,<item:minecraft:amethyst_shard>],
    [wools,<item:minecraft:air>,wools]
    ]
);

//Divine
craftingTable.removeByName("immersive_armors:divine_helmet");
craftingTable.addShaped("divine_helmet",<item:immersive_armors:divine_helmet>.withTag({display: {color: 16383998 as int}}), [
    [<item:oreganized:silver_ingot>,<item:minecraft:emerald>,<item:oreganized:silver_ingot>],
    [<item:oreganized:silver_ingot>,<item:immersive_armors:robe_helmet>,<item:oreganized:silver_ingot>]
    ]
);

craftingTable.removeByName("immersive_armors:divine_chestplate");
craftingTable.addShaped("divine_chestplate",<item:immersive_armors:divine_chestplate>.withTag({display: {color: 16383998 as int}}), [
    [<item:oreganized:silver_ingot>,<item:minecraft:air>,<item:oreganized:silver_ingot>],
    [<item:oreganized:silver_ingot>,<item:minecraft:totem_of_undying>,<item:oreganized:silver_ingot>],
    [<item:oreganized:silver_ingot>,<item:immersive_armors:robe_chestplate>,<item:oreganized:silver_ingot>]
    ]
);

craftingTable.removeByName("immersive_armors:divine_leggings");
craftingTable.addShaped("divine_leggings",<item:immersive_armors:divine_leggings>.withTag({display: {color: 16383998 as int}}), [
    [<item:oreganized:silver_ingot>,<item:immersive_armors:robe_leggings>,<item:oreganized:silver_ingot>],
    [<item:oreganized:silver_ingot>,<item:minecraft:air>,<item:oreganized:silver_ingot>],
    [<item:oreganized:silver_ingot>,<item:minecraft:air>,<item:oreganized:silver_ingot>]
    ]
);

craftingTable.removeByName("immersive_armors:divine_boots");
craftingTable.addShaped("divine_boots",<item:immersive_armors:divine_boots>.withTag({display: {color: 16383998 as int}}), [
    [<item:minecraft:air>,<item:minecraft:air>,<item:minecraft:air>],
    [<item:oreganized:silver_ingot>,<item:immersive_armors:robe_boots>,<item:oreganized:silver_ingot>]
    ]
);

//Steampunk
craftingTable.removeByName("immersive_armors:steampunk_helmet");
craftingTable.addShaped("steampunk_helmet",<item:immersive_armors:steampunk_helmet>, [
    [<item:minecraft:redstone_torch>,<item:minecraft:air>,<item:minecraft:air>],
    [glass,<item:alloyed:bronze_ingot>,glass]
    ]
);

craftingTable.removeByName("immersive_armors:steampunk_chestplate");
craftingTable.addShaped("steampunk_chestplate",<item:immersive_armors:steampunk_chestplate>, [
    [<item:alloyed:bronze_ingot>,<item:minecraft:air>,<item:alloyed:bronze_ingot>],
    [<item:minecraft:compass>,<item:alloyed:bronze_ingot>,<item:minecraft:clock>],
    [<item:alloyed:bronze_ingot>,<item:minecraft:piston>,<item:alloyed:bronze_ingot>]
    ]
);

craftingTable.removeByName("immersive_armors:steampunk_leggings");
craftingTable.addShaped("steampunk_leggings",<item:immersive_armors:steampunk_leggings>, [
    [<item:alloyed:bronze_ingot>,<item:alloyed:bronze_ingot>,<item:alloyed:bronze_ingot>],
    [<item:minecraft:piston>,<item:minecraft:air>,<item:minecraft:piston>],
    [<item:alloyed:bronze_ingot>,<item:minecraft:air>,<item:alloyed:bronze_ingot>]
    ]
);

craftingTable.removeByName("immersive_armors:steampunk_boots");
craftingTable.addShaped("steampunk_boots",<item:immersive_armors:steampunk_boots>, [
    [<item:minecraft:piston>,<item:minecraft:air>,<item:minecraft:piston>],
    [<item:alloyed:bronze_ingot>,<item:minecraft:air>,<item:alloyed:bronze_ingot>]
    ]
);