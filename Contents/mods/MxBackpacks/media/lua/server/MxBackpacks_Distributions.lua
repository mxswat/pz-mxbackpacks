local DistTable = {
    "MxBackpacks.Bag_TraumaBackpack", 1,
    "MxBackpacks.Bag_MedFannyPackFront", 1
}

local VehicleDistTable = {
    "MxBackpacks.Bag_TraumaBackpack", 1,
    "MxBackpacks.Bag_MedFannyPackFront_Spec", 1
}

local function insertTable(gameList, mylist)
    local n = #gameList
    for i = 1, #mylist do
        gameList[n + i] = mylist[i]
    end
end

insertTable(ProceduralDistributions["list"]["ArmyStorageMedical"].items, DistTable)
insertTable(ProceduralDistributions["list"]["ArmySurplusBackpacks"].items, DistTable)
insertTable(ProceduralDistributions["list"]["MedicalClinicDrugs"].items, DistTable)
insertTable(ProceduralDistributions["list"]["MedicalClinicTools"].items, DistTable)
insertTable(ProceduralDistributions["list"]["MedicalStorageDrugs"].items, DistTable)
insertTable(ProceduralDistributions["list"]["SafehouseMedical"].items, DistTable)
insertTable(ProceduralDistributions["list"]["StoreShelfMedical"].items, DistTable)
insertTable(ProceduralDistributions["list"]["HospitalLockers"].items, DistTable)
insertTable(ProceduralDistributions["list"]["MedicalClinicOutfit"].items, DistTable)
insertTable(ProceduralDistributions["list"]["MedicalStorageOutfit"].items, DistTable)
insertTable(ProceduralDistributions["list"]["TestingLab"].items, DistTable)

insertTable(VehicleDistributions.SurvivalistTruckBed.items, VehicleDistTable)
insertTable(VehicleDistributions.DoctorTruckBed.items, VehicleDistTable)
insertTable(VehicleDistributions.AmbulanceTruckBed.items, VehicleDistTable)
insertTable(VehicleDistributions.AmbulanceTruckBed.items, VehicleDistTable)
