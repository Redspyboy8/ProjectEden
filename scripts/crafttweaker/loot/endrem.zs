import crafttweaker.api.item.IItemStack;
import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.builder.LootConditionBuilder;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;



loot.modifiers.register(
    "losteyechestinjection",
     LootConditions.only(LootTableIdLootCondition.create(<resource:idas:chests/ancient_mines/mineshall>)),
        CommonLootModifiers.add(<item:endrem:lost_eye>)
);

loot.modifiers.register(
    "corruptedeyechestinjection",
     LootConditions.only(LootTableIdLootCondition.create(<resource:idas:chests/pillager_fortress/pillager_bedroom>)),
        CommonLootModifiers.add(<item:endrem:corrupted_eye>)
);

loot.modifiers.register( 
    "undeadeyedropinjection",
    LootConditions.only(LootTableIdLootCondition.create(<resource:meetyourfight:swampjaw>)),
    CommonLootModifiers.add(<item:endrem:undead_eye>)
);

loot.modifiers.register(
    "nethereyedropinjection",
    LootConditions.only(LootTableIdLootCondition.create(<resource:cataclysm:entities/ignis>)),
    CommonLootModifiers.add(<item:endrem:nether_eye>)
);

loot.modifiers.register(
    "blackeyedropinjection",
    LootConditions.only(LootTableIdLootCondition.create(<resource:aquamirae:entities/captain_cornelia>)),
    CommonLootModifiers.add(<item:endrem:black_eye>)
);

loot.modifiers.register(
    "coldeyedropinjection",
    LootConditions.only(LootTableIdLootCondition.create(<resource:aquamirae:entities/maze_mother>)),
    CommonLootModifiers.add(<item:endrem:cold_eye>)
);

loot.modifiers.register(
    "magiceyedropinjection",
    LootConditions.only(LootTableIdLootCondition.create(<resource:conjurer_illager:entities/conjurer>)),
    CommonLootModifiers.add(<item:endrem:magical_eye>)
);

loot.modifiers.register(
    "evileyedropinjection",
    LootConditions.only(LootTableIdLootCondition.create(<resource:meetyourfight:bellringer>)),
    CommonLootModifiers.add(<item:endrem:evil_eye>)
);

loot.modifiers.register(
    "oldeyedropinjection",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/tomb_pharaoh>)),
    CommonLootModifiers.add(<item:endrem:old_eye>)
);

loot.modifiers.register(
    "rogueeyedropinjection",
    LootConditions.only(LootTableIdLootCondition.create(<resource:warden_and_sculk:chests/op_chest>)),
    CommonLootModifiers.add(<item:endrem:rogue_eye>)
);












    


    
