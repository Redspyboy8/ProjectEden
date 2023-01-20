import crafttweaker.api.item.IItemStack;
import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.builder.LootConditionBuilder;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;



loot.modifiers.register(
    "wornnotebookinjection",
     LootConditions.only(LootTableIdLootCondition.create(<resource:aquamirae:chests/frozen_chest>)),
        CommonLootModifiers.add(<item:ars_nouveau:worn_notebook>)
);
