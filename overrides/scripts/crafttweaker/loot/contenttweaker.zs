import crafttweaker.api.item.IItemStack;
import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.builder.LootConditionBuilder;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;



loot.modifiers.register(
    "notebookinjection",
     LootConditions.only(LootTableIdLootCondition.create(<resource:idas:chests/tinkers_workshop/tinkers_workshop_vault>)),
        CommonLootModifiers.add(<item:contenttweaker:tinker_notes>)
);
