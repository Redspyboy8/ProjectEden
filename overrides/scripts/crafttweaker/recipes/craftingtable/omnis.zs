import crafttweaker.api.recipe.MirrorAxis;

craftingTable.removeByName("omnis:ravaged_metal");
craftingTable.addShapeless("ravaged_metal",<item:omnis:ravaged_metal>, 
[<item:omnis:ravaged_scrap>,<item:omnis:ravaged_scrap>,<item:omnis:ravaged_scrap>,<item:omnis:ravaged_scrap>,<item:oreganized:lead_ingot>]
);

craftingTable.removeByName("omnis:haunted_steel_ingot");
craftingTable.addShapedMirrored("haunted_steel_ingot",MirrorAxis.HORIZONTAL,<item:omnis:haunted_steel_ingot>, [
    [<item:omnis:tear_of_vex>,<item:omnis:tear_of_vex>,<item:minecraft:netherite_ingot>],
    [<item:omnis:tear_of_vex>,<item:endrem:evil_eye>.reuse(),<item:omnis:tear_of_vex>],
    [<item:omnis:ravaged_metal>,<item:omnis:tear_of_vex>,<item:omnis:tear_of_vex>]]);