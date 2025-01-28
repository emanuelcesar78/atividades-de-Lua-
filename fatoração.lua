function fatoracao(numero)
    local fatorados = {}
    local divisor = 2

    while numero % divisor == 0 do
        
        table.insert(fatorados, divisor)

        numero = numero/divisor

    end
    divisor = 3

    while numero > 1 do
        while numero % divisor == 0 do
            table.insert(fatorados,divisor)
            numero = numero/divisor
        end

        divisor = divisor + 2
    end
    return fatorados
    
end

print("digite seu numero: ")
local numero = tonumber(io.read())

fatorasao = fatoracao(numero)

for _,i in ipairs(fatorasao) do 
   print(i)
end