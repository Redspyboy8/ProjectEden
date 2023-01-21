craftingTable.removeByName("vs_eureka:balloon_paper");
craftingTable.removeByName("vs_eureka:balloon_membrane");
craftingTable.removeByName("vs_eureka:balloon_string");
craftingTable.removeByName("vs_eureka:balloon_leather");
craftingTable.removeByName("vs_eureka:balloon_wool");

val planks = <tag:items:minecraft:planks>;

craftingTable.addShaped("balloon_block",<item:vs_eureka:balloon> * 16, [
    [<item:farmersdelight:canvas>,<item:minecraft:phantom_membrane>,<item:farmersdelight:canvas>],
    [<item:minecraft:phantom_membrane>,<item:minecraft:air>,<item:minecraft:phantom_membrane>],
    [<item:farmersdelight:canvas>,<item:minecraft:phantom_membrane>,<item:farmersdelight:canvas>]
    ]
);

craftingTable.removeByName("vs_eureka:floater");
craftingTable.addShaped("floater",<item:vs_eureka:floater> * 16, [
    [<item:quark:bamboo_block>,<item:minecraft:string>,<item:quark:bamboo_block>],
    [<item:minecraft:string>,planks,<item:minecraft:string>],
    [<item:quark:bamboo_block>,<item:minecraft:string>,<item:quark:bamboo_block>]
    ]
);


craftingTable.removeByName("vs_eureka:oak_ship_helm");
craftingTable.addShaped("oak_ship_helm",<item:vs_eureka:oak_ship_helm>, [
    [<item:minecraft:stick>,<item:minecraft:oak_fence>,<item:minecraft:stick>],
    [<item:minecraft:oak_fence>,<item:oreganized:electrum_ingot>,<item:minecraft:oak_fence>],
    [<item:minecraft:stick>,<item:minecraft:oak_slab>,<item:minecraft:stick>]
    ]
);
craftingTable.removeByName("vs_eureka:spruce_ship_helm");
craftingTable.addShaped("spruce_ship_helm",<item:vs_eureka:spruce_ship_helm>, [
    [<item:minecraft:stick>,<item:minecraft:spruce_fence>,<item:minecraft:stick>],
    [<item:minecraft:spruce_fence>,<item:oreganized:electrum_ingot>,<item:minecraft:spruce_fence>],
    [<item:minecraft:stick>,<item:minecraft:spruce_slab>,<item:minecraft:stick>]
    ]
);
craftingTable.removeByName("vs_eureka:birch_ship_helm");
craftingTable.addShaped("birch_ship_helm",<item:vs_eureka:birch_ship_helm>, [
    [<item:minecraft:stick>,<item:minecraft:birch_fence>,<item:minecraft:stick>],
    [<item:minecraft:birch_fence>,<item:oreganized:electrum_ingot>,<item:minecraft:birch_fence>],
    [<item:minecraft:stick>,<item:minecraft:birch_slab>,<item:minecraft:stick>]
    ]
);
craftingTable.removeByName("vs_eureka:jungle_ship_helm");
craftingTable.addShaped("jungle_ship_helm",<item:vs_eureka:jungle_ship_helm>, [
    [<item:minecraft:stick>,<item:minecraft:jungle_fence>,<item:minecraft:stick>],
    [<item:minecraft:jungle_fence>,<item:oreganized:electrum_ingot>,<item:minecraft:jungle_fence>],
    [<item:minecraft:stick>,<item:minecraft:jungle_slab>,<item:minecraft:stick>]
    ]
);
craftingTable.removeByName("vs_eureka:acacia_ship_helm");
craftingTable.addShaped("acacia_ship_helm",<item:vs_eureka:acacia_ship_helm>, [
    [<item:minecraft:stick>,<item:minecraft:acacia_fence>,<item:minecraft:stick>],
    [<item:minecraft:acacia_fence>,<item:oreganized:electrum_ingot>,<item:minecraft:acacia_fence>],
    [<item:minecraft:stick>,<item:minecraft:acacia_slab>,<item:minecraft:stick>]
    ]
);
craftingTable.removeByName("vs_eureka:dark_oak_ship_helm");
craftingTable.addShaped("dark_oak_ship_helm",<item:vs_eureka:dark_oak_ship_helm>, [
    [<item:minecraft:stick>,<item:minecraft:dark_oak_fence>,<item:minecraft:stick>],
    [<item:minecraft:dark_oak_fence>,<item:oreganized:electrum_ingot>,<item:minecraft:dark_oak_fence>],
    [<item:minecraft:stick>,<item:minecraft:dark_oak_slab>,<item:minecraft:stick>]
    ]
);
craftingTable.removeByName("vs_eureka:crimson_ship_helm");
craftingTable.addShaped("crimson_ship_helm",<item:vs_eureka:crimson_ship_helm>, [
    [<item:minecraft:stick>,<item:minecraft:crimson_fence>,<item:minecraft:stick>],
    [<item:minecraft:crimson_fence>,<item:oreganized:electrum_ingot>,<item:minecraft:crimson_fence>],
    [<item:minecraft:stick>,<item:minecraft:crimson_slab>,<item:minecraft:stick>]
    ]
);
craftingTable.removeByName("vs_eureka:warped_ship_helm");
craftingTable.addShaped("warped_ship_helm",<item:vs_eureka:warped_ship_helm>, [
    [<item:minecraft:stick>,<item:minecraft:warped_fence>,<item:minecraft:stick>],
    [<item:minecraft:warped_fence>,<item:oreganized:electrum_ingot>,<item:minecraft:warped_fence>],
    [<item:minecraft:stick>,<item:minecraft:warped_slab>,<item:minecraft:stick>]
    ]
);