-- This is based off media\lua\server\Items\AcceptItemFunction.lua

MxAcceptItemFunction = MxAcceptItemFunction or {}

function MxAcceptItemFunction.MedicalOnly(container, item)
	-- print(tostring(item:getScriptItem().Medical)) -- Apparently this does not work :-/
	return item:getStringItemType() == "Medical" or item:getDisplayCategory() == "FirstAid"
end