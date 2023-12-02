local ws = assert(http.websocket("ws://51.250.0.4:9000"))
if ws then
    term.write("Connected! to ws://51.250.0.4:9000")
    while ws do
        data = ws.receive()
        if data ~= nil then
            print("data recieved")
            load(data)
            print("processed")
        end
    end
end