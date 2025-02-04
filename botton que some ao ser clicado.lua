io.open('Fun')
function love.load()
    button = {x = 200, y = 200, largura = 100, altura = 90, cor = {1,1,1}}

    math.randomseed(os.time())

end

function love.draw()

    love.graphics.setColor(button.cor)
    love.graphics.rectangle("fill", button.x, button.y, button.largura, button.altura, 90)
    
end

function love.mousepressed(x, y, buttonpresse, isTouch)

    if buttonpresse == 1 and x > button.x and x < button.x + button.largura and y > button.y and y < button.y + button.altura then
        button.x = math.random(100, 300)
        button.y = math.random(100, 300)
    end 
    
end

