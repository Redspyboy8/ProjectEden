import crafttweaker.api.recipe.MirrorAxis;
craftingTable.removeByName("supplementaries:bomb");
craftingTable.addShapedMirrored("bomb", MirrorAxis.HORIZONTAL, <item:supplementaries:bomb> * 4, [
    [<item:minecraft:air>,<item:create:zinc_ingot>,<item:minecraft:string>],
    [<item:create:zinc_ingot>,<item:minecraft:tnt>,<item:create:zinc_ingot>],
    [<item:minecraft:air>,<item:create:zinc_ingot>,<item:minecraft:air>]
    ]
);

craftingTable.removeByName("supplementaries:spiky_bomb");
craftingTable.addShapedMirrored("spiky_bomb", MirrorAxis.HORIZONTAL, <item:supplementaries:bomb_spiky> * 4, [
    [<item:minecraft:air>,<item:create:zinc_ingot>,<item:minecraft:string>],
    [<item:create:zinc_ingot>,<item:oreganized:shrapnel_bomb>,<item:create:zinc_ingot>],
    [<item:minecraft:air>,<item:create:zinc_ingot>,<item:minecraft:air>]
    ]
);