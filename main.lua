push = require 'push'
Class = require 'class'
require 'EnemyCircle'

WINDOW_WIDTH = 650
WINDOW_HEIGHT = 650

local ec = EnemyCircle(250, 250, 25)

function love.load()
    love.window.setTitle('CLICK ATTACK!')
    push:setupScreen(650, 650, WINDOW_WIDTH, WINDOW_HEIGHT, {
        vsync = true,
        fullscreen = false,
        resizable = true
    })
end

function love.resize(w, h)
    push:resize(w, h)
end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end

function love.update(dt)
    print(love.mouse.getX() .. ', ' .. love.mouse.getY())
    
end

function love.draw()
    push:start()
    -- local mx, my = love.mouse.getPosition()
    -- love.graphics.line(mx - WINDOW_WIDTH, my, mx + WINDOW_WIDTH, my)
    -- love.graphics.line(mx, my - WINDOW_HEIGHT, mx, my +WINDOW_HEIGHT)
    -- displayFPS()
    ec:render()

    push:finish()
end
    
function displayFPS()
    love.graphics.setColor(0, 255, 0, 255)
    love.graphics.print('FPS: ' .. tostring(love.timer.getFPS()), 10, 10)
end