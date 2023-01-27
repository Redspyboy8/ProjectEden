import mods.create.FillingManager;


craftingTable.remove(<item:neapolitan:chocolate_strawberries>);
<recipetype:create:filling>.addRecipe(
    "fill_strawberries",
    <item:neapolitan:chocolate_strawberries>,
    <item:neapolitan:strawberries>,
    <fluid:create:chocolate> * 250
);

craftingTable.remove(<item:neapolitan:vanilla_chocolate_fingers>);
<recipetype:create:filling>.addRecipe(
    "fill_mint",
    <item:neapolitan:mint_chocolate>,
    <item:neapolitan:mint_leaves>,
    <fluid:create:chocolate> * 250
);

craftingTable.remove(<item:neapolitan:mint_chocolate>);
<recipetype:create:filling>.addRecipe(
    "fill_vanilla",
    <item:neapolitan:vanilla_chocolate_fingers>,
    <item:neapolitan:dried_vanilla_pods>,
    <fluid:create:chocolate> * 250
);

craftingTable.remove(<item:neapolitan:chocolate_spider_eye>);
<recipetype:create:filling>.addRecipe(
    "fill_spider_eye",
    <item:neapolitan:chocolate_spider_eye>,
    <item:minecraft:spider_eye>,
    <fluid:create:chocolate> * 250
);
