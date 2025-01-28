function ordenacao_crente (lista)
    
    table.sort(lista, function(a,b) return a < b end)

    for _,i in ipairs(lista) do
        
        print(i)
   
    end
    
    return "lista lida"
    
end

function numero_decrecente(lista)

    table.sort(lista, function(a,b) return a > b end)

    for _,i in ipairs(lista) do 
      
        print(i)   
   
    end 
    
end

lista = {}
for i =  1 , 3 do 
 
    print("digite um numero:")
 local numero = tonumber(io.read())

 table.insert(lista, numero)

end 

print(ordenacao_crente(lista))
print(numero_decrecente(lista))