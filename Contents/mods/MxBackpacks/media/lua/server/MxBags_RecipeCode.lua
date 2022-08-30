MxBagsRecipe = {}
MxBagsRecipe.GetItemTypes = {}

function MxBagsRecipe.GetItemTypes.Bag_FannyPack(scriptItems)
    local allScriptItems = getScriptManager():getAllItems();
    for i=1,allScriptItems:size() do
        local scriptItem = allScriptItems:get(i-1);
        if string.contains(scriptItem:getName(), "Bag_FannyPack") then
            scriptItems:add(scriptItem);
        end
    end
end