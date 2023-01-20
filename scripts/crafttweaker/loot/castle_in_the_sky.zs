import crafttweaker.api.item.IItemStack;
import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.builder.LootConditionBuilder;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

loot.modifiers.register(
    "levitation_stone_throne_injection",
     LootConditions.only(LootTableIdLootCondition.create(<resource:tlc:chests/throne>)),
        CommonLootModifiers.addAllWithChance(<item:castle_in_the_sky:levitation_stone> % 10)
);

loot.modifiers.register(
    "levitation_stone_end_injection",
     LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/end_city_treasure>)),
        CommonLootModifiers.addAllWithChance(<item:castle_in_the_sky:levitation_stone> % 30)
);
