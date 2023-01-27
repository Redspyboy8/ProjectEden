import crafttweaker.api.recipe.MirrorAxis;

craftingTable.removeByName("grapplemod:grapplebow");
craftingTable.addShaped("grapplebow",<item:grapplemod:grapplinghook>, [
    [<tag:items:forge:pickaxes>,<item:minecraft:air>,<item:minecraft:air>],
    [<item:minecraft:air>,<item:quark:diamond_heart>,<item:minecraft:air>],
    [<item:minecraft:air>,<item:minecraft:air>,<item:supplementaries:rope>]
    ]
);
craftingTable.removeByName("grapplemod:repeller");
craftingTable.addShaped("repeller",<item:grapplemod:repeller>, [
    [<item:tinkers_reforged:aluminum_ingot>,<item:tinkers_reforged:epidote_gem>,<item:tinkers_reforged:aluminum_ingot>],
    [<item:tinkers_reforged:aluminum_ingot>,<item:endrem:rogue_eye>.reuse(),<item:tinkers_reforged:aluminum_ingot>],
    [<item:tinkers_reforged:aluminum_ingot>,<item:tinkers_reforged:epidote_gem>,<item:tinkers_reforged:aluminum_ingot>]
    ]
);

craftingTable.removeByName("grapplemod:launcher");
craftingTable.addShapedMirrored("launcher", MirrorAxis.HORIZONTAL,<item:grapplemod:launcheritem>, [
    [<item:minecraft:ender_eye>,<item:minecraft:air>,<item:minecraft:air>],
    [<item:minecraft:air>,<item:quark:diamond_heart>,<item:minecraft:air>],
    [<item:minecraft:air>,<item:minecraft:air>,<item:tinkers_reforged:aluminum_ingot>]
    ]
);

craftingTable.removeByName("grapplemod:baseupgradeitem");
craftingTable.addShaped("baseupgradeitem",<item:grapplemod:baseupgradeitem>, [
    [<item:minecraft:air>,<item:minecraft:gold_ingot>,<item:minecraft:air>],
    [<item:minecraft:gold_ingot>,<item:quark:diamond_heart>,<item:minecraft:gold_ingot>],
    [<item:minecraft:air>,<item:supplementaries:rope>,<item:minecraft:air>]
    ]
);

craftingTable.removeByName("grapplemod:limitsupgradeitem");
craftingTable.addShapeless("limitsupgradeitem",<item:grapplemod:limitsupgradeitem>, 
[<item:grapplemod:baseupgradeitem>,<item:minecraft:netherite_ingot>]
);

// craftingTable.removeByName("minecraft:sugar_from_sugar_cane");
// craftingTable.removeByName("minecraft:sugar_from_sugar_cane");
// craftingTable.removeByName("minecraft:sugar_from_sugar_cane");
// craftingTable.removeByName("minecraft:sugar_from_sugar_cane");