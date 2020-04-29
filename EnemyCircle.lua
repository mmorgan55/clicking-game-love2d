EnemyCircle = Class{}

function EnemyCircle:init(x, y, r)
    self.x = x
    self.y = y
    self.r = r

    self.dx = 5
    self.remove = false
end

function EnemyCircle:update()
    self.x = self.x + self.dx
end


function EnemyCircle:render()
    love.graphics.circle('fill', self.x, self.y, self.r, 100)
end 