local mem = require "memory"

function main()
    sampRegisterChatCommand("fake", fake)
    wait(-1)
end



function functie_secundara()
    for count, vehicleHandler in ipairs(getAllVehicles()) do
        player_handler = getDriverOfCar(vehicleHandler)
        status, player_id = sampGetPlayerIdByCharHandle(player_handler)
        if player_id == id_jucator then
            status, car_id = sampGetVehicleIdByCarHandle(vehicleHandler)
            print(car_id)
            giveNonPlayerCarNitro(vehicleHandler)
            --mem.setfloat(getCarPointer(car_id) + 0x08A4, -0.5)     
        end
    end
end




function fake(parms)
    id_jucator = tonumber(parms)
    lua_thread.create(functie_secundara)
end

