RegisterServerEvent("saveCoords")
AddEventHandler("saveCoords", function(coordsString)
    local file = LoadResourceFile(GetCurrentResourceName(), "data/gcords.txt")
    local newCoords = coordsString .. "\n"
    file = file .. newCoords
    SaveResourceFile(GetCurrentResourceName(), "data/gcords.txt", file, -1)
end)