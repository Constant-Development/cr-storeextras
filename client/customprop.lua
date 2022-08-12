local function CreateProp(propCoords, propModel)
	local coords = propCoords
	PropModel = propModel
	RequestModel(PropModel)
	while not HasModelLoaded(PropModel) do
		Wait(3)
	end
	PropObject = CreateObject(PropModel, coords.x, coords.y, coords.z - 1, true, true)
	PlaceObjectOnGroundProperly(PropObject)
    SetEntityHeading(PropObject, coords.w)
	SetEntityInvincible(PropObject, true)
end

Citizen.CreateThread(function()
    for _, v in pairs(Config.CustomProps) do
        if v.Enabled then
            CreateProp(v.PropCoords, v.PropModel)
        end
    end
end)
