if os.getenv("LOCAL_LUA_DEBUGGER_VSCODE") == "1" then
    require("lldebugger").start()
end

require "object"

function love.conf(t)
    t.console = false
end

function love.draw()
    love.graphics.print("Hello World", 400, 300)
end

function love.update(dt)
    if love.keyboard.isDown("down") then   -- reduce the value
        a = "test"
        print(a)
        a = "blob"
        print(a)
    end
end