import crafttweaker.api.recipe.MirrorAxis;

craftingTable.removeByName("majruszsdifficulty:enderium_ingot_vertical");
craftingTable.removeByName("majruszsdifficulty:enderium_ingot_horizontal");

craftingTable.addShapedMirrored("enderium_ingot", MirrorAxis.HORIZONTAL ,<item:majruszsdifficulty:enderium_ingot>, [
    [<item:majruszsdifficulty:enderium_shard>,<item:majruszsdifficulty:enderium_shard>,<item:majruszsdifficulty:enderium_shard>],
    [<item:majruszsdifficulty:enderium_shard>,<item:byg:ametrine_block>,<item:tinkers_reforged:kepu_ingot>],
    [<item:tinkers_reforged:kepu_ingot>,<item:tinkers_reforged:kepu_ingot>,<item:tinkers_reforged:kepu_ingot>]
    ]
);