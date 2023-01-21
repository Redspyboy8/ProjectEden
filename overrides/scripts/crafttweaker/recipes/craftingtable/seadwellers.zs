import crafttweaker.api.recipe.MirrorAxis;


craftingTable.removeByName("seadwellers:recipe_aqua_ingot");
craftingTable.addShapedMirrored("aqua_ingot",MirrorAxis.HORIZONTAL,<item:seadwellers:aqua_ingot>, [
    [<item:seadwellers:aquamarine>,<item:seadwellers:aquamarine>,<item:seadwellers:aquamarine>],
    [<item:seadwellers:aquamarine>,<item:endrem:guardian_eye>.reuse(),<item:seadwellers:depth_alloy>],
    [<item:seadwellers:depth_alloy>,<item:seadwellers:depth_alloy>,<item:seadwellers:depth_alloy>]
    ]
);