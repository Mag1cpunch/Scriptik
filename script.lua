json = require("json")
local ws,err = http.websocket("ws://51.250.0.4:9000")
if ws then
    term.write("connected to " .. ws)
end