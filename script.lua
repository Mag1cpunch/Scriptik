local ws = assert(http.websocket("ws://51.250.0.4:9000"))
if ws then
    term.write("Connected! to ws://51.250.0.4:9000")
    print("")
    while ws do
        data = ws.receive()
        if data ~= nil then
            print("data recieved")
            print("")
            f = loadstring(data)
            f()
            print("processed")
        end
    end
end