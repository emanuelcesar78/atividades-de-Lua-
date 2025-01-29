#faça uma matriz para ser lida e impremir os numeros

local lista = {}

for i = 1, 3 do
    
    lista[i] = {}
    
    for l = 1, 3 do
    
        lista[i][l] = {}
    
    end
end

math.randomseed(os.time())


for i = 1, 3 do
    
    for l = 1, 3 do
       
        local numero = math.random(1,10)
       
        lista[i][l] = numero
    
    end
end

for i = 1,3 do
    for l = 1, 3 do
        io.write(lista[i][l], "\t")
    end
    print()
end 