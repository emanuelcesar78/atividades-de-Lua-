function eh_primo(numero)
    if numero <= 1 then
        return false
    end
    
    for i = 2, math.sqrt(numero) do
        if numero % i == 0 then
            return false
        end
    end
    
    return true
end

print("Digite um número:")
local numero = tonumber(io.read())

if eh_primo(numero) then
    print(numero .. " é um número primo.")
else
    print(numero .. " não é um número primo.")
end
