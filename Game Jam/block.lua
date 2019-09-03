Block = Object.extend(Object)

function Block:new(x, y)
  self.x = x
  self.y = y
  
  self.groundBlock = {}
  self.groundBlock.body = love.physics.newBody(world, self.x, self.y)
  self.groundBlock.shape = love.physics.newRectangleShape(30, 30)
  self.groundBlock.fixture = love.physics.newFixture(self.groundBlock.body, self.groundBlock.shape, 1)
end

function Block:draw()
  love.graphics.setColor(0.28, 0.63, 0.05)
  love.graphics.polygon("fill", self.groundBlock.body:getWorldPoints(self.groundBlock.shape:getPoints()))
end

  