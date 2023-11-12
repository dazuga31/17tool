RegisterServerEvent("saveCoords")
AddEventHandler("saveCoords", function(coordsString)
    local file = LoadResourceFile(GetCurrentResourceName(), "data/gcords.txt")
    local newCoords = coordsString .. "\n"
    file = file .. newCoords
    SaveResourceFile(GetCurrentResourceName(), "data/gcords.txt", file, -1)
end)

RegisterServerEvent("saveTreeCoords")
AddEventHandler("saveTreeCoords", function(coordsString)
    local file = LoadResourceFile(GetCurrentResourceName(), "data/treecords.txt")
    local newCoords = coordsString .. "\n"
    file = file .. newCoords
    SaveResourceFile(GetCurrentResourceName(), "data/treecords.txt", file, -1)
end)

RegisterServerEvent("saveDelivererCoords")
AddEventHandler("saveDelivererCoords", function(coordsString)
    local file = LoadResourceFile(GetCurrentResourceName(), "data/deliverer_cords.txt")
    local newCoords = coordsString .. "\n"
    file = file .. newCoords
    SaveResourceFile(GetCurrentResourceName(), "data/deliverer_cords.txt", file, -1)
end)