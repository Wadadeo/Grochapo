if os.getenv("LOCAL_LUA_DEBUGGER_VSCODE") == "1" then
    require("lldebugger").start()
end

Object = require "classic"
require "clotheline"


L = ClotheLine()

function love.conf(t)
    t.console = false
end

function love.draw()
    love.graphics.print("Hello World", 400, 300)
end


function love.keypressed(key, scancode, isrepeat)
    if key == "a" or key == "z" or key == "e" then
        L:addHangerAtHead("Hanger " .. key)
    end

    if key == "right" then
        L:moveHead()
    end

    if key == "down" then
        L:printLine()
    end

 end

function love.update(dt)

end