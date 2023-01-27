import crafttweaker.api.data.MapData;
import mods.createtweaker.ProcessingRecipe;
import mods.createtweaker.ProcessingRecipeBuilder;
import mods.create.MixingManager;

<recipetype:create:mixing>.removeByName("create:mixing/chocolate_melting");
<recipetype:create:mixing>.addJsonRecipe("melt_neapolitan_chocolate",
{
  "type": "create:mixing",
  "ingredients": [
    {
      "item": "neapolitan:chocolate_bar"
    }
  ],
  "results": [
    {
      "fluid": "create:chocolate",
      "amount": 250
    }
  ],
  "heatRequirement": "heated"
});
