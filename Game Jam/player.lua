Player = Object.extend(Object)

function Player:new(x, y)
  self.x = x
  self.y = y
 
  self.player = {}
  self.player.body = love.physics.newBody(world, self.x, self.y, "dynamic")
  self.player.shape = love.physics.newCircleShape(15)
  self.player.fixture = love.physics.newFixture(self.player.body, self.player.shape, 1)
  self.player.fixture:setRestitution(1)
end

function Player:draw()
  love.graphics.setColor(0.76, 0.18, 0.05)
  love.graphics.circle("fill", self.player.body:getX(), self.player.body:getY(), self.player.shape:getRadius())
end