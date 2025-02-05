local mod = {}

function mod.numero_x ()

  local x = math.random(100, 700)

    return x
end

function mod.numero_y()

    local y = math.random(100,700)
    return y
end

function mod.numeros_color()

    return {math.random(), math.random(), math.random()} 
    
end


return mod