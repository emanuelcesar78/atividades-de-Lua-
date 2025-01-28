math.randomseed(os.time())

local numero_aleatorio = math.random(1,10)

local numero_digitado

local adivinhacao = false

while not adivinhacao do

    print("digito um numero:")
    numero_digitado = tonumber(io.read())
    
    if numero_aleatorio == numero_digitado then
    
        print("o numero"..numero_digitado.."e igul ao numero".. numero_aleatorio)
        adivinhacao = true
    
    else
        print("tente de novo")
        
        if numero_digitado > numero_aleatorio  then
            print("o numero esta alto de mais")

        else
            print("o numero esta muito abaixa do numero")
            
        end
    end
    
end