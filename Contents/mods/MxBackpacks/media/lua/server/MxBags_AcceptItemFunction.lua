-- This is based off media\lua\server\Items\AcceptItemFunction.lua

MxAcceptItemFunction = MxAcceptItemFunction or {}

function MxAcceptItemFunction.MedicalOnly(container, item)
	return item:getStringItemType() == "Medical" or item.Medical
end