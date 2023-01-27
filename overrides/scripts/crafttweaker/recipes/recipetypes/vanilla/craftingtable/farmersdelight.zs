import crafttweaker.api.recipe.MirrorAxis;

val slimeballs = <tag:items:forge:slimeballs>;

craftingTable.removeByName("farmersdelight:skillet");
craftingTable.addShapedMirrored("skillet",MirrorAxis.HORIZONTAL,<item:farmersdelight:skillet>, [
    [<item:minecraft:air>,<item:tinkers_reforged:aluminum_ingot>,<item:tinkers_reforged:aluminum_ingot>],
    [<item:minecraft:air>,<item:tinkers_reforged:aluminum_ingot>,<item:tinkers_reforged:aluminum_ingot>],
    [<item:minecraft:brick>,<item:minecraft:air>,<item:minecraft:air>]
    ]
);

craftingTable.removeByName("farmersdelight:safety_net");
craftingTable.addShaped("safety_net",<item:farmersdelight:safety_net>, [
    [<item:supplementaries:rope>,<item:supplementaries:rope>],
    [<item:supplementaries:rope>,<item:supplementaries:rope>]
    ]
);

craftingTable.removeByName("malum:lead_from_sapballs");
craftingTable.removeByName("minecraft:lead");
craftingTable.removeByName("tconstruct:common/slime/lead");
craftingTable.removeByName("farmersdelight:lead_from_rope");

craftingTable.addShapedMirrored("lead", MirrorAxis.HORIZONTAL,<item:minecraft:lead>, [
    [<item:supplementaries:rope>,<item:supplementaries:rope>],
    [<item:supplementaries:rope>,slimeballs],
    [<item:minecraft:air>,<item:minecraft:air>,<item:supplementaries:rope>]
    ]
);

