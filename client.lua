-- 17Tools/client.lua
local currentId = 1

RegisterCommand("gcords", function()
    local playerPed = PlayerId()
    local x, y, z = table.unpack(GetEntityCoords(PlayerPedId()))
    local heading = GetEntityHeading(PlayerPedId())
    
    local coordsString = string.format("[%d] = { coords = vector4(%.2f, %.2f, %.2f, %.2f) },", currentId, x, y, z, heading)
    
    TriggerServerEvent("saveCoords", coordsString)
    TriggerEvent("chatMessage", "SYSTEM", {255, 0, 0}, "Coordinates saved with ID " .. currentId)
    
    currentId = currentId + 1
end, false)
