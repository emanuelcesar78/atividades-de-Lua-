local matriz = {}
local matriz2 = {}
local soma = {}

for i = 1, 3 do
    soma[i] = {}
    matriz[i] = {}
    matriz2[i] = {}
    
    for l = 1, 3 do
        
        soma[i][l] = {}
        matriz[i] = {}
        matriz2[l] = {}

    end
end

math.randomseed(os.time())

for i = 1, 3 do
    for l = 1, 3 do
        
        matriz[i][l] = math.random(1,10)
        matriz2[i][l] = math.random(1,10)

    end
end

for i = 1, 3 do
    for l = 1, 3 do
        
         soma[i][l] = matriz[i][l] + matriz2[i][l]

    end
end

print("soma da matrizs".."\t")

for i = 1, 3 do
    for l = 1, 3 do
        
        io.write(soma[i][l],"\t")
    end
    print()
end

print("matriz 1".."\t")

for i = 1, 3 do
    for l = 1, 3 do
        
        io.write(matriz[i][l],"\t")
    end
    print()
end

print("matriz 2".."\t")

for i = 1, 3 do
    for l = 1, 3 do
        
        io.write(matriz2[i][l],"\t")
    end
    print()
end

