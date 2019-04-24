print("digite um numero")
local numero = io.read("*n")

if numero > 0 then
    print("Numero positivo")
elseif numero < 0 then
    print("Numero negativo")
else
    print("Numero 0")
end