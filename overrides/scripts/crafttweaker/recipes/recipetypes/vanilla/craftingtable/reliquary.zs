import crafttweaker.api.recipe.MirrorAxis;

val panes = <tag:items:forge:glass_panes>;
val flowers = <tag:items:minecraft:flowers>;
val mundanePotion = <item:minecraft:potion>.withTag({Potion: "minecraft:mundane" as string});

craftingTable.removeByName("reliquary:alkahestry_tome");
craftingTable.addShaped("ahestry_tome",<item:reliquary:alkahestry_tome>, [
    [<item:ars_nouveau:source_gem>,<item:botania:lexicon>,<item:botania:dragonstone>],
    [<item:contenttweaker:tinker_notes>,<item:witherstormmod:withered_nether_star>.reuse(),<item:ars_nouveau:worn_notebook>],
    [<item:create:brass_ingot>,<item:malum:encyclopedia_arcana>,<item:malum:soul_stained_steel_ingot>]
]
);

craftingTable.removeByName("reliquary:rending_gale");
craftingTable.addShapedMirrored("rending_gale", MirrorAxis.HORIZONTAL, <item:reliquary:rending_gale>, [
    [<item:minecraft:air>,<item:reliquary:bat_wing>,<item:reliquary:eye_of_the_storm>],
    [<item:alexsmobs:tarantula_hawk_wing_fragment>,<item:endrem:magical_eye>.reuse(),<item:reliquary:bat_wing>],
    [<item:minecraft:blaze_rod>,<item:alexsmobs:tarantula_hawk_wing_fragment>,<item:minecraft:air>]
    ]
);

craftingTable.removeByName("reliquary:mercy_cross");
craftingTable.addShaped("mercy_cross",<item:reliquary:mercy_cross>, [
    [<item:oreganized:silver_ingot>,<item:minecraft:gold_block>,<item:oreganized:silver_ingot>],
    [<item:minecraft:gold_block>,<item:endrem:undead_eye>.reuse(),<item:minecraft:gold_block>],
    [<item:oreganized:silver_ingot>,<item:minecraft:gold_block>,<item:oreganized:silver_ingot>]]);

craftingTable.removeByName("reliquary:glowing_water");
craftingTable.addShaped("glowing_water",<item:reliquary:glowing_water>, [
    [panes,mundanePotion,panes],
    [panes,<item:oreganized:silver_nugget>,panes],
    [<item:infernalexp:soul_salt_clump>,panes,<item:infernalexp:soul_salt_clump>]
    ]
);

craftingTable.removeByName("reliquary:emperor_chalice");
craftingTable.addShaped("emperor_chalice",<item:reliquary:emperor_chalice>, [
    [<item:minecraft:emerald>,<item:seadwellers:mega_bucket>,<item:minecraft:emerald>],
    [<item:minecraft:gold_ingot>,<item:supplementaries:goblet>,<item:minecraft:gold_ingot>],
    [<item:minecraft:gold_ingot>,<item:minecraft:ender_eye>,<item:minecraft:gold_ingot>]
    ]
);

craftingTable.removeByName("reliquary:aphrodite_potion");
craftingTable.addShapedMirrored("aphrodite_potion", MirrorAxis.HORIZONTAL, <item:reliquary:aphrodite_potion>, [
    [panes,mundanePotion,panes],
    [panes,<item:reliquary:fertile_essence>,panes],
    [<item:minecraft:feather>,panes,<item:minecraft:honey_bottle>]
    ]
);

craftingTable.removeByName("reliquary:fertile_potion");
craftingTable.addShaped("fertile_potion",<item:reliquary:fertile_potion>, [
    [panes,mundanePotion,panes],
    [panes,<item:reliquary:fertile_essence>,panes],
    [flowers,panes,flowers]
    ]
);

craftingTable.removeByName("reliquary:hammer_assembly");
craftingTable.addShaped("hammer_assembly",<item:reliquary:hammer_assembly>, [
    [<item:minecraft:iron_ingot>,<item:minecraft:iron_ingot>,<item:minecraft:lever>],
    [<item:reliquary:molten_core>,<item:endrem:black_eye>.reuse(),<item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>,<item:minecraft:iron_ingot>,<item:minecraft:iron_ingot>]
    ]
);

craftingTable.removeByName("reliquary:grip_assembly");
craftingTable.addShaped("grip_assembly",<item:reliquary:grip_assembly>, [
    [<item:minecraft:iron_ingot>,<item:create_sa:heap_of_experience>,<item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>,<item:endrem:cold_eye>.reuse(),<item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>,<item:reliquary:magazines/empty_magazine>,<item:minecraft:iron_ingot>]
    ]
);

craftingTable.removeByName("reliquary:barrel_assembly");
craftingTable.addShaped("barrel_assembly",<item:reliquary:barrel_assembly>, [
    [<item:minecraft:iron_ingot>,<item:minecraft:iron_ingot>,<item:minecraft:iron_ingot>],
    [<item:minecraft:air>,<item:endrem:corrupted_eye>.reuse(),<item:oreganized:electrum_ingot>],
    [<item:minecraft:iron_ingot>,<item:minecraft:iron_ingot>,<item:minecraft:iron_ingot>]
    ]
);

craftingTable.removeByName("reliquary:handgun");
craftingTable.addShaped("handgun",<item:reliquary:handgun>, [
    [<item:reliquary:barrel_assembly>,<item:minecraft:iron_ingot>,<item:reliquary:hammer_assembly>],
    [<item:minecraft:iron_ingot>,<item:minecraft:netherite_ingot>,<item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>,<item:reliquary:grip_assembly>,<item:minecraft:iron_ingot>]
    ]
);

craftingTable.removeByName("reliquary:magazines/empty_magazine");
craftingTable.addShaped("magazines/empty_magazine",<item:reliquary:magazines/empty_magazine>, [
    [<item:minecraft:iron_ingot>,<item:minecraft:air>,<item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>,<item:oreganized:lead_ingot>,<item:minecraft:iron_ingot>],
    [<tag:items:forge:deepslate>,<item:minecraft:iron_ingot>,<tag:items:forge:deepslate>]
    ]
);

craftingTable.removeByName("reliquary:holy_hand_grenade");
craftingTable.addShaped("holy_hand_grenade",<item:reliquary:holy_hand_grenade>, [
    [<item:minecraft:air>,<item:reliquary:glowing_water>,<item:minecraft:air>],
    [<item:reliquary:glowing_water>,<item:supplementaries:bomb_blue>,<item:reliquary:glowing_water>],
    [<item:minecraft:air>,<item:reliquary:glowing_water>,<item:minecraft:air>]
    ]
);

craftingTable.removeByName("reliquary:fortune_coin");
craftingTable.addShaped("fortune_coin",<item:reliquary:fortune_coin>, [
    [<item:create_sa:heap_of_experience>,<item:minecraft:gold_ingot>,<item:create_sa:heap_of_experience>],
    [<item:minecraft:gold_ingot>,<item:reliquary:void_tear>,<item:minecraft:gold_ingot>],
    [<item:minecraft:air>,<item:minecraft:gold_ingot>,<item:minecraft:air>]
    ]
);

craftingTable.removeByName("reliquary:rod_of_lyssa");
craftingTable.addShapedMirrored("rod_of_lyssa",MirrorAxis.HORIZONTAL,<item:reliquary:rod_of_lyssa>, [
    [<item:minecraft:air>,<item:minecraft:air>,<item:minecraft:stick>],
    [<item:minecraft:air>,<item:minecraft:stick>,<item:minecraft:string>],
    [<item:minecraft:fishing_rod>,<item:minecraft:air>,<item:reliquary:fortune_coin>]
    ]
);

craftingTable.removeByName("reliquary:hero_medallion");
craftingTable.addShaped("hero_medallion",<item:reliquary:hero_medallion>, [
    [<item:minecraft:air>,<item:reliquary:infernal_tear>,<item:minecraft:air>],
    [<item:oreganized:silver_ingot>,<item:endrem:wither_eye>.reuse(),<item:oreganized:silver_ingot>],
    [<item:minecraft:air>,<item:reliquary:fortune_coin>,<item:minecraft:air>]
    ]
);

craftingTable.removeByName("reliquary:magicbane");
craftingTable.addShapedMirrored("magicbane",MirrorAxis.HORIZONTAL,<item:reliquary:magicbane>, [
    [<item:minecraft:air>,<item:minecraft:gold_ingot>,<item:minecraft:netherite_ingot>],
    [<item:tinkers_reforged:red_beryl_gem>,<item:minecraft:nether_star>,<item:minecraft:gold_ingot>],
    [<item:minecraft:stick>,<item:tinkers_reforged:red_beryl_gem>,<item:minecraft:air>]
    ]
);

craftingTable.removeByName("reliquary:void_tear");
craftingTable.addShapeless("void_tear",<item:reliquary:void_tear>, 
[<item:reliquary:nebulous_heart>,<item:minecraft:diamond>,<item:warden_and_sculk:echo_shard>,<item:minecraft:ghast_tear>]);