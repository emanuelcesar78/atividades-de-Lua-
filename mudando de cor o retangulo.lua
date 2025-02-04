function love.load()
    button = {x = 200, y = 300, largura = 100, altura = 30, color = {1,1,1}}
    math.randomseed(os.time())

end



function love.mousepressed(x, y, buttonpressed, istouch, presses)
    
    if buttonpressed == 1 and x > button.x and x < button.x + button.largura and button.y < y and button.y + button.altura > y then
        button.color = {math.random(), math.random(), math.random()}
    end 
    
end

function love.draw()
    love.graphics.setColor(button.color)
    love.graphics.rectangle("fill", button.x, button.y, button.largura, button.altura, 30)
    love.graphics.setColor(1,1,1)
end
