ev = require "lib.samp.events"





function main()
    if not isSampLoaded() or not isSampfuncsLoaded() then return end
	while not isSampAvailable() do wait(100) end
    log("{ff0000}", "onfoot_sync logger by RResTarT")
    sampRegisterChatCommand("onfoot_logger", starter)
    wait(-1)
end

function log(color, text)
	sampAddChatMessage(color .. "{ff0000}Logger:{ffffff} " .. text)
end

function starter(status)
    if status == "start" then
        log("{ffff00}", "Started")
        enable = true
    end
    if status == "stop" then
        log("{ffff00}", "Stopped")
        enable = false
    end
end


function ev.onSendPlayerSync(data)
    if enable == true then
        print("<------------------------------------------------------RResTarT`s player_sync logger------------------------------------------------------>")
        print("leftRightKeys:", data.leftRightKeys)
        print("upDownKeys:", data.upDownKeys)
        print("keysData:", data.keysData)
        print("keys.primaryFire:", data.keys.primaryFire)
        print("keys.horn_crouch:", data.keys.horn_crouch)
        print("keys.secondaryFire_shoot:", data.keys.secondaryFire_shoot)
        print("keys.accel_zoomOut:", data.keys.accel_zoomOut)
        print("keys.enterExitCar:", data.keys.enterExitCar)
        print("keys.decel_jump:", data.keys.decel_jump)
        print("keys.circleRight:", data.keys.circleRight)
        print("keys.aim:", data.keys.aim)
        print("keys.circleLeft:", data.keys.circleLeft)
        print("keys.landingGear_lookback:", data.keys.landingGear_lookback)
        print("keys.unknown_walkSlow:", data.keys.unknown_walkSlow)
        print("keys.specialCtrlUp:", data.keys.specialCtrlUp)
        print("keys.specialCtrlDown:", data.keys.specialCtrlDown)
        print("keys.specialCtrlLeft:", data.keys.specialCtrlLeft)
        print("keys.specialCtrlRight:", data.keys.specialCtrlRight)
        print("keys._unknown:", data.keys._unknown)
        print("position.x:", data.position.x)
        print("position.y:", data.position.y)
        print("position.z:", data.position.z)
        print("quaternion[1]:", data.quaternion[1])
        print("quaternion[2]:", data.quaternion[2])
        print("quaternion[3]:", data.quaternion[3])
        print("quaternion[4]:", data.quaternion[4])
        print("health:", data.health)
        print("armor:", data.armor)
        print("weapon:", data.weapon)
        print("specialKey:", data.specialKey)
        print("specialAction:", data.specialAction)
        print("moveSpeed.x:", data.moveSpeed.z)
        print("moveSpeed.y:", data.moveSpeed.y)
        print("moveSpeed.z:", data.moveSpeed.z)
        print("surfingOffsets.x:", data.surfingOffsets.x)
        print("surfingOffsets.y:", data.surfingOffsets.y)
        print("surfingOffsets.z:", data.surfingOffsets.z)
        print("surfingVehicleId:", data.surfingVehicleId)
        print("animationId:", data.animationId)
        print("animationFlags:", data.animationFlags)
    end
end 