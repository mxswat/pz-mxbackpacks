MxBagsRecipe = MxBagsRecipe or {}
MxBagsRecipe.GetItemTypes = {}

function MxBagsRecipe.GetItemTypes.Bag_FannyPack(scriptItems)
	local allScriptItems = getScriptManager():getAllItems();
	for i = 1, allScriptItems:size() do
		local scriptItem = allScriptItems:get(i - 1);
		if string.contains(scriptItem:getName(), "Bag_FannyPack") then
			scriptItems:add(scriptItem);
		end
	end
end

function MxBagsRecipe.KeepContent(inputItems, resultItem, player)
	local player_Inventory = player:getInventory();

	for i = 0, (inputItems:size() - 1) do
		local item = inputItems:get(i);

		if item:getCategory() == "Container" then
			if player:getClothingItem_Back() == item then
				player:setClothingItem_Back(nil);
			end
			if player:getPrimaryHandItem() == item then
				player:setPrimaryHandItem(nil);
			end
			if player:getSecondaryHandItem() == item then
				player:setSecondaryHandItem(nil);
			end
			local currentInv = item:getInventory()
			if currentInv:getItems():size() >= 1 then
				player_Inventory:getItems():addAll(currentInv:getItems())
				currentInv:getItems():clear()
			end
		end
	end
end

function MxBagsRecipe.KeepTextureAndContent(inputItems, resultItem, player)
	local texture = inputItems:get(0):getTexture()
	MxBagsRecipe.KeepContent(inputItems, resultItem, player)
	resultItem:setTexture(texture);
end