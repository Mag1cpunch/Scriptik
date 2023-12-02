local ws = assert(http.websocket("wss://http://51.250.0.4:9000"))
if ws then
    term.write("Connected! to wss://http://51.250.0.4:9000")
end