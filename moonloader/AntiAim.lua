local SE = require 'lib.samp.events'

local AntiAim = false

function main()
    sampRegisterChatCommand('aa', function() AntiAim = not AntiAim end)
end

function SE.onSendPlayerSync(data)
    if AntiAim then
        data.quaternion[0] = math.random(-1, 1)
        data.quaternion[1] = math.random(-1, 1)
        data.quaternion[2] = math.random(-1, 1)
        data.quaternion[3] = math.random(-1, 1)
        data.specialAction = 3
    end
end
