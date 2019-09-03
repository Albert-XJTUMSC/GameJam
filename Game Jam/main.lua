function love.load()
  Object = require "classic"
  
  require "block"
  require "player"
  
  love.physics.setMeter(30)
  world = love.physics.newWorld(0, 9.81*30, true)
  
  --table used to hold all our physical objects
  objects = {}

  --create the ground
  objects.block = {}
  for i = 0, 15, 1 do
    objects.block[i] = Block(30*i+15, 315)
  end
  
  --create the player
  objects.player = Player(45, 200)
  
  --set the world
  love.graphics.setBackgroundColor(0.41, 0.53, 0.97)
  love.window.setMode(900, 600)
end

function love.update(dt)
  world:update(dt)
end

function love.draw()
  --draw the ground
  for i = 0, 15, 1 do
    objects.block[i]:draw()
  end
  
  --draw the player
  objects.player:draw()
end

