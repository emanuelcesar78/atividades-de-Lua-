local Extras = require("Extras")

local tempo_restate = 0
function love.load()
   button = {x = 100, y = 200, altura = 50, largura = 50, tamanho = 30, color = {1,1,1}}

   pontos = 0
   math.randomseed(os.time())
end

function love.draw ()
   love.graphics.setColor(button.color)
   love.graphics.rectangle( "fill",button.x, button.y, button.largura, button.altura, button.tamanho)
   love.graphics.setColor(1,1,1)
   
   love.graphics.print("Tempo :"..string.format("%1.f", tempo_restate), 200, 500)
   love.graphics.print("Pontuação :".. pontos, 200, 200)

end

function love.mousepressed(x, y, buttonPresse, isTouch)

    if buttonPresse == 1 and x > button.x and x < button.x + button.largura and y > button.y and y < button.y + button.tamanho then
        tempo_restate = tempo_restate + 1
                
        pontos = pontos + 1

        button.x = Extras.numero_x()
        button.y = Extras.numero_y()
        button.color = Extras.numeros_color()
    end    
end

function love.update(dt)

    tempo_restate = tempo_restate - dt

    if tempo_restate <= 0  then
        
        tempo_restate = 6

        Extras.numero_x()
        Extras.numero_y()
        Extras.numeros_color()
        pontos = 0
    
        button.x = Extras.numero_x()
        button.y = Extras.numero_y()
        button.color = Extras.numeros_color()


    end

    
end
