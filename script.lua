local ws = assert(http.websocket("wss://example.tweaked.cc/echo"))
if ws then
    term.write("Connected!")
end